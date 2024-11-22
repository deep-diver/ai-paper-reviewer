---
title: "Do I Know This Entity? Knowledge Awareness and Hallucinations in Language Models"
summary: "LLMs' hallucinations stem from entity recognition:  SAEs reveal model 'self-knowledge', causally affecting whether it hallucinates or refuses to answer. This mechanism is even repurposed by chat finet..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 ETH Zurich",]
showSummary: true
date: 2024-11-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.14257 {{< /keyword >}}
{{< keyword icon="writer" >}} Javier Ferrando et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.14257" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.14257" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/do-i-know-this-entity-knowledge-awareness-and" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.14257/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) often generate incorrect information, a phenomenon known as 'hallucination.' This paper investigates the underlying mechanisms of these hallucinations.  Existing research has focused on understanding how LLMs recall facts, but less attention has been given to why they hallucinate or refuse to answer. This inability to reliably handle unknown information significantly limits their real-world applicability.

This research uses sparse autoencoders to analyze LLM internal representations.  The study finds that a key aspect of hallucination involves the model's ability to recognize whether it possesses information about a given entity.   The researchers demonstrate that these internal representations, reflecting the model's 'self-knowledge', directly influence whether it hallucinates or refuses to answer.  Crucially, they show a causal relationship, proving these 'self-knowledge' directions can be manipulated to control the model's responses.  These findings offer significant insights into the underlying mechanisms of LLMs and open new avenues for enhancing their reliability.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large language models' (LLMs) hallucinations are partly caused by their ability to recognize entities they know and don't know. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Sparse autoencoders (SAEs) help uncover internal representations within LLMs that reveal the model's 'self-knowledge' about the entities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The discovered 'self-knowledge' directions causally influence LLM behavior, specifically in their refusal to answer or hallucination of facts. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the widespread problem of hallucinations in large language models (LLMs)**. By offering a mechanistic understanding of how and why LLMs hallucinate, it **paves the way for developing more reliable and trustworthy AI systems**.  The findings on knowledge awareness and its causal link to hallucination offer new avenues for improving LLM design and interpretability. This is highly relevant to current trends in AI safety and the ongoing pursuit of responsible AI development.  Furthermore, the introduction of sparse autoencoders as an interpretability tool opens up exciting possibilities for future research in this area.

------
#### Visual Insights



