---
title: "Are LLMs Better than Reported? Detecting Label Errors and Mitigating Their Effect on Model Performance"
summary: "LLMs can detect and correct substantial label errors in NLP datasets, significantly improving model performance and highlighting the importance of data quality in NLP."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", ]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.18889 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research exposes a widespread problem: many existing NLP datasets contain significant label errors.  These errors skew the results of model evaluations, making it difficult to assess true model performance.  The researchers propose using an ensemble of large language models (LLMs) to act as a 'judge' and identify potentially mislabeled examples.  This 'LLM-as-a-judge' approach was tested on four datasets from the TRUE benchmark.  Results show LLMs detected a substantial number of label errors (6% to 21%), and that correcting these errors led to a significant increase in reported model performance.  The study demonstrates that LLMs offer a scalable and cost-effective way to improve the quality of datasets, leading to more reliable and accurate model evaluations and ultimately accelerating NLP research.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18889" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18889" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial because it reveals a significant issue of mislabeled data in NLP benchmarks, impacting model evaluation and hindering progress.  The proposed LLM-based method offers a scalable and efficient solution for detecting and mitigating these errors, leading to more accurate model evaluations and improved model performance.  This opens avenues for creating higher-quality datasets and advancing NLP research.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Many reported LLM "mistakes" are actually due to human annotation errors in training data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLMs, used as a judge, effectively detect mislabeled data, improving the accuracy of NLP benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Correcting label errors leads to substantial improvements in reported model performance. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18889/figures_2_0.png)

> 🔼 The figure illustrates a method for detecting and handling mislabeled data in datasets using LLMs as judges, improving model performance and evaluation accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1: An illustration of our approach for detecting and addressing mislabeled data: (1) Re-label examples from existing datasets using an ensemble of LLMs. (2) Identify strong disagreements between the LLM's predictions and the original labels (i.e., high confidence in a different label), flagging examples based on confidence levels. Our findings show that LLMs detect between 6% and 21% of label errors, and higher LLM confidence is strongly associated with improved precision in error detection. (3) In the training set, we either filter or flip flagged examples to improve model performance, leading to an increase of up to 4%. For the test set, flagged examples are re-annotated by experts to make sure the evaluation is accurate. We found that under accurate evaluation, the performance of LLMs is up to 15% higher than the original mislabeled data.
> </details>





