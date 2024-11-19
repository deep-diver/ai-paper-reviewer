---
title: "Drowning in Documents: Consequences of Scaling Reranker Inference"
summary: "Scaling reranker inference surprisingly degrades retrieval quality beyond a certain point, prompting the need for more robust reranking techniques."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Information Retrieval", "🏢 Databricks",]
showSummary: true
date: 2024-11-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.11767 {{< /keyword >}}
{{< keyword icon="writer" >}} Mathew Jacob et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.11767" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.11767" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/drowning-in-documents-consequences-of-scaling" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.11767/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current information retrieval systems often use a two-stage process: a fast retriever initially selects candidate documents, followed by a more accurate but computationally expensive reranker to refine the ranking.  It is widely assumed that rerankers consistently enhance retrieval quality, especially when considering more documents. This paper investigates this assumption and found that the existing rerankers show diminishing returns when scoring progressively more documents and actually degrade quality beyond a certain limit. This is because rerankers often get distracted by documents with minimal lexical or semantic overlap with the query.

To address this issue, the researchers conducted experiments on various academic and enterprise datasets using several state-of-the-art rerankers and tested them on a full retrieval setting where they ranked the whole document set. The results confirmed the diminishing returns of rerankers with a large number of documents, frequently resulting in a lower recall than retrievers.  They further propose listwise reranking via large language models as a more robust approach. This research has significant implications for how we build and evaluate large-scale retrieval systems.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Scaling reranker inference often reduces recall, sometimes performing worse than simpler retrievers. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Rerankers frequently assign high scores to irrelevant documents as the number of documents to rank increase. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Listwise reranking with large language models shows promise for more robust and higher-quality results. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it challenges the common assumption that rerankers always improve information retrieval**, especially when scaling.  This impacts how we design and optimize large-scale retrieval systems, prompting research into more robust methods. The findings will influence future IR system development and evaluation practices.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.11767/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.11767/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}