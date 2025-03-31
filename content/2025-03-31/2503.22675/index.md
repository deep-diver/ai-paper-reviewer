---
title: "Think Before Recommend: Unleashing the Latent Reasoning Power for Sequential Recommendation"
summary: "ReaRec: Unleashing latent reasoning power for sequential recommendation through inference-time multi-step reasoning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Recommender Systems", "🏢 Gaoling School of Artificial Intelligence, Renmin University of China",]
showSummary: true
date: 2025-03-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.22675 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiakai Tang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-31 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.22675" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.22675" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.22675/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Sequential Recommendation (SeqRec)** is vital for predicting user's next item by learning from their past interactions. Current methods use a direct computation approach, where the encoder's final hidden state represents the user. But this method needs more depth to understand complex user behaviors. It also struggles with less popular items, leading to less-than-ideal recommendations. To fix this issue, this paper has presented ReaRec framework to enhance user profiles through multi-step reasoning, using special embeddings to separate item encoding from reasoning. 



To unleash the power of ReaRec, the study presents **Ensemble Reasoning Learning (ERL)** and **Progressive Reasoning Learning (PRL)**, two new ways to learn. ERL uses ensemble learning to build multi-order user profiles, capturing different views of user interests, while PRL uses curriculum learning to guide the model from basic pattern learning to refining sequential patterns. Experiments on multiple datasets demonstrate the effectiveness of ReaRec. Remarkably, ReaRec improves performance across multiple setups, showing its potential for future research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ReaRec enhances sequential recommendation models through implicit multi-step reasoning during inference. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Ensemble Reasoning Learning (ERL) and Progressive Reasoning Learning (PRL) improve ReaRec's reasoning potential. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments show ReaRec significantly boosts performance by approximately 30%-50%. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel inference-time computing framework** that can enhance sequential recommendation models, opening up avenues for research in inference-time scaling and sequential recommendation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.22675/x1.png)

> 🔼 Figure 1 illustrates the difference between traditional sequential recommendation methods and the proposed ReaRec framework. Traditional methods use a direct inference approach, where the final hidden state of a sequence encoder represents the user's preferences.  In contrast, ReaRec introduces a multi-step reasoning process. The final hidden state is repeatedly fed back into the model to enhance the user representation through implicit reasoning.  Special reasoning position embeddings are used to distinguish between the item encoding space and the multi-step reasoning space.
> <details>
> <summary>read the caption</summary>
> Figure 1. Illustration of traditional direct inference (i.e., reasoning-free) and our proposed multi-step reasoning-enhanced sequential recommendation framework.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.4.1">
<tr class="ltx_tr" id="S4.T1.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Yelp</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T1.4.1.1.3.1"></span> <span class="ltx_text" id="S4.T1.4.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.4.1.1.3.2.1">
<span class="ltx_tr" id="S4.T1.4.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.1.1.3.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Video &amp;</span></span>
<span class="ltx_tr" id="S4.T1.4.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.1.1.3.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Games</span></span>
</span></span><span class="ltx_text" id="S4.T1.4.1.1.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">Software</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T1.4.1.1.5.1"></span> <span class="ltx_text" id="S4.T1.4.1.1.5.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.4.1.1.5.2.1">
<span class="ltx_tr" id="S4.T1.4.1.1.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.1.1.5.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">CDs &amp;</span></span>
<span class="ltx_tr" id="S4.T1.4.1.1.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.1.1.5.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Vinyl</span></span>
</span></span><span class="ltx_text" id="S4.T1.4.1.1.5.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.1.1.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T1.4.1.1.6.1"></span> <span class="ltx_text" id="S4.T1.4.1.1.6.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T1.4.1.1.6.2.1">
<span class="ltx_tr" id="S4.T1.4.1.1.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.1.1.6.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Baby &amp;</span></span>
<span class="ltx_tr" id="S4.T1.4.1.1.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.4.1.1.6.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Products</span></span>
</span></span><span class="ltx_text" id="S4.T1.4.1.1.6.3"></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">#Users</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">13,083</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">89,021</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">30,049</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">35,238</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.1.2.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">140,292</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.3">
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">#Items</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">10,697</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">22,933</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">16,705</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">87,969</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.3.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">30,689</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.4">
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">#Avg. Inter. / User</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">33.92</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.96</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">14.59</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.4.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.57</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.5">
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">#Avg. Inter. / Item</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">41.49</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">23.15</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">10.06</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.5.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">25.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.6">
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">#Avg. Inter.</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">443,807</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">530,989</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">168,029</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">513,991</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.1.6.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">780,809</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.7.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Sparisty</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.7.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">99.68%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.7.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">99.97%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.7.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">99.97%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.7.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">99.98%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.1.7.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">99.98%</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a summary of the characteristics of five datasets used in the paper's experiments on sequential recommendation.  For each dataset (Yelp, Video & Games, Software, CDs & Vinyl, and Baby & Products), the table provides the number of users, the number of items, the average number of interactions per user, the average number of interactions per item, and the sparsity of the dataset.  This information is crucial for understanding the scale and nature of the data used to evaluate the proposed models.
> <details>
> <summary>read the caption</summary>
> Table 1. The statistics of datasets.
> </details>





### In-depth insights


#### Inference ReaRec
While "Inference ReaRec" isn't explicitly a heading, the paper's core contribution revolves around enhancing inference in sequential recommendation. ReaRec, the proposed framework, strategically increases inference-time computation to allow models to "think" more deeply before recommending. This is achieved through **multi-step implicit reasoning**, where the sequence encoder's hidden state is fed back autoregressively. The key idea is to refine user representations through these reasoning chains, mimicking the cognitive process of deliberation. This is in contrast to traditional methods relying on a single forward pass, which may struggle with complex user preferences or long-tail items. The framework's model-agnostic design allows it to be integrated with various SeqRec architectures, demonstrating its potential to significantly boost performance by deepening feature crossing within the latent space, especially for users with sparse data.

#### Reasoning Boost
The concept of "Reasoning Boost" in sequential recommendation systems (SeqRec) signifies a paradigm shift beyond direct forward computation. Instead of solely relying on the final hidden state of a sequence encoder, **Reasoning Boost entails enriching user representations through iterative, multi-step inference**. This approach aims to mimic human cognitive processes, where deliberation and logical analysis precede decision-making. By autoregressively feeding the sequence's last hidden state back into the SeqRec model, while incorporating specialized reasoning position embeddings to decouple the item encoding and reasoning spaces, **the model gains enhanced computational depth to capture nuanced, evolving user preferences, particularly for long-tail items**. This leads to a more refined understanding of user interests and improved recommendation accuracy. This approach has the potential to address inherent limitations of direct forward computation, **unlocking latent reasoning capabilities and enabling more adaptive and personalized recommendations**.

#### ERL & PRL Learn
Ensemble Reasoning Learning (ERL) and Progressive Reasoning Learning (PRL) represent distinct yet complementary approaches to enhancing sequential recommendation systems. **ERL leverages the power of ensemble methods by aggregating diverse reasoning results from multiple steps**, mitigating suboptimal performance arising from reliance solely on the final output. This multi-view approach aims to capture a more comprehensive understanding of evolving user interests. Conversely, **PRL adopts a curriculum learning strategy**, progressively sharpening the model's focus on the user's true preference distribution. By gradually refining the reasoning pathways, PRL seeks to avoid premature convergence and better approximate complex sequential patterns. The core difference is that ERL integrates multi-level information, while PRL uncovers complex intent evolution patterns. Both aim to enhance reasoning and improve recommendation accuracy, addressing limitations of direct forward computation.

#### Dataset analysis
Based on the provided research paper about sequential recommendation, the 'Dataset analysis' section would typically involve a detailed examination of the datasets used for evaluating the proposed model. This often includes statistics such as the number of users, items, and interactions, as well as the **sparsity** of the interaction data. Understanding these characteristics is crucial because they directly influence the performance of recommendation algorithms.  For instance, a highly sparse dataset might necessitate techniques like data augmentation or transfer learning to improve model generalization. Additionally, the analysis might delve into the **distribution of item popularity** and user activity, identifying potential biases that could affect the fairness and accuracy of the recommendations. It would also be important to describe how the datasets were preprocessed, including any filtering steps (e.g., removing inactive users or unpopular items) and how the data was split into training, validation, and test sets. The choice of **evaluation metrics** should align with the dataset properties and the research goals, with common metrics including precision, recall, NDCG, and MAP.

#### Future Scaling
Future scaling of recommendation systems presents exciting opportunities, particularly through inference-time computation. **Adaptive inference depth** could optimize resource allocation, applying deeper reasoning only when needed, avoiding overthinking for simple patterns. **Parameter disentanglement** between encoding and reasoning phases can reduce task ambiguity, leading to specialized, efficient modules. Exploring the **inference-time scaling law** in recommendation systems could uncover design principles for better reasoning capabilities.  Theoretical analysis of multi-step reasoning promises improved accuracy and understanding. Efficient inference mechanisms, such as linear attention and model quantization, are crucial to address the computational demands of scaling and real-world deployment.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.22675/x2.png)

> 🔼 This figure displays the performance improvement achieved by incorporating multi-step reasoning into various sequential recommendation models.  Specifically, it shows the gains in performance metrics (likely NDCG and Recall) when using two reasoning steps (K=2) on the Yelp dataset, compared to baseline models without reasoning.  The bars represent the improvement percentage, and error bars (likely standard deviation) illustrate the variability in performance.  Different colored bars indicate different sequential recommendation models (e.g., SASRec, BERT4Rec, etc.), allowing comparison of the method's effectiveness across various architectures.
> <details>
> <summary>read the caption</summary>
> Figure 2. Empirical performance gains and potential upper bound analysis of optimal reasoning steps (𝐊=𝟐𝐊2\mathbf{K=2}bold_K = bold_2) on Yelp dataset across different SeqRec models.
> </details>



