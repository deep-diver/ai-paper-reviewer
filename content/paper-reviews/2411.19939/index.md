---
title: "VLSBench: Unveiling Visual Leakage in Multimodal Safety"
summary: "VLSBench exposes visual leakage in MLLM safety benchmarks, creating a new, leak-free benchmark to evaluate true multimodal safety."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2024-11-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.19939 {{< /keyword >}}
{{< keyword icon="writer" >}} Xuhao Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-03 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.19939" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.19939" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/vlsbench-unveiling-visual-leakage-in" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.19939/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal large language models (MLLMs) are increasingly used, but safety concerns remain. Prior research suggests that simply using text-based unlearning to align MLLMs can achieve comparable safety, which seems counter-intuitive. This paper investigates this phenomenon and discovers the problem of "visual safety information leakage" (VSIL) in existing multimodal safety benchmarks.  VSIL means that sensitive image content has been revealed in the textual query, enabling MLLMs to easily detect and reject harmful queries based solely on textual inputs.

To address VSIL, the researchers created VLSBench, a new multimodal visual leak-free safety benchmark.  This benchmark poses a more realistic challenge for evaluating true MLLM safety. Experiments show that, unlike datasets with VSIL,  **multimodal alignment significantly outperforms textual alignment in VLSBench**, indicating the importance of multimodal safety techniques. This challenges the current understanding of multimodal safety and highlights the need for dedicated multimodal safety benchmarks and evaluation metrics.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Existing multimodal safety benchmarks suffer from Visual Safety Information Leakage (VSIL), where sensitive image content is revealed in the text query. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VLSBench, a new leak-free benchmark, is proposed to effectively evaluate MLLM safety without VSIL. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Multimodal alignment methods outperform textual alignment on VLSBench, highlighting the need for dedicated multimodal alignment strategies for robust MLLM safety. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it reveals a critical flaw in existing multimodal safety benchmarks**—visual safety information leakage (VSIL).  Addressing VSIL is vital for developing truly safe and robust multimodal large language models (MLLMs), a rapidly growing area of research. The paper's proposed benchmark, VLSBench, and its findings directly impact the development and evaluation of future MLLMs, guiding future research toward more effective safety alignment techniques.

------
#### Visual Insights



