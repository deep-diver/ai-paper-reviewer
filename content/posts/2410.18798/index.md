---
title: "Distill Visual Chart Reasoning Ability from LLMs to MLLMs"
summary: "Researchers created a new method called Code-as-Intermediary Translation (CIT) to improve multimodal large language models (MLLMs) understanding of charts. CIT uses code to translate visual charts int....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
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
| Statistics | Train Set | Test Set |
| --- | --- | --- |
| Total charts | 3,249 | 500 |
| - # Chart types | 10 / 32 | 10 / 32 |
| - # Overlay plots | 1,030 | 220 |
| - # Multiple plots | 593 | 251 |
| - Average size (px) | 2480x1571 | 2798 x 1601 |
| Unique questions | 19, 963 | 2,000 |
| - # Reco. per chart | 2.53 | 2 |
| - # Reas. per chart | 3.62 | 2 |
| Avg. Reco. Q. length | 22.1 | 21.0 |
| Avg. Reco. A. length | 38.3 | 7.0 |
| Avg. Reas. Q. length | 38.2 | 35.4 |
| Avg. Reas. A. length | 68.4 | 24.9 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
| Base Model | 16.39 | 6.50 | 17.20 | 32.40 | 9.44 |
| --- | --- | --- | --- | --- | --- |
| + ChartBench | 17.06 | 7.30 | 17.00 | 33.60 | 10.33 |
|  | 17.67 | 7.10 | 20.40 | 32.10 | 11.08 |
| ChartGemma | 19.11 | 10.00 | 19.40 | 36.40 | 10.62 |
|  | 20.74 | 11.10 | 22.50 | 38.10 | 11.25 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
| Art and Design | Futurism and Innovation | Agriculture and Food Production |
| --- | --- | --- |
| Music and Performance | Astronomy and Space | Transportation and Logistics |
| Business and Finance | Social Media and the Web | Real Estate and Housing Market |
| Travel and Exploration | Society and Community | Government and Public Policy |
| Books and Publishing | Physics and Chemistry | Education and Academics |
| Literature and Writing | Energy and Utilities | Environment and Sustainability |
| History and Culture | Biology and Life Sciences | Language and Communication |
| Architecture and Building | Retail and E-commerce | Social Sciences and Humanities |
| Fashion and Style | Religion and Spirituality | Manufacturing and Production |
| Marketing and Advertising | Food and Beverage Industry | Artificial Intelligence and Robotics |
| Law and Legal Affairs | Healthcare and Health | Human Resources and Employee Management |
| Film and Cinema | Sports and Entertainment | Computer Science and Information Technology |
| Mathematics and Statistics | Science and Engineering |  |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison of existing chart-related datasets across three properties. Only the chart question-answering (CQA) task is considered, despite some datasets having multiple tasks. Abbreviations: Vis.=visual, Comp.=complexity, Temp.=template, Refer.=Reference, Reas.=reasoning, Rat. rationale, Annot.=annotation and Scal.=scalable. Cells marked with 'X' indicate mixed attributes (e.g., partially template-based; scalable Q&A but non-scalable chart data.). “*” indicates that while the chart-plotting codes are public, the Q&A generation still relies on data tables." >}}
| Step | Avg. #tokens of Input | Avg. #tokens of Output | Times | Cost ($) |
| --- | --- | --- | --- | --- |
| Self-Instruct | 1, 500 + 2, 000 = 3, 500 | 500 + 500 = 1, 000 | 3,000 | ~ 56.25 |
| Evol-Instruct | 700 + 1, 300 = 2, 000 | 300 + 700 = 1, 000 | 3,000 | ~ 45.00 |
| Self-Repair | 500 | 500 | 1,500 | ~ 9.38 |
| Reas-QA-Gen. | 1,000 + 1, 500 x 4 = 7, 000 | 500 + 300 x 4 = 1, 700 | 3,249 | ~ 112.09 |
| Reco-QA-Gen. | 800 + 1, 200 x 4= 5, 600 | 300 + 200 x4= 1, 100 | 3,249 | ~ 81.23 |
{{< /table-caption >}}


</details>

------