![](https://arxiv.org/html/2503.22675/x3.png)

> 🔼 Figure 3 provides a detailed illustration of the ReaRec framework, a novel sequential recommendation model that incorporates multi-step reasoning.  It shows the main components, including item embeddings, positional embeddings, reasoning hidden states, reasoning position embeddings, and the two proposed learning methods: Ensemble Reasoning Learning (ERL) and Progressive Reasoning Learning (PRL).  ERL uses multi-order user representations from different reasoning steps to prevent reasoning degradation, while PRL guides the reasoning process through a progressive temperature annealing mechanism and contrastive learning, ultimately leading to a more robust and accurate modeling of user preferences. The diagram visually depicts how these components interact to generate enhanced user representations and improve recommendation accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 3. Overview of the proposed ReaRec framework and two reasoning-enhanced learning strategies: Ensemble Reasoning Learning and Progressive Reasoning Learning.
> </details>



![](https://arxiv.org/html/2503.22675/x4.png)

> 🔼 This figure presents a robustness analysis of the ReaRec model on the Yelp dataset, examining its performance across different user and item subgroups.  Users are grouped into four categories (UG-0 to UG-3) based on the length of their interaction sequences, with higher numbers representing longer sequences. Similarly, items are categorized into four groups (IG-0 to IG-3) based on their popularity, with higher numbers indicating more popular items.  The chart shows how the recommendation performance (measured by NDCG@20) changes as the number of reasoning steps ('Step-x') increases for each subgroup.  This visualization allows assessment of ReaRec's stability and effectiveness across diverse user and item characteristics. 
> <details>
> <summary>read the caption</summary>
> Figure 4. Robustness study w.r.t different user and item subgroups on Yelp dataset. ‘Step-x𝑥xitalic_x’ represents the recommendation performance at the x𝑥xitalic_x-th reasoning step. ‘UG’ and ‘IG’ denote User and Item Group, respectively, where higher group numbers indicate longer sequences and more popular items.
> </details>



![](https://arxiv.org/html/2503.22675/x5.png)

> 🔼 This figure compares the performance of several sequential recommendation methods across varying numbers of reasoning steps.  It illustrates the impact of adding inference-time reasoning to standard sequential recommendation models, showing how performance changes as the model engages in more iterative reasoning.  The different methods include a baseline without reasoning, a naive multi-step reasoning approach, a refined approach incorporating reasoning position embeddings, and methods using the proposed ensemble reasoning and progressive reasoning learning techniques. The performance metric used is NDCG@20, a measure of the ranking quality of top-20 recommendations.
> <details>
> <summary>read the caption</summary>
> Figure 5. The performance variation trend of different methods under different reasoning steps.
> </details>



![](https://arxiv.org/html/2503.22675/x6.png)

> 🔼 Figure 6 shows the effect of different hyperparameters on the performance of the PRL and ERL methods.  It displays NDCG@20 and Recall@20 metrics for the Yelp and Video & Games datasets, varying the base temperature (τ), temperature decay rate (α), and KL regularization strength (λ).  The plots illustrate how changes in these hyperparameters affect the models' ability to capture user preferences and balance exploration and exploitation in the multi-step reasoning process. The green line represents results for the Progressive Reasoning Learning (PRL) method, while the orange line shows results for the Ensemble Reasoning Learning (ERL) method.
> <details>
> <summary>read the caption</summary>
> Figure 6. Performance comparison w.r.t. different hyperparameters, including base temperature τ𝜏\tauitalic_τ, temperature decay rate α𝛼\alphaitalic_α, and KL regularization strength λ𝜆\lambdaitalic_λ. The green and orange lines represent the PRL and ERL methods, respectively.
> </details>



![](https://arxiv.org/html/2503.22675/x7.png)

> 🔼 This ablation study analyzes the impact of removing key components from the Ensemble Reasoning Learning (ERL) and Progressive Reasoning Learning (PRL) methods on the model's performance.  Specifically, it investigates the effect of removing the KL regularization term from ERL and the Reasoning-aware Contrastive Learning (RCL) from PRL. The results demonstrate the importance of these components for achieving optimal performance, highlighting their role in preventing pattern degradation and enabling effective multi-step reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 7. Ablation study for key components in ERL and PRL.
> </details>



![](https://arxiv.org/html/2503.22675/x8.png)

> 🔼 This figure presents a case study illustrating how the predicted rank of a target item changes across multiple reasoning steps within the ReaRec framework.  Each subfigure shows the rank of the same target item ('Rx', where 'x' is the rank) across different reasoning steps (Step 0, Step 1, Step 2) under various conditions.  These conditions include variations in the temperature decay rate (α) within the Progressive Reasoning Learning (PRL) method and an ablation study removing the Reasoning-aware Contrastive Learning (RCL) component from the PRL method. The changes in rank across steps visually demonstrate the impact of the multi-step reasoning process on refining the model's recommendations.
> <details>
> <summary>read the caption</summary>
> Figure 8. Case study on rank changes of target item across different reasoning steps. ‘Rx’ represents the predicted rank of the target item, e.g., ‘R42’ indicates the predicted score of the target item ranks 42nd among all candidate items.
> </details>



![](https://arxiv.org/html/2503.22675/x9.png)

> 🔼 This figure visualizes the similarity of hidden states across different reasoning steps (Step 0 to Step 3) for the ReaRec model with Reasoning Positional Embeddings (RPE).  The heatmap shows the cosine similarity between the hidden states of each step.  High similarity indicates that the hidden states are similar across different steps, which suggests the model's reasoning process is well-guided and consistent.  Lower similarity suggests the reasoning states are more diverse, indicating a richer reasoning process. This figure helps illustrate one aspect of how RPE affects the model's reasoning process.
> <details>
> <summary>read the caption</summary>
> (a) RPE
> </details>



![](https://arxiv.org/html/2503.22675/x10.png)

> 🔼 This figure visualizes the similarity between the reasoning hidden states across different steps (Step 0 to Step 3) for the Progressive Reasoning Learning (PRL) method.  The heatmap shows the pairwise similarity scores, where darker colors represent higher similarity. This visualization helps to understand how the reasoning process evolves and whether the hidden states retain consistent information or diverge over multiple steps.  This analysis is used to evaluate the effectiveness of the PRL's multi-step reasoning strategy.
> <details>
> <summary>read the caption</summary>
> (b) PRL
> </details>



![](https://arxiv.org/html/2503.22675/x11.png)

> 🔼 This figure visualizes the similarity between the multi-step reasoning hidden states for the ERL method without KL regularization.  It's a heatmap showing the cosine similarity between the hidden states at different reasoning steps (Step 0 to Step 3). High similarity indicates the model's reasoning pattern may be degrading, potentially replicating previous reasoning outputs instead of generating diverse and informative representations.
> <details>
> <summary>read the caption</summary>
> (c) ERL w/o KL
> </details>



![](https://arxiv.org/html/2503.22675/x12.png)

> 🔼 This figure visualizes the similarity between the hidden states of different reasoning steps (Step 0 to Step 3) for the Ensemble Reasoning Learning (ERL) method.  It uses a heatmap to show the similarity scores between the hidden states. High similarity scores (closer to 1.00) indicate that the hidden states are similar, while lower scores (closer to 0.00) indicate more dissimilar hidden states. This visualization helps to understand the impact of KL regularization on the diversity of the reasoning process and whether the model is able to generate distinct representations at each step.
> <details>
> <summary>read the caption</summary>
> (d) ERL
> </details>



![](https://arxiv.org/html/2503.22675/x13.png)

> 🔼 This figure visualizes the similarity between hidden states generated during multi-step reasoning across different methods.  Each heatmap represents a method (ERL with and without KL regularization, PRL with and without RCL, and RPE), and each cell shows the cosine similarity between reasoning states of two different steps. Darker colors indicate higher similarity, revealing patterns in how the methods utilize information across reasoning steps.  The figure aids in understanding the impact of each method's design on the consistency and diversity of reasoning patterns.
> <details>
> <summary>read the caption</summary>
> Figure 9. Visualization of similarity in multi-step reasoning hidden states for different methods.
> </details>



![](https://arxiv.org/html/2503.22675/x14.png)

> 🔼 This figure visualizes the similarity between hidden states across different reasoning steps when the KL regularization is not used in the Ensemble Reasoning Learning (ERL) method.  Each cell represents the cosine similarity between hidden states of two steps. The darker the color, the higher the similarity.  It shows that without KL regularization, the similarity between the hidden states across different steps is high, suggesting that the model is not effectively exploring diverse reasoning patterns and is likely replicating previous reasoning outputs.
> <details>
> <summary>read the caption</summary>
> (a) ERL w/o KL
> </details>



![](https://arxiv.org/html/2503.22675/x15.png)

> 🔼 This figure visualizes the similarity of hidden states across multiple reasoning steps in the Ensemble Reasoning Learning (ERL) method.  Each cell represents the similarity (cosine similarity) between the hidden states of two reasoning steps, allowing for an understanding of how these states evolve and relate to each other.  The visualization helps to illustrate the impact of the KL regularization in ERL, showing how it promotes diversity in reasoning representations across different steps.
> <details>
> <summary>read the caption</summary>
> (b) ERL
> </details>



![](https://arxiv.org/html/2503.22675/x16.png)

> 🔼 This figure visualizes the embedding similarity between different reasoning steps using heatmaps.  The left shows the results of the full ERL method, while the right shows the results of ERL without KL regularization. Dashed boxes highlight highly similar reasoning steps (Step 0 to Step 3) in the ablated version. This visualization demonstrates that the KL regularization in the ERL method helps to enhance diversity and prevent the model from repeating similar reasoning patterns across multiple steps.
> <details>
> <summary>read the caption</summary>
> Figure 10. The embedding visualization of the full ERL method vs. its ablated version without KL regularization. Dashed boxes highlight high similarity between different reasoning steps (Step 0 ∼similar-to\sim∼ Step 3) in the ablated version.
> </details>



![](https://arxiv.org/html/2503.22675/x17.png)

> 🔼 This figure presents a case study illustrating the multi-step reasoning process of the ReaRec model on a user's interaction sequence from the Video & Games dataset.  The 'Hx' items represent the user's historical interactions, ordered chronologically with smaller 'x' values indicating more recent interactions.  The model then iteratively reasons through the sequence, generating a top-1 recommendation at each reasoning step, represented by 'Rx'.  As 'x' increases (later reasoning steps), the recommendations evolve, showing how the model refines its understanding of user preferences and context over multiple reasoning steps.  The example shows the model's recommendation shifting from a game thematically similar to the user's history (but possibly older) toward more current and relevant titles within the same genre as the reasoning progresses. This visual illustrates the model's ability to improve recommendations through iterative, multi-step reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 11. Case study of multi-step inference on the Video & Games Dataset. ‘Hx𝑥xitalic_x’ represents historical items, with smaller x𝑥xitalic_x indicating more recent interactions. ‘Rx𝑥xitalic_x’ represents the top-1 recommended items at the x𝑥xitalic_x-th reasoning step, with larger x𝑥xitalic_x indicating later reasoning steps.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.104.100">
<tr class="ltx_tr" id="S4.T2.104.100.101">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.104.100.101.1" rowspan="2" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.104.100.101.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.104.100.101.2" rowspan="2" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.104.100.101.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T2.104.100.101.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">SASRec</td>
<td class="ltx_td ltx_nopad_l ltx_border_tt" id="S4.T2.104.100.101.4" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T2.104.100.101.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">BERT4Rec</td>
</tr>
<tr class="ltx_tr" id="S4.T2.104.100.102">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">Avg.</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.104.100.102.6" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.104.100.102.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.102.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T2.104.100.103">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.104.100.103.1.1">Yelp</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0347</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0452</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0626</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1047</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T2.104.100.103.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.104.100.103.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0364</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.046</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0653</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1038</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.103.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.14.10.10">
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.10.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.14.10.10.11.1"></span> <span class="ltx_text" id="S4.T2.14.10.10.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.14.10.10.11.2.1">
<span class="ltx_tr" id="S4.T2.14.10.10.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.14.10.10.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T2.14.10.10.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.14.10.10.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.14.10.10.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.5.1.1.1.2"></span> <span class="ltx_text" id="S4.T2.5.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.5.1.1.1.1.1">
<span class="ltx_tr" id="S4.T2.5.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.5.1.1.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0383</span></span>
<span class="ltx_tr" id="S4.T2.5.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.5.1.1.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T2.5.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T2.5.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.5.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T2.5.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.5.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>10.37%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.5.1.1.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.2.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.6.2.2.2.2"></span> <span class="ltx_text" id="S4.T2.6.2.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.6.2.2.2.1.1">
<span class="ltx_tr" id="S4.T2.6.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.6.2.2.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0474</span></span>
<span class="ltx_tr" id="S4.T2.6.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.6.2.2.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.2.2.2.1.1.1.1.m1.1"><semantics id="S4.T2.6.2.2.2.1.1.1.1.m1.1a"><mo id="S4.T2.6.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.6.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.2.2.2.1.1.1.1.m1.1b"><ci id="S4.T2.6.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.6.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.87%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.6.2.2.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.3.3.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.7.3.3.3.2"></span> <span class="ltx_text" id="S4.T2.7.3.3.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.7.3.3.3.1.1">
<span class="ltx_tr" id="S4.T2.7.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.7.3.3.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0691</span></span>
<span class="ltx_tr" id="S4.T2.7.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.7.3.3.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.3.3.3.1.1.1.1.m1.1"><semantics id="S4.T2.7.3.3.3.1.1.1.1.m1.1a"><mo id="S4.T2.7.3.3.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.7.3.3.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.3.3.3.1.1.1.1.m1.1b"><ci id="S4.T2.7.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.7.3.3.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.3.3.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.3.3.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>10.38%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.7.3.3.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.4.4.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.8.4.4.4.2"></span> <span class="ltx_text" id="S4.T2.8.4.4.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.8.4.4.4.1.1">
<span class="ltx_tr" id="S4.T2.8.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.4.4.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1056</span></span>
<span class="ltx_tr" id="S4.T2.8.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.8.4.4.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.4.4.4.1.1.1.1.m1.1"><semantics id="S4.T2.8.4.4.4.1.1.1.1.m1.1a"><mo id="S4.T2.8.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.8.4.4.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.4.4.4.1.1.1.1.m1.1b"><ci id="S4.T2.8.4.4.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.8.4.4.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.4.4.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.4.4.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>0.86%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.8.4.4.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.5.5.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.5.5.5.m1.1"><semantics id="S4.T2.9.5.5.5.m1.1a"><mo id="S4.T2.9.5.5.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.9.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.5.5.5.m1.1b"><ci id="S4.T2.9.5.5.5.m1.1.1.cmml" xref="S4.T2.9.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.5.5.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.9.5.5.5.1" style="color:#FF0000;">6.62%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.14.10.10.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.10.6.6.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.10.6.6.6.2"></span> <span class="ltx_text" id="S4.T2.10.6.6.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.10.6.6.6.1.1">
<span class="ltx_tr" id="S4.T2.10.6.6.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.10.6.6.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0371</span></span>
<span class="ltx_tr" id="S4.T2.10.6.6.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.10.6.6.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.6.6.6.1.1.1.1.m1.1"><semantics id="S4.T2.10.6.6.6.1.1.1.1.m1.1a"><mo id="S4.T2.10.6.6.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.10.6.6.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.6.6.6.1.1.1.1.m1.1b"><ci id="S4.T2.10.6.6.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.10.6.6.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.6.6.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.6.6.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.92%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.10.6.6.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.7.7.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.11.7.7.7.2"></span> <span class="ltx_text" id="S4.T2.11.7.7.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.11.7.7.7.1.1">
<span class="ltx_tr" id="S4.T2.11.7.7.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.11.7.7.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0476</span></span>
<span class="ltx_tr" id="S4.T2.11.7.7.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.11.7.7.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.7.7.7.1.1.1.1.m1.1"><semantics id="S4.T2.11.7.7.7.1.1.1.1.m1.1a"><mo id="S4.T2.11.7.7.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.11.7.7.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.7.7.7.1.1.1.1.m1.1b"><ci id="S4.T2.11.7.7.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.11.7.7.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.7.7.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.7.7.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.48%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.11.7.7.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.8.8.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.12.8.8.8.2"></span> <span class="ltx_text" id="S4.T2.12.8.8.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.12.8.8.8.1.1">
<span class="ltx_tr" id="S4.T2.12.8.8.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.12.8.8.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0661</span></span>
<span class="ltx_tr" id="S4.T2.12.8.8.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.12.8.8.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.12.8.8.8.1.1.1.1.m1.1"><semantics id="S4.T2.12.8.8.8.1.1.1.1.m1.1a"><mo id="S4.T2.12.8.8.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.12.8.8.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.8.8.8.1.1.1.1.m1.1b"><ci id="S4.T2.12.8.8.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.12.8.8.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.8.8.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.8.8.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.23%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.12.8.8.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.13.9.9.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.13.9.9.9.2"></span> <span class="ltx_text" id="S4.T2.13.9.9.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.13.9.9.9.1.1">
<span class="ltx_tr" id="S4.T2.13.9.9.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.13.9.9.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1077</span></span>
<span class="ltx_tr" id="S4.T2.13.9.9.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.13.9.9.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.13.9.9.9.1.1.1.1.m1.1"><semantics id="S4.T2.13.9.9.9.1.1.1.1.m1.1a"><mo id="S4.T2.13.9.9.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.13.9.9.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.9.9.9.1.1.1.1.m1.1b"><ci id="S4.T2.13.9.9.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.13.9.9.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.9.9.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.9.9.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.76%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.13.9.9.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.14.10.10.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.14.10.10.10.m1.1"><semantics id="S4.T2.14.10.10.10.m1.1a"><mo id="S4.T2.14.10.10.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.14.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.14.10.10.10.m1.1b"><ci id="S4.T2.14.10.10.10.m1.1.1.cmml" xref="S4.T2.14.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.14.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.14.10.10.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.14.10.10.10.1" style="color:#FF0000;">2.60%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.24.20.20">
<td class="ltx_td ltx_align_center" id="S4.T2.24.20.20.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.24.20.20.11.1"></span> <span class="ltx_text" id="S4.T2.24.20.20.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.24.20.20.11.2.1">
<span class="ltx_tr" id="S4.T2.24.20.20.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.24.20.20.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T2.24.20.20.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.24.20.20.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.24.20.20.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.15.11.11.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.15.11.11.1.2"></span> <span class="ltx_text" id="S4.T2.15.11.11.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.15.11.11.1.1.1">
<span class="ltx_tr" id="S4.T2.15.11.11.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.15.11.11.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0388</span></span>
<span class="ltx_tr" id="S4.T2.15.11.11.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.15.11.11.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.15.11.11.1.1.1.1.1.m1.1"><semantics id="S4.T2.15.11.11.1.1.1.1.1.m1.1a"><mo id="S4.T2.15.11.11.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.15.11.11.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.15.11.11.1.1.1.1.1.m1.1b"><ci id="S4.T2.15.11.11.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.15.11.11.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.15.11.11.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.15.11.11.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>11.82%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.15.11.11.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.16.12.12.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.16.12.12.2.2"></span> <span class="ltx_text" id="S4.T2.16.12.12.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.16.12.12.2.1.1">
<span class="ltx_tr" id="S4.T2.16.12.12.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.16.12.12.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0493</span></span>
<span class="ltx_tr" id="S4.T2.16.12.12.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.16.12.12.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.16.12.12.2.1.1.1.1.m1.1"><semantics id="S4.T2.16.12.12.2.1.1.1.1.m1.1a"><mo id="S4.T2.16.12.12.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.16.12.12.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.16.12.12.2.1.1.1.1.m1.1b"><ci id="S4.T2.16.12.12.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.16.12.12.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.16.12.12.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.16.12.12.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.07%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.16.12.12.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.17.13.13.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.17.13.13.3.2"></span> <span class="ltx_text" id="S4.T2.17.13.13.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.17.13.13.3.1.1">
<span class="ltx_tr" id="S4.T2.17.13.13.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.17.13.13.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.073</span></span>
<span class="ltx_tr" id="S4.T2.17.13.13.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.17.13.13.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.17.13.13.3.1.1.1.1.m1.1"><semantics id="S4.T2.17.13.13.3.1.1.1.1.m1.1a"><mo id="S4.T2.17.13.13.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.17.13.13.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.17.13.13.3.1.1.1.1.m1.1b"><ci id="S4.T2.17.13.13.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.17.13.13.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.17.13.13.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.17.13.13.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>16.61%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.17.13.13.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.18.14.14.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.18.14.14.4.2"></span> <span class="ltx_text" id="S4.T2.18.14.14.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.18.14.14.4.1.1">
<span class="ltx_tr" id="S4.T2.18.14.14.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.18.14.14.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1149</span></span>
<span class="ltx_tr" id="S4.T2.18.14.14.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.18.14.14.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.18.14.14.4.1.1.1.1.m1.1"><semantics id="S4.T2.18.14.14.4.1.1.1.1.m1.1a"><mo id="S4.T2.18.14.14.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.18.14.14.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.18.14.14.4.1.1.1.1.m1.1b"><ci id="S4.T2.18.14.14.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.18.14.14.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.18.14.14.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.18.14.14.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.74%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.18.14.14.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.19.15.15.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.19.15.15.5.m1.1"><semantics id="S4.T2.19.15.15.5.m1.1a"><mo id="S4.T2.19.15.15.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.19.15.15.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.19.15.15.5.m1.1b"><ci id="S4.T2.19.15.15.5.m1.1.1.cmml" xref="S4.T2.19.15.15.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.19.15.15.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.19.15.15.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.19.15.15.5.1" style="color:#FF0000;">11.81%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.24.20.20.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.20.16.16.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.20.16.16.6.2"></span> <span class="ltx_text" id="S4.T2.20.16.16.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.20.16.16.6.1.1">
<span class="ltx_tr" id="S4.T2.20.16.16.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.20.16.16.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0377</span></span>
<span class="ltx_tr" id="S4.T2.20.16.16.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.20.16.16.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.20.16.16.6.1.1.1.1.m1.1"><semantics id="S4.T2.20.16.16.6.1.1.1.1.m1.1a"><mo id="S4.T2.20.16.16.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.20.16.16.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.20.16.16.6.1.1.1.1.m1.1b"><ci id="S4.T2.20.16.16.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.20.16.16.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.20.16.16.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.20.16.16.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.57%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.20.16.16.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.21.17.17.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.21.17.17.7.2"></span> <span class="ltx_text" id="S4.T2.21.17.17.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.21.17.17.7.1.1">
<span class="ltx_tr" id="S4.T2.21.17.17.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.21.17.17.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0487</span></span>
<span class="ltx_tr" id="S4.T2.21.17.17.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.21.17.17.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.21.17.17.7.1.1.1.1.m1.1"><semantics id="S4.T2.21.17.17.7.1.1.1.1.m1.1a"><mo id="S4.T2.21.17.17.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.21.17.17.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.21.17.17.7.1.1.1.1.m1.1b"><ci id="S4.T2.21.17.17.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.21.17.17.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.21.17.17.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.21.17.17.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.87%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.21.17.17.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.22.18.18.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.22.18.18.8.2"></span> <span class="ltx_text" id="S4.T2.22.18.18.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.22.18.18.8.1.1">
<span class="ltx_tr" id="S4.T2.22.18.18.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.22.18.18.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0708</span></span>
<span class="ltx_tr" id="S4.T2.22.18.18.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.22.18.18.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.22.18.18.8.1.1.1.1.m1.1"><semantics id="S4.T2.22.18.18.8.1.1.1.1.m1.1a"><mo id="S4.T2.22.18.18.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.22.18.18.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.22.18.18.8.1.1.1.1.m1.1b"><ci id="S4.T2.22.18.18.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.22.18.18.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.22.18.18.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.22.18.18.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.42%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.22.18.18.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.23.19.19.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.23.19.19.9.2"></span> <span class="ltx_text" id="S4.T2.23.19.19.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.23.19.19.9.1.1">
<span class="ltx_tr" id="S4.T2.23.19.19.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.23.19.19.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1149</span></span>
<span class="ltx_tr" id="S4.T2.23.19.19.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.23.19.19.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.23.19.19.9.1.1.1.1.m1.1"><semantics id="S4.T2.23.19.19.9.1.1.1.1.m1.1a"><mo id="S4.T2.23.19.19.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.23.19.19.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.23.19.19.9.1.1.1.1.m1.1b"><ci id="S4.T2.23.19.19.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.23.19.19.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.23.19.19.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.23.19.19.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>10.69%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.23.19.19.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.24.20.20.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.24.20.20.10.m1.1"><semantics id="S4.T2.24.20.20.10.m1.1a"><mo id="S4.T2.24.20.20.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.24.20.20.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.24.20.20.10.m1.1b"><ci id="S4.T2.24.20.20.10.m1.1.1.cmml" xref="S4.T2.24.20.20.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.24.20.20.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.24.20.20.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.24.20.20.10.1" style="color:#FF0000;">7.14%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.104.100.104">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.104.100.104.1.1">Video &amp; Games</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0284</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0353</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0542</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0816</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T2.104.100.104.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.104.100.104.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0289</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0355</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0548</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0810</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.104.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.34.30.30">
<td class="ltx_td ltx_align_center" id="S4.T2.34.30.30.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.34.30.30.11.1"></span> <span class="ltx_text" id="S4.T2.34.30.30.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.34.30.30.11.2.1">
<span class="ltx_tr" id="S4.T2.34.30.30.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.34.30.30.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T2.34.30.30.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.34.30.30.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.34.30.30.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.25.21.21.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.25.21.21.1.2"></span> <span class="ltx_text" id="S4.T2.25.21.21.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.25.21.21.1.1.1">
<span class="ltx_tr" id="S4.T2.25.21.21.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.25.21.21.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0301</span></span>
<span class="ltx_tr" id="S4.T2.25.21.21.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.25.21.21.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.25.21.21.1.1.1.1.1.m1.1"><semantics id="S4.T2.25.21.21.1.1.1.1.1.m1.1a"><mo id="S4.T2.25.21.21.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.25.21.21.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.25.21.21.1.1.1.1.1.m1.1b"><ci id="S4.T2.25.21.21.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.25.21.21.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.25.21.21.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.25.21.21.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.99%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.25.21.21.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.26.22.22.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.26.22.22.2.2"></span> <span class="ltx_text" id="S4.T2.26.22.22.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.26.22.22.2.1.1">
<span class="ltx_tr" id="S4.T2.26.22.22.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.26.22.22.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0385</span></span>
<span class="ltx_tr" id="S4.T2.26.22.22.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.26.22.22.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.26.22.22.2.1.1.1.1.m1.1"><semantics id="S4.T2.26.22.22.2.1.1.1.1.m1.1a"><mo id="S4.T2.26.22.22.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.26.22.22.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.26.22.22.2.1.1.1.1.m1.1b"><ci id="S4.T2.26.22.22.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.26.22.22.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.26.22.22.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.26.22.22.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.07%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.26.22.22.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.27.23.23.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.27.23.23.3.2"></span> <span class="ltx_text" id="S4.T2.27.23.23.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.27.23.23.3.1.1">
<span class="ltx_tr" id="S4.T2.27.23.23.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.27.23.23.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0581</span></span>
<span class="ltx_tr" id="S4.T2.27.23.23.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.27.23.23.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.27.23.23.3.1.1.1.1.m1.1"><semantics id="S4.T2.27.23.23.3.1.1.1.1.m1.1a"><mo id="S4.T2.27.23.23.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.27.23.23.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.27.23.23.3.1.1.1.1.m1.1b"><ci id="S4.T2.27.23.23.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.27.23.23.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.27.23.23.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.27.23.23.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.20%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.27.23.23.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.28.24.24.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.28.24.24.4.2"></span> <span class="ltx_text" id="S4.T2.28.24.24.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.28.24.24.4.1.1">
<span class="ltx_tr" id="S4.T2.28.24.24.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.28.24.24.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0915</span></span>
<span class="ltx_tr" id="S4.T2.28.24.24.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.28.24.24.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.28.24.24.4.1.1.1.1.m1.1"><semantics id="S4.T2.28.24.24.4.1.1.1.1.m1.1a"><mo id="S4.T2.28.24.24.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.28.24.24.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.28.24.24.4.1.1.1.1.m1.1b"><ci id="S4.T2.28.24.24.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.28.24.24.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.28.24.24.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.28.24.24.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>12.13%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.28.24.24.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.29.25.25.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.29.25.25.5.m1.1"><semantics id="S4.T2.29.25.25.5.m1.1a"><mo id="S4.T2.29.25.25.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.29.25.25.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.29.25.25.5.m1.1b"><ci id="S4.T2.29.25.25.5.m1.1.1.cmml" xref="S4.T2.29.25.25.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.29.25.25.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.29.25.25.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.29.25.25.5.1" style="color:#FF0000;">8.59%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.34.30.30.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.30.26.26.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.30.26.26.6.2"></span> <span class="ltx_text" id="S4.T2.30.26.26.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.30.26.26.6.1.1">
<span class="ltx_tr" id="S4.T2.30.26.26.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.30.26.26.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0311</span></span>
<span class="ltx_tr" id="S4.T2.30.26.26.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.30.26.26.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.30.26.26.6.1.1.1.1.m1.1"><semantics id="S4.T2.30.26.26.6.1.1.1.1.m1.1a"><mo id="S4.T2.30.26.26.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.30.26.26.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.30.26.26.6.1.1.1.1.m1.1b"><ci id="S4.T2.30.26.26.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.30.26.26.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.30.26.26.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.30.26.26.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.61%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.30.26.26.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.31.27.27.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.31.27.27.7.2"></span> <span class="ltx_text" id="S4.T2.31.27.27.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.31.27.27.7.1.1">
<span class="ltx_tr" id="S4.T2.31.27.27.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.31.27.27.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0375</span></span>
<span class="ltx_tr" id="S4.T2.31.27.27.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.31.27.27.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.31.27.27.7.1.1.1.1.m1.1"><semantics id="S4.T2.31.27.27.7.1.1.1.1.m1.1a"><mo id="S4.T2.31.27.27.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.31.27.27.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.31.27.27.7.1.1.1.1.m1.1b"><ci id="S4.T2.31.27.27.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.31.27.27.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.31.27.27.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.31.27.27.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.63%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.31.27.27.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.32.28.28.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.32.28.28.8.2"></span> <span class="ltx_text" id="S4.T2.32.28.28.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.32.28.28.8.1.1">
<span class="ltx_tr" id="S4.T2.32.28.28.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.32.28.28.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0578</span></span>
<span class="ltx_tr" id="S4.T2.32.28.28.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.32.28.28.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.32.28.28.8.1.1.1.1.m1.1"><semantics id="S4.T2.32.28.28.8.1.1.1.1.m1.1a"><mo id="S4.T2.32.28.28.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.32.28.28.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.32.28.28.8.1.1.1.1.m1.1b"><ci id="S4.T2.32.28.28.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.32.28.28.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.32.28.28.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.32.28.28.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.47%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.32.28.28.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.33.29.29.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.33.29.29.9.2"></span> <span class="ltx_text" id="S4.T2.33.29.29.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.33.29.29.9.1.1">
<span class="ltx_tr" id="S4.T2.33.29.29.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.33.29.29.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0832</span></span>
<span class="ltx_tr" id="S4.T2.33.29.29.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.33.29.29.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.33.29.29.9.1.1.1.1.m1.1"><semantics id="S4.T2.33.29.29.9.1.1.1.1.m1.1a"><mo id="S4.T2.33.29.29.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.33.29.29.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.33.29.29.9.1.1.1.1.m1.1b"><ci id="S4.T2.33.29.29.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.33.29.29.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.33.29.29.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.33.29.29.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.72%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.33.29.29.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.34.30.30.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.34.30.30.10.m1.1"><semantics id="S4.T2.34.30.30.10.m1.1a"><mo id="S4.T2.34.30.30.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.34.30.30.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.34.30.30.10.m1.1b"><ci id="S4.T2.34.30.30.10.m1.1.1.cmml" xref="S4.T2.34.30.30.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.34.30.30.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.34.30.30.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.34.30.30.10.1" style="color:#FF0000;">5.36%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.44.40.40">
<td class="ltx_td ltx_align_center" id="S4.T2.44.40.40.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.44.40.40.11.1"></span> <span class="ltx_text" id="S4.T2.44.40.40.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.44.40.40.11.2.1">
<span class="ltx_tr" id="S4.T2.44.40.40.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.44.40.40.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T2.44.40.40.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.44.40.40.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.44.40.40.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.35.31.31.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.35.31.31.1.2"></span> <span class="ltx_text" id="S4.T2.35.31.31.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.35.31.31.1.1.1">
<span class="ltx_tr" id="S4.T2.35.31.31.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.35.31.31.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0299</span></span>
<span class="ltx_tr" id="S4.T2.35.31.31.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.35.31.31.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.35.31.31.1.1.1.1.1.m1.1"><semantics id="S4.T2.35.31.31.1.1.1.1.1.m1.1a"><mo id="S4.T2.35.31.31.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.35.31.31.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.35.31.31.1.1.1.1.1.m1.1b"><ci id="S4.T2.35.31.31.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.35.31.31.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.35.31.31.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.35.31.31.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.28%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.35.31.31.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.36.32.32.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.36.32.32.2.2"></span> <span class="ltx_text" id="S4.T2.36.32.32.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.36.32.32.2.1.1">
<span class="ltx_tr" id="S4.T2.36.32.32.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.36.32.32.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0379</span></span>
<span class="ltx_tr" id="S4.T2.36.32.32.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.36.32.32.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.36.32.32.2.1.1.1.1.m1.1"><semantics id="S4.T2.36.32.32.2.1.1.1.1.m1.1a"><mo id="S4.T2.36.32.32.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.36.32.32.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.36.32.32.2.1.1.1.1.m1.1b"><ci id="S4.T2.36.32.32.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.36.32.32.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.36.32.32.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.36.32.32.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.37%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.36.32.32.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.37.33.33.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.37.33.33.3.2"></span> <span class="ltx_text" id="S4.T2.37.33.33.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.37.33.33.3.1.1">
<span class="ltx_tr" id="S4.T2.37.33.33.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.37.33.33.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0572</span></span>
<span class="ltx_tr" id="S4.T2.37.33.33.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.37.33.33.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.37.33.33.3.1.1.1.1.m1.1"><semantics id="S4.T2.37.33.33.3.1.1.1.1.m1.1a"><mo id="S4.T2.37.33.33.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.37.33.33.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.37.33.33.3.1.1.1.1.m1.1b"><ci id="S4.T2.37.33.33.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.37.33.33.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.37.33.33.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.37.33.33.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.54%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.37.33.33.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.38.34.34.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.38.34.34.4.2"></span> <span class="ltx_text" id="S4.T2.38.34.34.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.38.34.34.4.1.1">
<span class="ltx_tr" id="S4.T2.38.34.34.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.38.34.34.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0890</span></span>
<span class="ltx_tr" id="S4.T2.38.34.34.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.38.34.34.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.38.34.34.4.1.1.1.1.m1.1"><semantics id="S4.T2.38.34.34.4.1.1.1.1.m1.1a"><mo id="S4.T2.38.34.34.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.38.34.34.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.38.34.34.4.1.1.1.1.m1.1b"><ci id="S4.T2.38.34.34.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.38.34.34.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.38.34.34.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.38.34.34.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.07%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.38.34.34.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.39.35.35.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.39.35.35.5.m1.1"><semantics id="S4.T2.39.35.35.5.m1.1a"><mo id="S4.T2.39.35.35.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.39.35.35.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.39.35.35.5.m1.1b"><ci id="S4.T2.39.35.35.5.m1.1.1.cmml" xref="S4.T2.39.35.35.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.39.35.35.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.39.35.35.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.39.35.35.5.1" style="color:#FF0000;">6.81%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.44.40.40.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.40.36.36.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.40.36.36.6.2"></span> <span class="ltx_text" id="S4.T2.40.36.36.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.40.36.36.6.1.1">
<span class="ltx_tr" id="S4.T2.40.36.36.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.40.36.36.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0306</span></span>
<span class="ltx_tr" id="S4.T2.40.36.36.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.40.36.36.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.40.36.36.6.1.1.1.1.m1.1"><semantics id="S4.T2.40.36.36.6.1.1.1.1.m1.1a"><mo id="S4.T2.40.36.36.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.40.36.36.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.40.36.36.6.1.1.1.1.m1.1b"><ci id="S4.T2.40.36.36.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.40.36.36.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.40.36.36.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.40.36.36.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.88%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.40.36.36.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.41.37.37.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.41.37.37.7.2"></span> <span class="ltx_text" id="S4.T2.41.37.37.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.41.37.37.7.1.1">
<span class="ltx_tr" id="S4.T2.41.37.37.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.41.37.37.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0380</span></span>
<span class="ltx_tr" id="S4.T2.41.37.37.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.41.37.37.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.41.37.37.7.1.1.1.1.m1.1"><semantics id="S4.T2.41.37.37.7.1.1.1.1.m1.1a"><mo id="S4.T2.41.37.37.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.41.37.37.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.41.37.37.7.1.1.1.1.m1.1b"><ci id="S4.T2.41.37.37.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.41.37.37.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.41.37.37.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.41.37.37.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.04%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.41.37.37.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.42.38.38.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.42.38.38.8.2"></span> <span class="ltx_text" id="S4.T2.42.38.38.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.42.38.38.8.1.1">
<span class="ltx_tr" id="S4.T2.42.38.38.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.42.38.38.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0584</span></span>
<span class="ltx_tr" id="S4.T2.42.38.38.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.42.38.38.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.42.38.38.8.1.1.1.1.m1.1"><semantics id="S4.T2.42.38.38.8.1.1.1.1.m1.1a"><mo id="S4.T2.42.38.38.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.42.38.38.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.42.38.38.8.1.1.1.1.m1.1b"><ci id="S4.T2.42.38.38.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.42.38.38.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.42.38.38.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.42.38.38.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.57%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.42.38.38.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.43.39.39.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.43.39.39.9.2"></span> <span class="ltx_text" id="S4.T2.43.39.39.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.43.39.39.9.1.1">
<span class="ltx_tr" id="S4.T2.43.39.39.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.43.39.39.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0879</span></span>
<span class="ltx_tr" id="S4.T2.43.39.39.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.43.39.39.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.43.39.39.9.1.1.1.1.m1.1"><semantics id="S4.T2.43.39.39.9.1.1.1.1.m1.1a"><mo id="S4.T2.43.39.39.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.43.39.39.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.43.39.39.9.1.1.1.1.m1.1b"><ci id="S4.T2.43.39.39.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.43.39.39.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.43.39.39.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.43.39.39.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.52%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.43.39.39.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.44.40.40.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.44.40.40.10.m1.1"><semantics id="S4.T2.44.40.40.10.m1.1a"><mo id="S4.T2.44.40.40.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.44.40.40.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.44.40.40.10.m1.1b"><ci id="S4.T2.44.40.40.10.m1.1.1.cmml" xref="S4.T2.44.40.40.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.44.40.40.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.44.40.40.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.44.40.40.10.1" style="color:#FF0000;">7.00%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.104.100.105">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.104.100.105.1.1">Software</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0696</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0895</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1468</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2264</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T2.104.100.105.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.104.100.105.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0710</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0893</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1530</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2258</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.105.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.54.50.50">
<td class="ltx_td ltx_align_center" id="S4.T2.54.50.50.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.54.50.50.11.1"></span> <span class="ltx_text" id="S4.T2.54.50.50.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.54.50.50.11.2.1">
<span class="ltx_tr" id="S4.T2.54.50.50.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.54.50.50.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T2.54.50.50.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.54.50.50.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.54.50.50.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.45.41.41.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.45.41.41.1.2"></span> <span class="ltx_text" id="S4.T2.45.41.41.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.45.41.41.1.1.1">
<span class="ltx_tr" id="S4.T2.45.41.41.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.45.41.41.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0743</span></span>
<span class="ltx_tr" id="S4.T2.45.41.41.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.45.41.41.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.45.41.41.1.1.1.1.1.m1.1"><semantics id="S4.T2.45.41.41.1.1.1.1.1.m1.1a"><mo id="S4.T2.45.41.41.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.45.41.41.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.45.41.41.1.1.1.1.1.m1.1b"><ci id="S4.T2.45.41.41.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.45.41.41.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.45.41.41.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.45.41.41.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.75%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.45.41.41.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.46.42.42.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.46.42.42.2.2"></span> <span class="ltx_text" id="S4.T2.46.42.42.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.46.42.42.2.1.1">
<span class="ltx_tr" id="S4.T2.46.42.42.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.46.42.42.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0935</span></span>
<span class="ltx_tr" id="S4.T2.46.42.42.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.46.42.42.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.46.42.42.2.1.1.1.1.m1.1"><semantics id="S4.T2.46.42.42.2.1.1.1.1.m1.1a"><mo id="S4.T2.46.42.42.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.46.42.42.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.46.42.42.2.1.1.1.1.m1.1b"><ci id="S4.T2.46.42.42.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.46.42.42.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.46.42.42.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.46.42.42.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.47%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.46.42.42.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.47.43.43.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.47.43.43.3.2"></span> <span class="ltx_text" id="S4.T2.47.43.43.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.47.43.43.3.1.1">
<span class="ltx_tr" id="S4.T2.47.43.43.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.47.43.43.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1456</span></span>
<span class="ltx_tr" id="S4.T2.47.43.43.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.47.43.43.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.47.43.43.3.1.1.1.1.m1.1"><semantics id="S4.T2.47.43.43.3.1.1.1.1.m1.1a"><mo id="S4.T2.47.43.43.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.47.43.43.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.47.43.43.3.1.1.1.1.m1.1b"><ci id="S4.T2.47.43.43.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.47.43.43.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.47.43.43.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.47.43.43.3.1.1.1.1.m1.1d">↓</annotation></semantics></math>0.82%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.47.43.43.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.48.44.44.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.48.44.44.4.2"></span> <span class="ltx_text" id="S4.T2.48.44.44.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.48.44.44.4.1.1">
<span class="ltx_tr" id="S4.T2.48.44.44.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.48.44.44.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2224</span></span>
<span class="ltx_tr" id="S4.T2.48.44.44.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.48.44.44.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.48.44.44.4.1.1.1.1.m1.1"><semantics id="S4.T2.48.44.44.4.1.1.1.1.m1.1a"><mo id="S4.T2.48.44.44.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.48.44.44.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.48.44.44.4.1.1.1.1.m1.1b"><ci id="S4.T2.48.44.44.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.48.44.44.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.48.44.44.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.48.44.44.4.1.1.1.1.m1.1d">↓</annotation></semantics></math>1.77%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.48.44.44.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.49.45.45.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.49.45.45.5.m1.1"><semantics id="S4.T2.49.45.45.5.m1.1a"><mo id="S4.T2.49.45.45.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.49.45.45.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.49.45.45.5.m1.1b"><ci id="S4.T2.49.45.45.5.m1.1.1.cmml" xref="S4.T2.49.45.45.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.49.45.45.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.49.45.45.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.49.45.45.5.1" style="color:#FF0000;">2.16%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.54.50.50.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.50.46.46.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.50.46.46.6.2"></span> <span class="ltx_text" id="S4.T2.50.46.46.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.50.46.46.6.1.1">
<span class="ltx_tr" id="S4.T2.50.46.46.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.50.46.46.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0769</span></span>
<span class="ltx_tr" id="S4.T2.50.46.46.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.50.46.46.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.50.46.46.6.1.1.1.1.m1.1"><semantics id="S4.T2.50.46.46.6.1.1.1.1.m1.1a"><mo id="S4.T2.50.46.46.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.50.46.46.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.50.46.46.6.1.1.1.1.m1.1b"><ci id="S4.T2.50.46.46.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.50.46.46.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.50.46.46.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.50.46.46.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.31%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.50.46.46.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.51.47.47.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.51.47.47.7.2"></span> <span class="ltx_text" id="S4.T2.51.47.47.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.51.47.47.7.1.1">
<span class="ltx_tr" id="S4.T2.51.47.47.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.51.47.47.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0964</span></span>
<span class="ltx_tr" id="S4.T2.51.47.47.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.51.47.47.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.51.47.47.7.1.1.1.1.m1.1"><semantics id="S4.T2.51.47.47.7.1.1.1.1.m1.1a"><mo id="S4.T2.51.47.47.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.51.47.47.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.51.47.47.7.1.1.1.1.m1.1b"><ci id="S4.T2.51.47.47.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.51.47.47.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.51.47.47.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.51.47.47.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.95%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.51.47.47.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.52.48.48.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.52.48.48.8.2"></span> <span class="ltx_text" id="S4.T2.52.48.48.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.52.48.48.8.1.1">
<span class="ltx_tr" id="S4.T2.52.48.48.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.52.48.48.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1554</span></span>
<span class="ltx_tr" id="S4.T2.52.48.48.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.52.48.48.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.52.48.48.8.1.1.1.1.m1.1"><semantics id="S4.T2.52.48.48.8.1.1.1.1.m1.1a"><mo id="S4.T2.52.48.48.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.52.48.48.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.52.48.48.8.1.1.1.1.m1.1b"><ci id="S4.T2.52.48.48.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.52.48.48.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.52.48.48.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.52.48.48.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.57%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.52.48.48.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.53.49.49.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.53.49.49.9.2"></span> <span class="ltx_text" id="S4.T2.53.49.49.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.53.49.49.9.1.1">
<span class="ltx_tr" id="S4.T2.53.49.49.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.53.49.49.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2328</span></span>
<span class="ltx_tr" id="S4.T2.53.49.49.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.53.49.49.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.53.49.49.9.1.1.1.1.m1.1"><semantics id="S4.T2.53.49.49.9.1.1.1.1.m1.1a"><mo id="S4.T2.53.49.49.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.53.49.49.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.53.49.49.9.1.1.1.1.m1.1b"><ci id="S4.T2.53.49.49.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.53.49.49.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.53.49.49.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.53.49.49.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.10%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.53.49.49.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.54.50.50.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.54.50.50.10.m1.1"><semantics id="S4.T2.54.50.50.10.m1.1a"><mo id="S4.T2.54.50.50.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.54.50.50.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.54.50.50.10.m1.1b"><ci id="S4.T2.54.50.50.10.m1.1.1.cmml" xref="S4.T2.54.50.50.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.54.50.50.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.54.50.50.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.54.50.50.10.1" style="color:#FF0000;">5.23%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.64.60.60">
<td class="ltx_td ltx_align_center" id="S4.T2.64.60.60.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.64.60.60.11.1"></span> <span class="ltx_text" id="S4.T2.64.60.60.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.64.60.60.11.2.1">
<span class="ltx_tr" id="S4.T2.64.60.60.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.64.60.60.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T2.64.60.60.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.64.60.60.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.64.60.60.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.55.51.51.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.55.51.51.1.2"></span> <span class="ltx_text" id="S4.T2.55.51.51.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.55.51.51.1.1.1">
<span class="ltx_tr" id="S4.T2.55.51.51.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.55.51.51.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0739</span></span>
<span class="ltx_tr" id="S4.T2.55.51.51.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.55.51.51.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.55.51.51.1.1.1.1.1.m1.1"><semantics id="S4.T2.55.51.51.1.1.1.1.1.m1.1a"><mo id="S4.T2.55.51.51.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.55.51.51.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.55.51.51.1.1.1.1.1.m1.1b"><ci id="S4.T2.55.51.51.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.55.51.51.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.55.51.51.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.55.51.51.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.18%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.55.51.51.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.56.52.52.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.56.52.52.2.2"></span> <span class="ltx_text" id="S4.T2.56.52.52.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.56.52.52.2.1.1">
<span class="ltx_tr" id="S4.T2.56.52.52.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.56.52.52.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0949</span></span>
<span class="ltx_tr" id="S4.T2.56.52.52.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.56.52.52.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.56.52.52.2.1.1.1.1.m1.1"><semantics id="S4.T2.56.52.52.2.1.1.1.1.m1.1a"><mo id="S4.T2.56.52.52.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.56.52.52.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.56.52.52.2.1.1.1.1.m1.1b"><ci id="S4.T2.56.52.52.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.56.52.52.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.56.52.52.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.56.52.52.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.03%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.56.52.52.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.57.53.53.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.57.53.53.3.2"></span> <span class="ltx_text" id="S4.T2.57.53.53.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.57.53.53.3.1.1">
<span class="ltx_tr" id="S4.T2.57.53.53.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.57.53.53.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1488</span></span>
<span class="ltx_tr" id="S4.T2.57.53.53.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.57.53.53.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.57.53.53.3.1.1.1.1.m1.1"><semantics id="S4.T2.57.53.53.3.1.1.1.1.m1.1a"><mo id="S4.T2.57.53.53.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.57.53.53.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.57.53.53.3.1.1.1.1.m1.1b"><ci id="S4.T2.57.53.53.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.57.53.53.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.57.53.53.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.57.53.53.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.36%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.57.53.53.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.58.54.54.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.58.54.54.4.2"></span> <span class="ltx_text" id="S4.T2.58.54.54.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.58.54.54.4.1.1">
<span class="ltx_tr" id="S4.T2.58.54.54.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.58.54.54.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2324</span></span>
<span class="ltx_tr" id="S4.T2.58.54.54.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.58.54.54.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.58.54.54.4.1.1.1.1.m1.1"><semantics id="S4.T2.58.54.54.4.1.1.1.1.m1.1a"><mo id="S4.T2.58.54.54.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.58.54.54.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.58.54.54.4.1.1.1.1.m1.1b"><ci id="S4.T2.58.54.54.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.58.54.54.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.58.54.54.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.58.54.54.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.65%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.58.54.54.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.59.55.55.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.59.55.55.5.m1.1"><semantics id="S4.T2.59.55.55.5.m1.1a"><mo id="S4.T2.59.55.55.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.59.55.55.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.59.55.55.5.m1.1b"><ci id="S4.T2.59.55.55.5.m1.1.1.cmml" xref="S4.T2.59.55.55.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.59.55.55.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.59.55.55.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.59.55.55.5.1" style="color:#FF0000;">4.06%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.64.60.60.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.60.56.56.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.60.56.56.6.2"></span> <span class="ltx_text" id="S4.T2.60.56.56.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.60.56.56.6.1.1">
<span class="ltx_tr" id="S4.T2.60.56.56.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.60.56.56.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0762</span></span>
<span class="ltx_tr" id="S4.T2.60.56.56.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.60.56.56.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.60.56.56.6.1.1.1.1.m1.1"><semantics id="S4.T2.60.56.56.6.1.1.1.1.m1.1a"><mo id="S4.T2.60.56.56.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.60.56.56.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.60.56.56.6.1.1.1.1.m1.1b"><ci id="S4.T2.60.56.56.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.60.56.56.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.60.56.56.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.60.56.56.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.32%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.60.56.56.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.61.57.57.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.61.57.57.7.2"></span> <span class="ltx_text" id="S4.T2.61.57.57.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.61.57.57.7.1.1">
<span class="ltx_tr" id="S4.T2.61.57.57.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.61.57.57.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0976</span></span>
<span class="ltx_tr" id="S4.T2.61.57.57.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.61.57.57.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.61.57.57.7.1.1.1.1.m1.1"><semantics id="S4.T2.61.57.57.7.1.1.1.1.m1.1a"><mo id="S4.T2.61.57.57.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.61.57.57.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.61.57.57.7.1.1.1.1.m1.1b"><ci id="S4.T2.61.57.57.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.61.57.57.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.61.57.57.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.61.57.57.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.29%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.61.57.57.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.62.58.58.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.62.58.58.8.2"></span> <span class="ltx_text" id="S4.T2.62.58.58.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.62.58.58.8.1.1">
<span class="ltx_tr" id="S4.T2.62.58.58.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.62.58.58.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1500</span></span>
<span class="ltx_tr" id="S4.T2.62.58.58.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.62.58.58.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.62.58.58.8.1.1.1.1.m1.1"><semantics id="S4.T2.62.58.58.8.1.1.1.1.m1.1a"><mo id="S4.T2.62.58.58.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.62.58.58.8.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.62.58.58.8.1.1.1.1.m1.1b"><ci id="S4.T2.62.58.58.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.62.58.58.8.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.62.58.58.8.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.62.58.58.8.1.1.1.1.m1.1d">↓</annotation></semantics></math>1.96%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.62.58.58.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.63.59.59.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.63.59.59.9.2"></span> <span class="ltx_text" id="S4.T2.63.59.59.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.63.59.59.9.1.1">
<span class="ltx_tr" id="S4.T2.63.59.59.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.63.59.59.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2350</span></span>
<span class="ltx_tr" id="S4.T2.63.59.59.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.63.59.59.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.63.59.59.9.1.1.1.1.m1.1"><semantics id="S4.T2.63.59.59.9.1.1.1.1.m1.1a"><mo id="S4.T2.63.59.59.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.63.59.59.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.63.59.59.9.1.1.1.1.m1.1b"><ci id="S4.T2.63.59.59.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.63.59.59.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.63.59.59.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.63.59.59.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.07%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.63.59.59.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.64.60.60.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.64.60.60.10.m1.1"><semantics id="S4.T2.64.60.60.10.m1.1a"><mo id="S4.T2.64.60.60.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.64.60.60.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.64.60.60.10.m1.1b"><ci id="S4.T2.64.60.60.10.m1.1.1.cmml" xref="S4.T2.64.60.60.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.64.60.60.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.64.60.60.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.64.60.60.10.1" style="color:#FF0000;">4.68%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.104.100.106">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.104.100.106.1.1">CDs &amp; Vinyl</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0148</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0174</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0317</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0419</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T2.104.100.106.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.104.100.106.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0149</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0185</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0326</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0468</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.106.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.74.70.70">
<td class="ltx_td ltx_align_center" id="S4.T2.74.70.70.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.74.70.70.11.1"></span> <span class="ltx_text" id="S4.T2.74.70.70.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.74.70.70.11.2.1">
<span class="ltx_tr" id="S4.T2.74.70.70.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.74.70.70.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T2.74.70.70.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.74.70.70.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.74.70.70.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.65.61.61.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.65.61.61.1.2"></span> <span class="ltx_text" id="S4.T2.65.61.61.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.65.61.61.1.1.1">
<span class="ltx_tr" id="S4.T2.65.61.61.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.65.61.61.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0182</span></span>
<span class="ltx_tr" id="S4.T2.65.61.61.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.65.61.61.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.65.61.61.1.1.1.1.1.m1.1"><semantics id="S4.T2.65.61.61.1.1.1.1.1.m1.1a"><mo id="S4.T2.65.61.61.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.65.61.61.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.65.61.61.1.1.1.1.1.m1.1b"><ci id="S4.T2.65.61.61.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.65.61.61.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.65.61.61.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.65.61.61.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>22.97%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.65.61.61.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.66.62.62.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.66.62.62.2.2"></span> <span class="ltx_text" id="S4.T2.66.62.62.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.66.62.62.2.1.1">
<span class="ltx_tr" id="S4.T2.66.62.62.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.66.62.62.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0212</span></span>
<span class="ltx_tr" id="S4.T2.66.62.62.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.66.62.62.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.66.62.62.2.1.1.1.1.m1.1"><semantics id="S4.T2.66.62.62.2.1.1.1.1.m1.1a"><mo id="S4.T2.66.62.62.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.66.62.62.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.66.62.62.2.1.1.1.1.m1.1b"><ci id="S4.T2.66.62.62.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.66.62.62.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.66.62.62.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.66.62.62.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>21.84%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.66.62.62.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.67.63.63.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.67.63.63.3.2"></span> <span class="ltx_text" id="S4.T2.67.63.63.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.67.63.63.3.1.1">
<span class="ltx_tr" id="S4.T2.67.63.63.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.67.63.63.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0363</span></span>
<span class="ltx_tr" id="S4.T2.67.63.63.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.67.63.63.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.67.63.63.3.1.1.1.1.m1.1"><semantics id="S4.T2.67.63.63.3.1.1.1.1.m1.1a"><mo id="S4.T2.67.63.63.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.67.63.63.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.67.63.63.3.1.1.1.1.m1.1b"><ci id="S4.T2.67.63.63.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.67.63.63.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.67.63.63.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.67.63.63.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>14.51%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.67.63.63.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.68.64.64.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.68.64.64.4.2"></span> <span class="ltx_text" id="S4.T2.68.64.64.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.68.64.64.4.1.1">
<span class="ltx_tr" id="S4.T2.68.64.64.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.68.64.64.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0482</span></span>
<span class="ltx_tr" id="S4.T2.68.64.64.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.68.64.64.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.68.64.64.4.1.1.1.1.m1.1"><semantics id="S4.T2.68.64.64.4.1.1.1.1.m1.1a"><mo id="S4.T2.68.64.64.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.68.64.64.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.68.64.64.4.1.1.1.1.m1.1b"><ci id="S4.T2.68.64.64.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.68.64.64.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.68.64.64.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.68.64.64.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>15.04%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.68.64.64.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.69.65.65.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.69.65.65.5.m1.1"><semantics id="S4.T2.69.65.65.5.m1.1a"><mo id="S4.T2.69.65.65.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.69.65.65.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.69.65.65.5.m1.1b"><ci id="S4.T2.69.65.65.5.m1.1.1.cmml" xref="S4.T2.69.65.65.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.69.65.65.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.69.65.65.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.69.65.65.5.1" style="color:#FF0000;">18.59%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.74.70.70.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.70.66.66.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.70.66.66.6.2"></span> <span class="ltx_text" id="S4.T2.70.66.66.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.70.66.66.6.1.1">
<span class="ltx_tr" id="S4.T2.70.66.66.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.70.66.66.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0165</span></span>
<span class="ltx_tr" id="S4.T2.70.66.66.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.70.66.66.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.70.66.66.6.1.1.1.1.m1.1"><semantics id="S4.T2.70.66.66.6.1.1.1.1.m1.1a"><mo id="S4.T2.70.66.66.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.70.66.66.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.70.66.66.6.1.1.1.1.m1.1b"><ci id="S4.T2.70.66.66.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.70.66.66.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.70.66.66.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.70.66.66.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>10.74%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.70.66.66.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.71.67.67.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.71.67.67.7.2"></span> <span class="ltx_text" id="S4.T2.71.67.67.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.71.67.67.7.1.1">
<span class="ltx_tr" id="S4.T2.71.67.67.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.71.67.67.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0208</span></span>
<span class="ltx_tr" id="S4.T2.71.67.67.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.71.67.67.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.71.67.67.7.1.1.1.1.m1.1"><semantics id="S4.T2.71.67.67.7.1.1.1.1.m1.1a"><mo id="S4.T2.71.67.67.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.71.67.67.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.71.67.67.7.1.1.1.1.m1.1b"><ci id="S4.T2.71.67.67.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.71.67.67.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.71.67.67.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.71.67.67.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>12.43%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.71.67.67.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.72.68.68.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.72.68.68.8.2"></span> <span class="ltx_text" id="S4.T2.72.68.68.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.72.68.68.8.1.1">
<span class="ltx_tr" id="S4.T2.72.68.68.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.72.68.68.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0354</span></span>
<span class="ltx_tr" id="S4.T2.72.68.68.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.72.68.68.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.72.68.68.8.1.1.1.1.m1.1"><semantics id="S4.T2.72.68.68.8.1.1.1.1.m1.1a"><mo id="S4.T2.72.68.68.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.72.68.68.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.72.68.68.8.1.1.1.1.m1.1b"><ci id="S4.T2.72.68.68.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.72.68.68.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.72.68.68.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.72.68.68.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.59%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.72.68.68.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.73.69.69.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.73.69.69.9.2"></span> <span class="ltx_text" id="S4.T2.73.69.69.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.73.69.69.9.1.1">
<span class="ltx_tr" id="S4.T2.73.69.69.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.73.69.69.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0524</span></span>
<span class="ltx_tr" id="S4.T2.73.69.69.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.73.69.69.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.73.69.69.9.1.1.1.1.m1.1"><semantics id="S4.T2.73.69.69.9.1.1.1.1.m1.1a"><mo id="S4.T2.73.69.69.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.73.69.69.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.73.69.69.9.1.1.1.1.m1.1b"><ci id="S4.T2.73.69.69.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.73.69.69.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.73.69.69.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.73.69.69.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>11.97%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.73.69.69.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.74.70.70.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.74.70.70.10.m1.1"><semantics id="S4.T2.74.70.70.10.m1.1a"><mo id="S4.T2.74.70.70.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.74.70.70.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.74.70.70.10.m1.1b"><ci id="S4.T2.74.70.70.10.m1.1.1.cmml" xref="S4.T2.74.70.70.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.74.70.70.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.74.70.70.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.74.70.70.10.1" style="color:#FF0000;">10.93%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.84.80.80">
<td class="ltx_td ltx_align_center" id="S4.T2.84.80.80.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.84.80.80.11.1"></span> <span class="ltx_text" id="S4.T2.84.80.80.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.84.80.80.11.2.1">
<span class="ltx_tr" id="S4.T2.84.80.80.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.84.80.80.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T2.84.80.80.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.84.80.80.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.84.80.80.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.75.71.71.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.75.71.71.1.2"></span> <span class="ltx_text" id="S4.T2.75.71.71.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.75.71.71.1.1.1">
<span class="ltx_tr" id="S4.T2.75.71.71.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.75.71.71.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0155</span></span>
<span class="ltx_tr" id="S4.T2.75.71.71.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.75.71.71.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.75.71.71.1.1.1.1.1.m1.1"><semantics id="S4.T2.75.71.71.1.1.1.1.1.m1.1a"><mo id="S4.T2.75.71.71.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.75.71.71.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.75.71.71.1.1.1.1.1.m1.1b"><ci id="S4.T2.75.71.71.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.75.71.71.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.75.71.71.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.75.71.71.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.73%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.75.71.71.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.76.72.72.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.76.72.72.2.2"></span> <span class="ltx_text" id="S4.T2.76.72.72.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.76.72.72.2.1.1">
<span class="ltx_tr" id="S4.T2.76.72.72.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.76.72.72.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0195</span></span>
<span class="ltx_tr" id="S4.T2.76.72.72.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.76.72.72.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.76.72.72.2.1.1.1.1.m1.1"><semantics id="S4.T2.76.72.72.2.1.1.1.1.m1.1a"><mo id="S4.T2.76.72.72.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.76.72.72.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.76.72.72.2.1.1.1.1.m1.1b"><ci id="S4.T2.76.72.72.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.76.72.72.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.76.72.72.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.76.72.72.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>12.07%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.76.72.72.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.77.73.73.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.77.73.73.3.2"></span> <span class="ltx_text" id="S4.T2.77.73.73.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.77.73.73.3.1.1">
<span class="ltx_tr" id="S4.T2.77.73.73.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.77.73.73.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0315</span></span>
<span class="ltx_tr" id="S4.T2.77.73.73.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.77.73.73.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.77.73.73.3.1.1.1.1.m1.1"><semantics id="S4.T2.77.73.73.3.1.1.1.1.m1.1a"><mo id="S4.T2.77.73.73.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.77.73.73.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.77.73.73.3.1.1.1.1.m1.1b"><ci id="S4.T2.77.73.73.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.77.73.73.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.77.73.73.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.77.73.73.3.1.1.1.1.m1.1d">↓</annotation></semantics></math>0.63%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.77.73.73.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.78.74.74.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.78.74.74.4.2"></span> <span class="ltx_text" id="S4.T2.78.74.74.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.78.74.74.4.1.1">
<span class="ltx_tr" id="S4.T2.78.74.74.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.78.74.74.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0470</span></span>
<span class="ltx_tr" id="S4.T2.78.74.74.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.78.74.74.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.78.74.74.4.1.1.1.1.m1.1"><semantics id="S4.T2.78.74.74.4.1.1.1.1.m1.1a"><mo id="S4.T2.78.74.74.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.78.74.74.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.78.74.74.4.1.1.1.1.m1.1b"><ci id="S4.T2.78.74.74.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.78.74.74.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.78.74.74.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.78.74.74.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>12.17%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.78.74.74.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.79.75.75.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.79.75.75.5.m1.1"><semantics id="S4.T2.79.75.75.5.m1.1a"><mo id="S4.T2.79.75.75.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.79.75.75.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.79.75.75.5.m1.1b"><ci id="S4.T2.79.75.75.5.m1.1.1.cmml" xref="S4.T2.79.75.75.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.79.75.75.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.79.75.75.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.79.75.75.5.1" style="color:#FF0000;">7.08%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.84.80.80.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.80.76.76.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.80.76.76.6.2"></span> <span class="ltx_text" id="S4.T2.80.76.76.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.80.76.76.6.1.1">
<span class="ltx_tr" id="S4.T2.80.76.76.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.80.76.76.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0162</span></span>
<span class="ltx_tr" id="S4.T2.80.76.76.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.80.76.76.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.80.76.76.6.1.1.1.1.m1.1"><semantics id="S4.T2.80.76.76.6.1.1.1.1.m1.1a"><mo id="S4.T2.80.76.76.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.80.76.76.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.80.76.76.6.1.1.1.1.m1.1b"><ci id="S4.T2.80.76.76.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.80.76.76.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.80.76.76.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.80.76.76.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.72%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.80.76.76.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.81.77.77.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.81.77.77.7.2"></span> <span class="ltx_text" id="S4.T2.81.77.77.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.81.77.77.7.1.1">
<span class="ltx_tr" id="S4.T2.81.77.77.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.81.77.77.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0202</span></span>
<span class="ltx_tr" id="S4.T2.81.77.77.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.81.77.77.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.81.77.77.7.1.1.1.1.m1.1"><semantics id="S4.T2.81.77.77.7.1.1.1.1.m1.1a"><mo id="S4.T2.81.77.77.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.81.77.77.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.81.77.77.7.1.1.1.1.m1.1b"><ci id="S4.T2.81.77.77.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.81.77.77.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.81.77.77.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.81.77.77.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.19%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.81.77.77.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.82.78.78.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.82.78.78.8.2"></span> <span class="ltx_text" id="S4.T2.82.78.78.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.82.78.78.8.1.1">
<span class="ltx_tr" id="S4.T2.82.78.78.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.82.78.78.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0334</span></span>
<span class="ltx_tr" id="S4.T2.82.78.78.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.82.78.78.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.82.78.78.8.1.1.1.1.m1.1"><semantics id="S4.T2.82.78.78.8.1.1.1.1.m1.1a"><mo id="S4.T2.82.78.78.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.82.78.78.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.82.78.78.8.1.1.1.1.m1.1b"><ci id="S4.T2.82.78.78.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.82.78.78.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.82.78.78.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.82.78.78.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.45%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.82.78.78.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.83.79.79.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.83.79.79.9.2"></span> <span class="ltx_text" id="S4.T2.83.79.79.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.83.79.79.9.1.1">
<span class="ltx_tr" id="S4.T2.83.79.79.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.83.79.79.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0496</span></span>
<span class="ltx_tr" id="S4.T2.83.79.79.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.83.79.79.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.83.79.79.9.1.1.1.1.m1.1"><semantics id="S4.T2.83.79.79.9.1.1.1.1.m1.1a"><mo id="S4.T2.83.79.79.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.83.79.79.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.83.79.79.9.1.1.1.1.m1.1b"><ci id="S4.T2.83.79.79.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.83.79.79.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.83.79.79.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.83.79.79.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.98%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.83.79.79.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.84.80.80.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.84.80.80.10.m1.1"><semantics id="S4.T2.84.80.80.10.m1.1a"><mo id="S4.T2.84.80.80.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.84.80.80.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.84.80.80.10.m1.1b"><ci id="S4.T2.84.80.80.10.m1.1.1.cmml" xref="S4.T2.84.80.80.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.84.80.80.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.84.80.80.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.84.80.80.10.1" style="color:#FF0000;">6.59%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.104.100.107">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.104.100.107.1" rowspan="5" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T2.104.100.107.1.1">Baby &amp; Products</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0112</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0157</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0260</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0437</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T2.104.100.107.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T2.104.100.107.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0109</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0154</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0257</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0439</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.104.100.107.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.94.90.90">
<td class="ltx_td ltx_align_center" id="S4.T2.94.90.90.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.94.90.90.11.1"></span> <span class="ltx_text" id="S4.T2.94.90.90.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.94.90.90.11.2.1">
<span class="ltx_tr" id="S4.T2.94.90.90.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.94.90.90.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T2.94.90.90.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.94.90.90.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.94.90.90.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.85.81.81.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.85.81.81.1.2"></span> <span class="ltx_text" id="S4.T2.85.81.81.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.85.81.81.1.1.1">
<span class="ltx_tr" id="S4.T2.85.81.81.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.85.81.81.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0116</span></span>
<span class="ltx_tr" id="S4.T2.85.81.81.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.85.81.81.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.85.81.81.1.1.1.1.1.m1.1"><semantics id="S4.T2.85.81.81.1.1.1.1.1.m1.1a"><mo id="S4.T2.85.81.81.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.85.81.81.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.85.81.81.1.1.1.1.1.m1.1b"><ci id="S4.T2.85.81.81.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.85.81.81.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.85.81.81.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.85.81.81.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.57%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.85.81.81.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.86.82.82.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.86.82.82.2.2"></span> <span class="ltx_text" id="S4.T2.86.82.82.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.86.82.82.2.1.1">
<span class="ltx_tr" id="S4.T2.86.82.82.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.86.82.82.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0164</span></span>
<span class="ltx_tr" id="S4.T2.86.82.82.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.86.82.82.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.86.82.82.2.1.1.1.1.m1.1"><semantics id="S4.T2.86.82.82.2.1.1.1.1.m1.1a"><mo id="S4.T2.86.82.82.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.86.82.82.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.86.82.82.2.1.1.1.1.m1.1b"><ci id="S4.T2.86.82.82.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.86.82.82.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.86.82.82.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.86.82.82.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.46%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.86.82.82.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.87.83.83.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.87.83.83.3.2"></span> <span class="ltx_text" id="S4.T2.87.83.83.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.87.83.83.3.1.1">
<span class="ltx_tr" id="S4.T2.87.83.83.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.87.83.83.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0228</span></span>
<span class="ltx_tr" id="S4.T2.87.83.83.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.87.83.83.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.87.83.83.3.1.1.1.1.m1.1"><semantics id="S4.T2.87.83.83.3.1.1.1.1.m1.1a"><mo id="S4.T2.87.83.83.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.87.83.83.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.87.83.83.3.1.1.1.1.m1.1b"><ci id="S4.T2.87.83.83.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.87.83.83.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.87.83.83.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.87.83.83.3.1.1.1.1.m1.1d">↓</annotation></semantics></math>12.31%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.87.83.83.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.88.84.84.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.88.84.84.4.2"></span> <span class="ltx_text" id="S4.T2.88.84.84.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.88.84.84.4.1.1">
<span class="ltx_tr" id="S4.T2.88.84.84.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.88.84.84.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0418</span></span>
<span class="ltx_tr" id="S4.T2.88.84.84.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.88.84.84.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.88.84.84.4.1.1.1.1.m1.1"><semantics id="S4.T2.88.84.84.4.1.1.1.1.m1.1a"><mo id="S4.T2.88.84.84.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.88.84.84.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.88.84.84.4.1.1.1.1.m1.1b"><ci id="S4.T2.88.84.84.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.88.84.84.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.88.84.84.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.88.84.84.4.1.1.1.1.m1.1d">↓</annotation></semantics></math>4.35%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.88.84.84.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.89.85.85.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.89.85.85.5.m1.1"><semantics id="S4.T2.89.85.85.5.m1.1a"><mo id="S4.T2.89.85.85.5.m1.1.1" stretchy="false" xref="S4.T2.89.85.85.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.89.85.85.5.m1.1b"><ci id="S4.T2.89.85.85.5.m1.1.1.cmml" xref="S4.T2.89.85.85.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.89.85.85.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.89.85.85.5.m1.1d">↓</annotation></semantics></math>2.16%</td>
<td class="ltx_td ltx_nopad_l" id="S4.T2.94.90.90.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T2.90.86.86.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.90.86.86.6.2"></span> <span class="ltx_text" id="S4.T2.90.86.86.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.90.86.86.6.1.1">
<span class="ltx_tr" id="S4.T2.90.86.86.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.90.86.86.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0148</span></span>
<span class="ltx_tr" id="S4.T2.90.86.86.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.90.86.86.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.90.86.86.6.1.1.1.1.m1.1"><semantics id="S4.T2.90.86.86.6.1.1.1.1.m1.1a"><mo id="S4.T2.90.86.86.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.90.86.86.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.90.86.86.6.1.1.1.1.m1.1b"><ci id="S4.T2.90.86.86.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.90.86.86.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.90.86.86.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.90.86.86.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>35.78%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.90.86.86.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.91.87.87.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.91.87.87.7.2"></span> <span class="ltx_text" id="S4.T2.91.87.87.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.91.87.87.7.1.1">
<span class="ltx_tr" id="S4.T2.91.87.87.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.91.87.87.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0195</span></span>
<span class="ltx_tr" id="S4.T2.91.87.87.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.91.87.87.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.91.87.87.7.1.1.1.1.m1.1"><semantics id="S4.T2.91.87.87.7.1.1.1.1.m1.1a"><mo id="S4.T2.91.87.87.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.91.87.87.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.91.87.87.7.1.1.1.1.m1.1b"><ci id="S4.T2.91.87.87.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.91.87.87.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.91.87.87.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.91.87.87.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>26.62%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.91.87.87.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.92.88.88.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.92.88.88.8.2"></span> <span class="ltx_text" id="S4.T2.92.88.88.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.92.88.88.8.1.1">
<span class="ltx_tr" id="S4.T2.92.88.88.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.92.88.88.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0293</span></span>
<span class="ltx_tr" id="S4.T2.92.88.88.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.92.88.88.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.92.88.88.8.1.1.1.1.m1.1"><semantics id="S4.T2.92.88.88.8.1.1.1.1.m1.1a"><mo id="S4.T2.92.88.88.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.92.88.88.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.92.88.88.8.1.1.1.1.m1.1b"><ci id="S4.T2.92.88.88.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.92.88.88.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.92.88.88.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.92.88.88.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.57%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.92.88.88.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.93.89.89.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.93.89.89.9.2"></span> <span class="ltx_text" id="S4.T2.93.89.89.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.93.89.89.9.1.1">
<span class="ltx_tr" id="S4.T2.93.89.89.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.93.89.89.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0481</span></span>
<span class="ltx_tr" id="S4.T2.93.89.89.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.93.89.89.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.93.89.89.9.1.1.1.1.m1.1"><semantics id="S4.T2.93.89.89.9.1.1.1.1.m1.1a"><mo id="S4.T2.93.89.89.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.93.89.89.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.93.89.89.9.1.1.1.1.m1.1b"><ci id="S4.T2.93.89.89.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.93.89.89.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.93.89.89.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.93.89.89.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>14.01%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.93.89.89.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.94.90.90.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.94.90.90.10.m1.1"><semantics id="S4.T2.94.90.90.10.m1.1a"><mo id="S4.T2.94.90.90.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.94.90.90.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.94.90.90.10.m1.1b"><ci id="S4.T2.94.90.90.10.m1.1.1.cmml" xref="S4.T2.94.90.90.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.94.90.90.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.94.90.90.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.94.90.90.10.1" style="color:#FF0000;">21.49%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.104.100.100">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.104.100.100.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.104.100.100.11.1"></span> <span class="ltx_text" id="S4.T2.104.100.100.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.104.100.100.11.2.1">
<span class="ltx_tr" id="S4.T2.104.100.100.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.104.100.100.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T2.104.100.100.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.104.100.100.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T2.104.100.100.11.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.95.91.91.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.95.91.91.1.2"></span> <span class="ltx_text" id="S4.T2.95.91.91.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.95.91.91.1.1.1">
<span class="ltx_tr" id="S4.T2.95.91.91.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.95.91.91.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0135</span></span>
<span class="ltx_tr" id="S4.T2.95.91.91.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.95.91.91.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.95.91.91.1.1.1.1.1.m1.1"><semantics id="S4.T2.95.91.91.1.1.1.1.1.m1.1a"><mo id="S4.T2.95.91.91.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.95.91.91.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.95.91.91.1.1.1.1.1.m1.1b"><ci id="S4.T2.95.91.91.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.95.91.91.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.95.91.91.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.95.91.91.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>20.54%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.95.91.91.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.96.92.92.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.96.92.92.2.2"></span> <span class="ltx_text" id="S4.T2.96.92.92.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.96.92.92.2.1.1">
<span class="ltx_tr" id="S4.T2.96.92.92.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.96.92.92.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0178</span></span>
<span class="ltx_tr" id="S4.T2.96.92.92.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.96.92.92.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.96.92.92.2.1.1.1.1.m1.1"><semantics id="S4.T2.96.92.92.2.1.1.1.1.m1.1a"><mo id="S4.T2.96.92.92.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.96.92.92.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.96.92.92.2.1.1.1.1.m1.1b"><ci id="S4.T2.96.92.92.2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.96.92.92.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.96.92.92.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.96.92.92.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>13.38%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.96.92.92.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.97.93.93.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.97.93.93.3.2"></span> <span class="ltx_text" id="S4.T2.97.93.93.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.97.93.93.3.1.1">
<span class="ltx_tr" id="S4.T2.97.93.93.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.97.93.93.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0281</span></span>
<span class="ltx_tr" id="S4.T2.97.93.93.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.97.93.93.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.97.93.93.3.1.1.1.1.m1.1"><semantics id="S4.T2.97.93.93.3.1.1.1.1.m1.1a"><mo id="S4.T2.97.93.93.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.97.93.93.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.97.93.93.3.1.1.1.1.m1.1b"><ci id="S4.T2.97.93.93.3.1.1.1.1.m1.1.1.cmml" xref="S4.T2.97.93.93.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.97.93.93.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.97.93.93.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.08%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.97.93.93.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.98.94.94.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.98.94.94.4.2"></span> <span class="ltx_text" id="S4.T2.98.94.94.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.98.94.94.4.1.1">
<span class="ltx_tr" id="S4.T2.98.94.94.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.98.94.94.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0451</span></span>
<span class="ltx_tr" id="S4.T2.98.94.94.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.98.94.94.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.98.94.94.4.1.1.1.1.m1.1"><semantics id="S4.T2.98.94.94.4.1.1.1.1.m1.1a"><mo id="S4.T2.98.94.94.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.98.94.94.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.98.94.94.4.1.1.1.1.m1.1b"><ci id="S4.T2.98.94.94.4.1.1.1.1.m1.1.1.cmml" xref="S4.T2.98.94.94.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.98.94.94.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.98.94.94.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.20%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.98.94.94.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.99.95.95.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.99.95.95.5.m1.1"><semantics id="S4.T2.99.95.95.5.m1.1a"><mo id="S4.T2.99.95.95.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.99.95.95.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.99.95.95.5.m1.1b"><ci id="S4.T2.99.95.95.5.m1.1.1.cmml" xref="S4.T2.99.95.95.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.99.95.95.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.99.95.95.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.99.95.95.5.1" style="color:#FF0000;">11.30%</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_border_bb" id="S4.T2.104.100.100.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T2.100.96.96.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.100.96.96.6.2"></span> <span class="ltx_text" id="S4.T2.100.96.96.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.100.96.96.6.1.1">
<span class="ltx_tr" id="S4.T2.100.96.96.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.100.96.96.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0140</span></span>
<span class="ltx_tr" id="S4.T2.100.96.96.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.100.96.96.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.100.96.96.6.1.1.1.1.m1.1"><semantics id="S4.T2.100.96.96.6.1.1.1.1.m1.1a"><mo id="S4.T2.100.96.96.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.100.96.96.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.100.96.96.6.1.1.1.1.m1.1b"><ci id="S4.T2.100.96.96.6.1.1.1.1.m1.1.1.cmml" xref="S4.T2.100.96.96.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.100.96.96.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.100.96.96.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>28.44%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.100.96.96.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.101.97.97.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.101.97.97.7.2"></span> <span class="ltx_text" id="S4.T2.101.97.97.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.101.97.97.7.1.1">
<span class="ltx_tr" id="S4.T2.101.97.97.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.101.97.97.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0185</span></span>
<span class="ltx_tr" id="S4.T2.101.97.97.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.101.97.97.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.101.97.97.7.1.1.1.1.m1.1"><semantics id="S4.T2.101.97.97.7.1.1.1.1.m1.1a"><mo id="S4.T2.101.97.97.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.101.97.97.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.101.97.97.7.1.1.1.1.m1.1b"><ci id="S4.T2.101.97.97.7.1.1.1.1.m1.1.1.cmml" xref="S4.T2.101.97.97.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.101.97.97.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.101.97.97.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>20.13%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.101.97.97.7.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.102.98.98.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.102.98.98.8.2"></span> <span class="ltx_text" id="S4.T2.102.98.98.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.102.98.98.8.1.1">
<span class="ltx_tr" id="S4.T2.102.98.98.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.102.98.98.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0291</span></span>
<span class="ltx_tr" id="S4.T2.102.98.98.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.102.98.98.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.102.98.98.8.1.1.1.1.m1.1"><semantics id="S4.T2.102.98.98.8.1.1.1.1.m1.1a"><mo id="S4.T2.102.98.98.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.102.98.98.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.102.98.98.8.1.1.1.1.m1.1b"><ci id="S4.T2.102.98.98.8.1.1.1.1.m1.1.1.cmml" xref="S4.T2.102.98.98.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.102.98.98.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.102.98.98.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.15%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.102.98.98.8.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.103.99.99.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T2.103.99.99.9.2"></span> <span class="ltx_text" id="S4.T2.103.99.99.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.103.99.99.9.1.1">
<span class="ltx_tr" id="S4.T2.103.99.99.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.103.99.99.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0466</span></span>
<span class="ltx_tr" id="S4.T2.103.99.99.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.103.99.99.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.103.99.99.9.1.1.1.1.m1.1"><semantics id="S4.T2.103.99.99.9.1.1.1.1.m1.1a"><mo id="S4.T2.103.99.99.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.103.99.99.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.103.99.99.9.1.1.1.1.m1.1b"><ci id="S4.T2.103.99.99.9.1.1.1.1.m1.1.1.cmml" xref="S4.T2.103.99.99.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.103.99.99.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.103.99.99.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>13.23%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.103.99.99.9.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.104.100.100.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.104.100.100.10.m1.1"><semantics id="S4.T2.104.100.100.10.m1.1a"><mo id="S4.T2.104.100.100.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T2.104.100.100.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.104.100.100.10.m1.1b"><ci id="S4.T2.104.100.100.10.m1.1.1.cmml" xref="S4.T2.104.100.100.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.104.100.100.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.104.100.100.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.104.100.100.10.1" style="color:#FF0000;">16.99%</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of the performance of various ID-based sequential recommendation models across five different datasets.  The models are evaluated using two key metrics: Normalized Discounted Cumulative Gain (NDCG) at cutoff ranks of 10 and 20 (NDCG@10, NDCG@20), and Recall at cutoff ranks of 10 and 20 (Recall@10, Recall@20).  The table shows the baseline performance of each model and then the improvement achieved by incorporating two proposed reasoning methods, Ensemble Reasoning Learning (ERL) and Progressive Reasoning Learning (PRL).  The 'Avg.' column displays the average improvement or decline across all four metrics for each model and reasoning approach.  Positive values indicate improvement, while negative values indicate a decrease in performance compared to the baseline.
> <details>
> <summary>read the caption</summary>
> Table 2. Performance comparison of different ID-based models on five datasets. ‘N’ and ‘R’ indicate NDCG and Recall metrics, respectively. ‘Avg.’ represents the average improvement rate across all metrics (i.e., NDCG@{10,20} and Recall@{10,20}). Performance improvements are indicated by “↑↑\uparrow↑”, while performance declines are indicated by “↓↓\downarrow↓”.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.104.100">
<tr class="ltx_tr" id="S4.T3.104.100.101">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.104.100.101.1" rowspan="2" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T3.104.100.101.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.104.100.101.2" rowspan="2" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T3.104.100.101.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T3.104.100.101.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">UniSRec</td>
<td class="ltx_td ltx_nopad_l ltx_border_tt" id="S4.T3.104.100.101.4" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T3.104.100.101.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">MoRec</td>
</tr>
<tr class="ltx_tr" id="S4.T3.104.100.102">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">Avg.</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.104.100.102.6" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.104.100.102.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">N@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">R@20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.102.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T3.104.100.103">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T3.104.100.103.1.1">Yelp</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0380</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0495</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0737</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1195</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T3.104.100.103.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.104.100.103.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0391</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0516</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0757</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1258</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.103.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.10.10">
<td class="ltx_td ltx_align_center" id="S4.T3.14.10.10.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.14.10.10.11.1"></span> <span class="ltx_text" id="S4.T3.14.10.10.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.14.10.10.11.2.1">
<span class="ltx_tr" id="S4.T3.14.10.10.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.14.10.10.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T3.14.10.10.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.14.10.10.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.14.10.10.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.5.1.1.1.2"></span> <span class="ltx_text" id="S4.T3.5.1.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.5.1.1.1.1.1">
<span class="ltx_tr" id="S4.T3.5.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.5.1.1.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0406</span></span>
<span class="ltx_tr" id="S4.T3.5.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.5.1.1.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T3.5.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T3.5.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.5.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T3.5.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.5.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.84%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.5.1.1.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.2.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.6.2.2.2.2"></span> <span class="ltx_text" id="S4.T3.6.2.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.6.2.2.2.1.1">
<span class="ltx_tr" id="S4.T3.6.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.6.2.2.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0521</span></span>
<span class="ltx_tr" id="S4.T3.6.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.6.2.2.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.2.2.2.1.1.1.1.m1.1"><semantics id="S4.T3.6.2.2.2.1.1.1.1.m1.1a"><mo id="S4.T3.6.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.6.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.2.2.2.1.1.1.1.m1.1b"><ci id="S4.T3.6.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.6.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.25%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.6.2.2.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.3.3.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.7.3.3.3.2"></span> <span class="ltx_text" id="S4.T3.7.3.3.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.7.3.3.3.1.1">
<span class="ltx_tr" id="S4.T3.7.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.7.3.3.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0770</span></span>
<span class="ltx_tr" id="S4.T3.7.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.7.3.3.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.3.3.3.1.1.1.1.m1.1"><semantics id="S4.T3.7.3.3.3.1.1.1.1.m1.1a"><mo id="S4.T3.7.3.3.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.7.3.3.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.3.3.3.1.1.1.1.m1.1b"><ci id="S4.T3.7.3.3.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.7.3.3.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.3.3.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.3.3.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.48%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.7.3.3.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.4.4.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.8.4.4.4.2"></span> <span class="ltx_text" id="S4.T3.8.4.4.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.8.4.4.4.1.1">
<span class="ltx_tr" id="S4.T3.8.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.8.4.4.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1227</span></span>
<span class="ltx_tr" id="S4.T3.8.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.8.4.4.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.8.4.4.4.1.1.1.1.m1.1"><semantics id="S4.T3.8.4.4.4.1.1.1.1.m1.1a"><mo id="S4.T3.8.4.4.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.8.4.4.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.4.4.4.1.1.1.1.m1.1b"><ci id="S4.T3.8.4.4.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.8.4.4.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.4.4.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.4.4.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.68%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.8.4.4.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.9.5.5.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.9.5.5.5.m1.1"><semantics id="S4.T3.9.5.5.5.m1.1a"><mo id="S4.T3.9.5.5.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.9.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.5.5.5.m1.1b"><ci id="S4.T3.9.5.5.5.m1.1.1.cmml" xref="S4.T3.9.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.5.5.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.9.5.5.5.1" style="color:#FF0000;">4.81%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.14.10.10.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.10.6.6.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.10.6.6.6.2"></span> <span class="ltx_text" id="S4.T3.10.6.6.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.10.6.6.6.1.1">
<span class="ltx_tr" id="S4.T3.10.6.6.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.10.6.6.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0417</span></span>
<span class="ltx_tr" id="S4.T3.10.6.6.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.10.6.6.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.10.6.6.6.1.1.1.1.m1.1"><semantics id="S4.T3.10.6.6.6.1.1.1.1.m1.1a"><mo id="S4.T3.10.6.6.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.10.6.6.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.6.6.6.1.1.1.1.m1.1b"><ci id="S4.T3.10.6.6.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.10.6.6.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.6.6.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.6.6.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.65%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.10.6.6.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.11.7.7.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.11.7.7.7.2"></span> <span class="ltx_text" id="S4.T3.11.7.7.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.11.7.7.7.1.1">
<span class="ltx_tr" id="S4.T3.11.7.7.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.11.7.7.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0531</span></span>
<span class="ltx_tr" id="S4.T3.11.7.7.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.11.7.7.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.11.7.7.7.1.1.1.1.m1.1"><semantics id="S4.T3.11.7.7.7.1.1.1.1.m1.1a"><mo id="S4.T3.11.7.7.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.11.7.7.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.7.7.7.1.1.1.1.m1.1b"><ci id="S4.T3.11.7.7.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.11.7.7.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.7.7.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.7.7.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.91%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.11.7.7.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.8.8.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.12.8.8.8.2"></span> <span class="ltx_text" id="S4.T3.12.8.8.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.12.8.8.8.1.1">
<span class="ltx_tr" id="S4.T3.12.8.8.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.12.8.8.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0832</span></span>
<span class="ltx_tr" id="S4.T3.12.8.8.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.12.8.8.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.12.8.8.8.1.1.1.1.m1.1"><semantics id="S4.T3.12.8.8.8.1.1.1.1.m1.1a"><mo id="S4.T3.12.8.8.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.12.8.8.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.8.8.8.1.1.1.1.m1.1b"><ci id="S4.T3.12.8.8.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.12.8.8.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.8.8.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.8.8.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>9.91%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.12.8.8.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.9.9.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.13.9.9.9.2"></span> <span class="ltx_text" id="S4.T3.13.9.9.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.13.9.9.9.1.1">
<span class="ltx_tr" id="S4.T3.13.9.9.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.13.9.9.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1283</span></span>
<span class="ltx_tr" id="S4.T3.13.9.9.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.13.9.9.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.13.9.9.9.1.1.1.1.m1.1"><semantics id="S4.T3.13.9.9.9.1.1.1.1.m1.1a"><mo id="S4.T3.13.9.9.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.13.9.9.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.9.9.9.1.1.1.1.m1.1b"><ci id="S4.T3.13.9.9.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.13.9.9.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.9.9.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.9.9.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.99%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.13.9.9.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.10.10.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.14.10.10.10.m1.1"><semantics id="S4.T3.14.10.10.10.m1.1a"><mo id="S4.T3.14.10.10.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.14.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.10.10.10.m1.1b"><ci id="S4.T3.14.10.10.10.m1.1.1.cmml" xref="S4.T3.14.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.10.10.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.14.10.10.10.1" style="color:#FF0000;">5.36%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.24.20.20">
<td class="ltx_td ltx_align_center" id="S4.T3.24.20.20.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.24.20.20.11.1"></span> <span class="ltx_text" id="S4.T3.24.20.20.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.24.20.20.11.2.1">
<span class="ltx_tr" id="S4.T3.24.20.20.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.24.20.20.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T3.24.20.20.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.24.20.20.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.24.20.20.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.11.11.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.15.11.11.1.2"></span> <span class="ltx_text" id="S4.T3.15.11.11.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.15.11.11.1.1.1">
<span class="ltx_tr" id="S4.T3.15.11.11.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.15.11.11.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0413</span></span>
<span class="ltx_tr" id="S4.T3.15.11.11.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.15.11.11.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.15.11.11.1.1.1.1.1.m1.1"><semantics id="S4.T3.15.11.11.1.1.1.1.1.m1.1a"><mo id="S4.T3.15.11.11.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.15.11.11.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.15.11.11.1.1.1.1.1.m1.1b"><ci id="S4.T3.15.11.11.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.15.11.11.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.11.11.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.11.11.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.68%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.15.11.11.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.12.12.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.16.12.12.2.2"></span> <span class="ltx_text" id="S4.T3.16.12.12.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.16.12.12.2.1.1">
<span class="ltx_tr" id="S4.T3.16.12.12.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.16.12.12.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0529</span></span>
<span class="ltx_tr" id="S4.T3.16.12.12.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.16.12.12.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.16.12.12.2.1.1.1.1.m1.1"><semantics id="S4.T3.16.12.12.2.1.1.1.1.m1.1a"><mo id="S4.T3.16.12.12.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.16.12.12.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.12.12.2.1.1.1.1.m1.1b"><ci id="S4.T3.16.12.12.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.16.12.12.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.12.12.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.12.12.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.87%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.16.12.12.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.17.13.13.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.17.13.13.3.2"></span> <span class="ltx_text" id="S4.T3.17.13.13.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.17.13.13.3.1.1">
<span class="ltx_tr" id="S4.T3.17.13.13.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.17.13.13.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0788</span></span>
<span class="ltx_tr" id="S4.T3.17.13.13.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.17.13.13.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.17.13.13.3.1.1.1.1.m1.1"><semantics id="S4.T3.17.13.13.3.1.1.1.1.m1.1a"><mo id="S4.T3.17.13.13.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.17.13.13.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.17.13.13.3.1.1.1.1.m1.1b"><ci id="S4.T3.17.13.13.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.17.13.13.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.13.13.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.13.13.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.92%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.17.13.13.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.14.14.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.18.14.14.4.2"></span> <span class="ltx_text" id="S4.T3.18.14.14.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.18.14.14.4.1.1">
<span class="ltx_tr" id="S4.T3.18.14.14.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.18.14.14.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1253</span></span>
<span class="ltx_tr" id="S4.T3.18.14.14.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.18.14.14.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.18.14.14.4.1.1.1.1.m1.1"><semantics id="S4.T3.18.14.14.4.1.1.1.1.m1.1a"><mo id="S4.T3.18.14.14.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.18.14.14.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.18.14.14.4.1.1.1.1.m1.1b"><ci id="S4.T3.18.14.14.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.18.14.14.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.14.14.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.14.14.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.85%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.18.14.14.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.19.15.15.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.19.15.15.5.m1.1"><semantics id="S4.T3.19.15.15.5.m1.1a"><mo id="S4.T3.19.15.15.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.19.15.15.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.19.15.15.5.m1.1b"><ci id="S4.T3.19.15.15.5.m1.1.1.cmml" xref="S4.T3.19.15.15.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.15.15.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.15.15.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.19.15.15.5.1" style="color:#FF0000;">6.83%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.24.20.20.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.20.16.16.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.20.16.16.6.2"></span> <span class="ltx_text" id="S4.T3.20.16.16.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.20.16.16.6.1.1">
<span class="ltx_tr" id="S4.T3.20.16.16.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.20.16.16.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0410</span></span>
<span class="ltx_tr" id="S4.T3.20.16.16.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.20.16.16.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.20.16.16.6.1.1.1.1.m1.1"><semantics id="S4.T3.20.16.16.6.1.1.1.1.m1.1a"><mo id="S4.T3.20.16.16.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.20.16.16.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.20.16.16.6.1.1.1.1.m1.1b"><ci id="S4.T3.20.16.16.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.20.16.16.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.16.16.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.16.16.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.86%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.20.16.16.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.17.17.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.21.17.17.7.2"></span> <span class="ltx_text" id="S4.T3.21.17.17.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.21.17.17.7.1.1">
<span class="ltx_tr" id="S4.T3.21.17.17.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.21.17.17.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0532</span></span>
<span class="ltx_tr" id="S4.T3.21.17.17.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.21.17.17.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.21.17.17.7.1.1.1.1.m1.1"><semantics id="S4.T3.21.17.17.7.1.1.1.1.m1.1a"><mo id="S4.T3.21.17.17.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.21.17.17.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.21.17.17.7.1.1.1.1.m1.1b"><ci id="S4.T3.21.17.17.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.21.17.17.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.21.17.17.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.21.17.17.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.10%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.21.17.17.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.22.18.18.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.22.18.18.8.2"></span> <span class="ltx_text" id="S4.T3.22.18.18.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.22.18.18.8.1.1">
<span class="ltx_tr" id="S4.T3.22.18.18.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.22.18.18.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0804</span></span>
<span class="ltx_tr" id="S4.T3.22.18.18.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.22.18.18.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.22.18.18.8.1.1.1.1.m1.1"><semantics id="S4.T3.22.18.18.8.1.1.1.1.m1.1a"><mo id="S4.T3.22.18.18.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.22.18.18.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.22.18.18.8.1.1.1.1.m1.1b"><ci id="S4.T3.22.18.18.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.22.18.18.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.22.18.18.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.22.18.18.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.21%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.22.18.18.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.23.19.19.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.23.19.19.9.2"></span> <span class="ltx_text" id="S4.T3.23.19.19.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.23.19.19.9.1.1">
<span class="ltx_tr" id="S4.T3.23.19.19.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.23.19.19.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1289</span></span>
<span class="ltx_tr" id="S4.T3.23.19.19.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.23.19.19.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.23.19.19.9.1.1.1.1.m1.1"><semantics id="S4.T3.23.19.19.9.1.1.1.1.m1.1a"><mo id="S4.T3.23.19.19.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.23.19.19.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.23.19.19.9.1.1.1.1.m1.1b"><ci id="S4.T3.23.19.19.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.23.19.19.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.23.19.19.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.23.19.19.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.46%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.23.19.19.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.24.20.20.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.24.20.20.10.m1.1"><semantics id="S4.T3.24.20.20.10.m1.1a"><mo id="S4.T3.24.20.20.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.24.20.20.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.24.20.20.10.m1.1b"><ci id="S4.T3.24.20.20.10.m1.1.1.cmml" xref="S4.T3.24.20.20.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.24.20.20.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.24.20.20.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.24.20.20.10.1" style="color:#FF0000;">4.16%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.104.100.104">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T3.104.100.104.1.1">Video &amp; Games</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0328</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0421</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0683</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1054</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T3.104.100.104.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.104.100.104.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0350</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0438</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0716</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1065</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.104.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.34.30.30">
<td class="ltx_td ltx_align_center" id="S4.T3.34.30.30.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.34.30.30.11.1"></span> <span class="ltx_text" id="S4.T3.34.30.30.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.34.30.30.11.2.1">
<span class="ltx_tr" id="S4.T3.34.30.30.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.34.30.30.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T3.34.30.30.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.34.30.30.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.34.30.30.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.25.21.21.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.25.21.21.1.2"></span> <span class="ltx_text" id="S4.T3.25.21.21.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.25.21.21.1.1.1">
<span class="ltx_tr" id="S4.T3.25.21.21.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.25.21.21.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0364</span></span>
<span class="ltx_tr" id="S4.T3.25.21.21.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.25.21.21.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.25.21.21.1.1.1.1.1.m1.1"><semantics id="S4.T3.25.21.21.1.1.1.1.1.m1.1a"><mo id="S4.T3.25.21.21.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.25.21.21.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.25.21.21.1.1.1.1.1.m1.1b"><ci id="S4.T3.25.21.21.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.25.21.21.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.25.21.21.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.25.21.21.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>10.98%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.25.21.21.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.26.22.22.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.26.22.22.2.2"></span> <span class="ltx_text" id="S4.T3.26.22.22.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.26.22.22.2.1.1">
<span class="ltx_tr" id="S4.T3.26.22.22.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.26.22.22.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0440</span></span>
<span class="ltx_tr" id="S4.T3.26.22.22.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.26.22.22.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.26.22.22.2.1.1.1.1.m1.1"><semantics id="S4.T3.26.22.22.2.1.1.1.1.m1.1a"><mo id="S4.T3.26.22.22.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.26.22.22.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.26.22.22.2.1.1.1.1.m1.1b"><ci id="S4.T3.26.22.22.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.26.22.22.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.26.22.22.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.26.22.22.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.51%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.26.22.22.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.27.23.23.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.27.23.23.3.2"></span> <span class="ltx_text" id="S4.T3.27.23.23.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.27.23.23.3.1.1">
<span class="ltx_tr" id="S4.T3.27.23.23.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.27.23.23.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0711</span></span>
<span class="ltx_tr" id="S4.T3.27.23.23.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.27.23.23.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.27.23.23.3.1.1.1.1.m1.1"><semantics id="S4.T3.27.23.23.3.1.1.1.1.m1.1a"><mo id="S4.T3.27.23.23.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.27.23.23.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.27.23.23.3.1.1.1.1.m1.1b"><ci id="S4.T3.27.23.23.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.27.23.23.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.27.23.23.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.27.23.23.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.10%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.27.23.23.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.28.24.24.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.28.24.24.4.2"></span> <span class="ltx_text" id="S4.T3.28.24.24.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.28.24.24.4.1.1">
<span class="ltx_tr" id="S4.T3.28.24.24.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.28.24.24.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1015</span></span>
<span class="ltx_tr" id="S4.T3.28.24.24.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.28.24.24.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.28.24.24.4.1.1.1.1.m1.1"><semantics id="S4.T3.28.24.24.4.1.1.1.1.m1.1a"><mo id="S4.T3.28.24.24.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.28.24.24.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.28.24.24.4.1.1.1.1.m1.1b"><ci id="S4.T3.28.24.24.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.28.24.24.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.28.24.24.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.28.24.24.4.1.1.1.1.m1.1d">↓</annotation></semantics></math>3.70%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.28.24.24.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.29.25.25.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.29.25.25.5.m1.1"><semantics id="S4.T3.29.25.25.5.m1.1a"><mo id="S4.T3.29.25.25.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.29.25.25.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.29.25.25.5.m1.1b"><ci id="S4.T3.29.25.25.5.m1.1.1.cmml" xref="S4.T3.29.25.25.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.29.25.25.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.29.25.25.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.29.25.25.5.1" style="color:#FF0000;">3.97%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.34.30.30.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.30.26.26.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.30.26.26.6.2"></span> <span class="ltx_text" id="S4.T3.30.26.26.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.30.26.26.6.1.1">
<span class="ltx_tr" id="S4.T3.30.26.26.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.30.26.26.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0392</span></span>
<span class="ltx_tr" id="S4.T3.30.26.26.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.30.26.26.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.30.26.26.6.1.1.1.1.m1.1"><semantics id="S4.T3.30.26.26.6.1.1.1.1.m1.1a"><mo id="S4.T3.30.26.26.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.30.26.26.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.30.26.26.6.1.1.1.1.m1.1b"><ci id="S4.T3.30.26.26.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.30.26.26.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.30.26.26.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.30.26.26.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>12.00%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.30.26.26.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.27.27.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.31.27.27.7.2"></span> <span class="ltx_text" id="S4.T3.31.27.27.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.31.27.27.7.1.1">
<span class="ltx_tr" id="S4.T3.31.27.27.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.31.27.27.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0485</span></span>
<span class="ltx_tr" id="S4.T3.31.27.27.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.31.27.27.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.31.27.27.7.1.1.1.1.m1.1"><semantics id="S4.T3.31.27.27.7.1.1.1.1.m1.1a"><mo id="S4.T3.31.27.27.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.31.27.27.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.31.27.27.7.1.1.1.1.m1.1b"><ci id="S4.T3.31.27.27.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.31.27.27.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.31.27.27.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.31.27.27.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>10.73%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.31.27.27.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.32.28.28.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.32.28.28.8.2"></span> <span class="ltx_text" id="S4.T3.32.28.28.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.32.28.28.8.1.1">
<span class="ltx_tr" id="S4.T3.32.28.28.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.32.28.28.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0744</span></span>
<span class="ltx_tr" id="S4.T3.32.28.28.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.32.28.28.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.32.28.28.8.1.1.1.1.m1.1"><semantics id="S4.T3.32.28.28.8.1.1.1.1.m1.1a"><mo id="S4.T3.32.28.28.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.32.28.28.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.32.28.28.8.1.1.1.1.m1.1b"><ci id="S4.T3.32.28.28.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.32.28.28.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.32.28.28.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.32.28.28.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.91%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.32.28.28.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.33.29.29.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.33.29.29.9.2"></span> <span class="ltx_text" id="S4.T3.33.29.29.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.33.29.29.9.1.1">
<span class="ltx_tr" id="S4.T3.33.29.29.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.33.29.29.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1112</span></span>
<span class="ltx_tr" id="S4.T3.33.29.29.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.33.29.29.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.33.29.29.9.1.1.1.1.m1.1"><semantics id="S4.T3.33.29.29.9.1.1.1.1.m1.1a"><mo id="S4.T3.33.29.29.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.33.29.29.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.33.29.29.9.1.1.1.1.m1.1b"><ci id="S4.T3.33.29.29.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.33.29.29.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.33.29.29.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.33.29.29.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.41%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.33.29.29.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.34.30.30.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.34.30.30.10.m1.1"><semantics id="S4.T3.34.30.30.10.m1.1a"><mo id="S4.T3.34.30.30.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.34.30.30.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.34.30.30.10.m1.1b"><ci id="S4.T3.34.30.30.10.m1.1.1.cmml" xref="S4.T3.34.30.30.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.34.30.30.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.34.30.30.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.34.30.30.10.1" style="color:#FF0000;">7.76%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.44.40.40">
<td class="ltx_td ltx_align_center" id="S4.T3.44.40.40.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.44.40.40.11.1"></span> <span class="ltx_text" id="S4.T3.44.40.40.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.44.40.40.11.2.1">
<span class="ltx_tr" id="S4.T3.44.40.40.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.44.40.40.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T3.44.40.40.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.44.40.40.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.44.40.40.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.35.31.31.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.35.31.31.1.2"></span> <span class="ltx_text" id="S4.T3.35.31.31.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.35.31.31.1.1.1">
<span class="ltx_tr" id="S4.T3.35.31.31.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.35.31.31.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0352</span></span>
<span class="ltx_tr" id="S4.T3.35.31.31.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.35.31.31.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.35.31.31.1.1.1.1.1.m1.1"><semantics id="S4.T3.35.31.31.1.1.1.1.1.m1.1a"><mo id="S4.T3.35.31.31.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.35.31.31.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.35.31.31.1.1.1.1.1.m1.1b"><ci id="S4.T3.35.31.31.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.35.31.31.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.35.31.31.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.35.31.31.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.32%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.35.31.31.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.36.32.32.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.36.32.32.2.2"></span> <span class="ltx_text" id="S4.T3.36.32.32.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.36.32.32.2.1.1">
<span class="ltx_tr" id="S4.T3.36.32.32.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.36.32.32.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0433</span></span>
<span class="ltx_tr" id="S4.T3.36.32.32.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.36.32.32.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.36.32.32.2.1.1.1.1.m1.1"><semantics id="S4.T3.36.32.32.2.1.1.1.1.m1.1a"><mo id="S4.T3.36.32.32.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.36.32.32.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.36.32.32.2.1.1.1.1.m1.1b"><ci id="S4.T3.36.32.32.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.36.32.32.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.36.32.32.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.36.32.32.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.85%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.36.32.32.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.37.33.33.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.37.33.33.3.2"></span> <span class="ltx_text" id="S4.T3.37.33.33.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.37.33.33.3.1.1">
<span class="ltx_tr" id="S4.T3.37.33.33.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.37.33.33.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0658</span></span>
<span class="ltx_tr" id="S4.T3.37.33.33.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.37.33.33.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.37.33.33.3.1.1.1.1.m1.1"><semantics id="S4.T3.37.33.33.3.1.1.1.1.m1.1a"><mo id="S4.T3.37.33.33.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.37.33.33.3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.37.33.33.3.1.1.1.1.m1.1b"><ci id="S4.T3.37.33.33.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.37.33.33.3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.37.33.33.3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.37.33.33.3.1.1.1.1.m1.1d">↓</annotation></semantics></math>3.66%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.37.33.33.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.38.34.34.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.38.34.34.4.2"></span> <span class="ltx_text" id="S4.T3.38.34.34.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.38.34.34.4.1.1">
<span class="ltx_tr" id="S4.T3.38.34.34.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.38.34.34.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0982</span></span>
<span class="ltx_tr" id="S4.T3.38.34.34.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.38.34.34.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.38.34.34.4.1.1.1.1.m1.1"><semantics id="S4.T3.38.34.34.4.1.1.1.1.m1.1a"><mo id="S4.T3.38.34.34.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.38.34.34.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.38.34.34.4.1.1.1.1.m1.1b"><ci id="S4.T3.38.34.34.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.38.34.34.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.38.34.34.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.38.34.34.4.1.1.1.1.m1.1d">↓</annotation></semantics></math>6.83%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.38.34.34.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.39.35.35.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.39.35.35.5.m1.1"><semantics id="S4.T3.39.35.35.5.m1.1a"><mo id="S4.T3.39.35.35.5.m1.1.1" stretchy="false" xref="S4.T3.39.35.35.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.39.35.35.5.m1.1b"><ci id="S4.T3.39.35.35.5.m1.1.1.cmml" xref="S4.T3.39.35.35.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.39.35.35.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.39.35.35.5.m1.1d">↓</annotation></semantics></math>0.08%</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.44.40.40.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.40.36.36.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.40.36.36.6.2"></span> <span class="ltx_text" id="S4.T3.40.36.36.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.40.36.36.6.1.1">
<span class="ltx_tr" id="S4.T3.40.36.36.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.40.36.36.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0371</span></span>
<span class="ltx_tr" id="S4.T3.40.36.36.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.40.36.36.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.40.36.36.6.1.1.1.1.m1.1"><semantics id="S4.T3.40.36.36.6.1.1.1.1.m1.1a"><mo id="S4.T3.40.36.36.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.40.36.36.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.40.36.36.6.1.1.1.1.m1.1b"><ci id="S4.T3.40.36.36.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.40.36.36.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.40.36.36.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.40.36.36.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.00%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.40.36.36.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.41.37.37.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.41.37.37.7.2"></span> <span class="ltx_text" id="S4.T3.41.37.37.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.41.37.37.7.1.1">
<span class="ltx_tr" id="S4.T3.41.37.37.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.41.37.37.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0462</span></span>
<span class="ltx_tr" id="S4.T3.41.37.37.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.41.37.37.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.41.37.37.7.1.1.1.1.m1.1"><semantics id="S4.T3.41.37.37.7.1.1.1.1.m1.1a"><mo id="S4.T3.41.37.37.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.41.37.37.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.41.37.37.7.1.1.1.1.m1.1b"><ci id="S4.T3.41.37.37.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.41.37.37.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.41.37.37.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.41.37.37.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.48%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.41.37.37.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.42.38.38.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.42.38.38.8.2"></span> <span class="ltx_text" id="S4.T3.42.38.38.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.42.38.38.8.1.1">
<span class="ltx_tr" id="S4.T3.42.38.38.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.42.38.38.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0708</span></span>
<span class="ltx_tr" id="S4.T3.42.38.38.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.42.38.38.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.42.38.38.8.1.1.1.1.m1.1"><semantics id="S4.T3.42.38.38.8.1.1.1.1.m1.1a"><mo id="S4.T3.42.38.38.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.42.38.38.8.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.42.38.38.8.1.1.1.1.m1.1b"><ci id="S4.T3.42.38.38.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.42.38.38.8.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.42.38.38.8.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.42.38.38.8.1.1.1.1.m1.1d">↓</annotation></semantics></math>1.12%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.42.38.38.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.43.39.39.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.43.39.39.9.2"></span> <span class="ltx_text" id="S4.T3.43.39.39.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.43.39.39.9.1.1">
<span class="ltx_tr" id="S4.T3.43.39.39.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.43.39.39.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1067</span></span>
<span class="ltx_tr" id="S4.T3.43.39.39.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.43.39.39.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.43.39.39.9.1.1.1.1.m1.1"><semantics id="S4.T3.43.39.39.9.1.1.1.1.m1.1a"><mo id="S4.T3.43.39.39.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.43.39.39.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.43.39.39.9.1.1.1.1.m1.1b"><ci id="S4.T3.43.39.39.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.43.39.39.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.43.39.39.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.43.39.39.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>0.19%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.43.39.39.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.44.40.40.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.44.40.40.10.m1.1"><semantics id="S4.T3.44.40.40.10.m1.1a"><mo id="S4.T3.44.40.40.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.44.40.40.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.44.40.40.10.m1.1b"><ci id="S4.T3.44.40.40.10.m1.1.1.cmml" xref="S4.T3.44.40.40.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.44.40.40.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.44.40.40.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.44.40.40.10.1" style="color:#FF0000;">2.64%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.104.100.105">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T3.104.100.105.1.1">Software</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0820</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1041</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1643</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2522</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T3.104.100.105.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.104.100.105.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0846</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1050</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1697</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2510</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.105.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.54.50.50">
<td class="ltx_td ltx_align_center" id="S4.T3.54.50.50.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.54.50.50.11.1"></span> <span class="ltx_text" id="S4.T3.54.50.50.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.54.50.50.11.2.1">
<span class="ltx_tr" id="S4.T3.54.50.50.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.54.50.50.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T3.54.50.50.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.54.50.50.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.54.50.50.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.45.41.41.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.45.41.41.1.2"></span> <span class="ltx_text" id="S4.T3.45.41.41.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.45.41.41.1.1.1">
<span class="ltx_tr" id="S4.T3.45.41.41.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.45.41.41.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0851</span></span>
<span class="ltx_tr" id="S4.T3.45.41.41.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.45.41.41.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.45.41.41.1.1.1.1.1.m1.1"><semantics id="S4.T3.45.41.41.1.1.1.1.1.m1.1a"><mo id="S4.T3.45.41.41.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.45.41.41.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.45.41.41.1.1.1.1.1.m1.1b"><ci id="S4.T3.45.41.41.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.45.41.41.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.45.41.41.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.45.41.41.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.78%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.45.41.41.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.46.42.42.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.46.42.42.2.2"></span> <span class="ltx_text" id="S4.T3.46.42.42.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.46.42.42.2.1.1">
<span class="ltx_tr" id="S4.T3.46.42.42.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.46.42.42.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1075</span></span>
<span class="ltx_tr" id="S4.T3.46.42.42.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.46.42.42.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.46.42.42.2.1.1.1.1.m1.1"><semantics id="S4.T3.46.42.42.2.1.1.1.1.m1.1a"><mo id="S4.T3.46.42.42.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.46.42.42.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.46.42.42.2.1.1.1.1.m1.1b"><ci id="S4.T3.46.42.42.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.46.42.42.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.46.42.42.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.46.42.42.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.27%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.46.42.42.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.47.43.43.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.47.43.43.3.2"></span> <span class="ltx_text" id="S4.T3.47.43.43.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.47.43.43.3.1.1">
<span class="ltx_tr" id="S4.T3.47.43.43.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.47.43.43.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1669</span></span>
<span class="ltx_tr" id="S4.T3.47.43.43.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.47.43.43.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.47.43.43.3.1.1.1.1.m1.1"><semantics id="S4.T3.47.43.43.3.1.1.1.1.m1.1a"><mo id="S4.T3.47.43.43.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.47.43.43.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.47.43.43.3.1.1.1.1.m1.1b"><ci id="S4.T3.47.43.43.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.47.43.43.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.47.43.43.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.47.43.43.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.58%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.47.43.43.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.48.44.44.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.48.44.44.4.2"></span> <span class="ltx_text" id="S4.T3.48.44.44.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.48.44.44.4.1.1">
<span class="ltx_tr" id="S4.T3.48.44.44.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.48.44.44.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2556</span></span>
<span class="ltx_tr" id="S4.T3.48.44.44.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.48.44.44.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.48.44.44.4.1.1.1.1.m1.1"><semantics id="S4.T3.48.44.44.4.1.1.1.1.m1.1a"><mo id="S4.T3.48.44.44.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.48.44.44.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.48.44.44.4.1.1.1.1.m1.1b"><ci id="S4.T3.48.44.44.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.48.44.44.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.48.44.44.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.48.44.44.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.35%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.48.44.44.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.49.45.45.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.49.45.45.5.m1.1"><semantics id="S4.T3.49.45.45.5.m1.1a"><mo id="S4.T3.49.45.45.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.49.45.45.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.49.45.45.5.m1.1b"><ci id="S4.T3.49.45.45.5.m1.1.1.cmml" xref="S4.T3.49.45.45.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.49.45.45.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.49.45.45.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.49.45.45.5.1" style="color:#FF0000;">2.49%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.54.50.50.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.50.46.46.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.50.46.46.6.2"></span> <span class="ltx_text" id="S4.T3.50.46.46.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.50.46.46.6.1.1">
<span class="ltx_tr" id="S4.T3.50.46.46.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.50.46.46.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0881</span></span>
<span class="ltx_tr" id="S4.T3.50.46.46.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.50.46.46.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.50.46.46.6.1.1.1.1.m1.1"><semantics id="S4.T3.50.46.46.6.1.1.1.1.m1.1a"><mo id="S4.T3.50.46.46.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.50.46.46.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.50.46.46.6.1.1.1.1.m1.1b"><ci id="S4.T3.50.46.46.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.50.46.46.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.50.46.46.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.50.46.46.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.14%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.50.46.46.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.51.47.47.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.51.47.47.7.2"></span> <span class="ltx_text" id="S4.T3.51.47.47.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.51.47.47.7.1.1">
<span class="ltx_tr" id="S4.T3.51.47.47.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.51.47.47.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1071</span></span>
<span class="ltx_tr" id="S4.T3.51.47.47.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.51.47.47.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.51.47.47.7.1.1.1.1.m1.1"><semantics id="S4.T3.51.47.47.7.1.1.1.1.m1.1a"><mo id="S4.T3.51.47.47.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.51.47.47.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.51.47.47.7.1.1.1.1.m1.1b"><ci id="S4.T3.51.47.47.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.51.47.47.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.51.47.47.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.51.47.47.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.00%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.51.47.47.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.52.48.48.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.52.48.48.8.2"></span> <span class="ltx_text" id="S4.T3.52.48.48.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.52.48.48.8.1.1">
<span class="ltx_tr" id="S4.T3.52.48.48.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.52.48.48.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1711</span></span>
<span class="ltx_tr" id="S4.T3.52.48.48.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.52.48.48.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.52.48.48.8.1.1.1.1.m1.1"><semantics id="S4.T3.52.48.48.8.1.1.1.1.m1.1a"><mo id="S4.T3.52.48.48.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.52.48.48.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.52.48.48.8.1.1.1.1.m1.1b"><ci id="S4.T3.52.48.48.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.52.48.48.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.52.48.48.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.52.48.48.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>0.82%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.52.48.48.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.53.49.49.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.53.49.49.9.2"></span> <span class="ltx_text" id="S4.T3.53.49.49.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.53.49.49.9.1.1">
<span class="ltx_tr" id="S4.T3.53.49.49.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.53.49.49.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2466</span></span>
<span class="ltx_tr" id="S4.T3.53.49.49.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.53.49.49.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.53.49.49.9.1.1.1.1.m1.1"><semantics id="S4.T3.53.49.49.9.1.1.1.1.m1.1a"><mo id="S4.T3.53.49.49.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.53.49.49.9.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.53.49.49.9.1.1.1.1.m1.1b"><ci id="S4.T3.53.49.49.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.53.49.49.9.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.53.49.49.9.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.53.49.49.9.1.1.1.1.m1.1d">↓</annotation></semantics></math>1.75%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.53.49.49.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.54.50.50.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.54.50.50.10.m1.1"><semantics id="S4.T3.54.50.50.10.m1.1a"><mo id="S4.T3.54.50.50.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.54.50.50.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.54.50.50.10.m1.1b"><ci id="S4.T3.54.50.50.10.m1.1.1.cmml" xref="S4.T3.54.50.50.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.54.50.50.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.54.50.50.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.54.50.50.10.1" style="color:#FF0000;">1.30%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.64.60.60">
<td class="ltx_td ltx_align_center" id="S4.T3.64.60.60.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.64.60.60.11.1"></span> <span class="ltx_text" id="S4.T3.64.60.60.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.64.60.60.11.2.1">
<span class="ltx_tr" id="S4.T3.64.60.60.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.64.60.60.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T3.64.60.60.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.64.60.60.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.64.60.60.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.55.51.51.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.55.51.51.1.2"></span> <span class="ltx_text" id="S4.T3.55.51.51.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.55.51.51.1.1.1">
<span class="ltx_tr" id="S4.T3.55.51.51.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.55.51.51.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0869</span></span>
<span class="ltx_tr" id="S4.T3.55.51.51.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.55.51.51.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.55.51.51.1.1.1.1.1.m1.1"><semantics id="S4.T3.55.51.51.1.1.1.1.1.m1.1a"><mo id="S4.T3.55.51.51.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.55.51.51.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.55.51.51.1.1.1.1.1.m1.1b"><ci id="S4.T3.55.51.51.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.55.51.51.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.55.51.51.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.55.51.51.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.98%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.55.51.51.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.56.52.52.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.56.52.52.2.2"></span> <span class="ltx_text" id="S4.T3.56.52.52.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.56.52.52.2.1.1">
<span class="ltx_tr" id="S4.T3.56.52.52.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.56.52.52.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1076</span></span>
<span class="ltx_tr" id="S4.T3.56.52.52.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.56.52.52.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.56.52.52.2.1.1.1.1.m1.1"><semantics id="S4.T3.56.52.52.2.1.1.1.1.m1.1a"><mo id="S4.T3.56.52.52.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.56.52.52.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.56.52.52.2.1.1.1.1.m1.1b"><ci id="S4.T3.56.52.52.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.56.52.52.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.56.52.52.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.56.52.52.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.36%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.56.52.52.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.57.53.53.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.57.53.53.3.2"></span> <span class="ltx_text" id="S4.T3.57.53.53.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.57.53.53.3.1.1">
<span class="ltx_tr" id="S4.T3.57.53.53.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.57.53.53.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1687</span></span>
<span class="ltx_tr" id="S4.T3.57.53.53.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.57.53.53.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.57.53.53.3.1.1.1.1.m1.1"><semantics id="S4.T3.57.53.53.3.1.1.1.1.m1.1a"><mo id="S4.T3.57.53.53.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.57.53.53.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.57.53.53.3.1.1.1.1.m1.1b"><ci id="S4.T3.57.53.53.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.57.53.53.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.57.53.53.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.57.53.53.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.68%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.57.53.53.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.58.54.54.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.58.54.54.4.2"></span> <span class="ltx_text" id="S4.T3.58.54.54.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.58.54.54.4.1.1">
<span class="ltx_tr" id="S4.T3.58.54.54.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.58.54.54.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2518</span></span>
<span class="ltx_tr" id="S4.T3.58.54.54.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.58.54.54.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.58.54.54.4.1.1.1.1.m1.1"><semantics id="S4.T3.58.54.54.4.1.1.1.1.m1.1a"><mo id="S4.T3.58.54.54.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.58.54.54.4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.58.54.54.4.1.1.1.1.m1.1b"><ci id="S4.T3.58.54.54.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.58.54.54.4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.58.54.54.4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.58.54.54.4.1.1.1.1.m1.1d">↓</annotation></semantics></math>0.16%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.58.54.54.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.59.55.55.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.59.55.55.5.m1.1"><semantics id="S4.T3.59.55.55.5.m1.1a"><mo id="S4.T3.59.55.55.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.59.55.55.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.59.55.55.5.m1.1b"><ci id="S4.T3.59.55.55.5.m1.1.1.cmml" xref="S4.T3.59.55.55.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.59.55.55.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.59.55.55.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.59.55.55.5.1" style="color:#FF0000;">2.96%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.64.60.60.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.60.56.56.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.60.56.56.6.2"></span> <span class="ltx_text" id="S4.T3.60.56.56.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.60.56.56.6.1.1">
<span class="ltx_tr" id="S4.T3.60.56.56.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.60.56.56.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0917</span></span>
<span class="ltx_tr" id="S4.T3.60.56.56.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.60.56.56.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.60.56.56.6.1.1.1.1.m1.1"><semantics id="S4.T3.60.56.56.6.1.1.1.1.m1.1a"><mo id="S4.T3.60.56.56.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.60.56.56.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.60.56.56.6.1.1.1.1.m1.1b"><ci id="S4.T3.60.56.56.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.60.56.56.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.60.56.56.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.60.56.56.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>8.39%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.60.56.56.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.61.57.57.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.61.57.57.7.2"></span> <span class="ltx_text" id="S4.T3.61.57.57.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.61.57.57.7.1.1">
<span class="ltx_tr" id="S4.T3.61.57.57.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.61.57.57.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1120</span></span>
<span class="ltx_tr" id="S4.T3.61.57.57.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.61.57.57.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.61.57.57.7.1.1.1.1.m1.1"><semantics id="S4.T3.61.57.57.7.1.1.1.1.m1.1a"><mo id="S4.T3.61.57.57.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.61.57.57.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.61.57.57.7.1.1.1.1.m1.1b"><ci id="S4.T3.61.57.57.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.61.57.57.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.61.57.57.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.61.57.57.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.67%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.61.57.57.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.62.58.58.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.62.58.58.8.2"></span> <span class="ltx_text" id="S4.T3.62.58.58.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.62.58.58.8.1.1">
<span class="ltx_tr" id="S4.T3.62.58.58.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.62.58.58.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.1723</span></span>
<span class="ltx_tr" id="S4.T3.62.58.58.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.62.58.58.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.62.58.58.8.1.1.1.1.m1.1"><semantics id="S4.T3.62.58.58.8.1.1.1.1.m1.1a"><mo id="S4.T3.62.58.58.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.62.58.58.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.62.58.58.8.1.1.1.1.m1.1b"><ci id="S4.T3.62.58.58.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.62.58.58.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.62.58.58.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.62.58.58.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.53%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.62.58.58.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.63.59.59.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.63.59.59.9.2"></span> <span class="ltx_text" id="S4.T3.63.59.59.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.63.59.59.9.1.1">
<span class="ltx_tr" id="S4.T3.63.59.59.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.63.59.59.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.2532</span></span>
<span class="ltx_tr" id="S4.T3.63.59.59.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.63.59.59.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.63.59.59.9.1.1.1.1.m1.1"><semantics id="S4.T3.63.59.59.9.1.1.1.1.m1.1a"><mo id="S4.T3.63.59.59.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.63.59.59.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.63.59.59.9.1.1.1.1.m1.1b"><ci id="S4.T3.63.59.59.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.63.59.59.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.63.59.59.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.63.59.59.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>0.88%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.63.59.59.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.64.60.60.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.64.60.60.10.m1.1"><semantics id="S4.T3.64.60.60.10.m1.1a"><mo id="S4.T3.64.60.60.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.64.60.60.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.64.60.60.10.m1.1b"><ci id="S4.T3.64.60.60.10.m1.1.1.cmml" xref="S4.T3.64.60.60.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.64.60.60.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.64.60.60.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.64.60.60.10.1" style="color:#FF0000;">4.37%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.104.100.106">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.1" rowspan="3" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T3.104.100.106.1.1">CDs &amp; Vinyl</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0208</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0298</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0527</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T3.104.100.106.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.104.100.106.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0186</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0235</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0405</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0604</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.106.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.74.70.70">
<td class="ltx_td ltx_align_center" id="S4.T3.74.70.70.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.74.70.70.11.1"></span> <span class="ltx_text" id="S4.T3.74.70.70.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.74.70.70.11.2.1">
<span class="ltx_tr" id="S4.T3.74.70.70.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.74.70.70.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T3.74.70.70.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.74.70.70.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.74.70.70.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.65.61.61.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.65.61.61.1.2"></span> <span class="ltx_text" id="S4.T3.65.61.61.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.65.61.61.1.1.1">
<span class="ltx_tr" id="S4.T3.65.61.61.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.65.61.61.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0208</span></span>
<span class="ltx_tr" id="S4.T3.65.61.61.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.65.61.61.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.65.61.61.1.1.1.1.1.m1.1"><semantics id="S4.T3.65.61.61.1.1.1.1.1.m1.1a"><mo id="S4.T3.65.61.61.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.65.61.61.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.65.61.61.1.1.1.1.1.m1.1b"><ci id="S4.T3.65.61.61.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.65.61.61.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.65.61.61.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.65.61.61.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>38.67%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.65.61.61.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.66.62.62.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.66.62.62.2.2"></span> <span class="ltx_text" id="S4.T3.66.62.62.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.66.62.62.2.1.1">
<span class="ltx_tr" id="S4.T3.66.62.62.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.66.62.62.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0259</span></span>
<span class="ltx_tr" id="S4.T3.66.62.62.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.66.62.62.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.66.62.62.2.1.1.1.1.m1.1"><semantics id="S4.T3.66.62.62.2.1.1.1.1.m1.1a"><mo id="S4.T3.66.62.62.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.66.62.62.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.66.62.62.2.1.1.1.1.m1.1b"><ci id="S4.T3.66.62.62.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.66.62.62.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.66.62.62.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.66.62.62.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>24.52%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.66.62.62.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.67.63.63.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.67.63.63.3.2"></span> <span class="ltx_text" id="S4.T3.67.63.63.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.67.63.63.3.1.1">
<span class="ltx_tr" id="S4.T3.67.63.63.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.67.63.63.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0428</span></span>
<span class="ltx_tr" id="S4.T3.67.63.63.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.67.63.63.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.67.63.63.3.1.1.1.1.m1.1"><semantics id="S4.T3.67.63.63.3.1.1.1.1.m1.1a"><mo id="S4.T3.67.63.63.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.67.63.63.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.67.63.63.3.1.1.1.1.m1.1b"><ci id="S4.T3.67.63.63.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.67.63.63.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.67.63.63.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.67.63.63.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>43.62%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.67.63.63.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.68.64.64.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.68.64.64.4.2"></span> <span class="ltx_text" id="S4.T3.68.64.64.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.68.64.64.4.1.1">
<span class="ltx_tr" id="S4.T3.68.64.64.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.68.64.64.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0629</span></span>
<span class="ltx_tr" id="S4.T3.68.64.64.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.68.64.64.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.68.64.64.4.1.1.1.1.m1.1"><semantics id="S4.T3.68.64.64.4.1.1.1.1.m1.1a"><mo id="S4.T3.68.64.64.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.68.64.64.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.68.64.64.4.1.1.1.1.m1.1b"><ci id="S4.T3.68.64.64.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.68.64.64.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.68.64.64.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.68.64.64.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>19.35%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.68.64.64.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.69.65.65.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.69.65.65.5.m1.1"><semantics id="S4.T3.69.65.65.5.m1.1a"><mo id="S4.T3.69.65.65.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.69.65.65.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.69.65.65.5.m1.1b"><ci id="S4.T3.69.65.65.5.m1.1.1.cmml" xref="S4.T3.69.65.65.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.69.65.65.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.69.65.65.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.69.65.65.5.1" style="color:#FF0000;">31.54%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.74.70.70.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.70.66.66.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.70.66.66.6.2"></span> <span class="ltx_text" id="S4.T3.70.66.66.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.70.66.66.6.1.1">
<span class="ltx_tr" id="S4.T3.70.66.66.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.70.66.66.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0199</span></span>
<span class="ltx_tr" id="S4.T3.70.66.66.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.70.66.66.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.70.66.66.6.1.1.1.1.m1.1"><semantics id="S4.T3.70.66.66.6.1.1.1.1.m1.1a"><mo id="S4.T3.70.66.66.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.70.66.66.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.70.66.66.6.1.1.1.1.m1.1b"><ci id="S4.T3.70.66.66.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.70.66.66.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.70.66.66.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.70.66.66.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.99%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.70.66.66.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.71.67.67.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.71.67.67.7.2"></span> <span class="ltx_text" id="S4.T3.71.67.67.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.71.67.67.7.1.1">
<span class="ltx_tr" id="S4.T3.71.67.67.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.71.67.67.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0248</span></span>
<span class="ltx_tr" id="S4.T3.71.67.67.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.71.67.67.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.71.67.67.7.1.1.1.1.m1.1"><semantics id="S4.T3.71.67.67.7.1.1.1.1.m1.1a"><mo id="S4.T3.71.67.67.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.71.67.67.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.71.67.67.7.1.1.1.1.m1.1b"><ci id="S4.T3.71.67.67.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.71.67.67.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.71.67.67.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.71.67.67.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.53%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.71.67.67.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.72.68.68.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.72.68.68.8.2"></span> <span class="ltx_text" id="S4.T3.72.68.68.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.72.68.68.8.1.1">
<span class="ltx_tr" id="S4.T3.72.68.68.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.72.68.68.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0417</span></span>
<span class="ltx_tr" id="S4.T3.72.68.68.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.72.68.68.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.72.68.68.8.1.1.1.1.m1.1"><semantics id="S4.T3.72.68.68.8.1.1.1.1.m1.1a"><mo id="S4.T3.72.68.68.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.72.68.68.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.72.68.68.8.1.1.1.1.m1.1b"><ci id="S4.T3.72.68.68.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.72.68.68.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.72.68.68.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.72.68.68.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.96%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.72.68.68.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.73.69.69.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.73.69.69.9.2"></span> <span class="ltx_text" id="S4.T3.73.69.69.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.73.69.69.9.1.1">
<span class="ltx_tr" id="S4.T3.73.69.69.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.73.69.69.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0609</span></span>
<span class="ltx_tr" id="S4.T3.73.69.69.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.73.69.69.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.73.69.69.9.1.1.1.1.m1.1"><semantics id="S4.T3.73.69.69.9.1.1.1.1.m1.1a"><mo id="S4.T3.73.69.69.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.73.69.69.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.73.69.69.9.1.1.1.1.m1.1b"><ci id="S4.T3.73.69.69.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.73.69.69.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.73.69.69.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.73.69.69.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>0.83%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.73.69.69.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.74.70.70.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.74.70.70.10.m1.1"><semantics id="S4.T3.74.70.70.10.m1.1a"><mo id="S4.T3.74.70.70.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.74.70.70.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.74.70.70.10.m1.1b"><ci id="S4.T3.74.70.70.10.m1.1.1.cmml" xref="S4.T3.74.70.70.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.74.70.70.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.74.70.70.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.74.70.70.10.1" style="color:#FF0000;">4.08%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.84.80.80">
<td class="ltx_td ltx_align_center" id="S4.T3.84.80.80.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.84.80.80.11.1"></span> <span class="ltx_text" id="S4.T3.84.80.80.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.84.80.80.11.2.1">
<span class="ltx_tr" id="S4.T3.84.80.80.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.84.80.80.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T3.84.80.80.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.84.80.80.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.84.80.80.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.75.71.71.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.75.71.71.1.2"></span> <span class="ltx_text" id="S4.T3.75.71.71.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.75.71.71.1.1.1">
<span class="ltx_tr" id="S4.T3.75.71.71.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.75.71.71.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0191</span></span>
<span class="ltx_tr" id="S4.T3.75.71.71.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.75.71.71.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.75.71.71.1.1.1.1.1.m1.1"><semantics id="S4.T3.75.71.71.1.1.1.1.1.m1.1a"><mo id="S4.T3.75.71.71.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.75.71.71.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.75.71.71.1.1.1.1.1.m1.1b"><ci id="S4.T3.75.71.71.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.75.71.71.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.75.71.71.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.75.71.71.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>27.33%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.75.71.71.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.76.72.72.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.76.72.72.2.2"></span> <span class="ltx_text" id="S4.T3.76.72.72.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.76.72.72.2.1.1">
<span class="ltx_tr" id="S4.T3.76.72.72.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.76.72.72.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0253</span></span>
<span class="ltx_tr" id="S4.T3.76.72.72.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.76.72.72.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.76.72.72.2.1.1.1.1.m1.1"><semantics id="S4.T3.76.72.72.2.1.1.1.1.m1.1a"><mo id="S4.T3.76.72.72.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.76.72.72.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.76.72.72.2.1.1.1.1.m1.1b"><ci id="S4.T3.76.72.72.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.76.72.72.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.76.72.72.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.76.72.72.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>21.63%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.76.72.72.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.77.73.73.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.77.73.73.3.2"></span> <span class="ltx_text" id="S4.T3.77.73.73.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.77.73.73.3.1.1">
<span class="ltx_tr" id="S4.T3.77.73.73.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.77.73.73.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0394</span></span>
<span class="ltx_tr" id="S4.T3.77.73.73.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.77.73.73.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.77.73.73.3.1.1.1.1.m1.1"><semantics id="S4.T3.77.73.73.3.1.1.1.1.m1.1a"><mo id="S4.T3.77.73.73.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.77.73.73.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.77.73.73.3.1.1.1.1.m1.1b"><ci id="S4.T3.77.73.73.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.77.73.73.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.77.73.73.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.77.73.73.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>32.21%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.77.73.73.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.78.74.74.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.78.74.74.4.2"></span> <span class="ltx_text" id="S4.T3.78.74.74.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.78.74.74.4.1.1">
<span class="ltx_tr" id="S4.T3.78.74.74.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.78.74.74.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0640</span></span>
<span class="ltx_tr" id="S4.T3.78.74.74.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.78.74.74.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.78.74.74.4.1.1.1.1.m1.1"><semantics id="S4.T3.78.74.74.4.1.1.1.1.m1.1a"><mo id="S4.T3.78.74.74.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.78.74.74.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.78.74.74.4.1.1.1.1.m1.1b"><ci id="S4.T3.78.74.74.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.78.74.74.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.78.74.74.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.78.74.74.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>21.44%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.78.74.74.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.79.75.75.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.79.75.75.5.m1.1"><semantics id="S4.T3.79.75.75.5.m1.1a"><mo id="S4.T3.79.75.75.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.79.75.75.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.79.75.75.5.m1.1b"><ci id="S4.T3.79.75.75.5.m1.1.1.cmml" xref="S4.T3.79.75.75.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.79.75.75.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.79.75.75.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.79.75.75.5.1" style="color:#FF0000;">25.66%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.84.80.80.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.80.76.76.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.80.76.76.6.2"></span> <span class="ltx_text" id="S4.T3.80.76.76.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.80.76.76.6.1.1">
<span class="ltx_tr" id="S4.T3.80.76.76.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.80.76.76.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0198</span></span>
<span class="ltx_tr" id="S4.T3.80.76.76.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.80.76.76.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.80.76.76.6.1.1.1.1.m1.1"><semantics id="S4.T3.80.76.76.6.1.1.1.1.m1.1a"><mo id="S4.T3.80.76.76.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.80.76.76.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.80.76.76.6.1.1.1.1.m1.1b"><ci id="S4.T3.80.76.76.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.80.76.76.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.80.76.76.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.80.76.76.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.45%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.80.76.76.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.81.77.77.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.81.77.77.7.2"></span> <span class="ltx_text" id="S4.T3.81.77.77.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.81.77.77.7.1.1">
<span class="ltx_tr" id="S4.T3.81.77.77.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.81.77.77.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0249</span></span>
<span class="ltx_tr" id="S4.T3.81.77.77.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.81.77.77.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.81.77.77.7.1.1.1.1.m1.1"><semantics id="S4.T3.81.77.77.7.1.1.1.1.m1.1a"><mo id="S4.T3.81.77.77.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.81.77.77.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.81.77.77.7.1.1.1.1.m1.1b"><ci id="S4.T3.81.77.77.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.81.77.77.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.81.77.77.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.81.77.77.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>5.96%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.81.77.77.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.82.78.78.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.82.78.78.8.2"></span> <span class="ltx_text" id="S4.T3.82.78.78.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.82.78.78.8.1.1">
<span class="ltx_tr" id="S4.T3.82.78.78.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.82.78.78.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0417</span></span>
<span class="ltx_tr" id="S4.T3.82.78.78.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.82.78.78.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.82.78.78.8.1.1.1.1.m1.1"><semantics id="S4.T3.82.78.78.8.1.1.1.1.m1.1a"><mo id="S4.T3.82.78.78.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.82.78.78.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.82.78.78.8.1.1.1.1.m1.1b"><ci id="S4.T3.82.78.78.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.82.78.78.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.82.78.78.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.82.78.78.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.96%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.82.78.78.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.83.79.79.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.83.79.79.9.2"></span> <span class="ltx_text" id="S4.T3.83.79.79.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.83.79.79.9.1.1">
<span class="ltx_tr" id="S4.T3.83.79.79.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.83.79.79.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0618</span></span>
<span class="ltx_tr" id="S4.T3.83.79.79.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.83.79.79.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.83.79.79.9.1.1.1.1.m1.1"><semantics id="S4.T3.83.79.79.9.1.1.1.1.m1.1a"><mo id="S4.T3.83.79.79.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.83.79.79.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.83.79.79.9.1.1.1.1.m1.1b"><ci id="S4.T3.83.79.79.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.83.79.79.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.83.79.79.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.83.79.79.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.32%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.83.79.79.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.84.80.80.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.84.80.80.10.m1.1"><semantics id="S4.T3.84.80.80.10.m1.1a"><mo id="S4.T3.84.80.80.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.84.80.80.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.84.80.80.10.m1.1b"><ci id="S4.T3.84.80.80.10.m1.1.1.cmml" xref="S4.T3.84.80.80.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.84.80.80.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.84.80.80.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.84.80.80.10.1" style="color:#FF0000;">4.42%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.104.100.107">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.104.100.107.1" rowspan="5" style="padding-top:0.75pt;padding-bottom:0.75pt;"><span class="ltx_text" id="S4.T3.104.100.107.1.1">Baby &amp; Products</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0152</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0199</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0315</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0501</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_border_t" id="S4.T3.104.100.107.8" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S4.T3.104.100.107.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0176</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0231</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0371</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.12" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0588</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.104.100.107.13" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T3.94.90.90">
<td class="ltx_td ltx_align_center" id="S4.T3.94.90.90.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.94.90.90.11.1"></span> <span class="ltx_text" id="S4.T3.94.90.90.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.94.90.90.11.2.1">
<span class="ltx_tr" id="S4.T3.94.90.90.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.94.90.90.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+ERL</span></span>
<span class="ltx_tr" id="S4.T3.94.90.90.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.94.90.90.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.94.90.90.11.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.85.81.81.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.85.81.81.1.2"></span> <span class="ltx_text" id="S4.T3.85.81.81.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.85.81.81.1.1.1">
<span class="ltx_tr" id="S4.T3.85.81.81.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.85.81.81.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0183</span></span>
<span class="ltx_tr" id="S4.T3.85.81.81.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.85.81.81.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.85.81.81.1.1.1.1.1.m1.1"><semantics id="S4.T3.85.81.81.1.1.1.1.1.m1.1a"><mo id="S4.T3.85.81.81.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.85.81.81.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.85.81.81.1.1.1.1.1.m1.1b"><ci id="S4.T3.85.81.81.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.85.81.81.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.85.81.81.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.85.81.81.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>20.39%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.85.81.81.1.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.86.82.82.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.86.82.82.2.2"></span> <span class="ltx_text" id="S4.T3.86.82.82.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.86.82.82.2.1.1">
<span class="ltx_tr" id="S4.T3.86.82.82.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.86.82.82.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0239</span></span>
<span class="ltx_tr" id="S4.T3.86.82.82.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.86.82.82.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.86.82.82.2.1.1.1.1.m1.1"><semantics id="S4.T3.86.82.82.2.1.1.1.1.m1.1a"><mo id="S4.T3.86.82.82.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.86.82.82.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.86.82.82.2.1.1.1.1.m1.1b"><ci id="S4.T3.86.82.82.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.86.82.82.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.86.82.82.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.86.82.82.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>20.10%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.86.82.82.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.87.83.83.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.87.83.83.3.2"></span> <span class="ltx_text" id="S4.T3.87.83.83.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.87.83.83.3.1.1">
<span class="ltx_tr" id="S4.T3.87.83.83.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.87.83.83.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0367</span></span>
<span class="ltx_tr" id="S4.T3.87.83.83.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.87.83.83.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.87.83.83.3.1.1.1.1.m1.1"><semantics id="S4.T3.87.83.83.3.1.1.1.1.m1.1a"><mo id="S4.T3.87.83.83.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.87.83.83.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.87.83.83.3.1.1.1.1.m1.1b"><ci id="S4.T3.87.83.83.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.87.83.83.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.87.83.83.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.87.83.83.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>16.51%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.87.83.83.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.88.84.84.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.88.84.84.4.2"></span> <span class="ltx_text" id="S4.T3.88.84.84.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.88.84.84.4.1.1">
<span class="ltx_tr" id="S4.T3.88.84.84.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.88.84.84.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0589</span></span>
<span class="ltx_tr" id="S4.T3.88.84.84.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.88.84.84.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.88.84.84.4.1.1.1.1.m1.1"><semantics id="S4.T3.88.84.84.4.1.1.1.1.m1.1a"><mo id="S4.T3.88.84.84.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.88.84.84.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.88.84.84.4.1.1.1.1.m1.1b"><ci id="S4.T3.88.84.84.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.88.84.84.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.88.84.84.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.88.84.84.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>17.56%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.88.84.84.4.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.89.85.85.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.89.85.85.5.m1.1"><semantics id="S4.T3.89.85.85.5.m1.1a"><mo id="S4.T3.89.85.85.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.89.85.85.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.89.85.85.5.m1.1b"><ci id="S4.T3.89.85.85.5.m1.1.1.cmml" xref="S4.T3.89.85.85.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.89.85.85.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.89.85.85.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.89.85.85.5.1" style="color:#FF0000;">18.64%</span>
</td>
<td class="ltx_td ltx_nopad_l" id="S4.T3.94.90.90.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S4.T3.90.86.86.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.90.86.86.6.2"></span> <span class="ltx_text" id="S4.T3.90.86.86.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.90.86.86.6.1.1">
<span class="ltx_tr" id="S4.T3.90.86.86.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.90.86.86.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0184</span></span>
<span class="ltx_tr" id="S4.T3.90.86.86.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.90.86.86.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.90.86.86.6.1.1.1.1.m1.1"><semantics id="S4.T3.90.86.86.6.1.1.1.1.m1.1a"><mo id="S4.T3.90.86.86.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.90.86.86.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.90.86.86.6.1.1.1.1.m1.1b"><ci id="S4.T3.90.86.86.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.90.86.86.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.90.86.86.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.90.86.86.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.55%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.90.86.86.6.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.91.87.87.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.91.87.87.7.2"></span> <span class="ltx_text" id="S4.T3.91.87.87.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.91.87.87.7.1.1">
<span class="ltx_tr" id="S4.T3.91.87.87.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.91.87.87.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0242</span></span>
<span class="ltx_tr" id="S4.T3.91.87.87.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.91.87.87.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.91.87.87.7.1.1.1.1.m1.1"><semantics id="S4.T3.91.87.87.7.1.1.1.1.m1.1a"><mo id="S4.T3.91.87.87.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.91.87.87.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.91.87.87.7.1.1.1.1.m1.1b"><ci id="S4.T3.91.87.87.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.91.87.87.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.91.87.87.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.91.87.87.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>4.76%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.91.87.87.7.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.92.88.88.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.92.88.88.8.2"></span> <span class="ltx_text" id="S4.T3.92.88.88.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.92.88.88.8.1.1">
<span class="ltx_tr" id="S4.T3.92.88.88.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.92.88.88.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0373</span></span>
<span class="ltx_tr" id="S4.T3.92.88.88.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.92.88.88.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.92.88.88.8.1.1.1.1.m1.1"><semantics id="S4.T3.92.88.88.8.1.1.1.1.m1.1a"><mo id="S4.T3.92.88.88.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.92.88.88.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.92.88.88.8.1.1.1.1.m1.1b"><ci id="S4.T3.92.88.88.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.92.88.88.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.92.88.88.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.92.88.88.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>0.54%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.92.88.88.8.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.93.89.89.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.93.89.89.9.2"></span> <span class="ltx_text" id="S4.T3.93.89.89.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.93.89.89.9.1.1">
<span class="ltx_tr" id="S4.T3.93.89.89.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.93.89.89.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0602</span></span>
<span class="ltx_tr" id="S4.T3.93.89.89.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.93.89.89.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.93.89.89.9.1.1.1.1.m1.1"><semantics id="S4.T3.93.89.89.9.1.1.1.1.m1.1a"><mo id="S4.T3.93.89.89.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.93.89.89.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.93.89.89.9.1.1.1.1.m1.1b"><ci id="S4.T3.93.89.89.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.93.89.89.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.93.89.89.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.93.89.89.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>2.38%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.93.89.89.9.3"></span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.94.90.90.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.94.90.90.10.m1.1"><semantics id="S4.T3.94.90.90.10.m1.1a"><mo id="S4.T3.94.90.90.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.94.90.90.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.94.90.90.10.m1.1b"><ci id="S4.T3.94.90.90.10.m1.1.1.cmml" xref="S4.T3.94.90.90.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.94.90.90.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.94.90.90.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.94.90.90.10.1" style="color:#FF0000;">3.06%</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.104.100.100">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.104.100.100.11" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.104.100.100.11.1"></span> <span class="ltx_text" id="S4.T3.104.100.100.11.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.104.100.100.11.2.1">
<span class="ltx_tr" id="S4.T3.104.100.100.11.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.104.100.100.11.2.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">+PRL</span></span>
<span class="ltx_tr" id="S4.T3.104.100.100.11.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.104.100.100.11.2.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(Improv.)</span></span>
</span></span><span class="ltx_text" id="S4.T3.104.100.100.11.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.95.91.91.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.95.91.91.1.2"></span> <span class="ltx_text" id="S4.T3.95.91.91.1.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.95.91.91.1.1.1">
<span class="ltx_tr" id="S4.T3.95.91.91.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.95.91.91.1.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0182</span></span>
<span class="ltx_tr" id="S4.T3.95.91.91.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.95.91.91.1.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.95.91.91.1.1.1.1.1.m1.1"><semantics id="S4.T3.95.91.91.1.1.1.1.1.m1.1a"><mo id="S4.T3.95.91.91.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.95.91.91.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.95.91.91.1.1.1.1.1.m1.1b"><ci id="S4.T3.95.91.91.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.95.91.91.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.95.91.91.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.95.91.91.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>19.74%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.95.91.91.1.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.96.92.92.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.96.92.92.2.2"></span> <span class="ltx_text" id="S4.T3.96.92.92.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.96.92.92.2.1.1">
<span class="ltx_tr" id="S4.T3.96.92.92.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.96.92.92.2.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0236</span></span>
<span class="ltx_tr" id="S4.T3.96.92.92.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.96.92.92.2.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.96.92.92.2.1.1.1.1.m1.1"><semantics id="S4.T3.96.92.92.2.1.1.1.1.m1.1a"><mo id="S4.T3.96.92.92.2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.96.92.92.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.96.92.92.2.1.1.1.1.m1.1b"><ci id="S4.T3.96.92.92.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.96.92.92.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.96.92.92.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.96.92.92.2.1.1.1.1.m1.1d">↑</annotation></semantics></math>18.59%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.96.92.92.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.97.93.93.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.97.93.93.3.2"></span> <span class="ltx_text" id="S4.T3.97.93.93.3.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.97.93.93.3.1.1">
<span class="ltx_tr" id="S4.T3.97.93.93.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.97.93.93.3.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0359</span></span>
<span class="ltx_tr" id="S4.T3.97.93.93.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.97.93.93.3.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.97.93.93.3.1.1.1.1.m1.1"><semantics id="S4.T3.97.93.93.3.1.1.1.1.m1.1a"><mo id="S4.T3.97.93.93.3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.97.93.93.3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.97.93.93.3.1.1.1.1.m1.1b"><ci id="S4.T3.97.93.93.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.97.93.93.3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.97.93.93.3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.97.93.93.3.1.1.1.1.m1.1d">↑</annotation></semantics></math>13.97%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.97.93.93.3.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.98.94.94.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.98.94.94.4.2"></span> <span class="ltx_text" id="S4.T3.98.94.94.4.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.98.94.94.4.1.1">
<span class="ltx_tr" id="S4.T3.98.94.94.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.98.94.94.4.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0575</span></span>
<span class="ltx_tr" id="S4.T3.98.94.94.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.98.94.94.4.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.98.94.94.4.1.1.1.1.m1.1"><semantics id="S4.T3.98.94.94.4.1.1.1.1.m1.1a"><mo id="S4.T3.98.94.94.4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.98.94.94.4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.98.94.94.4.1.1.1.1.m1.1b"><ci id="S4.T3.98.94.94.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.98.94.94.4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.98.94.94.4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.98.94.94.4.1.1.1.1.m1.1d">↑</annotation></semantics></math>14.77%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.98.94.94.4.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.99.95.95.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.99.95.95.5.m1.1"><semantics id="S4.T3.99.95.95.5.m1.1a"><mo id="S4.T3.99.95.95.5.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.99.95.95.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.99.95.95.5.m1.1b"><ci id="S4.T3.99.95.95.5.m1.1.1.cmml" xref="S4.T3.99.95.95.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.99.95.95.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.99.95.95.5.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.99.95.95.5.1" style="color:#FF0000;">16.77%</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_border_bb" id="S4.T3.104.100.100.12" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S4.T3.100.96.96.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.100.96.96.6.2"></span> <span class="ltx_text" id="S4.T3.100.96.96.6.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.100.96.96.6.1.1">
<span class="ltx_tr" id="S4.T3.100.96.96.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.100.96.96.6.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0189</span></span>
<span class="ltx_tr" id="S4.T3.100.96.96.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.100.96.96.6.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.100.96.96.6.1.1.1.1.m1.1"><semantics id="S4.T3.100.96.96.6.1.1.1.1.m1.1a"><mo id="S4.T3.100.96.96.6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.100.96.96.6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.100.96.96.6.1.1.1.1.m1.1b"><ci id="S4.T3.100.96.96.6.1.1.1.1.m1.1.1.cmml" xref="S4.T3.100.96.96.6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.100.96.96.6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.100.96.96.6.1.1.1.1.m1.1d">↑</annotation></semantics></math>7.39%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.100.96.96.6.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.101.97.97.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.101.97.97.7.2"></span> <span class="ltx_text" id="S4.T3.101.97.97.7.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.101.97.97.7.1.1">
<span class="ltx_tr" id="S4.T3.101.97.97.7.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.101.97.97.7.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0247</span></span>
<span class="ltx_tr" id="S4.T3.101.97.97.7.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.101.97.97.7.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.101.97.97.7.1.1.1.1.m1.1"><semantics id="S4.T3.101.97.97.7.1.1.1.1.m1.1a"><mo id="S4.T3.101.97.97.7.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.101.97.97.7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.101.97.97.7.1.1.1.1.m1.1b"><ci id="S4.T3.101.97.97.7.1.1.1.1.m1.1.1.cmml" xref="S4.T3.101.97.97.7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.101.97.97.7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.101.97.97.7.1.1.1.1.m1.1d">↑</annotation></semantics></math>6.93%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.101.97.97.7.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.102.98.98.8" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.102.98.98.8.2"></span> <span class="ltx_text" id="S4.T3.102.98.98.8.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.102.98.98.8.1.1">
<span class="ltx_tr" id="S4.T3.102.98.98.8.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.102.98.98.8.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0376</span></span>
<span class="ltx_tr" id="S4.T3.102.98.98.8.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.102.98.98.8.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.102.98.98.8.1.1.1.1.m1.1"><semantics id="S4.T3.102.98.98.8.1.1.1.1.m1.1a"><mo id="S4.T3.102.98.98.8.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.102.98.98.8.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.102.98.98.8.1.1.1.1.m1.1b"><ci id="S4.T3.102.98.98.8.1.1.1.1.m1.1.1.cmml" xref="S4.T3.102.98.98.8.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.102.98.98.8.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.102.98.98.8.1.1.1.1.m1.1d">↑</annotation></semantics></math>1.35%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.102.98.98.8.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.103.99.99.9" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<span class="ltx_text" id="S4.T3.103.99.99.9.2"></span> <span class="ltx_text" id="S4.T3.103.99.99.9.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.103.99.99.9.1.1">
<span class="ltx_tr" id="S4.T3.103.99.99.9.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.103.99.99.9.1.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.0611</span></span>
<span class="ltx_tr" id="S4.T3.103.99.99.9.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.103.99.99.9.1.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.103.99.99.9.1.1.1.1.m1.1"><semantics id="S4.T3.103.99.99.9.1.1.1.1.m1.1a"><mo id="S4.T3.103.99.99.9.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.103.99.99.9.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.103.99.99.9.1.1.1.1.m1.1b"><ci id="S4.T3.103.99.99.9.1.1.1.1.m1.1.1.cmml" xref="S4.T3.103.99.99.9.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.103.99.99.9.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.103.99.99.9.1.1.1.1.m1.1d">↑</annotation></semantics></math>3.91%)</span></span>
</span></span><span class="ltx_text" id="S4.T3.103.99.99.9.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.104.100.100.10" style="padding-top:0.75pt;padding-bottom:0.75pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.104.100.100.10.m1.1"><semantics id="S4.T3.104.100.100.10.m1.1a"><mo id="S4.T3.104.100.100.10.m1.1.1" mathcolor="#FF0000" stretchy="false" xref="S4.T3.104.100.100.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.104.100.100.10.m1.1b"><ci id="S4.T3.104.100.100.10.m1.1.1.cmml" xref="S4.T3.104.100.100.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.104.100.100.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.104.100.100.10.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.104.100.100.10.1" style="color:#FF0000;">4.89%</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of different text-based sequential recommendation models on five datasets.  For each model (UniSRec and MoRec with and without ERL and PRL enhancements), the table shows the NDCG@10, NDCG@20, Recall@10, and Recall@20 metrics.  The 'Avg' column provides the average performance improvement across all four metrics.  Upward-pointing arrows (↑↑) indicate performance improvements compared to the baseline model, while downward-pointing arrows (↓↓) denote performance decreases.
> <details>
> <summary>read the caption</summary>
> Table 3. Performance comparison of different Text-based models on five datasets. ‘N’ and ‘R’ indicate NDCG and Recall metrics, respectively. ‘Avg.’ represents the average improvement rate across all metrics (i.e., NDCG@{10,20} and Recall@{10,20}). Performance improvements are indicated by “↑↑\uparrow↑”, while performance declines are indicated by “↓↓\downarrow↓”.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.4.1">
<tr class="ltx_tr" id="S4.T4.4.1.1">
<td class="ltx_td ltx_border_tt" id="S4.T4.4.1.1.1" style="padding-top:0.75pt;padding-bottom:0.75pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.1.1.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">Base</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.1.1.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">Step-1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.1.1.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">Step-2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.1.1.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">Step-3</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.1.1.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">Step-4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.1.1.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">Step-5</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">SASRec</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.6761</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.7985</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.8752</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.9305</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">6.0310</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.2.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">6.2786</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.3">
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Cost Inc.</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">2.16%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">3.51%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">4.48%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">6.25%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.3.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">10.61%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.4.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">BERT4Rec</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.4.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.6535</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.4.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.7685</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.4.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.9174</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.4.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.9621</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.4.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">6.0862</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.4.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">6.1224</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Cost Inc.</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">2.03%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">4.67%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.46%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">7.65%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.5.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">8.29%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">UniSRec</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.6061</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.6312</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.7596</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.8732</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">6.0303</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.6.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">6.0502</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.7">
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Cost Inc.</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.45%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">2.74%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">4.76%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">7.57%</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.1.7.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">7.92%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.8.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">MoRec</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.8.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.6638</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.8.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.7143</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.8.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.8391</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.8.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.9565</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.8.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.9659</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.1.8.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.9812</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.1.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.1" style="padding-top:0.75pt;padding-bottom:0.75pt;">Cost Inc.</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.2" style="padding-top:0.75pt;padding-bottom:0.75pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.3" style="padding-top:0.75pt;padding-bottom:0.75pt;">0.89%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.4" style="padding-top:0.75pt;padding-bottom:0.75pt;">3.10%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.5" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.17%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.6" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.33%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.1.9.7" style="padding-top:0.75pt;padding-bottom:0.75pt;">5.60%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the inference time for different numbers of reasoning steps (Step 0 to Step 5) used in the ReaRec model.  It shows the increase in computation cost for each step compared to the baseline (Step 0). The experiments were conducted using a single NVIDIA A100-40G GPU.  The table helps to illustrate the trade-off between increased computational cost and improved model performance.  Step 2 typically shows the best balance between performance gains and additional computation time.
> <details>
> <summary>read the caption</summary>
> Table 4. Inference time statistics for different steps. “Cost Inc.” is short for Cost Increase, where higher values indicate greater time overhead. Efficiency experiments are conducted on a single A100-40G GPU. Note that the optimal performance typically corresponds to Step-2.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.22675/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.22675/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}