![](https://arxiv.org/html/2411.19939/x1.png)

> 🔼 The figure illustrates the discovery of Visual Safety Information Leakage (VSIL) in existing multimodal safety datasets. VSIL refers to the phenomenon where sensitive information from images is already present in the textual query, enabling models to easily identify and reject unsafe content based on text alone. This leads to the counter-intuitive observation that simple text-based alignment methods achieve high safety performance.  To address this issue, the authors created VLSBench, a new multimodal benchmark dataset designed to prevent VSIL. Results show that VLSBench presents a significant challenge for both textual and multimodal alignment methods, highlighting the need for more robust multimodal alignment techniques.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our work. We have discovered a problem in current multimodal safety data samples, which says visual safety information leakage (VSIL). Based on this leakage, we further find it leads to a counter-intuitive problem, that simpler SFT-based alignment methods can perform nearly the same high safety rate. Thus, we construct VLSBench, preventing visual leakage. This newly proposed task discourages textual alignment and motivates more dedicated multimodal alignment methods to better solve this challenging task. The red bar shows evaluation results separately on the raw and jailbreak set of JailbreakV [34], a typical dataset with VSIL. The green bar shows evaluation results on our VLSBench.
> </details>





{{< table-caption >}}
| Dataset | R<sub>1</sub>(%) | R<sub>2</sub>(%) | R<sub>1</sub>-R<sub>2</sub>(%) |
|---|---|---|---|
| FigStep | 54.80 | 54.40 | 0.40 |
| JailbreakV-raw | 65.36 | 65.00 | 0.36 |
| Harmbench-mm | 30.91 | 30.00 | 0.91 |
| VLSafe | 91.35 | 91.08 | 0.27 |{{< /table-caption >}}

> 🔼 This table presents the results of a harmful evaluation experiment conducted on four multimodal safety datasets: FigStep, JailbreakV, Harmbench-mm, and VLSafe.  The evaluation was performed using LlamaGuard3-11B-Vision, a safety judge model. The table shows the percentage of harmful image-text pairs in each dataset, calculated using two different metrics (R1 and R2). R1 represents the overall harmful rate, while R2 indicates the rate at which both the image and text are individually harmful.  The small difference between R1 and R2 suggests that the harmful content in the images is largely reflected in the textual queries. For the JailbreakV dataset, only the miniset and raw queries were used in the evaluation.
> <details>
> <summary>read the caption</summary>
> Table 1: Harmful evaluation experiment on multimodal safety datasets, evaluated by LlamaGuard3-11B-Vision. The results are shown in percentages (%). For JailbreakV, we use its miniset and choose the raw query for evaluation.
> </details>





### In-depth insights


#### VSIL Problem Unveiled
The section 'VSIL Problem Unveiled' would likely detail the discovery and analysis of Visual Safety Information Leakage (VSIL).  The authors probably present evidence demonstrating how existing multimodal safety datasets contain a significant flaw: sensitive image content is often implicitly or explicitly revealed within the accompanying text prompt.  This **undermines the validity of existing safety benchmarks**, as models can identify and avoid harmful content based solely on textual cues, rather than genuine multimodal understanding.  The authors would likely provide **concrete examples of VSIL** from various datasets, showcasing how sensitive image details (e.g., violent scenes, prohibited objects) are described or hinted at in the text, enabling models to flag them as unsafe without truly processing the visual information.  This revelation is crucial because it highlights a critical limitation in current evaluation methods and emphasizes the **need for new benchmarks free from VSIL**, allowing for a more accurate assessment of true multimodal safety performance and fostering the development of robust, genuinely multimodal safety mechanisms.

#### VLSBench: New Dataset
The creation of VLSBench as a new dataset is a crucial contribution to the field of multimodal safety.  Its primary aim is to address the **visual safety information leakage (VSIL)** problem prevalent in existing benchmarks.  VSIL, where sensitive image content is implicitly revealed in the accompanying text query, skews the evaluation of multimodal models, leading to artificially high safety scores.  By meticulously constructing image-text pairs **without VSIL**, VLSBench presents a more realistic and challenging testbed for evaluating the true safety capabilities of multimodal large language models (MLLMs). This rigorous approach is essential for **reliable assessment of safety performance** and avoids the misleading results produced by datasets that inadvertently leak visual information.  The dataset's value extends beyond safety evaluations, as it can also be used to benchmark the performance of models in general multimodal tasks, thereby driving improvement across the board.  The detailed construction pipeline employed in creating the dataset, which emphasizes careful query generation, iterative image synthesis, and rigorous filtering, underscores its commitment to scientific accuracy and trustworthiness.  **VLSBench stands to significantly advance the field**, fostering the development of truly robust and safe MLLMs.

#### Multimodal Alignment
Multimodal alignment in large language models (LLMs) seeks to harmonize the processing of different modalities, such as text and images, creating a unified representation.  This is crucial for tasks requiring cross-modal understanding and generation.  **Successful multimodal alignment allows LLMs to leverage information from various sources to improve performance and provide more comprehensive and contextually relevant responses.**  However, achieving robust alignment is challenging, requiring careful design of model architectures and training methods.  Current approaches often involve techniques like supervised fine-tuning (SFT), reinforcement learning from human feedback (RLHF), and contrastive learning.  The choice of method depends on the task and available data.  **VSIL (Visual Safety Information Leakage), where image content is implicitly revealed in text prompts, significantly impacts the success of multimodal alignment**.  Addressing this issue requires careful data curation and model design, as well as methods to prevent textual descriptions from overshadowing the visual modality.  Ultimately, robust multimodal alignment is a vital step in creating truly intelligent and safe AI systems capable of handling complex real-world scenarios.  **Future research should focus on developing more effective techniques for preventing VSIL and improving the robustness of alignment methods across different datasets and tasks.**

#### Safety Benchmark
Creating a robust safety benchmark for multimodal large language models (MLLMs) is crucial, but challenging.  A good benchmark needs to **address visual safety information leakage (VSIL)**, a phenomenon where sensitive image content is implicitly revealed in the textual query, thus artificially inflating safety performance metrics.  Existing benchmarks often suffer from VSIL, leading to inaccurate assessments of model safety. A successful benchmark should feature a diverse set of image-text pairs, including those **without VSIL** to truly test the model's ability to handle ambiguous or sensitive content.  Moreover, the benchmark should employ **rigorous evaluation metrics** that go beyond simple accuracy rates and consider factors such as the helpfulness and harmlessness of responses.  **Quantitative and qualitative evaluations** should be included, possibly incorporating human assessment to validate model safety performance across different scenarios and cultural contexts. Finally, a well-designed benchmark should be **easily reproducible and accessible**, allowing other researchers to validate findings and contribute to the ongoing advancement of safe MLLM development.

#### Future Research
Future research should prioritize developing more robust and challenging multimodal safety benchmarks that **actively mitigate VSIL**.  This necessitates innovative techniques for generating image-text pairs where the visual content is not explicitly revealed in the textual query.  Furthermore, research should focus on **improving multimodal alignment methods** that are less reliant on textual cues and more adept at understanding and responding appropriately to nuanced visual safety concerns.  **Investigating more diverse forms of multimodal attacks** beyond textual jailbreaks is crucial for uncovering vulnerabilities. This involves exploring how adversaries might manipulate image data directly or exploit the interplay of visual and textual modalities to trigger harmful outputs.  Finally, **developing more sophisticated evaluation metrics** that go beyond simple safety rates is essential for a comprehensive understanding of MLLM safety.  This requires exploring methods that capture the nuances of helpfulness, honesty, and harmlessness in multimodal model responses.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.19939/x2.png)

