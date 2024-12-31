---
title: "OneKE: A Dockerized Schema-Guided LLM Agent-based Knowledge Extraction System"
summary: "OneKE: a dockerized, schema-guided LLM agent system efficiently extracts knowledge from diverse sources, offering adaptability and robust error handling."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Information Extraction", "🏢 Zhejiang University",]
showSummary: true
date: 2024-12-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.20005 {{< /keyword >}}
{{< keyword icon="writer" >}} Yujie Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.20005" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.20005" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/oneke-a-dockerized-schema-guided-llm-agent" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.20005/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current knowledge extraction systems often struggle with diverse data formats, complex schemas, and error handling.  Previous approaches often lack adaptability and require retraining for various tasks and datasets.  This limits their effectiveness in real-world applications where data is messy and schema varies.

OneKE tackles these challenges with a novel multi-agent architecture. It uses a **schema agent** to preprocess data and generate appropriate schemas; an **extraction agent** to extract knowledge using LLMs, and a **reflection agent** to debug and correct errors using a case repository.  This design allows OneKE to handle various data formats, adapt to different schemas (or lack thereof), and continuously learn from mistakes.  **The system's dockerized design and open-source nature promote accessibility and reproducibility.** The empirical evaluations demonstrate its effectiveness across different datasets and tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OneKE is a dockerized system, improving accessibility and reproducibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Its multi-agent design enhances adaptability to various extraction tasks and data types. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The integrated error-handling mechanisms improve the accuracy and reliability of knowledge extraction. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because **it introduces OneKE, a novel and versatile system for knowledge extraction that addresses limitations of existing methods.** Its dockerized design, schema-guided approach, and multi-agent architecture make it highly adaptable and efficient for various tasks and data types. The open-source nature of OneKE further enhances its accessibility and potential impact on the research community, paving the way for further improvements and applications in diverse fields.

------
#### Visual Insights



![](https://arxiv.org/html/2412.20005/x1.png)

> 🔼 OneKE is a dockerized schema-guided LLM agent-based knowledge extraction system.  The figure illustrates its modular design, showcasing three core components: the Schema Agent (processes input data and schemas, handling various data types and formats like HTML and PDF), the Extraction Agent (extracts knowledge using LLMs, adapting to diverse tasks and LLMs), and the Reflection Agent (refines and corrects errors using a case repository).  The system supports diverse domains (science, news, etc.) and utilizes a configurable knowledge base for schema management, debugging, and improvement. The diagram visually represents the flow of information through the system, highlighting the interaction between the agents and the knowledge base.
> <details>
> <summary>read the caption</summary>
> Figure 1. The overview of the OneKE system, supporting various domains (science, news, etc.) and data (Web HTML, PDF, etc.).
> </details>







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.20005/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.20005/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.20005/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.20005/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}