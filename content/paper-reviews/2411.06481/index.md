---
title: "KMM: Key Frame Mask Mamba for Extended Motion Generation"
summary: "KMM: Key Frame Mask Mamba generates extended, diverse human motion from text prompts by innovatively masking key frames in the Mamba architecture and using contrastive learning for improved text-motio..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Peking University",]
showSummary: true
date: 2024-11-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.06481 {{< /keyword >}}
{{< keyword icon="writer" >}} Zeyu Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.06481" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.06481" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/kmm-key-frame-mask-mamba-for-extended-motion" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.06481/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current text-to-motion generation methods struggle with generating long and diverse human motion sequences, mainly due to issues like memory decay in models and insufficient alignment between text and motion.  Existing approaches often rely on transformer-based architectures or diffusion models that have limitations when generating extended motions or understanding detailed directional instructions within prompts. 

The paper proposes KMM, a novel method that addresses these issues. KMM uses a key frame masking strategy, based on local density and minimum distance to higher density, which helps Mamba focus on important actions and reduces memory decay.  Further, it employs a contrastive learning paradigm to enhance the alignment between text and motion. Experiments on BABEL dataset show KMM's superiority over state-of-the-art methods in terms of FID and parameter efficiency.  The introduction of BABEL-D, a new benchmark focusing on directional instructions, further validates KMM's improved text-motion alignment.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} KMM, a novel architecture, significantly improves extended motion generation by enhancing Mamba's focus on key actions through key frame masking. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Contrastive learning improves text-motion alignment in KMM, addressing the multimodal fusion challenge and generating more accurate motions from textual descriptions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} KMM outperforms state-of-the-art models on the BABEL dataset, achieving state-of-the-art performance with significantly fewer parameters, highlighting both effectiveness and efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **significantly advances extended motion generation**, a crucial area in computer vision and animation. By addressing memory decay and improving text-motion alignment in the Mamba architecture, it paves the way for more realistic and nuanced human motion synthesis. The proposed KMM architecture and contrastive learning approach are valuable contributions that can be applied to other sequence modeling tasks.  The introduction of a new benchmark dataset further enhances the value of this work.

------
#### Visual Insights