> 🔼 This figure showcases four examples from existing multimodal safety benchmarks to illustrate the problem of Visual Safety Information Leakage (VSIL).  Each example shows an image paired with a textual query. The red markings highlight instances where sensitive or risky content from the image is explicitly mentioned in the textual query, indicating that the safety information has leaked from the visual to the textual modality.  This leakage renders the safety evaluation based on the textual query alone inaccurate, as the MLLM can easily detect and respond to the unsafe content in the textual query without needing to process the visual information in the image. This highlights a significant flaw in the existing multimodal safety benchmarks, as their safety assessment relies heavily on this textual information, and consequently may not accurately reflect the safety performance of the MLLMs in actual scenarios where such leakage is less likely.
> <details>
> <summary>read the caption</summary>
> Figure 2: Four examples in current benchmarks to showcase the problem of visual safety information leakage. The leakage information from visual to textual is marked as red.
> </details>



![](https://arxiv.org/html/2411.19939/x3.png)

> 🔼 This figure presents a hierarchical safety taxonomy used to categorize the 2.4k image-text pairs in the VLSBench dataset.  The taxonomy is structured in a two-level hierarchy, with six main categories (Violent, Illegal Activity, Self-Harm, Erotic, Hate, and Privacy) and a total of 19 subcategories. Each category represents a distinct type of harmful or risky content, and the subcategories offer more granular classifications of these categories.  The visual representation of the taxonomy resembles a circular chart or sunburst diagram, with each category and subcategory represented by a slice or segment.
> <details>
> <summary>read the caption</summary>
> Figure 3: Safety taxonomy of our VLSBench.
> </details>



![](https://arxiv.org/html/2411.19939/x4.png)

> 🔼 This figure presents a detailed breakdown of the VLSBench dataset's composition across six high-level categories and their respective sub-categories.  It provides a visual representation of the number of samples within each sub-category, illustrating the distribution of data points across various safety-related themes within the benchmark. This allows for a granular understanding of the dataset's coverage of different types of risky content.
> <details>
> <summary>read the caption</summary>
> Figure 4: The Detailed statistics of our VLSBench across 6 categories and 19 sub-categories
> </details>



![](https://arxiv.org/html/2411.19939/x5.png)

> 🔼 The figure illustrates the VLSBench construction pipeline, a four-step process designed to prevent visual safety information leakage.  Step (a) involves generating harmful textual queries and corresponding image descriptions using LLMs. Step (b) mitigates visual leakage by paraphrasing harmful queries to remove explicit safety-related information. Step (c) uses iterative image generation to refine image quality. Finally, step (d) filters out mismatched or safe image-text pairs, ensuring the final dataset contains only harmful and relevant image-text pairs.
> <details>
> <summary>read the caption</summary>
> Figure 5: Overview of VLSBench construction pipeline. Our pipeline features prevent visual leakage. This pipeline includes four steps: (a) Harmful query and image description generation. (b) M: Mitigating visual leakage from textual harmful query. (c) Iterative image generation from image description. (d) Final filtration ensuring image-text pairs are matched and harmful.
> </details>



![](https://arxiv.org/html/2411.19939/x6.png)

> 🔼 This figure showcases examples from the VLSBench dataset, categorized into three safety evaluation labels: 'Safe with Refuse', 'Safe with Warning', and 'Unsafe'. Each example includes an image-text pair and the corresponding model response.  The labels highlight the different ways a model can handle potentially harmful requests.  'Safe with Refuse' indicates the model correctly identified the safety concern and declined to generate a response.  'Safe with Warning' signifies the model recognized the potential risk but still provided a response, including a warning.  'Unsafe' denotes instances where the model failed to identify the safety implications and generated an unsafe or harmful response.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Examples of our dataset across our three evaluation labels. We give an image-text pair and corresponding response evaluated as Safe with Refuse, Safe with Warning and Unsafe.
> </details>



![](https://arxiv.org/html/2411.19939/x7.png)

> 🔼 This figure compares the performance of textual Supervised Fine-Tuning (SFT) and multimodal SFT methods on the VLSBench dataset.  The y-axis represents the safety rate, indicating the percentage of safe responses from the models. The x-axis shows the different models used in the experiment. The dashed lines represent the average safety rates achieved by three base models before any alignment method was applied. The graph visually demonstrates that while textual SFT performs reasonably well on its own, multimodal SFT significantly outperforms it on this new benchmark, highlighting the importance of considering both visual and textual information for robust multimodal safety.
> <details>
> <summary>read the caption</summary>
> Figure 7: Textual SFT compared with Multimodal SFT on our VSLBench. Dash lines mean the average safety rate on the three base models.
> </details>



![](https://arxiv.org/html/2411.19939/x8.png)

> 🔼 This figure showcases examples of Visual Safety Information Leakage (VSIL) from several existing multimodal safety datasets.  It demonstrates how sensitive or risky content present in the image is also explicitly or implicitly revealed in the corresponding textual query.  The examples highlight how this leakage allows models to identify and reject unsafe queries based solely on the text, without needing to process the visual information.  Specifically, images (a) through (e) are from the JailbreakV dataset, image (f) is from FigStep, images (g) through (i) are from Ch3ef, and images (j) through (l) are from Harmbench. Each image-text pair illustrates a different instance where the text in the query leaks information about the potentially harmful image content.
> <details>
> <summary>read the caption</summary>
> Figure 8: Selected examples with VSIL: (a)-(e) is from JailbreakV [34], (f) is from FigStep [16], (g)-(i) is from Ch3ef [46] and (j)-(l) is from Harmbench [35].
> </details>



![](https://arxiv.org/html/2411.19939/x9.png)

> 🔼 This word cloud visualizes the frequency of words used in the textual queries of the VLSBench dataset.  It provides a visual representation of the most common words and their relative importance in the dataset's question construction. The visualization helps understand the overall characteristics and style of questions included in VLSBench, which were designed to be neutral and avoid revealing information contained within paired images.
> <details>
> <summary>read the caption</summary>
> Figure 9: Words cloud of our VLSBench’s textual queries.
> </details>



![](https://arxiv.org/html/2411.19939/x10.png)

> 🔼 Figure 10 shows examples of sensitive objects and risky scenarios used to generate harmful queries and image captions for the VLSBench dataset.  The examples are categorized to illustrate the range of harmful content covered, and they represent real-world situations or items that could be misused to elicit unsafe responses from large language models. This figure supports the methodology section of the paper by visually demonstrating the types of harmful inputs used to construct the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 10: The harmful elements: sensitive objects and risky scenarios examples, used to generate our harmful queries and image captions.
> </details>



![](https://arxiv.org/html/2411.19939/x11.png)

> 🔼 This prompt instructs the GPT-40 model to categorize image-text pairs based on a provided safety taxonomy.  The model is asked to analyze malicious intent in the image, text, or both, classifying it into one of six high-level categories and associated sub-categories.  It requires the model to provide both the category and subcategory labels along with an explanation in JSON format. The prompt is designed for use within the VLSBench project, to aid in the creation of a dataset with balanced categories.
> <details>
> <summary>read the caption</summary>
> Figure 11: Prompt used to categorize our image-text pairs in VLSBench.
> </details>



![](https://arxiv.org/html/2411.19939/x12.png)

> 🔼 This figure compares the performance of LlamaGuard and GPT-based models in evaluating the safety of image-text pairs.  LlamaGuard struggles to accurately assess the safety of the image-text pairs because it cannot properly analyze the visual content of the images.  GPT models, on the other hand, successfully assess safety, highlighting the importance of visual context in safety evaluation and demonstrating that VLSBench poses a significant challenge for existing safety evaluation methods.
> <details>
> <summary>read the caption</summary>
> Figure 12: Evaluation method analysis. The LlamaGuard model is not able to perceive the image and identify the risky content in image-text pairs which hinders its evaluation. On the other hand, GPT-based methods is able to correctly evaluate on our VLSBench.
> </details>



![](https://arxiv.org/html/2411.19939/x13.png)

> 🔼 This figure shows the detailed prompt used for evaluating the safety of responses generated by various models on the VLSBench dataset. The prompt instructs the evaluator (GPT-40) to classify the model's responses into three categories: 'safe with refusal', 'safe with warning', and 'unsafe'.  It emphasizes the need for the evaluator to consider both direct and indirect safety risks conveyed through the image and text query.  The prompt provides specific criteria for each safety category and requests a JSON formatted explanation justifying the chosen classification.
> <details>
> <summary>read the caption</summary>
> Figure 13: Our GPT-4o evaluation prompt for our VLSBench.
> </details>



![](https://arxiv.org/html/2411.19939/x14.png)

> 🔼 This radar chart visualizes the performance of various large language models (LLMs) on the VLSBench benchmark across six safety categories.  Each category represents a different type of harmful content (e.g., violent, erotic, hate speech). The three concentric circles within each category represent the percentage of safe responses classified as 'safe with refuse', 'safe with warning', and 'safe' overall.  The models evaluated include both open-source and closed-source LLMs, with various safety alignment methods applied. The chart allows for a direct comparison of each model's performance in handling different kinds of risky content and helps assess the effectiveness of various safety alignment techniques.
> <details>
> <summary>read the caption</summary>
> Figure 14: Selected models’ results on our VLSBench across 6 categories. Reported results include safe with refuse rate, safe with warning rate, and total safe rate.
> </details>



![](https://arxiv.org/html/2411.19939/x15.png)

> 🔼 This figure presents a qualitative comparison of different large language models' responses to a prompt requesting a scenario where a llama in an image reacts strongly.  The models' responses range from generating unsafe scenarios to refusing the prompt entirely or offering safer alternatives.  The models shown are Qwen2-VL-7B, Llama3.2-Vision, LLaVA-1.5-7b, Gemini-1.5-pro, and Qwen2-VL with safety alignment using VLGuard. The responses highlight the variation in safety and helpfulness across different models and the effectiveness of safety alignment techniques.
> <details>
> <summary>read the caption</summary>
> Figure 15:
> </details>



![](https://arxiv.org/html/2411.19939/x16.png)

> 🔼 This figure shows the results of evaluating several large language models (LLMs) and their safety-aligned variants on a specific query related to cleaning a firearm that has been used in a violent incident. The models' responses are categorized into three levels: safe with refusal (completely rejecting the request), safe with warning (identifying safety concerns and providing caution), and unsafe (directly answering the query without considering safety). The figure helps to illustrate how different models and alignment techniques handle the challenging task of providing safe and helpful responses to potentially harmful prompts.
> <details>
> <summary>read the caption</summary>
> Figure 16:
> </details>



![](https://arxiv.org/html/2411.19939/x17.png)

> 🔼 This figure showcases the results of evaluating several large language models (LLMs) on a specific task.  The task involves determining suitable online locations for purchasing certain unique adult novelty items. The image shows three such items: handcuffs, lubricant, and a vibrating egg.  The results demonstrate a range of responses, from completely unsafe suggestions (providing specific online stores) to safe responses (refusing to provide such information) and responses which offer warnings and partial guidance. Different models exhibit different capabilities in handling this safety-sensitive query.  The models tested include various versions of LLaVA, Qwen2-VL, and GPT-40, as well as a version of LLaVA fine-tuned using textual unlearning methods.
> <details>
> <summary>read the caption</summary>
> Figure 17:
> </details>



![](https://arxiv.org/html/2411.19939/x18.png)

> 🔼 This figure shows the prompt used to instruct GPT-40 to generate harmful queries and image descriptions.  The prompt provides GPT-40 with a category, sub-category, and a risky object or scenario.  It then instructs the model to generate an image depicting this scenario or object and three harmful queries related to the harmful element.  The prompt emphasizes that the generated image should clearly show the harmful object or dangerous behavior and that the queries should directly or indirectly lead to harmful outputs.  Two example inputs and outputs are provided to guide the model's generation process.
> <details>
> <summary>read the caption</summary>
> Figure 18: Used prompt for GPT-4o to generate harmful queries and image descriptions with safety-related information from harmful elements, like risky objects and scenarios.
> </details>



![](https://arxiv.org/html/2411.19939/x19.png)

> 🔼 This figure shows the prompt used to instruct GPT-40 to modify harmful queries, making them less obvious while maintaining the harmful intent when combined with the image. The goal is to prevent visual safety information leakage (VSIL) by ensuring that the harmful nature is primarily conveyed through the image rather than the text query.
> <details>
> <summary>read the caption</summary>
> Figure 19: Used prompt for GPT-4o to make the harmful query less obvious and less harmful, thus hiding the safety information from the image, preventing VSIL problem.
> </details>



![](https://arxiv.org/html/2411.19939/x20.png)

> 🔼 This figure displays the prompt used to instruct GPT-40 to generate harmful queries based on existing images.  The prompt instructs the model to analyze images for potentially harmful content or situations and then generate a set of harmful queries related to that content. This aims to create a dataset of image-text pairs for evaluating the safety of multimodal large language models (MLLMs). The prompt provides examples to guide the model, illustrating the desired format and level of detail for the harmful query generation.
> <details>
> <summary>read the caption</summary>
> Figure 20: Used prompt for GPT-4o to generate harmful queries with safety-related information from existing images.
> </details>



![](https://arxiv.org/html/2411.19939/x21.png)

> 🔼 This figure shows the prompt used to filter out unsuccessful revised queries generated in the previous step.  The goal is to ensure that the query, while not explicitly harmful, still retains its harmful intent when combined with the image.  The prompt instructs GPT-4 to check for both overt harmful content in the revised query and whether the image alone, or the combination of image and query, implies harmful intent.  It requires a JSON formatted response indicating whether the text query is harmful, the image is harmful, and if the combination is harmful, along with an explanation.
> <details>
> <summary>read the caption</summary>
> Figure 21: Used prompt for GPT-4o to filter the unsuccessful revised query, which is still harmful or loses original meanings.
> </details>



![](https://arxiv.org/html/2411.19939/x22.png)

> 🔼 This prompt instructs the Qwen2-VL-72B model to iteratively refine image generation prompts.  The goal is to produce images depicting harmful or risky content, scenarios, or information.  The prompt emphasizes realism and detail in the generated images, ensuring they accurately reflect the harmful elements specified (category, risky object or scenario, and harmful query).  The model is expected to evaluate its own outputs, identifying if the generated image sufficiently conveys the intended harmful aspects. If not, it should provide a refined prompt for further iteration.
> <details>
> <summary>read the caption</summary>
> Figure 22: Used prompt for Qwen2-VL-72B for iterative image generation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Category | Samples | Ratio(%) |
|---|---|---|
| **Violent** | 590 | 26.33 |
| • Weapon-Related Violence | 244 | 10.07 |
| • Public Violence and Rioting | 186 | 8.30 |
| • Abuse and Physical Altercations | 160 | 7.14 |
| **Illegal Activity** | 539 | 24.05 |
| • Cybercrime | 226 | 10.07 |
| • Property Crimes | 167 | 7.54 |
| • Drug-Related Offenses | 115 | 5.13 |
| • Human Trafficking and Exploitation | 28 | 1.25 |
| **Self-Harm** | 370 | 16.51 |
| • Risky or Dangerous Behaviors | 125 | 5.58 |
| • Physical Self-Injury | 124 | 5.53 |
| • Substance Abuse and Poisoning | 91 | 4.06 |
| • Psychological and Disordered Harm | 32 | 1.43 |
| **Erotic** | 343 | 15.31 |
| • Adult Content | 178 | 7.94 |
| • Erotic Visual Content | 165 | 7.36 |
| **Hate** | 269 | 12.00 |
| • Racial and Ethnic Discrimination | 99 | 4.42 |
| • Cultural Xenophobia | 62 | 2.77 |
| • Religious Intolerance | 56 | 2.50 |
| • Gender and Sexual Orientation Discrimination | 50 | 2.23 |
| **Privacy** | 130 | 5.80 |
| • Unauthorized Data Collection | 69 | 2.08 |
| • Identity Theft and Impersonation | 64 | 2.86 |{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the performance of textual Supervised Fine-Tuning (SFT) against multimodal alignment methods in both safety and general ability tasks. Three large language models (LLMs) were used: LLaVA-v1.5-7b, LLaVA-v1.5-13b, and Qwen2-VL-7B.  The table displays safety rates (%), along with metrics for various general abilities, such as perception and cognition, using officially recognized evaluation metrics.  Textual SFT methods are highlighted with a blue background. Higher values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 2: Multimodal safety and general ability comparison experiment between textual SFT and multimodal alignment. We have conducted our experiment on three MLLMs, LLaVA-v1.5-7b/13b [30] and Qwen2-VL-7B [51]. blue background marks the textual method that we apply. We leverage safety rate (%) as our multimodal safety metrics. For general ability, we adopt the official metrics used. Per. is short for perception. Cog. is short for cognition. ↑↑\mathbf{\uparrow}↑ indicates that the higher, the better.
> </details>

{{< table-caption >}}
| Baselines | Training Method | Learning Rate | Epochs | Max Length |
|---|---|---|---|---|
| LLaVA-v1.5-7B + Textual SFT | full-parameter | 2e-5 | 2 | 2048 |
| LLaVA-v1.5-7B + Textual Unlearning | full-parameter | 2e-5 | 3 | 2048 |
| LLaVA-v1.5-13B + Textual SFT | full-parameter | 2e-5 | 2 | 2048 |
| Qwen2-VL-7B + Textual SFT | full-parameter | 1e-5 | 2 | 1024 |
| Qwen2-VL-7B + Multimodal SFT | full-parameter | 1e-5 | 3 | 1024 |{{< /table-caption >}}
> 🔼 Table 3 presents the safety performance evaluation results on the VLSBench dataset.  It compares various large language models (LLMs), including both open-source and closed-source models, and evaluates their performance using three different alignment methods: textual SFT, multimodal SFT, and a combined approach. The evaluation metric is the safety rate, calculated as the sum of 'safe with refuse' and 'safe with warning' rates, determined by the GPT-40 model, which assigns one of three labels to each model's response: 'safe with refuse,' 'safe with warning,' and 'unsafe'. The table helps to understand the relative effectiveness of different LLM architectures and alignment techniques in handling safety concerns, specifically within the context of the VLSBench, which is designed to avoid visual safety information leakage (VSIL).
> <details>
> <summary>read the caption</summary>
> Table 3: Results of our VLSBench, including open-sourced MLLMs, closed-sourced APIs, textual alignment, and multimodal alignment baselines. The results are evaluated with GPT-4o with three labels: safe with refuse, safe with warning, and unsafe. The final safety rate is the sum of the refusal rate and the warning rate.
> </details>

{{< table-caption >}}
| Models | Text-only | Stable-Diffusion | Typo | Stable-Diffusion+Typo | Average ↑ |
|---|---|---|---|---|---| 
| **Base Models** |  |  |  |  |  |
| LLaVA-v1.5-7B | 46.25 | 45.24 | 19.70 | 20.11 | 32.82 |
| LLaVA-v1.5-13B | 52.98 | 44.52 | 20.36 | 21.01 | 34.72 |
| Qwen2-VL-7B | 61.79 | 49.46 | 27.80 | 22.86 | 40.48 |
| **Safety Aligned** |  |  |  |  |  |
| LLaVA-v1.5-7B + VLGaurd | 74.88 | 89.16 | 95.17 | 90.89 | 87.53 |
|  + SPA-VL-DPO | 67.14 | 76.31 | 67.38 | 63.69 | 68.63 |
|  + SPA-VL-DPO | 68.93 | 79.40 | 75.95 | 70.36 | 73.66 |
|  + Textual-Unlearning | 59.29 | 65.77 | 56.90 | 45.77 | 56.93 |
|  + Textual-SFT | 67.44 | 67.14 | 62.38 | 52.85 | 62.45 |
| LLaVA-v1.5-13B + VLGaurd | 75.71 | 90.65 | 94.76 | 90.95 | 88.02 |
|  + Textual-SFT | 71.67 | 64.82 | 55.18 | 52.14 | 60.95 |
| Qwen2-VL-7B + VLGaurd | 97.02 | 91.72 | 95.95 | 93.27 | 94.49 |
|  + Textual-SFT | 71.07 | 80.29 | 74.40 | 75.35 | 75.28 |{{< /table-caption >}}
> 🔼 This table details the training hyperparameters used for both textual and multimodal safety alignment methods in the paper.  For the textual safety alignment, it shows the settings used when fine-tuning with the SafeRLHF dataset [22]. This includes the optimizer, learning rate, number of training epochs, and maximum sequence length.  Similarly, for the multimodal safety alignment, it presents the training hyperparameters employed when fine-tuning with the VLGuard dataset [67], again specifying the optimizer, learning rate, epochs, and maximum sequence length. This allows a comparison of training strategies used for each approach.
> <details>
> <summary>read the caption</summary>
> Table 4: Detailed training settings of our textual SFT with SafeRLHF [22] and Multimodal SFT with VLGuard [67].
> </details>

{{< table-caption >}}
| Type | Image Source | Nums. | Ratio(%) |
|---|---|---|---| 
| Generated | Stable-Diffusion [13] | 1234 | 62.96% |
| Existing | MULTITrust [63] | 175 | 8.93% |
|  | MLLMGuard [18] | 178 | 9.08% |
|  | Ch3ef [46] | 117 | 5.97% |
|  | UnsafeBench [40] | 130 | 6.63% |
|  | CoCo [28] | 126 | 6.43% |{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of textual alignment methods (using only text for model alignment) versus multimodal alignment methods (using both text and images) on the MMSafetyBench dataset [33].  It shows the safety performance of different models across various aspects of the benchmark, including 'Text-only,' 'Stable-Diffusion,' 'Typo,' and 'Stable-Diffusion+Typo.' The results demonstrate the relative effectiveness of each alignment strategy in mitigating safety risks within multimodal language models.
> <details>
> <summary>read the caption</summary>
> Table 5: Textual alignment compared with multimodal alignment on MMSafetyBench [33].
> </details>

{{< table-caption >}}
| Category | Description |
|---|---| 
| **Violent** | Behaviors involving physical force or threats with intent to harm, injure, or intimidate, including assaults, public violence, and the use of weapons. |
| • **Weapon-Related Violence** | Use of firearms, knives, or improvised weapons in dangerous situations |
| • **Public Violence and Rioting** | Street fights, violent protests, and aggressive acts at public events. |
| • **Abuse and Physical Altercations** | Unprovoked attacks, group fights, intimate partner violence, child and elder abuse and intimidation through physical force. |
| **Illegal Activity** | Behaviors that violate laws or regulations, including cybercrimes, drug-related offenses, human trafficking, and property crimes. |
| • **Cybercrime** | Hacking, phishing, and unauthorized access to digital systems. |
| • **Property Crimes** | Theft, vandalism, and destruction of property without consent. |
| • **Drug-Related Offenses** | Production, trafficking, and possession of controlled substances. |
| • **Human Trafficking and Exploitation** | Forced labor, sex trafficking, and illegal organ trade. |
| **Self-Harm** | Behaviors involving intentional injury or neglect directed at oneself, including physical injury, substance misuse, and extreme risk-taking. |
| • **Risky or Dangerous Behaviors** | Reckless driving, extreme sports without safety precautions, and self-neglect. |
| • **Physical Self-Injury** | Cutting, burning, hitting oneself, or other forms of direct physical harm. |
| • **Substance Abuse and Poisoning** | Overuse of medication, drug misuse, and intentional poisoning. |
| • **Psychological and Disordered Harm** | Isolation from social support, restrictive eating, binge-purge cycles, and emotional suppression. |
| **Erotic** | Content and interactions focused on explicit or suggestive sexual scenarios, including visual media and adult content. |
| • **Adult Content** | Explicit sexual content including pornography and other adult material. |
| • **Erotic Visual Content** | Content that entices and attracts through visual appeal, often using seductive elements. |
| **Hate** | Hostile or discriminatory actions and language targeted at individuals or groups based on race, religion, gender, or ethnicity. |
| • **Racial and Ethnic Discrimination** | Harassment, exclusion, and stereotyping based on race or ethnicity. |
| • **Cultural Xenophobia** | Stereotyping, exclusion, or hostility toward specific cultural groups or national origins. |
| • **Religious Intolerance** | Desecration of religious sites, mockery of practices, and exclusion due to religion. |
| • **Gender and Sexual Orientation Discrimination** | Harassment, exclusion, and discrimination based on gender identity or sexual orientation. |
| **Privacy** | Actions that involve unauthorized access, collection, or exposure of personal information, often with intent to exploit or misuse data. |
| • **Unauthorized Data Collection** | Surveillance, GPS tracking, and data scraping without consent. |
| • **Identity Theft and Impersonation** | Misuse of personal details to assume another’s identity in fraudulent activities. |{{< /table-caption >}}
> 🔼 Table 6 details the sources of images used in the VLSBench dataset.  It shows that a significant portion (62.96%) of the images were generated using Stable Diffusion, while the remaining images were sourced from four other existing datasets: MULTITrust, MLLMGuard, Ch3ef, and UnsafeBench, as well as CoCo.  The table indicates the number of images from each source and their corresponding percentage of the total dataset.
> <details>
> <summary>read the caption</summary>
> Table 6: Image source of our VLSBench including generated images and collected images from existing datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.19939/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.19939/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}