![](https://ai-paper-reviewer.com/2410.18889/charts_6_0.png)

> 🔼 The chart visualizes the precision of LLMs in detecting label errors across various confidence levels, showing improved precision with higher confidence.
> <details>
> <summary>read the caption</summary>
> Figure 2: When LLMs disagrees with original labels who is correct?. As the LLM's confidence grows, so does the precision of identifying an error in the original labels.
> </details>





{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>Dataset</td><td>Task</td><td>% pos</td><td>% LLM disagree</td><td>% error</td></tr><tr><td>MNBM</td><td>Summarization</td><td>10.6</td><td>39.4</td><td>16.9 (11.6)</td></tr><tr><td>BEGIN</td><td>Dialogue</td><td>38.7</td><td>34.4</td><td>21.2 (15.8)</td></tr><tr><td>VitaminC</td><td>Fact Verification</td><td>52.5</td><td>17.5</td><td>8.1 (4.4)</td></tr><tr><td>PAWS</td><td>Paraphrasing</td><td>44.3</td><td>22.5</td><td>6.2 (3.0)</td></tr></table>{{< /table-caption >}}

> 🔼 This table summarizes the LLM disagreement rates and label error rates across four different datasets, showing the percentage of examples where the LLMs disagreed with the original label and the estimated error rate in each dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of LLM disagreement and label error rates across different datasets. %pos is the percentage of positive (i.e., the consistent class) examples in the data. % LLM disagree refers to the percentage of examples where the LLM label differs from the original one. % error indicates the error rate in the sampled test set, while the number in parentheses denoting the estimated lower bound of the error rate for the entire dataset.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.18889/charts_7_0.png)

> 🔼 The chart shows that as the number of models in an LLM ensemble increases, both its performance on gold labels (ROC AUC) and its ability to detect label errors (F1 score) improve.
> <details>
> <summary>read the caption</summary>
> Figure 3: LLM Ensemble of different sizes (random subsets). (Left) presents the performance of the ensemble in terms of ROC AUC compared to the gold labels. (Right) presents the increasing ability to detect label errors. F1 is computed over Error / Not Error predictions.
> </details>


![](https://ai-paper-reviewer.com/2410.18889/charts_8_0.png)

> 🔼 The chart displays the weighted F1-score between pairs of annotation methods (Original labels, LLM-binary, MTurk-Strict, MTurk-Majority, and Gold labels), showing the agreement level between different annotation approaches.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison between all annotation methods, measured by the weighted-F1-score. Rows represent the \'true\' label and columns represent the \'prediction\'. For instance, the score of LLMs compared to the Original label is 0.72.
> </details>


![](https://ai-paper-reviewer.com/2410.18889/charts_8_1.png)

> 🔼 The chart shows that as the number of annotations per annotator increases, the quality of crowd-sourced annotations improves, as measured by accuracy and F1-score.
> <details>
> <summary>read the caption</summary>
> Figure 6: (x-axis) at list x annotations per annotator. (Right y-axis) The number of annotators with at least x annotations (bins). (Left y-axis) the average F1-score or accuracy for all user annotations with at least x annotations.
> </details>


![](https://ai-paper-reviewer.com/2410.18889/charts_10_0.png)

> 🔼 The chart displays the effect of handling label errors (flipping or filtering) on model performance (ROC AUC) when training on different subsets of data with varying confidence levels.
> <details>
> <summary>read the caption</summary>
> Figure 7: Fine-tuning a model on a transformed dataset. The gray bar is the original dataset - without any changes. The green bars present results for label flipping for a subset of examples, determined by LLMs-confidence (plain), or at random (dotted). The blue bars represent filtering of these examples.
> </details>


![](https://ai-paper-reviewer.com/2410.18889/charts_21_0.png)

> 🔼 The chart displays the weighted F1-score of agreement between different annotation methods (Original, LLM, Crowd-sourced, Gold) using a heatmap.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison between all annotation methods, measured by the weighted-F1-score. Rows represent the 'true' label and columns represent the 'prediction'. For instance, the score of LLMs compared to the Original label is 0.72.
> </details>


![](https://ai-paper-reviewer.com/2410.18889/charts_21_1.png)

> 🔼 The chart displays the relationship between the number of annotations per annotator and their annotation quality, revealing that annotators with more annotations tend to achieve higher accuracy and F1-scores.
> <details>
> <summary>read the caption</summary>
> Figure 6: (x-axis) at list x annotations per annotator. (Right y-axis) The number of annotators with at least x annotations (bins). (Left y-axis) the average F1-score or accuracy for all user annotations with at least x annotations.
> </details>


![](https://ai-paper-reviewer.com/2410.18889/charts_25_0.png)

> 🔼 The chart shows that as LLM confidence in disagreeing with original labels increases, the precision of identifying label errors also increases, surpassing original label agreement with expert re-labeling at the highest confidence levels.
> <details>
> <summary>read the caption</summary>
> Figure 2: When LLMs disagrees with original labels who is correct?. As the LLM's confidence grows, so does the precision of identifying an error in the original labels.
> </details>


![](https://ai-paper-reviewer.com/2410.18889/charts_25_1.png)

> 🔼 The chart displays the impact of handling label errors (filtering or flipping) based on LLM confidence on model fine-tuning performance, comparing different approaches and random manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 7: Fine-tuning a model on a transformed dataset. The gray bar is the original dataset - without any changes. The green bars present results for label flipping for a subset of examples, determined by LLMs-confidence (plain), or at random (dotted). The blue bars represent filtering of these examples.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Annotator group</td><td>Fleiss's K</td><td>%agreement</td><td>#examples</td><td>Fleiss's K (disagree. subset)</td><td>#annotators</td></tr><tr><td>Experts</td><td></td><td></td><td>222</td><td></td><td>2</td></tr><tr><td>Before reconciliation</td><td>0.486</td><td>75.7</td><td></td><td>0.486</td><td></td></tr><tr><td>After reconciliation</td><td>0.851</td><td>93.2</td><td></td><td>0.851</td><td></td></tr><tr><td>MTurk</td><td>0.074</td><td>60.5</td><td>400</td><td>-0.004</td><td>3*</td></tr><tr><td>LLM (different prompts)</td><td></td><td></td><td>640</td><td></td><td>4</td></tr><tr><td>GPT-4</td><td>0.706</td><td>85.3</td><td></td><td>0.571</td><td></td></tr><tr><td>PaLM2</td><td>0.750</td><td>87.7</td><td></td><td>0.696</td><td></td></tr><tr><td>LLaMA3</td><td>0.219</td><td>71.7</td><td></td><td>0.078</td><td></td></tr><tr><td>Mistral</td><td>0.459</td><td>73.2</td><td></td><td>0.314</td><td></td></tr><tr><td>LLMs (different models)</td><td>0.521</td><td>77.5</td><td>640</td><td>0.389</td><td>4</td></tr></table>{{< /table-caption >}}
> 🔼 The table summarizes the LLM disagreement rate and label error rate across four different datasets, indicating the extent of mislabeled data in existing benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of LLM disagreement and label error rates across different datasets. %pos is the percentage of positive (i.e., the consistent class) examples in the data. % LLM disagree refers to the percentage of examples where the LLM label differs from the original one. % error indicates the error rate in the sampled test set, while the number in parentheses denoting the estimated lower bound of the error rate for the entire dataset.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Model</td><td colspan="2">Rank</td><td colspan="2">ROC AUC</td><td colspan="2">F1 Score</td><td colspan="2">Accuracy</td></tr><tr><td>Original</td><td>Gold</td><td>Original</td><td>Gold</td><td>Original</td><td>Gold</td><td>Original</td><td>Gold</td></tr><tr><td>GPT-4</td><td>3</td><td>1 (+2)</td><td>0.81</td><td>0.93 (+15%)</td><td>0.73</td><td>0.83 (+14%)</td><td>0.73</td><td>0.83 (+14%)</td></tr><tr><td>NLI model</td><td>1</td><td>2 (-1)</td><td>0.93</td><td>0.91 (-2%)</td><td>0.87</td><td>0.87 (一)</td><td>0.87</td><td>0.87 (一)</td></tr><tr><td>PaLM2</td><td>6</td><td>3 (+3)</td><td>0.81</td><td>0.91 (+12%)</td><td>0.71</td><td>0.81 (+14%)</td><td>0.71</td><td>0.81 (+14%)</td></tr><tr><td>GPT-4o</td><td>4</td><td>4 (一)</td><td>0.81</td><td>0.91 (+12%)</td><td>0.74</td><td>0.83 (+12%)</td><td>0.74</td><td>0.83 (+12%)</td></tr><tr><td>GPT-4-mini</td><td>5</td><td>5 (一)</td><td>0.81</td><td>0.91 (+12%)</td><td>0.71</td><td>0.79 (+11%)</td><td>0.70</td><td>0.79 (+13%)</td></tr><tr><td>Llama3</td><td>7</td><td>6(+1)</td><td>0.75</td><td>0.86 (+15%)</td><td>0.47</td><td>0.50 (+6%)</td><td>0.52</td><td>0.55 (+6%)</td></tr><tr><td>Mistral-v0.3</td><td>8</td><td>7 (+1)</td><td>0.75</td><td>0.85 (+13%)</td><td>0.61</td><td>0.68 (+11%)</td><td>0.62</td><td>0.68 (+10%)</td></tr><tr><td>DeBERTa-v3</td><td>2</td><td>8 (-6)</td><td>0.84</td><td>0.80 (-5%)</td><td>0.76</td><td>0.73 (-4%)</td><td>0.76</td><td>0.73 (-4%)</td></tr><tr><td>Mistral-v0.2</td><td>9</td><td>9 (一)</td><td>0.73</td><td>0.82 (+12%)</td><td>0.66</td><td>0.72 (+9%)</td><td>0.66</td><td>0.72 (+9%)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 summarizes the performance of nine different models on the original and gold labels, showing the impact of label errors on model evaluation.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison of Model Performance on Original and Gold Labels. Ranking is defined over ROC AUC.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Dataset</td><td>Task</td><td>% pos</td><td>Subset Size</td><td>Full Dataset Size</td></tr><tr><td>MNBM</td><td>Summarization</td><td>10.6</td><td>640</td><td>2500</td></tr><tr><td>BEGIN</td><td>Dialogue</td><td>38.7</td><td>640</td><td>836</td></tr><tr><td>VitaminC</td><td>Fact Verification</td><td>52.5</td><td>640</td><td>63504</td></tr><tr><td>PAWS</td><td>Paraphrasing</td><td>44.3</td><td>640</td><td>8000</td></tr></table>{{< /table-caption >}}
> 🔼 This table summarizes the percentage of LLM disagreements with original labels and the estimated error rates in four datasets from the TRUE benchmark, indicating the extent of mislabeling in existing datasets.
> <details>
> <summary>read the caption</summary>
> Table 2: Summary of LLM disagreement and label error rates across different datasets. %pos is the percentage of positive (i.e., the consistent class) examples in the data. % LLM disagree refers to the percentage of examples where the LLM label differs from the original one. % error indicates the error rate in the sampled test set, while the number in parentheses denoting the estimated lower bound of the error rate for the entire dataset.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18889/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18889/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}