![](https://arxiv.org/html/2411.14257/x1.png)

> 🔼 The figure displays a scatter plot showing the activation frequencies of Sparse Autoencoder (SAE) latents on known and unknown entities.  The x-axis represents the activation frequency for known entities, and the y-axis represents the activation frequency for unknown entities. Each point represents a latent, with its position indicating its tendency to activate for known vs. unknown entities.  Latents clustered near the x-axis primarily activate on known entities, while those near the y-axis activate on unknown entities.  The plot demonstrates that specific latents strongly correlate with the model's knowledge of the entity.  The right panel illustrates the causal effect of manipulating these latents: increasing the 'known entity' latent when querying about a fictitious athlete increases the likelihood of the model hallucinating information. 
> <details>
> <summary>read the caption</summary>
> Figure 1: We identify SAE latents in the final token of the entity residual stream (i.e. hidden state) that almost exclusively activate on either unknown or known entities (scatter plot on the left). Modulating the activation values of these latents, e.g. increasing the known entity latent when asking a question about a made-up athlete increases the tendency to hallucinate.
> </details>





{{< table-caption >}}
| Known Entity Latent Activations | Unknown Entity Latent Activations |
|---|---| 
| Michael <span style="background-color:#82BE82;">Jordan</span> | Michael <span style="background-color:#FFB4B4;">Jo</span><span style="background-color:#FF8C8C;">ordan</span> |
| When was the player <span style="background-color:#AAE6AA;">LeBron</span> <span style="background-color:#D6F5D6;">James</span> born? | When was the player Wilson <span style="background-color:#FF8C8C;">Brown</span> born? |
| He was born in the city of <span style="background-color:#D6F5D6;">San Francisco</span> | He was born in the city of <span style="background-color:#FFB4B4;">Anthon</span> |
| I just watched the movie 12 <span style="background-color:#AAE6AA;">Angry</span> <span style="background-color:#AAE6AA;">Men</span> | I just watched the movie 20 <span style="background-color:#FFB4B4;">Angry</span> <span style="background-color:#FFB4B4;">Men</span> |
| The <span style="background-color:#82BE82;">Beatles</span> song ‘Yellow <span style="background-color:#AAE6AA;">Submarine</span><span style="background-color:#D6F5D6;">‘</span> | The Beatles song ‘<span style="background-color:#FF8C8C;">Turquoise</span> <span style="background-color:#FFB4B4;">Submarine</span><span style="background-color:#FFB4B4;">’</span> |{{< /table-caption >}}

> 🔼 This table presents pairs of sparse autoencoder latent activations. Each pair shows one activation vector that strongly responds to known entities (i.e., entities for which the model has factual information stored) and another activation vector that strongly responds to unknown entities (entities the model lacks information on).  The left column displays examples of known entities (a player, a movie, a song, and a city), and the right column displays similar examples for unknown entities where some components are slightly altered, creating fictitious entities that the model is unfamiliar with.  The consistent activation pattern across diverse entity types (movies, cities, songs, and players) suggests the latents' reliability in distinguishing between known and unknown entities.
> <details>
> <summary>read the caption</summary>
> Table 1: Pair of sparse autoencoder latents that activate on known (left) and unknown entities (right) respectively. They fire consistently across entity types (movies, cities, songs, and players).
> </details>





### In-depth insights


#### Hallucination Mechanisms
Understanding the mechanisms behind large language model (LLM) hallucinations is crucial for improving their reliability.  While LLMs demonstrate impressive capabilities, their propensity for generating factually incorrect or nonsensical information, known as hallucinations, significantly limits their real-world applications.  Research into hallucination mechanisms suggests that these are multifaceted, stemming from various sources like **flawed training data**, **inconsistent information retrieval**, and limitations in the models' **ability to assess the confidence of their own predictions**.  **A key factor appears to be the model's recognition of entities**: the ability to identify and recall facts about specific entities. If the model encounters an entity it has no information about, it's more prone to hallucination, possibly trying to synthesize information based on patterns learned during training rather than admitting its lack of knowledge.  Further investigation into how LLMs internally represent and process information, as well as the development of better methods for assessing model uncertainty, are vital for addressing this critical issue and improving the reliability and trustworthiness of LLMs.

#### Sparse Autoencoders
The section on Sparse Autoencoders (SAEs) highlights their crucial role as an **interpretability tool** in the paper. SAEs help uncover **meaningful directions** within the complex representation space of large language models (LLMs), essentially revealing the model's internal logic.  **Sparse coding** is key here, allowing the identification of significant features (directions) that explain model behavior, like the crucial distinction between recognizing a known entity versus an unknown one.  This is particularly important in understanding LLM hallucinations. The use of SAEs moves beyond simple correlation analysis, offering insights into **causal relationships**.  The ability to steer the model's responses by manipulating these discovered directions showcases the **interpretability and control** afforded by the SAE technique.  In essence, SAEs provide a mechanistic lens, not just a descriptive one, for probing the inner workings of LLMs, especially regarding knowledge awareness and hallucination.

#### Causal Effect of Latents
The heading 'Causal Effect of Latents' suggests an investigation into whether manipulating latent variables within a model directly influences its output.  This is a crucial aspect of interpretability research because it moves beyond mere correlation to demonstrate causation.  The study likely involves interventions, where specific latent activations are altered and the resulting changes in model behavior are carefully measured. A key finding would be **evidence supporting a causal link**, showing that specific changes in latent states reliably lead to predictable changes in the model's responses.  This is important because it can help **identify critical components** in the model's decision-making process and potentially inform methods for controlling or improving model behavior.  The strength of this causal effect (how much altering a latent impacts the output) would also be a significant finding.  Furthermore, the analysis would likely address the **generalizability of the causal effects**, determining whether findings on specific latent variables translate to others or different input types.  Ultimately, establishing a causal effect of latents offers strong support for mechanistic understanding of the model.

#### Attention Head Analysis
An attention head analysis within a research paper on large language models (LLMs) would likely involve investigating the inner workings of the attention mechanism.  This would probably focus on how attention weights are assigned to different parts of the input sequence, and how these weights influence the model's output.  A key aspect would be to analyze **how attention heads specialize in processing specific types of information**, such as factual knowledge versus emotional sentiment, or different grammatical roles within a sentence. The analysis might also examine **the interaction between different attention heads**, exploring whether they complement each other, or compete for resources.  Furthermore, a comparative analysis of attention heads across different layers of the model could reveal insights into how information is processed and integrated throughout the network. By understanding attention head behavior, researchers aim to gain a **deeper mechanistic understanding of LLMs**, addressing concerns about transparency and robustness. Ultimately, this analysis could lead to improvements in LLM design and the development of more interpretable and trustworthy models.

#### Uncertainty Modeling
Uncertainty modeling in large language models (LLMs) is crucial for reliable performance, especially when dealing with situations where the model lacks complete knowledge.  A robust uncertainty model would allow the LLM to **express its level of confidence** in its predictions, making it less prone to generating inaccurate or misleading information. This is particularly relevant for tasks requiring factual accuracy and avoiding hallucinations.  Several approaches to uncertainty modeling exist, ranging from **probabilistic methods** to those that leverage internal model representations to identify regions of the latent space indicative of uncertainty. The integration of such models could improve trustworthiness and limit harmful consequences arising from overconfident yet inaccurate outputs.  Furthermore, understanding how uncertainty is internally represented within an LLM is critical for **developing effective strategies** for reducing unreliable responses, potentially by adjusting training data or finetuning techniques to reward more cautious responses in situations of ambiguity or limited information. This area of research opens new avenues for improving LLM safety and usability.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.14257/x6.png)