![](https://arxiv.org/html/2411.06481/x1.png)

> 🔼 This figure demonstrates the limitations of existing extended motion generation methods in handling directional instructions within text prompts.  The top row shows examples of how previous models (PriorMDM, FlowMDM, TEACH) incorrectly interpret directional instructions like 'raise left arm' or 'kick right leg,' resulting in inaccurate or opposite movements. The bottom row shows the improved accuracy and correctness of the proposed KMM model under the same conditions.  KMM's enhanced text-motion alignment allows the model to better understand and respond correctly to these directions.
> <details>
> <summary>read the caption</summary>
> Figure 1: The figure illustrates that previous extended motion generation methods often struggle with directional instructions, leading to incorrect motions. In contrast, our proposed KMM, with enhanced text-motion alignment, effectively improves the model’s understanding of text queries, resulting in more accurate motion generation.
> </details>





{{< table-caption >}}
## Table 1: Quantitative results on the X-ray dataset.

| Models | R-precision ↑ | FID ↓ | Diversity → | MM-Dist ↓ |
|---|---|---|---|---|
| Ground Truth | 0.715<sup>±0.003</sup> | 0.00<sup>±0.00</sup> | 8.42<sup>±0.15</sup> | 3.36<sup>±0.00</sup> |
| TEACH | 0.460<sup>±0.000</sup> | 1.12<sup>±0.00</sup> | 8.28<sup>±0.00</sup> | 7.14<sup>±0.00</sup> |
| TEACH w/o Spherical Linear Interpolation | **0.703**<sup>±0.002</sup> | 1.71<sup>±0.03</sup> | 8.18<sup>±0.14</sup> | <u>3.43</u><sup>±0.01</sup> |
| TEACH<sup>∗</sup> | 0.655<sup>±0.002</sup> | 1.82<sup>±0.02</sup> | 7.96<sup>±0.11</sup> | 3.72<sup>±0.01</sup> |
| PriorMDM | 0.430<sup>±0.000</sup> | 1.04<sup>±0.00</sup> | 8.14<sup>±0.00</sup> | 7.39<sup>±0.00</sup> |
| PriorMDM w/ Trans. Emb | 0.480<sup>±0.000</sup> | 0.79<sup>±0.00</sup> | 8.16<sup>±0.00</sup> | 6.97<sup>±0.00</sup> |
| PriorMDM w/ Trans. Emb & geo losses | 0.450<sup>±0.000</sup> | 0.91<sup>±0.00</sup> | 8.16<sup>±0.00</sup> | 7.09<sup>±0.00</sup> |
| PriorMDM<sup>∗</sup> | 0.596<sup>±0.005</sup> | 3.16<sup>±0.06</sup> | 7.53<sup>±0.11</sup> | 4.17<sup>±0.02</sup> |
| PriorMDM w/ PCCAT and APE | 0.668<sup>±0.005</sup> | 1.33<sup>±0.04</sup> | 7.98<sup>±0.12</sup> | 3.67<sup>±0.03</sup> |
| MultiDiffusion | <u>0.702</u><sup>±0.005</sup> | 1.74<sup>±0.04</sup> | <u>8.37</u><sup>±0.13</sup> | <u>3.43</u><sup>±0.02</sup> |
| DiffCollage | 0.671<sup>±0.003</sup> | 1.45<sup>±0.05</sup> | 7.93<sup>±0.09</sup> | 3.71<sup>±0.01</sup> |
| T2LM | 0.589<sup>±0.000</sup> | 0.66<sup>±0.00</sup> | 8.99<sup>±0.00</sup> | 3.81<sup>±0.00</sup> |
| FlowMDM | <u>0.702</u><sup>±0.004</sup> | 0.99<sup>±0.04</sup> | 8.36<sup>±0.13</sup> | 3.45<sup>±0.02</sup> |
| Motion Mamba | 0.490<sup>±0.000</sup> | 0.76<sup>±0.00</sup> | **8.39**<sup>±0.00</sup> | 4.97<sup>±0.00</sup> |
| **KMM** (Ours) | 0.666<sup>±0.001</sup> | **0.34**<sup>±0.01</sup> | 8.67<sup>±0.14</sup> | **3.11**<sup>±0.01</sup> |{{< /table-caption >}}

> 🔼 Table 1 compares the performance of the proposed KMM method against several state-of-the-art long-motion generation techniques.  The comparison uses the BABEL dataset and focuses on metrics such as R-precision (higher is better), FID (lower is better), diversity, and multi-modal distance (lower is better). The table highlights that KMM achieves the best performance across all metrics, indicating superior motion generation quality.  Note that some prior results were reproduced by the FlowMDM method. The table also points out that the original papers for certain methods did not provide error bars (denoted by ±0.000 or ±0.00), making exact comparisons less precise in those cases.
> <details>
> <summary>read the caption</summary>
> Table 1:  This table presents a comparison between our method and previous long motion generation techniques on the BABEL dataset (Punnakkal et al. 2021). The results show that our method outperforms the others, demonstrating superior performance. The right arrow →→\rightarrow→ indicates that closer values to real motion are better. Bold and underline highlight the best and second-best results, respectively. Additionally, ∗*∗ denotes results reproduced by FlowMDM. For results with ±0.000plus-or-minus0.000\pm{0.000}± 0.000 or ±0.00plus-or-minus0.00\pm{0.00}± 0.00, the corresponding paper does not provide error bars.
> </details>





### In-depth insights


#### KMM: Core Idea
The core idea behind KMM revolves around addressing two critical limitations of the Mamba architecture in extended motion generation: **memory decay** and **poor text-motion alignment**.  To tackle memory decay, KMM introduces **key frame masking**, a novel density-based method to strategically mask less important frames, allowing the model to focus on key actions and prevent information loss during long sequences. This contrasts with prior methods that used random masking, which is less efficient for long-term dependencies.  Simultaneously, KMM improves text-motion alignment by employing **contrastive learning** to dynamically learn text embeddings, enhancing alignment between text and motion.  This addresses Mamba's inherent struggles with multimodal fusion and improves understanding of directional and nuanced instructions.  **Combining strategic key frame masking with contrastive learning** forms the core innovation of KMM, enabling the generation of more accurate, diverse, and coherent extended motion sequences, significantly surpassing previous state-of-the-art methods.

#### KeyFrame Masking
The proposed Key Frame Masking strategy tackles the challenge of memory decay in Mamba models for extended motion generation.  Instead of random masking, it employs a **density-based approach**, identifying key frames within the latent motion space by calculating local density and minimum distances to higher density regions.  This intelligent selection of frames ensures that the model focuses its learning on the most crucial motion information, thereby mitigating the memory constraints and enabling coherent generation of long sequences. The method's effectiveness stems from its ability to **selectively mask out less significant frames**, allowing for more efficient learning and utilization of the implicit memory. This targeted masking approach, as opposed to random masking, is a key innovation, providing a more robust and effective solution for handling extended motions within the limitations of the Mamba architecture.  **Its effectiveness is demonstrated** in comparison with other masking techniques such as random masking, significantly improving the model's capability to generate high-quality, long sequences.

#### Text-Motion Alignment
The research paper section on "Text-Motion Alignment" tackles a critical challenge in generating human motion from text descriptions: **effectively bridging the semantic gap between text and motion representations.**  Existing methods often rely on frozen CLIP encoders, creating a mismatch between text features and the motion generation model's latent space. This paper innovatively proposes a **contrastive learning paradigm** to directly learn this alignment, reducing the reliance on pre-trained encoders. By dynamically learning text embeddings, the approach **improves text-motion coherence** and ensures that generated motions accurately reflect the input text's instructions, especially concerning directional cues often misinterpreted by previous models. This is a significant advancement, as it addresses a fundamental limitation impacting the realism and accuracy of text-driven motion synthesis.  The approach is validated through experiments, showcasing improved performance in handling complex and directional prompts and a significant reduction in common misalignments between generated motion and the intended text description.

#### Extended Motion
The concept of "Extended Motion" in the context of this research paper likely refers to the generation of long, complex, and diverse human motion sequences.  The paper tackles challenges associated with generating such motions, namely **memory decay** in recurrent models and **poor text-motion alignment** in multimodal models.  Addressing these challenges is key to achieving realistic and coherent extended motion generation. The authors propose innovations like **Key Frame Masking Modeling (KMM)** to mitigate memory issues, and a **contrastive learning paradigm** for improved text-motion alignment.  These techniques aim to enable more nuanced and accurate motion generation based on comprehensive text instructions, resulting in more versatile and robust outputs that surpass previous state-of-the-art methods.  The focus on extended motion generation highlights the limitations of existing approaches when handling long-range dependencies and complex multimodal data, making the presented work a significant contribution towards realistic and controllable human animation.

#### Future of KMM
The future of KMM hinges on addressing its current limitations and exploring new avenues for improvement.  **Extending the model's capacity to handle even longer and more complex motion sequences** is crucial. This could involve exploring more efficient memory management techniques or architectural modifications.  **Improving the model's ability to understand nuanced and ambiguous textual instructions** is another key area. This might involve integrating more advanced natural language processing (NLP) techniques or incorporating a larger, more diverse training dataset.  **Enhancing the model's robustness to noisy or incomplete input data** would also be beneficial, making it more practical for real-world applications.  Finally, **research into the explainability of KMM's predictions is warranted.** Understanding how the model arrives at its generated motions can lead to improvements in its accuracy and controllability.  This combination of improvements to robustness, understanding, and explainability will greatly expand KMM’s potential applications.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.06481/x2.png)

