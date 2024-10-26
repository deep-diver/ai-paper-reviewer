---
title: "Distill Visual Chart Reasoning Ability from LLMs to MLLMs"
summary: "Researchers created a new method called Code-as-Intermediary Translation (CIT) to improve multimodal large language models (MLLMs) understanding of charts. CIT uses code to translate visual charts int....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

Researchers created a new method called Code-as-Intermediary Translation (CIT) to improve multimodal large language models (MLLMs) understanding of charts. CIT uses code to translate visual charts into text, allowing LLMs to better reason and answer questions about charts.  They created a new dataset, REACHQA, using this method, which significantly improved MLLM performance on various benchmarks. This approach is efficient and scalable, solving the challenge of creating high-quality data for visual reasoning.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18798" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces Code-as-Intermediary Translation (CIT), a novel data synthesis method for enhancing visual reasoning in multimodal large language models (MLLMs).  CIT uses code as an intermediary to translate visual chart representations into text, enabling LLMs to understand cross-modal information and generate high-quality chart-related Q&A pairs. The resulting dataset, REACHQA, significantly improves MLLM performance on various benchmarks, showcasing the effectiveness of CIT for cost-efficient data creation and improved multimodal reasoning.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Code-as-Intermediary Translation (CIT) is an effective method for synthesizing multimodal instruction data for visual reasoning in LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The REACHQA dataset, created using CIT, significantly improves the performance of LLMs on chart-related benchmarks and general multimodal reasoning tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} CIT offers a scalable and cost-effective approach to generating high-quality training data for visual reasoning, addressing the limitations of manual data collection and annotation. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_2_0.png "🔼 Figure 1: Error distribution of incorrect answers by MiniCPM-V2.5-Llama3 (Yao et al., 2024) on ChartQA test set (Masry et al., 2022), as judged by GPT-40. We present an example chart from ChartQA along with two error cases: one for recognition and one for reasoning. The 'Other Errors' include question misunderstood errors, knowledge and hallucination errors, or refusal to answer.")

{{< table-caption caption="🔽 Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
| Input | Acc. | Reas. Comp. | Vis. Refer. | Cost ($) |
| --- | --- | --- | --- | --- |
| Table | 2.72 | 2.51 | 1.19 | 0.047 |
| Code | 2.60 | 2.56 | 2.15 | 0.092 |
| Chart | 1.91 | 1.53 | 2.36 | 0.107 |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_5_0.png "🔼 Overview of the Code-as-Intermediary Translation (CIT) method for synthesizing multimodal instruction data. The process begins with 33 seed codes and generates plot codes across various chart types, topics, and complexity levels through the Self-Instruct and Evol-Instruct stages. The chart set and instruction set are constructed bi-directionally, and the final filtered data yields REACHQA, a dataset for distilling visual chart reasoning abilities from LLMs to MLLMs.")

![](figures/figures_10_0.png "🔼 Figure 5: An example of attention visualization from the ChartQA dataset. The top row shows the results from the vanilla LLaVA-Next-Llama3-8B model, while the bottom row displays the results from our fine-tuned model. For each output, we present the attention distribution (highlighted zones) at three key steps, calculated by averaging the attention values of all tokens in each step.")

![](figures/figures_17_0.png "🔼 Figure 6: Visualizations of different chart-related training datasets. As shown, REACHQA and ChartGemma exhibit higher chart richness compared to several other datasets. But the charts in ChartGemma require manual collection from multiple sources (Masry et al., 2024b).")

![](figures/figures_17_1.png "🔼 Figure 6: Visualizations of different chart-related training datasets. As shown, REACHQA and ChartGemma exhibit higher chart richness compared to several other datasets. But the charts in ChartGemma require manual collection from multiple sources (Masry et al., 2024b).")

![](figures/figures_17_2.png "🔼 Figure 6: Visualizations of different chart-related training datasets. As shown, REACHQA and ChartGemma exhibit higher chart richness compared to several other datasets. But the charts in ChartGemma require manual collection from multiple sources (Masry et al., 2024b).")

![](figures/figures_17_3.png "🔼 Figure 6: Visualizations of different chart-related training datasets. As shown, REACHQA and ChartGemma exhibit higher chart richness compared to several other datasets. But the charts in ChartGemma require manual collection from multiple sources (Masry et al., 2024b).")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
{{< /table-caption >}}


</details>

------