> 🔼 This figure displays the performance of top 5 latent variables across different layers of a neural network model.  The left panel shows the separation scores for known entities, while the right shows the scores for unknown entities.  The separation score measures how well each latent distinguishes between known and unknown entities. Higher scores indicate better discrimination. Error bars represent the range of scores across different entity types. The red line ('MaxMin') represents the minimum separation score across all entity types for the best-performing latent in each layer. This helps visualize the generalizability of each latent across different entity types - a higher MaxMin implies broader applicability. The overall trend shows that middle layers of the network achieve the best performance in distinguishing between known and unknown entities.
> <details>
> <summary>read the caption</summary>
> Figure 2: Layerwise evolution of the Top 5 latents in Gemma 2 2B SAEs, as measured by their known (left) and unknown (right) latent separation scores (sknownsuperscript𝑠knowns^{\text{known}}italic_s start_POSTSUPERSCRIPT known end_POSTSUPERSCRIPT and sunknownsuperscript𝑠unknowns^{\text{unknown}}italic_s start_POSTSUPERSCRIPT unknown end_POSTSUPERSCRIPT). Error bars show maximum and minimum scores. MaxMin (red line) refers to the minimum separation score across entities of the best latent. This represents how entity-agnostic is the most general latent per layer. In both cases, the middle layers provide the best-performing latents.
> </details>