> 🔼 This figure provides a detailed breakdown of the KMM method, showing its three key components: (a) Key Frame Mask Modeling, which uses local density and minimum distance calculations to strategically mask key frames, enhancing the model's focus on crucial actions; (b) the overall architecture of the masked bidirectional Mamba, illustrating how the masking strategy is integrated into the model's structure; and (c) Text-Motion Alignment, demonstrating the contrastive learning approach that enhances the model's ability to align text and motion data, improving the accuracy and relevance of generated motions.
> <details>
> <summary>read the caption</summary>
> Figure 2: The figure demonstrates our novel method from three different perspectives: (a) illustrates the key frame masking strategy based on local density and minimum distance to higher density calculation. (b) showcases the overall architecture of the masked bidirectional Mamba. (c) demonstrates the text-to-motion alignment, highlighting the process before and after alignment.
> </details>



![](https://arxiv.org/html/2411.06481/x3.png)

> 🔼 This figure depicts the user interface of a study involving 50 participants who assessed motion sequences generated by four different methods: TEACH, PriorMDM, FlowMDM, and the proposed KMM method.  The participants evaluated the generated motions based on four criteria:  text-motion alignment (how well the motion matched the text description), robustness (how realistic and natural the motion appeared), diversity (how varied and interesting the motions were), and usability (how suitable the motions would be for real-world applications, such as in video games or animation).  The text prompts used to generate the motion sequences were randomly selected and combined from the HumanML3D (Guo et al., 2022) and BABEL (Punnakkal et al., 2021) datasets, ensuring a variety of motion types and descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 3: The figure shows the user study interface where 50 participants evaluated motion sequences generated by TEACH, PriorMDM, FlowMDM, and KMM, focusing on text-motion alignment, robustness, diversity, and usability. The text prompt are randomly extracted and combined from the HumanML3D (Guo et al. 2022) and BABEL (Punnakkal et al. 2021) test set.
> </details>



![](https://arxiv.org/html/2411.06481/x4.png)

> 🔼 Figure 5 presents a qualitative comparison of extended motion generation results between KMM and three state-of-the-art methods (TEACH, PriorMDM, and FlowMDM).  Three example text prompts of varying complexity are used as input. For each prompt, the generated motion sequences from each method are displayed. The visualization clearly demonstrates KMM's superior performance in accurately interpreting complex instructions and producing more realistic and nuanced motions compared to the other methods.
> <details>
> <summary>read the caption</summary>
> Figure 4: The figure demonstrates a qualitative comparison between the previous state-of-the-art method in extended motion generation and our KMM. The qualitative results show that our method significantly outperforms others in handling complex text queries and generating more accurate corresponding motions.
> </details>



![](https://arxiv.org/html/2411.06481/x5.png)

> 🔼 This figure showcases qualitative results from the KMM model, demonstrating its ability to generate diverse and robust motions from complex, lengthy text prompts.  The prompts are sourced from the HumanML3D and BABEL datasets.  The numbers in parentheses after each prompt indicate the length of the generated motion sequence (in frames), highlighting the model's ability to produce motions of specified durations. The visualizations highlight KMM's superior performance against other state-of-the-art methods in accurately and dynamically generating human motion that precisely aligns with the input text instructions.
> <details>
> <summary>read the caption</summary>
> Figure 5: The figure presents some qualitative visualization results of our proposed KMM model. The text prompts are sourced and combined from HumanML3D (Guo et al. 2022) and BABEL (Punnakkal et al. 2021). The number within the brackets indicates our ability to condition the generated motion on a specific length, dynamically producing motion of the desired duration. The visualizations showcase KMM’s superior performance in generating robust and diverse motions that align closely with lengthy and complex text queries.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Models | R-precision ↑ | FID ↓ | Diversity → | MM-Dist ↓ |
|---|---|---|---|---|
| Ground Truth | 0.438<sup>±0.000</sup> | 0.02<sup>±0.00</sup> | 8.46<sup>±0.00</sup> | 3.71<sup>±0.00</sup> |
| PriorMDM | 0.334<sup>±0.015</sup> | 6.82<sup>±0.76</sup> | 7.27<sup>±0.33</sup> | 7.44<sup>±0.12</sup> |
| KMM w/o Alignment | 0.484<sup>±0.007</sup> | 5.50<sup>±0.15</sup> | **8.44**<sup>±0.15</sup> | 3.48<sup>±0.03</sup> |
| **KMM** (Ours) | **0.538**<sup>±0.009</sup> | **3.86**<sup>±0.14</sup> | 8.04<sup>±0.14</sup> | **2.72**<sup>±0.03</sup> |{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the proposed KMM model against state-of-the-art methods on the BABEL-D benchmark dataset, focusing on extended motion generation tasks involving directional instructions.  The BABEL-D dataset is specifically designed to evaluate performance on text prompts that include directional cues (like 'left' or 'right'). The table shows quantitative metrics (R-precision, FID, Diversity, MM-Dist) to assess the quality and alignment of the generated motions with the given text prompts.  Higher R-precision and lower FID, Diversity, and MM-Dist indicate better results. The arrows next to each metric indicate the direction of improvement, with values closer to those of real human motions being preferred.  The best and second-best results for each metric are highlighted in bold and underlined font, respectively, to clearly indicate the superior performance of the proposed KMM model in handling directional text instructions within extended motion generation scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2:  This table compares our method with previous long motion generation techniques on the BABEL-D benchmark. The results demonstrate that our method excels in handling directional instructions, highlighting the advantages of our proposed text-motion alignment approach. The right arrow →→\rightarrow→ indicates that closer values to real motion are better. Bold and underline highlight the best and second-best results, respectively.
> </details>

{{< table-caption >}}
| Models | R-precision ↑ | FID ↓ | Diversity → | MM-Dist ↓ |
|---|---|---|---|---|
| Ground Truth | 0.715<sup>± 0.003</sup> | 0.00<sup>± 0.00</sup> | 8.42<sup>± 0.15</sup> | 3.36<sup>± 0.00</sup> |
| KMM w/ random masking | 0.649<sup>± 0.001</sup> | 0.48<sup>± 0.01</sup> | 8.80<sup>± 0.06</sup> | 3.30<sup>± 0.01</sup> |
| KMM w/o Alignment | **0.671**<sup>± 0.001</sup> | <u>0.40</u><sup>± 0.01</sup> | **8.57**<sup>± 0.05</sup> | <u>3.21</u><sup>± 0.01</sup> |
| **KMM** (Ours) | <u>0.666</u><sup>± 0.001</sup> | **0.34**<sup>± 0.01</sup> | <u>8.67</u><sup>± 0.14</sup> | **3.11**<sup>± 0.01</sup> |{{< /table-caption >}}
> 🔼 Table 3 presents an ablation study assessing the impact of different components of the proposed KMM model on its performance.  The study compares the full KMM model to versions that omit either the key frame masking or the text-motion alignment. The results demonstrate that both components are essential for achieving optimal performance in generating realistic and accurate human motion sequences.  The table quantitatively evaluates these variations across metrics such as R-precision, FID (Frechet Inception Distance), Diversity, and MultiModal Distance, with higher values on R-precision and Diversity, and lower values on FID and MultiModal distance representing better results.  Arrows indicate the direction of improvement, and bold/underlined values show the best and second-best performance, respectively.
> <details>
> <summary>read the caption</summary>
> Table 3: This table illustrates the ablation results from different aspects of the proposed method. The results show that both the key frame masking strategy and text-motion alignment contribute to the overall performance. The right arrow →→\rightarrow→ indicates that closer values to real motion are better. Bold and underline highlight the best and second-best results, respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.06481/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.06481/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}