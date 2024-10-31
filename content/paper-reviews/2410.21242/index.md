---
title: "Zero-Shot Dense Retrieval with Embeddings from Relevance Feedback"
summary: "ReDE-RF revolutionizes zero-shot dense retrieval by using relevance feedback from LLMs to refine query embeddings, achieving state-of-the-art results with vastly improved efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Information Retrieval", "🏢 MIT Lincoln Laboratory",]
showSummary: true
date: 2024-10-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.21242 {{< /keyword >}}
{{< keyword icon="writer" >}} Nour Jedidi et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.21242" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.21242" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Zero-shot dense retrieval aims to build effective search systems without labeled data.  However, existing methods often struggle with efficiency and reliance on LLMs for domain-specific knowledge. These limitations hinder their practical application and scalability. 



ReDE-RF overcomes these challenges using a relevance feedback approach. Instead of generating hypothetical documents via LLMs, it uses LLMs to select relevant documents from an initial retrieval.  This dramatically reduces latency while improving accuracy.  The authors further introduce DistillReDE, a distilled model that achieves comparable performance without the need for LLMs at inference time, demonstrating impressive efficiency and practicality.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} **ReDE-RF significantly outperforms existing zero-shot dense retrieval methods, particularly in low-resource scenarios.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} **The method achieves substantial latency improvements by replacing computationally expensive hypothetical document generation with efficient relevance estimation.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} **DistillReDE, a distilled version of ReDE-RF, demonstrates comparable performance without relying on LLMs during inference, enhancing real-world applicability.** {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial for researchers in information retrieval** as it presents a novel zero-shot dense retrieval method that outperforms existing methods, especially in low-resource settings.  It offers significant improvements in efficiency and generalizability, opening new avenues for research in unsupervised dense retrieval and LLM applications.  The proposed distillation technique also provides valuable insights into model compression and efficient deployment.

------
#### Visual Insights





![](https://ai-paper-reviewer.com/2410.21242/charts_7_0.png)

> 🔼 The chart compares the performance of three dense retrieval methods (Contriever, DistillReDE, and ReDE-RF) across five low-resource datasets using NDCG@10 as the evaluation metric.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of DistillReDE to Contriever and ReDE-RF (Default: HyDEPRF).
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Model</td><td rowspan="2">Init. Retrieval</td><td colspan="2">High Resource</td><td colspan="8">Low Resource (BEIR)</td></tr><tr><td>DL19</td><td>DL20</td><td>News</td><td>Covid</td><td>FiQA</td><td>SciFact</td><td>DBPedia</td><td>NFCorpus</td><td>Robust04</td><td>BEIR (Avg.)</td></tr><tr><td>BM25</td><td>N/A</td><td>50.6</td><td>48.0</td><td>39.5</td><td>59.5</td><td>23.6</td><td>67.9</td><td>31.8</td><td>32.2</td><td>40.7</td><td>42.2</td></tr><tr><td>Contriever</td><td>N/A</td><td>44.5</td><td>42.1</td><td>34.8</td><td>27.3</td><td>24.5</td><td>64.9</td><td>29.2</td><td>31.7</td><td>31.6</td><td>34.9</td></tr><tr><td>Hybrid (BM25 + Contriever)</td><td>N/A</td><td>52.9</td><td>50.9</td><td>42.2</td><td>52.9</td><td>28.4</td><td>71.6</td><td>34.8</td><td>33.7</td><td>43.0</td><td>43.8</td></tr><tr><td>ContrieverAvgPRF PRF-Depth: 3</td><td>Hybrid (3)</td><td>52.1</td><td>46.4</td><td>43.4</td><td>48.1</td><td>22.8</td><td>59.9</td><td>31.9</td><td>32.3</td><td>38.6</td><td>39.6</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>PRF-Depth: 20</td><td>Hybrid (20)</td><td>49.2</td><td>46.2</td><td>39.9</td><td>51.3</td><td>12.0</td><td>36.9</td><td>28.6</td><td>21.7</td><td>39.2</td><td>32.8</td></tr><tr><td colspan="12">Zero-Shot Dense Retrieval</td></tr><tr><td>PromptReps (Llama3-8B-I)</td><td>N/A</td><td>-</td><td>-</td><td>-</td><td>59.5</td><td>27.1</td><td>52.7</td><td>31.5</td><td>29.6</td><td>-</td><td>-</td></tr><tr><td>HyDE (Mistral-7B-Instruct)</td><td>N/A</td><td>57.8</td><td>53.9</td><td>44.0</td><td>56.9</td><td>21.6</td><td>65.1</td><td>35.3</td><td>27.7</td><td>41.5</td><td>41.7</td></tr><tr><td>HyDEPRF (Mistral-7B-Instruct)</td><td>Hybrid (20)</td><td>63.5</td><td>62.0</td><td>46.9</td><td>59.1</td><td>28.3</td><td>64.5</td><td>35.2</td><td>35.0</td><td>45.6</td><td>44.9</td></tr><tr><td>ReDE-RF (Ours)</td><td>Hybrid</td><td></td><td>59.4</td><td>46.1</td><td></td><td></td><td>67.4</td><td>37.0</td><td></td><td></td><td>47.0</td></tr><tr><td>Default: Contriever</td><td>(20)</td><td>60.3</td><td></td><td></td><td>65.6</td><td>28.2</td><td></td><td></td><td>34.8</td><td>49.8</td><td></td></tr><tr><td>Default: HyDEPRF</td><td>Hybrid (20)</td><td>62.8</td><td>60.4</td><td>47.1</td><td>65.6</td><td>29.3</td><td>66.9</td><td>37.6</td><td>35.5</td><td>51.7</td><td>47.7</td></tr><tr><td colspan="12">Supervised Dense Retrieval</td></tr><tr><td>DPR</td><td>N/A</td><td>62.2</td><td>65.3</td><td>16.1</td><td>33.2</td><td>11.2</td><td>31.8</td><td>26.3</td><td>18.9</td><td>25.2</td><td>23.2</td></tr><tr><td>ANCE</td><td>N/A</td><td>64.5</td><td>64.6</td><td>38.2</td><td>65.4</td><td>29.5</td><td>50.7</td><td>28.1</td><td>23.7</td><td>39.2</td><td>39.3</td></tr><tr><td>ContrieverFT</td><td>N/A</td><td>62.1</td><td>63.2</td><td>42.8</td><td>59.6</td><td>32.9</td><td>67.7</td><td>41.3</td><td>32.8</td><td>47.3</td><td>46.3</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the evaluation results of various zero-shot and supervised dense retrieval methods on the TREC and BEIR datasets, comparing their NDCG@10 scores across high and low resource domains.
> <details>
> <summary>read the caption</summary>
> Table 1: Results (NDCG@10) on TREC and BEIR. We report the mean NDCG@10 across three runs for HyDE, HYDEPRF, and ReDE-RF (Default: HyDEPRF). The average standard deviation across all datasets for HyDE, HYDEPRF and ReDE-RF (Default:HyDEPRF) was ≈ 0.4%, ≈ 0.5% and ≈ 0.1% respectively. Exact numbers can be found in Appendix C.
> </details>





### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='6' style='font-size:16px'><tr><td></td><td>DL20</td><td>News</td><td>DBpedia</td></tr><tr><td>Max k*</td><td></td><td></td><td></td></tr><tr><td>1</td><td>54.2</td><td>35.8</td><td>31.5</td></tr><tr><td>5</td><td>58.5</td><td>40.8</td><td>35.0</td></tr><tr><td>10</td><td>60.0</td><td>41.1</td><td>36.1</td></tr><tr><td>20</td><td>59.0</td><td>41.2</td><td>35.4</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the impact of varying the number of documents used to update the ReDE-RF query embedding on NDCG@10 for three datasets.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of the number of documents used to update the ReDE-RF (No Default) query embedding.
> </details>

{{< table-caption >}}
<table id='10' style='font-size:16px'><tr><td>Prompt</td><td>DL19</td><td>DL20</td></tr><tr><td>Figure 2</td><td>59.1</td><td>59.0</td></tr><tr><td>pointwise.yes_no (Zhuang et al., 2024c)</td><td>61.4</td><td>56.1</td></tr><tr><td>RG-YN (Zhuang et al., 2024a)</td><td>57.8</td><td>51.8</td></tr><tr><td>RG-YN*</td><td>59.8</td><td>54.9</td></tr><tr><td>Thomas et al. (2024)</td><td>61.4</td><td>56.9</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 shows the impact of different prompt variations on the ReDE-RF model's performance, measured by NDCG@10 and NDCG@20 on DL19 and DL20 datasets.
> <details>
> <summary>read the caption</summary>
> Table 5: Impact of different prompts on ReDE-RF (No Default). For Thomas et al. (2024), we make the relevance options binary. Prompts are in Appendix G.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Default</td><td>Init. Retrieval</td><td>Covid</td><td>NFCorpus</td><td>FiQA</td><td>Robust04</td><td>DBPedia</td></tr><tr><td>Contriever</td><td>Hybrid</td><td>65.6</td><td>34.8</td><td>28.2</td><td>49.8</td><td>37.0</td></tr><tr><td>HyDEPRF</td><td>Hybrid</td><td>65.6</td><td>35.5</td><td>29.3</td><td>51.7</td><td>37.6</td></tr><tr><td>DistillReDE</td><td>DistillReDE</td><td>63.8</td><td>35.6</td><td>30.2</td><td>47.9</td><td>37.8</td></tr><tr><td>DistillReDE</td><td>Hybrid*</td><td>66.3</td><td>35.8</td><td>30.9</td><td>49.2</td><td>38.4</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the NDCG@10 scores of ReDE-RF using Contriever, HyDEPRF, and DistillReDE as initial retrievers, comparing their performance across various low-resource datasets.
> <details>
> <summary>read the caption</summary>
> Table 6: NDCG@10 of ReDE-RF when implemented with DistillReDE. Hybrid* is a hybrid system that combines results from BM25 and DistillReDE. Hybrid is BM25 + Contriever, as in Table 1.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Method</td><td>Covid NDCG@10/20</td><td>DL19 NDCG@10/20</td><td>News NDCG@10/20</td></tr><tr><td>Mistral-7B-Instruct</td><td></td><td></td><td></td></tr><tr><td>ReDE-RF</td><td>65.6/57.9</td><td>62.8 / 60.3</td><td>47.1/ 43.8</td></tr><tr><td>Hybrid + PR</td><td>63.6/49.6</td><td>60.0/53.7</td><td>45.6/42.5</td></tr><tr><td>ReDE-RF + PR</td><td>68.8 / 58.9</td><td>62.6/59.9</td><td>45.8/43.2</td></tr><tr><td>Gemma-2-9B-it</td><td></td><td></td><td></td></tr><tr><td>ReDE-RF</td><td>67.9 / 60.0</td><td>62.0/61.3</td><td>46.6/42.8</td></tr><tr><td>Hybrid + PR</td><td>65.0% 50.8</td><td>63.7/55.8</td><td>46.3/41.9</td></tr><tr><td>ReDE-RF + PR</td><td>72.3/61.2</td><td>70.7 / 64.8</td><td>43.4/41.5</td></tr><tr><td>Llama-3.1-8B-I</td><td></td><td></td><td></td></tr><tr><td>ReDE-RF</td><td>65.7/58.7</td><td>59.0/59.0</td><td>49.9/45.7</td></tr><tr><td>Hybrid + PR</td><td>67.1/51.8</td><td>66.8/57.4</td><td>47.2/42.8</td></tr><tr><td>ReDE-RF + PR</td><td>72.9/61.1</td><td>70.1/64.3</td><td>48.6/45.4</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 compares ReDE-RF's performance against pointwise re-ranking using three different LLMs across multiple metrics, showing that ReDE-RF consistently outperforms pointwise re-ranking in terms of NDCG@20.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparing ReDE-RF (Default: HyDEPRF) to pointwise reranking (PR). ReDE-RF + PR reranks the top-20 passages returned from ReDE-RF. Bold denotes best overall system. Underline denotes best between ReDE-RF and Hybrid + PR.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Dataset</td><td># Queries</td></tr><tr><td>TREC DL19</td><td>43</td></tr><tr><td>TREC DL20</td><td>54</td></tr><tr><td>TREC-News</td><td>57</td></tr><tr><td>TREC-Covid</td><td>50</td></tr><tr><td>FiQA</td><td>648</td></tr><tr><td>SciFact</td><td>300</td></tr><tr><td>DBPedia</td><td>400</td></tr><tr><td>NFCorpus</td><td>323</td></tr><tr><td>Robust04</td><td>249</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the NDCG@10 results on the TREC and BEIR datasets for various zero-shot and supervised dense retrieval methods, showing ReDE-RF's superiority in low-resource settings and competitive performance in high-resource ones.
> <details>
> <summary>read the caption</summary>
> Table 1: Results (NDCG@10) on TREC and BEIR. We report the mean NDCG@10 across three runs for HyDE, HYDEPRF, and ReDE-RF (Default: HyDEPRF). The average standard deviation across all datasets for HyDE, HYDEPRF and ReDE-RF (Default:HyDEPRF) was ≈ 0.4%, ≈ 0.5% and ≈ 0.1% respectively. Exact numbers can be found in Appendix C.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Model</td><td>DL19</td><td>DL20</td><td>News</td><td>Covid</td><td>FiQA</td><td>SciFact</td><td>DBPedia</td><td>NFCorpus</td><td>Robust04</td></tr><tr><td rowspan="2">HyDE (Mistral-7B-Instruct)</td><td>57.8</td><td>53.9</td><td>44.0</td><td>56.9</td><td>21.6</td><td>65.1</td><td>35.3</td><td>27.7</td><td>41.5</td></tr><tr><td>±0.3</td><td>±0.7</td><td>±0.6</td><td>±0.8</td><td>±0.2</td><td>±0.2</td><td>±0.3</td><td>±0.2</td><td>±0.4</td></tr><tr><td rowspan="2">HyDEPRF (Mistral-7B-Instruct)</td><td>63.5</td><td>62.0</td><td>46.9</td><td>59.1</td><td>28.3</td><td>64.5</td><td>35.2</td><td>35.0</td><td>45.6</td></tr><tr><td>±1.2</td><td>±0.2</td><td>±1.1</td><td>±0.5</td><td>±0.2</td><td>±0.5</td><td>±0.1</td><td>±0.2</td><td>±0.2</td></tr><tr><td rowspan="2">ReDE-RF (Default: HyDEPRF)</td><td>62.8</td><td>60.4</td><td>47.1</td><td>65.6</td><td>29.3</td><td>66.9</td><td>37.6</td><td>35.5</td><td>51.7</td></tr><tr><td>±0.0</td><td>±0.1</td><td>±0.3</td><td>±0.1</td><td>±0.1</td><td>±0.3</td><td>±0.1</td><td>±0.1</td><td>±0.1</td></tr></table>{{< /table-caption >}}
> 🔼 Table 8 presents the NDCG@10 scores of HyDE, HyDEPRF, and ReDE-RF across multiple datasets, showing the mean and standard deviation across three runs for each model.
> <details>
> <summary>read the caption</summary>
> Table 8: NDCG@10 of HyDE-Mistral-7B-Instruct and ReDE-RF (w/ HyDE) with standard deviations across three runs.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Model</td><td>Init Retrieval</td><td>DL19</td><td>DL20</td><td>News</td><td>Covid</td><td>FiQA</td><td>SciFact</td><td>DBPedia</td><td>NFCorpus</td><td>Robust04</td></tr><tr><td>HyDEPRF (Mistral-7B-Instruct)</td><td>Hybrid (20)</td><td>63.5</td><td>62.0</td><td>46.9</td><td>59.1</td><td>28.3</td><td>64.5</td><td>35.2</td><td>35.0</td><td>45.6</td></tr><tr><td>HyDEPRF (Mistral-7B-Instruct)</td><td>Hybrid (10)</td><td>63.6</td><td>60.5</td><td>47.2</td><td>58.8</td><td>28.3</td><td>63.4</td><td>34.6</td><td>34.6</td><td>44.5</td></tr></table>{{< /table-caption >}}
> 🔼 Table 9 shows the NDCG@10 scores of HyDEPRF using different numbers of initially retrieved documents as context on various datasets.
> <details>
> <summary>read the caption</summary>
> Table 9: NDCG@10 of HyDEPRF across different number of initially retrieved documents used as context.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21242/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21242/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}