![](https://arxiv.org/html/2411.14257/x7.png)

> 🔼 Figure 3 demonstrates the causal effect of entity recognition directions on knowledge refusal. The left panel shows the refusal rates for different entity types across various model configurations. The original model's refusal rate is compared against models steered using known and unknown entity latents.  An orthogonalized model (where the influence of the unknown entity latent is removed) is also included as a control.  The results demonstrate a notable increase in refusal rate when the model is steered with the unknown entity latent and a decrease in refusal when steered with the known entity latent. This suggests that the model's knowledge of an entity directly impacts its tendency to answer questions about it. The right panel illustrates an example of steering the model with the unknown entity latent to cause a refusal to answer a question about a well-known basketball player, thus providing concrete support for the findings in the left panel.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: Number of times Gemma 2 2B refuses to answer in 100 queries about unknown entities. We examine the unmodified original model, the model steered with the known entity latent and unknown entity latent, and the model with the unknown entity latent projected out of its weights (referred to as Orthogonalized model). Steering with (10) random latents are shown for comparison. Right: This example illustrates the effect of steering with the unknown entity recognition latent (same as in Table 1). The steering induces the model to refuse to answer about a well-known basketball player.
> </details>



![](https://arxiv.org/html/2411.14257/x10.png)

> 🔼 This figure demonstrates the effect of entity recognition (known vs. unknown) on the attention mechanism of a language model.  Parts (a) and (b) show the results of activation patching, a technique where activations from a 'clean' forward pass (with a known entity) are inserted into a corrupted forward pass (with an unknown entity).  The logit difference (the difference between the probabilities of correct and incorrect predictions) is then measured. Part (c) shows that attention paid to the last token of the entity is higher for known entities in attribute-extraction heads. Parts (d), (e), and (f) show how manipulating (steering) the activations of the last token with the known entity latent (e), the unknown entity latent (d), or a random vector (f) impacts attention scores on the entity, thus demonstrating the causal effect of entity recognition on the attention mechanism.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a,b) Activation patching on the residual streams and the output of attention heads in the last position (song entities). We patch clean (from known entities prompts) representations into a corrupted forward pass (from unknown entities prompts) and measure the logit difference recovered. (c) Attention paid from the last position to the last token of the entity is greater when faced with a known entity in attribute-extraction heads. (d,e,f) Effect on attention scores, as in (c), after steering the last token of the entity with the unknown entity latent (d), known entity latent (e), and a random vector with same norm (f).
> </details>



![](https://arxiv.org/html/2411.14257/extracted/6015840/images/gemma-2-9b_feature_activation_frequencies_player.png)

> 🔼 This figure displays the results of an experiment that investigates how steering with entity recognition latents affects a language model's response to questions about its knowledge.  The model is presented with a question asking for certainty about its knowledge of a specific entity (e.g., 'Are you sure you know the player LeBron James?').  The left panel shows the change in the logit difference between 'yes' and 'no' responses when steering with the *unknown* entity latent.  The right panel shows the same, but using the *known* entity latent. The results illustrate the causal effect of these latents on the model's confidence and its ability to express uncertainty or confidently assert knowledge about entities.
> <details>
> <summary>read the caption</summary>
> Figure 5: Logit difference between “Yes” and “No” predictions on the question “Are you sure you know the {entity_type} {entity_name}? Answer yes or no.” after steering with unknown (left) and known (right) entity recognition latents.
> </details>



![](https://arxiv.org/html/2411.14257/x13.png)

> 🔼 This figure visualizes the activation patterns of a specific latent variable, termed the 'unknown' latent, within the Gemma 2B IT language model.  The left panel displays box plots illustrating the activation values of this latent for both correct and incorrect model responses.  This allows for a comparison of how strongly this latent is activated when the model produces a correct answer versus an incorrect answer. The right panel presents the top 10 tokens that exhibited the greatest increase in logit (probability) scores due to the influence of this 'unknown' latent. This highlights the words or concepts the model strongly associates with uncertainty or situations where the model is less confident in its generated response.
> <details>
> <summary>read the caption</summary>
> Figure 6: Left: Activation values of the Gemma 2B IT ‘unknown’ latent on correct and incorrect responses. Right: Top 10 tokens with the highest logit increases by the ‘unknown’ latent influence.
> </details>



![](https://arxiv.org/html/2411.14257/x14.png)

> 🔼 This figure illustrates the process of determining whether an entity is considered 'known' or 'unknown' by the language model.  The process starts with a set of entities. For each entity, the model is queried about a collection of its attributes.  The model's accuracy in answering these queries is then assessed. A threshold (τ) is set; if the number of correct answers exceeds this threshold, the entity is classified as 'known', otherwise it's marked as 'unknown'.  This threshold is set to 1 in this paper. 
> <details>
> <summary>read the caption</summary>
> Figure 7: Pipeline for classifying entities as known or unknown. Each entity ei∈ℰsubscript𝑒𝑖ℰ{e_{i}\in\mathcal{E}}italic_e start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ∈ caligraphic_E is evaluated by querying the language model about a set of attributes 𝒜⁢(ei)𝒜subscript𝑒𝑖\mathcal{A}(e_{i})caligraphic_A ( italic_e start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ). Classification as known or unknown is based on the accuracy of the model’s responses. In this work we set the threshold τ=1𝜏1\tau=1italic_τ = 1.
> </details>



![](https://arxiv.org/html/2411.14257/x15.png)

> 🔼 This figure shows a scatter plot visualizing the activation frequencies of sparse autoencoder (SAE) latents in the Gemma 2 9B model. Each point represents an SAE latent, with its x-coordinate indicating the activation frequency for known player entities and its y-coordinate indicating the activation frequency for unknown player entities.  The plot helps to identify latents that are highly selective for either known or unknown entities, providing insights into the model's ability to distinguish between entities it possesses knowledge about and those it doesn't.
> <details>
> <summary>read the caption</summary>
> Figure 8: Activation frequencies of Gemma 2 9B SAE latents on known and unknown Prompts, in player entity type.
> </details>



![](https://arxiv.org/html/2411.14257/extracted/6015840/images/patching_results_gemma_2_2b.png)

> 🔼 This figure displays the performance of top 5 latent variables (directions in the representation space) across different layers of a Gemma 2 9B model.  The performance is measured by the separation score between 'known' and 'unknown' entities.  The left panel shows the separation scores for known entities, while the right panel displays the separation scores for unknown entities.  The error bars represent the range of minimum and maximum scores observed across different entities. The 'MaxMin' line (in red) shows the minimum separation score among all entities for the best-performing latent in each layer, indicating the most general latent that performs well on various entities. The plot demonstrates that the middle layers generally have the latents that best distinguish between known and unknown entities.
> <details>
> <summary>read the caption</summary>
> Figure 9: Gemma 2 9B layerwise evolution of the Top 5 latents, as measured by their known (left) and unknown (right) latent separation scores (sknownsuperscript𝑠knowns^{\text{known}}italic_s start_POSTSUPERSCRIPT known end_POSTSUPERSCRIPT and sunknownsuperscript𝑠unknowns^{\text{unknown}}italic_s start_POSTSUPERSCRIPT unknown end_POSTSUPERSCRIPT). Error bars show maximum and minimum scores. MaxMin (red line) refers to the minimum separation score across entities of the best latent. This represents how entity-agnostic is the most general latent per layer. In both cases, middle layers provide the best-performing latents.
> </details>



![](https://arxiv.org/html/2411.14257/extracted/6015840/images/patching_results_gemma_2_9b.png)

> 🔼 This figure displays the norm of the residual streams for the final token of an entity across various layers in different Gemma models.  It helps visualize how the magnitude of the residual signal changes as the model processes the entity representation. By comparing the norms across different models (Gemma 2 2B, Gemma 2 2B IT, Gemma 2 9B, and Gemma 2 9B IT), we can gain insights into differences in the complexity of entity processing between the different models and whether fine-tuning affects this complexity.
> <details>
> <summary>read the caption</summary>
> Figure 10: Norm of the residual streams of the last token of the entity across layers of the different Gemma models.
> </details>



![](https://arxiv.org/html/2411.14257/extracted/6015840/images/rnd_latent_attn_original_vs_steered_entity_types_coeff_100from_known_entity_last_20,3_18,5.png)

> 🔼 Figure 11 demonstrates the causal effect of entity recognition latents on knowledge refusal.  The left panel shows the refusal rate of Gemma 2 9B when answering 100 queries about unknown entities. Four bars represent the unmodified model, the model steered using the known entity latent, the model steered using the unknown entity latent, and an orthogonalized model (where the influence of the unknown entity latent has been removed). For comparison, the effects of steering with 10 randomly selected latents are also shown.  The right panel illustrates a specific example:  steering with the unknown entity latent causes the model to refuse to answer a question about a well-known basketball player, highlighting the latent's ability to control the model's knowledge refusal behavior.
> <details>
> <summary>read the caption</summary>
> Figure 11: Left: Number of times Gemma 2 9B refuses to answer in 100 queries about unknown entities. We examine the unmodified original model, the model steered with the known entity latent and unknown entity latent, and the model with the unknown entity latent projected out of its weights (referred to as Orthogonalized model). Steering with 10 random latents are shown for comparison. Right: This example illustrates the effect of steering with the unknown entity recognition latent. The steering induces the model to refuse to answer about a well-known basketball player.
> </details>



![](https://arxiv.org/html/2411.14257/x30.png)

> 🔼 This figure illustrates the activation patching method used in the paper.  Activation patching involves taking activations from a 'clean' forward pass (using a prompt with a known entity, in this case LeBron James) and injecting them into a corrupted forward pass (using a prompt with an unknown entity, Wilson Brown). This allows the researchers to isolate and analyze the effects of specific parts of the model's representation on downstream processing and ultimately its prediction. The figure visually depicts how the clean activations replace the corresponding part of the activations of the unknown entity run at a specific point in the model.
> <details>
> <summary>read the caption</summary>
> Figure 12: Activation Patching done over the residual stream.
> </details>



![](https://arxiv.org/html/2411.14257/x31.png)

> 🔼 This figure displays the results of activation patching experiments conducted on the Gemma 2 2B language model. Activation patching is a technique used to understand the inner workings of a model by selectively replacing activations of a certain part of the model with activations from another part of the model, and comparing the results.  The experiments were performed on three different entity types: movies (top), players (middle), and cities (bottom).  Each panel shows two sub-plots. The left sub-plot presents the results of applying activation patching to the residual streams (the values that a model computes internally and uses as input for subsequent computations), while the right sub-plot shows the results of applying the patching to the last-token position attention heads. The heatmaps within the plots represent the logit differences between the results obtained by using the activation from a 'known' entity and that from an 'unknown' entity. Darker colors signify a more substantial difference.  The goal is to reveal how the model processes information about different entities and how this process might vary based on whether or not the model has previously encountered information on a particular entity.
> <details>
> <summary>read the caption</summary>
> Figure 13: Gemma 2 2B activation patching results on movies (top), players (middle) and cities (bottom).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| 'Unknown' Latent Activations |
|---|---|---|---|---|
| “Apparently one or two people were shooting or shooting at each other for reasons unknown when eight people were struck by the gunfire” |
| …and the Red Cross all responded to the fire. The cause of the fire remains under investigation. |
| The Witcher Card Game will have another round of beta tests this spring (platforms TBA) |
| His condition was not disclosed, but police said he was described as stable. |{{< /table-caption >}}
> 🔼 This table displays examples of text that strongly activate the 'unknown' latent within the Gemma 2B IT model.  These examples, sourced from Neuropedia, highlight the types of statements or situations that the model identifies as uncertain or lacking sufficient information.  The activation of this latent suggests a potential internal mechanism within the model that helps it identify ambiguity or uncertainty in the input text.
> <details>
> <summary>read the caption</summary>
> Table 2: Activations of the Gemma 2B IT ‘unknown’ latent on the maximally activating examples provided by Neuropedia (Lin & Bloom, 2024).
> </details>

{{< table-caption >}}
| Entity Type | Number of entities | Attributes |
|---|---|---|
| Player | 7487 | Birthplace, birthdate, teams played |
| Movie | 10895 | Director, screenwriter, release date, genre, duration, cast |
| City | 7904 | Country, population, elevation, coordinates |
| Song | 8448 | Artist, album, publication year, genre |{{< /table-caption >}}
> 🔼 This table lists the different entity types used in the study, the number of entities of each type, and the attributes associated with each entity type.  These entities and their attributes were extracted from Wikidata, a large knowledge base, for use in evaluating the model's knowledge and reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Entity types and attributes extracted from Wikidata.
> </details>

{{< table-caption >}}
| Known Entity Latent Activations | Unknown Entity Latent Activations |
|---|---| 
| Many people use <span class="ltx_text" style="background-color:#CDFBCD;">Twitter</span> to share their thoughts. | Many people use Twitter to share their thoughts. |
| <span class="ltx_text" style="background-color:#82F582;">L’Oréal</span> <span class="ltx_text" style="background-color:#DAFCDA;">is</span> <span class="ltx_text" style="background-color:#E5FDE5;">a</span> large cosmetics and beauty company. | L’Oréal is a large cosmetics and beauty company. |
| The <span class="ltx_text" style="background-color:#9EF79E;">Mona Lisa</span> is displayed in the <span class="ltx_text" style="background-color:#C9FBC9;">Louvre</span> museum. | The Mona Lisa is displayed in the Louvre museum. |
| Many people use <span class="ltx_text" style="background-color:#94F694;">Snapchat</span> for sharing photos and short videos. | Many people use Snapchat for sharing photos and short videos. |
| The Ac<span class="ltx_text" style="background-color:#B7F9B7;">ropolis</span> is an ancient citadel in <span class="ltx_text" style="background-color:#BBFABB;">Athens</span>. | The Acropolis is an ancient citadel in Athens. |
| The <span class="ltx_text" style="background-color:#B6F9B6;">Galapagos</span> <span class="ltx_text" style="background-color:#E1FDE1;">Islands</span> are known for their unique wildlife. | The Galapagos Islands are known for their unique wildlife. |
| Many people use <span class="ltx_text" style="background-color:#A3F8A3;">Dropbox</span> for cloud storage. | Many people use Dropbox for cloud storage. |
| The <span class="ltx_text" style="background-color:#DAFCDA;">pyramids</span> of <span class="ltx_text" style="background-color:#C2FAC2;">Giza</span> were built by ancient <span class="ltx_text" style="background-color:#DCFCDC;">Egyptians</span>. | The pyramids of Giza were built by ancient Egyptians. |
| <span class="ltx_text" style="background-color:#E2FDE2;">Walmart</span> <span class="ltx_text" style="background-color:#BDFABD;">is</span> the world<span class="ltx_text" style="background-color:#D3FCD3;">’s</span> largest company by revenue. | Walmart is the world’s largest company by revenue. |
| <span class="ltx_text" style="background-color:#82F582;">FedEx</span> <span class="ltx_text" style="background-color:#D5FCD5;">is</span> <span class="ltx_text" style="background-color:#EEFEEE;">a</span> multinational delivery services company. | FedEx is a multinational delivery services company. |
| Many people use <span class="ltx_text" style="background-color:#BCFABC;">Instagram</span> to share photos. | Many people use Instagram to share photos. |
| The Neuschwans<span class="ltx_text" style="background-color:#B6F9B6;">tein</span> Castle inspired Disney’s Sleeping <span class="ltx_text" style="background-color:#BFFABF;">Beauty</span> <span class="ltx_text" style="background-color:#E9FDE9;">Castle</span>. | The Neuschwanstein Castle inspired Disney’s Sleeping Beauty Castle. |
| The theory of gravity was developed by Isaac <span class="ltx_text" style="background-color:#E2FDE2;">Newton</span>. | The theory of gravity was developed by Isaac Newton. |
| Sony <span class="ltx_text" style="background-color:#CEFBCE;">is</span> known for its electronics and entertainment products. | Sony is known for its electronics and entertainment products. |
| Many people use <span class="ltx_text" style="background-color:#AEF9AE;">Skype</span> for voice and video calls. | Many people use Skype for voice and video calls. |
| The Sistine <span class="ltx_text" style="background-color:#C8FBC8;">Chapel</span> is famous for its frescoes by <span class="ltx_text" style="background-color:#CCFBCC;">Michelangelo</span>. | The Sistine Chapel is famous for its frescoes by Michelangelo. |
| The <span class="ltx_text" style="background-color:#D3FCD3;">Andes</span> are the longest continental mountain range in the world. | The Andes are the longest continental mountain range in the world. |
| The theory of evolution was proposed by Charles <span class="ltx_text" style="background-color:#BFFABF;">Darwin</span>. | The theory of evolution was proposed by Charles Darwin. |
| Many people use <span class="ltx_text" style="background-color:#C1FAC1;">Shopify</span> for e-commerce platforms. | Many people use Shopify for e-commerce platforms. |
| <span class="ltx_text" style="background-color:#DDFCDD;">Honda</span> <span class="ltx_text" style="background-color:#B2F9B2;">is</span> known for <span class="ltx_text" style="background-color:#EBFDEB;">its</span> motorcycles and automobiles. | Honda is known for its motorcycles and automobiles. |{{< /table-caption >}}
> 🔼 This table displays example activations of two Gemma 2 2B sparse autoencoder latents.  One latent consistently activates when the model processes information about known entities (e.g., LeBron James, Yellow Submarine). The other latent activates when processing information about entities the model doesn't recognize or have factual knowledge about.  The examples demonstrate that these latents reliably distinguish between known and unknown entities across various types such as movies, songs, cities, and players, highlighting the model's capacity for recognizing its own knowledge limitations.
> <details>
> <summary>read the caption</summary>
> Table 4: Activations of Gemma 2 2B entity recognition latents on LLM generated data.
> </details>

{{< table-caption >}}
| Known Entity Latent Activations | Unknown Entity Latent Activations |
|---|---| 
| Druids commune with nature in the sacred grove of Elthalas. | Druids commune with nature in the sacred grove of Elthalas. |
| Adventurers seek the lost treasure of King Zephyrion. | Adventurers seek the lost treasure of King Zephyrion. |
| The Thaumaturge’s Guild specializes in Aether manipulation. | The Thaumaturge’s Guild specializes in Aether manipulation. |
| The Vorpal Blade was forged by the legendary Jabberwock. | The Vorpal Blade was forged by the legendary Jabberwock. |
| The Hivemind of Xarzith threatens galactic peace. | The Hivemind of Xarzith threatens galactic peace. |
| Travelers must appease the Stormcaller to cross the Tempest Sea. | Travelers must appease the Stormcaller to cross the Tempest Sea. |
| Archaeologists unearthed artifacts from the Zanthar civilization. | Archaeologists unearthed artifacts from the Zanthar civilization. |
| Sailors fear the treacherous waters of the Myroskian Sea. | Sailors fear the treacherous waters of the Myroskian Sea. |
| Scientists studied the unique properties of Quixium alloy. | Scientists studied the unique properties of Quixium alloy. |
| The Glibberthorn plant is known for its healing properties. | The Glibberthorn plant is known for its healing properties. |
| The Voidwalker emerged from the Abyssal Rift. | The Voidwalker emerged from the Abyssal Rift. |
| Alchemists seek to create the legendary Philosopher’s Stone. | Alchemists seek to create the legendary Philosopher’s Stone. |
| Pilgrims seek enlightenment at the Temple of Ethereal Wisdom. | Pilgrims seek enlightenment at the Temple of Ethereal Wisdom. |
| Pilots navigate through the treacherous Astral Maelstrom. | Pilots navigate through the treacherous Astral Maelstrom. |
| Merchants trade rare gems in the bazaars of Khalindor. | Merchants trade rare gems in the bazaars of Khalindor. |
| Scholars study ancient texts at the University of Arcanum. | Scholars study ancient texts at the University of Arcanum. |
| The Vexnor device revolutionized quantum computing. | The Vexnor device revolutionized quantum computing. |
| The Whispering Woods are guarded by the Sylvani. | The Whispering Woods are guarded by the Sylvani. |
| The Ethereal Conclave governs the realm of spirits. | The Ethereal Conclave governs the realm of spirits. |
| The Quantum Forge harnesses the power of Nullstone. | The Quantum Forge harnesses the power of Nullstone. |{{< /table-caption >}}
> 🔼 This table showcases the activation patterns of two distinct latent variables within the Gemma 2 2B language model. These variables, identified using sparse autoencoders, are specifically sensitive to whether the model possesses factual knowledge about an entity.  The 'Known Entity Latent Activations' column illustrates the latent's activation when presented with entities for which the model has stored factual information. Conversely, the 'Unknown Entity Latent Activations' column displays the latent's activation when encountering entities unfamiliar to the model.  Each row presents an example prompt, demonstrating how the latents respond to various types of entities and the information the model has about them. This highlights the ability of sparse autoencoders to identify and isolate interpretable features related to a language model's knowledge awareness.
> <details>
> <summary>read the caption</summary>
> Table 5: Activations of Gemma 2 2B entity recognition latents on LLM generated data.
> </details>

{{< table-caption >}}
| Question: Where was born the player Leo Barnhorst? ||
|---|---| 
| **α** | **Generation** |
| 0 | Leo Barnhorst was born in **Berlin, Germany** | 
| 100 | Leo Barnhorst was born in **Germany** | 
| 200 | I do not have access to real-time information, including personal details like birthplaces | 
| 300 | I do not have access to real-time information, including personal details like birthplaces | 
| 400 | I couldn’t find any information about a player named Leo Barnhorst | 
| 500 | I believe you’re asking about **Leo Barnhorst**, a professional soccer player | 
| 600 | I’m unable to provide specific details about the birthplace of a player named Leo Barnhorst | 
| 700 | ?

Please provide me with the correct spelling of the player’s name | 
| 800 | r

I believe you’re asking about <span class="ltx_text ltx_font_bold">Leo Barnhart</span>, a professional soccer player | 
| 900 | r

I believe you’re asking about **Leo Barnhart**, a professional soccer player | 
| 1000 | r

I believe you’re asking about **Leo Barnhart**, a professional soccer player | 
| 1100 | Associate the player Leo Barnhart with the sport of <span class="ltx_text ltx_font_bold">baseball</span> | 
| 1200 | discriminator: I’m sorry, but I don’t have access to real-time information, including personal details like birthplaces | {{< /table-caption >}}
> 🔼 This table shows how different steering coefficient values (α) in Equation 4 affect the model's response when asked about the birthplace of a fictional player, Leo Barnhorst, who is not in the model's knowledge base. As α increases, the response shifts from hallucinating a birthplace to refusing to answer, indicating the impact of steering on the balance between factual accuracy and hallucination.
> <details>
> <summary>read the caption</summary>
> Table 6: Gemma 2 2B IT responses to ‘Where was born the player Leo Barnhorst?’ at different steering coefficient values, α𝛼\alphaitalic_α in Equation 4. Leo Barnhorst is unknown for Gemma 2 2B.
> </details>

{{< table-caption >}}
| Head | Entity |  | Extracted Attributes |
|---|---|---|---|
| L18H5 | Kawhi Leonard |  | Clippers, Niagara, Raptors, |
|  | Detmold |  | Westfalen, Lancaster, Volkswagen |
|  | Boombastic |  | Jamaican, Reggae, Jamaica, Caribbean |
| L20H3 | Kawhi Leonard |  | NBA, basketball, Clippers, Basketball |
|  | Detmold |  | Germans, German, Germany, Westfalen |
|  | Boombastic |  | reggae, Reggae, Jamaican, music, song |{{< /table-caption >}}
> 🔼 This table displays examples of the top tokens (words or sub-word units) generated by two specific attribute extraction heads (L18H5 and L20H3) within the Gemma 2 2B language model.  These heads are responsible for extracting relevant attributes from an entity's context. Each row shows an example entity (e.g., Kawhi Leonard, Detmold, Boombastic) and the associated attributes predicted by the corresponding head. This illustrates the types of attributes these heads focus on and how they relate to the given entities.  The diversity of entities and attributes helps demonstrate the range of tasks these heads perform within the larger model.
> <details>
> <summary>read the caption</summary>
> Table 7: Examples from the top tokens promoted by the attribute extraction heads L18H5 and L20H3 in Gemma 2 2B.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.14257/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.14257/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}