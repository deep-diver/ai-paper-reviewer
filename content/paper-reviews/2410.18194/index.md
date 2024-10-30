---
title: "ZIP-FIT: Embedding-Free Data Selection via Compression-Based Alignment"
summary: "ZIP-FIT uses gzip compression to efficiently select task-relevant training data for language models, drastically improving fine-tuning speed and performance."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", ]
showSummary: true
date: 2024-10-23
draft: false
---

{{< keyword >}} 2410.18194 {{< /keyword >}}

### TL;DR


{{< lead >}}

The paper introduces ZIP-FIT, a new method for selecting the most relevant training data for language models.  Instead of using complex embedding techniques, ZIP-FIT leverages the simple yet powerful gzip compression algorithm.  The core idea is that data highly similar to the target task will compress better together.  Experiments show ZIP-FIT significantly speeds up training (up to 85% faster) and improves accuracy compared to existing methods, especially when training data is limited.  Moreover, ZIP-FIT demonstrates that a smaller dataset of high-quality data is better than a larger, lower-quality one.  This is a significant contribution because it provides a computationally efficient and scalable solution for data selection in various machine learning tasks, particularly when resources are limited.  It also emphasizes the importance of data quality and alignment in improving model performance. The findings challenge existing approaches that rely on computationally expensive embeddings and simplistic, noisy representations, promoting the use of compression-based similarity as a key criterion for effective data selection.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18194" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18194" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is significant because it introduces a novel, efficient data selection method for fine-tuning language models.  It addresses the challenge of task-specific data scarcity by leveraging gzip compression to identify highly relevant data, thus accelerating training and improving model performance.  The embedding-free nature of the method makes it broadly applicable and computationally efficient, offering significant advantages over existing techniques.  This opens up new avenues for research in efficient model training and data curation, particularly in resource-constrained environments.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ZIP-FIT, a novel data selection method, uses gzip compression to measure data alignment with the target task, enabling precise selection of truly relevant data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ZIP-FIT significantly outperforms existing baselines in Autoformalization and code generation tasks, achieving up to 85.1% faster convergence and lower cross-entropy loss. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ZIP-FIT demonstrates the superiority of smaller, well-aligned datasets over larger, less-targeted datasets, highlighting the importance of data quality in model training. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18194/figures_2_0.png)

> 🔼 The figure illustrates the ZIP-FIT algorithm, detailing how it uses gzip compression to measure alignment between source and target datasets for efficient data selection and fine-tuning of large language models.
> <details>
> <summary>read the caption</summary>
> Figure 1: ZIP-FIT selects task-specific data for efficient finetuning. (0) Obtain both the source and target datasets. (1) Calculate ZIP-FIT Alignment of each source example with the target dataset using gzip compression. (2) Rank all source examples based on these alignment scores. (3) Select the top-K most aligned examples for fine-tuning. (4) Fine-tune a large language model using the selected top-K examples to improve performance on the target task.
> </details>





![](https://ai-paper-reviewer.com/2410.18194/charts_2_0.png)

> 🔼 The chart displays the cross-entropy test loss reduction speed for different models and token selection sizes, demonstrating ZIP-FIT's superior efficiency compared to DSIR and D4 in code generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Code Generation: ZIP-FIT accelerates cross-entropy loss reduction, even in code-specialized models like CodeGemma-2B. The plots show cross-entropy test loss versus the number of training tokens for Gemma2-2B (top row) and CodeGemma-2B (bottom row) across different token selection sizes. ZIP-FIT (blue) consistently reduces loss faster than DSIR (green) and D4 (red), achieving up to 85.11% speed improvement at lower token counts. These results demonstrate ZIP-FIT's efficiency in data selection for fine-tuning models on code-geneation tasks.
> </details>





{{< table-caption >}}
<table id='6' style='font-size:18px'><tr><td>Sample Text (Beginning)</td><td>Alignment Score</td></tr><tr><td>Across all his bands and projects, Townsend has released twenty @-@ three studio albums and three live albums.</td><td>0.5000</td></tr><tr><td>Require Import CodeDeps. Require Import Ident. Local Open Scope Z_scope. Definition _addr := 1%positive. Definition -g := 2%positive.</td><td>0.4928</td></tr><tr><td>This Photostock Vector Night Sky Background With Full Moon Clouds And Stars Vector Ilgraphicration has 1560 x 1560 pixel resolution...</td><td>0.4926</td></tr><tr><td>module Structure.Logic where ·</td><td>0.4926</td></tr><tr><td>{ dg-do compile } PR fortran/51993 Code contributed by Sebastien Bardeau <bardeau at iram dot fr> module mymod type :: mytyp...</td><td>0.4891</td></tr><tr><td>For over ten years, the St. Louis Mercy home has formed a special connection with a local community theatre: The Muny. This summer the...</td><td>0.4889</td></tr><tr><td>Read("SchreierSims.gi"); LoadPackage("AtlasRep""); MicroSeconds := function() local t; t := IO_gettimeofday(); return t.tv _sec * 1000000 + t.t</td><td>0.4889</td></tr><tr><td>Get the keyId used by this peer (this peer's identifier). This is stored in the key store.</td><td>0.4857</td></tr><tr><td>Initializes and adds a node to the graph. NOTE: At least the type must be supplied for the Node to exist in the graph. Args: graph: The graph...</td><td>0.4853</td></tr><tr><td>def bgra2rgb(img): cv2.cvtColor(img, cv2.COLOR _BGRA2BGR) has an issue removing the alpha channel, this gets rid of wrong trans...</td><td>0.4853</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 shows the top 20 code samples selected by the ZIP-FIT algorithm, ranked by their alignment scores with the target task (code generation).
> <details>
> <summary>read the caption</summary>
> Table 1: Beginning characters of the top 20 samples selected by ZIP-FIT when the target task is code generation.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.18194/charts_3_0.png)

> 🔼 The chart shows a strong negative correlation between ZIP-FIT alignment scores and cross-entropy loss, indicating that higher alignment scores correspond to lower cross-entropy losses.
> <details>
> <summary>read the caption</summary>
> Figure 3: Higher ZIP-FIT alignment correlates with lower cross-entropy loss. The relationship between ZIP-FIT alignment and cross-entropy (CE) loss for (a) GPT-2 trained on 22k tokens (R2 = 0.90, p = 0.001) and (b) Mistral7B trained on 22k tokens (R2 = 0.75, p = 0.025). Each point represents a dataset, with its position reflecting the dataset's ZIP-FIT alignment score against the ProofNet test set and the resulting CE loss. The dashed red line indicates the linear regression fit, while the dashed grey line shows the pretrained CE loss. Higher alignment scores correspond to lower CE losses, demonstrating that training on better aligned data yields better performance.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_3_1.png)

> 🔼 The chart shows a strong negative correlation between ZIP-FIT alignment scores and cross-entropy loss for two language models, indicating that higher alignment leads to lower loss and better model performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Higher ZIP-FIT alignment correlates with lower cross-entropy loss. The relationship between ZIP-FIT alignment and cross-entropy (CE) loss for (a) GPT-2 trained on 22k tokens (R2 = 0.90, p = 0.001) and (b) Mistral7B trained on 22k tokens (R2 = 0.75, p = 0.025). Each point represents a dataset, with its position reflecting the dataset's ZIP-FIT alignment score against the ProofNet test set and the resulting CE loss. The dashed red line indicates the linear regression fit, while the dashed grey line shows the pretrained CE loss. Higher alignment scores correspond to lower CE losses, demonstrating that training on better aligned data yields better performance.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_5_0.png)

> 🔼 The chart displays the relationship between data alignment, as measured by ZIP-FIT, and the speed and extent of cross-entropy loss reduction during model fine-tuning, showcasing the efficiency of using highly aligned data for training.
> <details>
> <summary>read the caption</summary>
> Figure 4: Highly aligned data lowers cross-entropy loss more efficiently. The x-axis shows the number of training tokens, and the y-axis represents the cross-entropy (CE) test loss. Different curves correspond to datasets filtered by different alignment scores, indicating their relevance to the target domain. The most aligned data reduce Test CE loss significantly faster than less aligned data. The left panel depicts results using GPT-2, and the right panel uses Mistral7B, demonstrating that using highly aligned data not only accelerates training but also achieves better model performance, validating the effectiveness of ZIP-FIT for data selection in fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_6_0.png)

> 🔼 The chart shows that ZIP-FIT consistently achieves lower cross-entropy test loss faster than D4 and DSIR across three different models and various token selection sizes for the AutoFormalization task, demonstrating its efficiency in data selection.
> <details>
> <summary>read the caption</summary>
> Figure 5: AutoFormalization: ZIP-FIT consistently achieves lower test loss more quickly than D4 and DSIR, demonstrating its efficiency in data selection. The plots show cross-entropy test loss versus the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across different token selection sizes. ZIP-FIT (blue line) consistently outperforms both DSIR (green line) and D4 (red line) across all model and token size configurations, highlighting its ability to process data more efficiently. The percentage labels in each plot indicate the relative speedup of ZIP-FIT over DSIR in reaching the lowest cross-entropy loss, reinforcing the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_8_0.png)

> 🔼 The chart displays the relationship between the number of training tokens and cross-entropy test loss for different alignment thresholds, demonstrating that data filtering with higher alignment thresholds leads to faster convergence and lower test loss.
> <details>
> <summary>read the caption</summary>
> Figure 6: Selective data filtering with ZIP-FIT allows us to achieve better cross-entropy test loss faster than training on all the data, resulting in improved performance and efficiency. The x-axis represents the number of training tokens, while the y-axis shows the cross-entropy test loss. The curves represent models fine-tuned (FT) on datasets filtered by varying alignment thresholds (>0.1, >0.2, >0.3). The dashed line indicates the baseline performance of the pretrained Mistral7B model. Training on data filtered with higher alignment thresholds leads to superior performance, demonstrating the effectiveness of removing misaligned data in fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_0.png)

> 🔼 The chart displays the cross-entropy test loss against the number of training tokens for three different models using three different data selection methods, showing that ZIP-FIT consistently achieves lower test loss at a faster rate.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_1.png)

> 🔼 The chart displays the cross-entropy test loss for three different language models across various token selection sizes, showing that ZIP-FIT consistently achieves lower test loss at a faster rate compared to D4 and DSIR.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_2.png)

> 🔼 The chart displays the cross-entropy test loss against the number of training tokens for three models using different data selection methods, showing ZIP-FIT consistently achieves lower loss faster than D4 and DSIR.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_3.png)

> 🔼 The chart displays the cross-entropy test loss for three different models across various token selection sizes, demonstrating ZIP-FIT's superior performance and speed compared to D4 and DSIR in achieving lower test loss.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_4.png)

> 🔼 The chart displays the efficiency of ZIP-FIT, DSIR, and D4 in reducing cross-entropy test loss during code generation model fine-tuning, showcasing ZIP-FIT's superior performance and speed.
> <details>
> <summary>read the caption</summary>
> Figure 2: Code Generation: ZIP-FIT accelerates cross-entropy loss reduction, even in code-specialized models like CodeGemma-2B. The plots show cross-entropy test loss versus the number of training tokens for Gemma2-2B (top row) and CodeGemma-2B (bottom row) across different token selection sizes. ZIP-FIT (blue) consistently reduces loss faster than DSIR (green) and D4 (red), achieving up to 85.11% speed improvement at lower token counts. These results demonstrate ZIP-FIT's efficiency in data selection for fine-tuning models on code-geneation tasks.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_5.png)

> 🔼 The chart compares the cross-entropy test loss and training speed of three different language models using three data selection methods (ZIP-FIT, DSIR, and D4) across various dataset sizes.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_6.png)

> 🔼 The chart displays the cross-entropy test loss for three different language models across varying token selection sizes, demonstrating that ZIP-FIT consistently achieves lower loss faster than D4 and DSIR.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_7.png)

> 🔼 The chart compares the performance of ZIP-FIT, DSIR, and D4 in reducing cross-entropy loss during Autoformalization across different models and token selection sizes, demonstrating ZIP-FIT's superior efficiency and speed.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_17_8.png)

> 🔼 The chart displays the cross-entropy test loss for three different language models across varying numbers of training tokens, demonstrating that ZIP-FIT consistently achieves lower loss faster than two other methods.
> <details>
> <summary>read the caption</summary>
> Figure 7: ZIP-FIT consistently achieves a lower test loss at a faster rate compared to D4 and DSIR for Autoformalization. The plots show the cross-entropy test loss against the number of training tokens for three models (InterLM-Math-Plus-1.8B, Gemma2-2B, and Mistral7B) across various token selection sizes. ZIP-FIT (blue line) consistently surpasses both DSIR (green line) and D4 (red line) across all model and token size configurations, emphasizing its superior data processing efficiency. The percentage labels in each plot denote the relative speedup of ZIP-FIT over DSIR in attaining the lowest cross-entropy loss, further underscoring the method's scalability and adaptability for domain-specific fine-tuning.
> </details>


![](https://ai-paper-reviewer.com/2410.18194/charts_18_0.png)

> 🔼 The chart compares the cross-entropy test loss and data selection time of ZIP-FIT against DSIR for different model and token sizes, showing ZIP-FIT's superior efficiency and performance.
> <details>
> <summary>read the caption</summary>
> Figure 8: ZIP-FIP demonstrates lower cross-entropy and lower run time during data selection than competing DSIR and D4 methods. ZIP-FIT is cheaper, faster, and better performing. The run times do no include fine-tuning time, since it's a constant offset across all models. D4's data selection (not shown) takes 5hs because it uses an embedding model (opt-125m Zhang et al. (2022)), the same one as the original paper Tirumala et al. (2023).
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18194/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18194/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}