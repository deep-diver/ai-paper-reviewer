---
title: "Move-in-2D: 2D-Conditioned Human Motion Generation"
summary: "Move-in-2D generates realistic human motion sequences conditioned on a 2D scene image and text prompt, overcoming limitations of existing approaches and improving video synthesis."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Adobe Research",]
showSummary: true
date: 2024-12-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.13185 {{< /keyword >}}
{{< keyword icon="writer" >}} Hsin-Ping Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.13185" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.13185" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/move-in-2d-2d-conditioned-human-motion" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.13185/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating realistic human motion in videos remains challenging. Current methods often use pre-recorded motion data, limiting the diversity and adaptability of the generated motions. They also often struggle with matching the generated motion to specific scenes, resulting in unnatural-looking results.  This is a significant limitation, as it restricts applications and reduces the realism of the generated videos.



This research introduces Move-in-2D, a novel approach to address these issues. **Move-in-2D uses a diffusion model to generate human motion sequences based on 2D scene images and text descriptions**. This method avoids using pre-recorded motion data, enabling the generation of diverse and scene-appropriate motions. The experiments demonstrated the model’s effectiveness in producing human motion sequences that accurately align with the input scene and text description, improving the quality of video synthesis results. The research also involved the creation of a large-scale dataset, making it a valuable contribution to the field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Move-in-2D generates human motion tailored to a 2D scene and text prompt. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The approach uses a diffusion model trained on a large-scale video dataset of human activities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Generated motions improve the quality of video synthesis by providing accurate and plausible human movement. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **introduces a novel approach to human motion generation**, addressing limitations of existing methods that rely on pre-existing motion sequences.  It's relevant to current trends in video generation and opens avenues for research in **scene-aware AI**, **diffusion models**, and **human-computer interaction**. The large-scale dataset created also benefits the broader research community.

------
#### Visual Insights



![](https://arxiv.org/html/2412.13185/x1.png)

> 🔼 The figure illustrates the process of 2D-conditioned human motion generation.  It starts with a scene image (e.g., a beach) and a text prompt specifying the desired motion (e.g., 'a person is dancing').  The system then generates a human motion sequence which is consistent with both the scene and the text prompt. This motion sequence is then used to control a video generation model, which creates a realistic video of a person performing the specified motion in the specified scene.
> <details>
> <summary>read the caption</summary>
> Figure 1: 2D-conditioned human motion generation. Given an image representing the target scene and a text prompt describing the desired motion, we generate a motion sequence that aligns with the text description and projects naturally onto the scene image. This generated motion then serves as the control signal for the subsequent video generation tasks.
> </details>





{{< table-caption >}}
| Dataset | Motions | Texts | Scenes | Scene Representation | Scene Type |
|---|---|---|---|---|---| 
| KIT [42] | 3.9k | 6.2k | No | No | Indoor |
| HumanML3D [16] | 14.6k | 44.9k | No | No | Indoor |
| HUMANISE [49] | 19.6k | 19.6k | 643 | RGBD | Indoor |
| PROX [18] | 28k | No | 12 | RGBD | Indoor |
| LaserHuman [10] | 3.5k | 12.3k | 11 | RGBD | Indoor/Outdoor |
| Motion-X [32] | 81.1k | 81.1k | 81.1k | Video | Indoor/Outdoor |
| HiC-Motion | 300k | 300k | 300k | Video | Indoor/Outdoor |{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of various human motion datasets, highlighting the number of motion sequences, text descriptions, scenes, and the type of scene representation used.  It emphasizes that the HiC-Motion dataset, introduced in this paper, is significantly larger than existing datasets and includes diverse indoor and outdoor scenes, making it suitable for training models that generate human motions conditioned on 2D scenes.
> <details>
> <summary>read the caption</summary>
> Table 1:  Dataset statistics. HiC-Motion is the largest dataset comprising motions, text, and diverse indoor and outdoor scenes.
> </details>





### In-depth insights


#### 2D Motion Synthesis
2D motion synthesis, as explored in the context of the provided research paper, presents a compelling approach to human motion generation that prioritizes efficiency and accessibility.  **Unlike 3D-based methods that require complex scene reconstruction, 2D synthesis leverages readily available 2D images as scene contexts, simplifying the input process and broadening the range of applicable scenes.** This approach is particularly beneficial when the final output is intended for a 2D medium, such as a video, making it a cost-effective and scalable solution.  The core challenge, however, lies in effectively integrating the 2D scene information with other input modalities, like text prompts describing desired motions.  The paper likely explores various techniques such as diffusion models and transformer networks to achieve seamless fusion of these heterogeneous data sources, generating realistic motion sequences that respect both the scene constraints and the textual directives. **Success in this area hinges upon the quality of the training dataset, requiring a large and diverse collection of videos with accurate motion and scene annotations.**  The generated 2D motion sequences are then likely used as control signals for subsequent video generation, thus serving as an intermediate step in the creation of more complex human-centric videos. The overall contribution lies in creating a robust and scalable pipeline for generating human-like motions suitable for diverse applications within 2D settings.

#### Diffusion Model
Diffusion models are a class of generative models that have recently gained significant traction in various applications.  They function by gradually adding noise to data until it becomes pure noise, then learning to reverse this process to generate new data samples.  **The key advantage is their ability to generate high-quality, diverse samples**, often outperforming other generative models, particularly in image and video generation tasks.  The paper likely uses a diffusion model to generate human motion sequences.  **The conditioning mechanism, where additional information such as text prompts or scene images guides the generation process**, is crucial for controlling the output and ensuring realism.  However, training diffusion models can be computationally expensive and requires significant amounts of data.  **Further research may focus on improving efficiency and scalability of diffusion models**, especially for complex tasks involving high-dimensional data like human motion, which can be sensitive to errors.  The choice of architecture, including the type of neural network and the noise scheduling strategy, may significantly impact the quality and diversity of generated motion sequences.  Therefore, careful design and optimization of diffusion models are essential for effective results.

#### Dataset Creation
The creation of a new dataset is a **critical contribution** of this research.  The authors highlight the lack of existing datasets suitable for 2D-conditioned human motion generation, emphasizing the need for a dataset containing synchronized human motion sequences, corresponding text descriptions, and background scene images.  To address this gap, they collected a massive video dataset from open-domain internet sources, carefully filtering for videos with static backgrounds and single human subjects.  This filtering process is crucial for ensuring the reliability of the 2D scene image as a representation of the environment throughout the motion sequence.  Furthermore, the detailed annotation process involved utilizing a state-of-the-art 3D pose estimation method to capture human motion with precision.  **The resulting dataset's scale (300K videos)** is a significant advancement compared to prior human motion datasets, providing a richer and more diverse foundation for training the proposed model. The diverse range of indoor and outdoor scenes, along with the inclusion of diverse human activities, ensures the model generalizes better to real-world scenarios. The choice of using 2D images instead of 3D representations is a **deliberate design decision**, motivated by the scalability and accessibility of 2D data while still maintaining sufficient environmental context.

#### Benchmarking
A robust benchmarking section for a human motion generation research paper should go beyond simply reporting quantitative metrics.  It needs to **demonstrate the method's capabilities in diverse scenarios**, showcasing its **generalization abilities** across varied scenes, complex actions, and text descriptions.  A crucial element would be a comparison against relevant state-of-the-art techniques, using the same evaluation metrics and datasets to ensure a fair and meaningful comparison.  The evaluation should ideally include both objective metrics like FID and accuracy, and subjective evaluation through visual inspection and user studies. **Visual examples are key**, demonstrating successful and challenging cases.  The limitations of the proposed method should also be clearly discussed, providing context and identifying areas for future improvement.  Finally, **a discussion of the dataset bias and its potential impact on the benchmarking results is critical**, ensuring transparency and enabling better interpretation of the findings.

#### Future Directions
Future research directions for 2D-conditioned human motion generation could focus on several key areas. **Improving the diversity and realism of generated motions** is crucial, potentially through incorporating more nuanced control over style, emotion, and interaction.  **Expanding the scope of scene understanding** is another important direction.  Currently, the model relies on static background images; future work should explore handling dynamic scenes, occlusions, and more complex interactions between humans and objects within the environment.  Furthermore, **enhancing the efficiency of the model** is important, particularly for real-time applications.  This involves optimizing the training process and the inference speed, potentially through model compression or more efficient architectures.  Finally, **bridging the gap between 2D and 3D motion generation** is a valuable avenue for investigation. Exploring techniques that can leverage 2D information to generate high-fidelity 3D motion data could significantly expand the possibilities of this field. Investigating the use of this technology for various applications, from virtual reality to animation, should also be prioritized.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.13185/x2.png)

> 🔼 This figure illustrates the architecture of the proposed model for 2D-conditioned human motion generation.  It shows how text prompts and background scene images are processed. First, CLIP and DINO encoders convert the text and image, respectively, into a shared representation.  This information is then integrated into the model using an 'in-context conditioning' approach.  A diffusion timestep is processed via an AdaLN layer, which normalizes the data based on the diffusion step. Our multi-conditional transformer model uses this combined information (text, image, timestep) to generate a human motion sequence.  The process utilizes a diffusion denoising model, iteratively refining the initial noisy motion until a clean, realistic motion sequence is produced that aligns with both the text description and the background scene. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview. The text prompt and background scene image are encoded by the CLIP and DINO encoders, and incorporated into the model via in-context conditioning. The AdaLN layer receives the diffusion timestep as input. Our multi-conditional transformer model then generates a human motion sequence through a diffusion denoising process, aligning the generated motion with both input conditions.
> </details>



![](https://arxiv.org/html/2412.13185/x3.png)

> 🔼 Figure 3 showcases the model's ability to generate human poses that are consistent with both the text prompt and the scene's context.  Examples include a person standing on a cliff, sitting on a chair, surfing, or petting a dog, demonstrating the model's understanding of scene affordances and its capability to handle intricate human-environment interactions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Affordance-aware human generation. Our model generates human poses consistent with both text prompts and scene context, such as standing on a cliff. It also supports complex human-scene interactions, including activities like petting a dog.
> </details>



![](https://arxiv.org/html/2412.13185/x4.png)

> 🔼 Figure 4 showcases the model's ability to generate human motion sequences with significant dynamic range and accurate placement within diverse scenes.  Examples include tennis, basketball, jumping rope, lunges, trampoline jumping, swinging, and cycling. These complex activities are challenging for video generation models to reproduce faithfully. The figure highlights the model's capacity to create realistic and dynamic human movement that is integrated seamlessly into the environment.
> <details>
> <summary>read the caption</summary>
> Figure 4: Motion generation with large dynamics. Our results show motion sequences that are accurately placed and move within scenes, such as playing tennis, enabling the generation of complex human activities that are challenging for video generation models.
> </details>



![](https://arxiv.org/html/2412.13185/x5.png)

> 🔼 Figure 5 compares the proposed method's performance to several state-of-the-art models for human motion generation.  The comparison highlights the strengths of the new approach. MDM and SceneDiff, which are other methods, produce unrealistic or implausible human poses. MLD generates motion that does not match the context of the scene. HUMANISE, yet another alternative method, generates motion that is essentially static and unchanging. In contrast, the proposed method successfully generates coherent and realistic human motions that are consistent with both the background scene and the textual description of the desired action.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison to state-of-the-art. MDM and SceneDiff produces implausible poses, MLD generates mismatched motion with the scene, and HUMANISE generates static poses. Our method generates coherent motion aligned with both the scene and text prompts.
> </details>



![](https://arxiv.org/html/2412.13185/x6.png)

> 🔼 This figure demonstrates the application of the proposed method for generating human motion in video generation.  The model takes a scene image and a text prompt as input and generates a motion sequence compatible with the scene.  This motion sequence is then used to animate a reference human model in existing video generation frameworks, Champ and Gen-3. The results showcase the capability of the method to produce videos with accurate human shapes and smooth movements, surpassing the performance of the baseline method, SVD, in preserving human geometry and motion consistency.
> <details>
> <summary>read the caption</summary>
> Figure 6: Motion-guided human video generation. Our approach generates scene-compatible motion sequences from a scene image and text prompt, which are then used to animate a reference human using Champ [60] or Gen-3 [11]. The generated motion ensures accurate human shapes and smooth motion in the resulting videos, outperforming SVD [5] in preserving human geometry and motion consistency.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Methods | FID (↓) | Accuracy (↑) | Diversity (↑) | Multimodality (↑) |
|---|---|---|---|---|
| MDM [45] | 164.595 | 0.325 | 24.758 | 18.924 |
| MLD [8] | 85.913 | 0.322 | 25.119 | 19.464 |
| SceneDiff [24] | 543.769 | 0.203 | 4.217 | 3.861 |
| HUMANISE [49] | 159.935 | 0.225 | 23.287 | 19.956 |
| MDM+ [45] | 46.035 | 0.620 | 23.002 | 17.627 |
| Ours-scene | 46.458 | 0.482 | 24.968 | **21.320** |
| Ours | **44.639** | **0.661** | **26.027** | 20.130 |{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different human motion generation models.  The models are evaluated using four metrics: FID (Frechet Inception Distance), Accuracy, Diversity, and Multimodality. Lower FID scores indicate better quality, while higher scores for Accuracy, Diversity, and Multimodality reflect better performance in those respective areas. The table shows that the proposed method ('Ours') outperforms state-of-the-art models in terms of motion quality and diversity, surpassing both text-conditioned, scene-conditioned, and multimodal approaches.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results. Our method achieves better quality and diversity scores compared to state-of-the-art text-conditioned, scene-conditioned, and multimodal motion generation models.
> </details>

{{< table-caption >}}
| Methods | Scene-Align (↑) | Text-Align (↑) | Quality (↑) | Total (↑) |
|---|---|---|---|---|
| MDM [45] | 2.25 | 1.35 | 1.50 | 5.10 |
| MLD [8] | 2.85 | 1.95 | 1.90 | 6.70 |
| SceneDiff [24] | 2.05 | 1.20 | 1.20 | 4.45 |
| HUMANISE [49] | 2.20 | 1.45 | 1.30 | 4.95 |
| MDM+ [45] | 2.57 | 1.73 | 1.94 | 6.24 |
| Ours-scene | 2.90 | 2.00 | 1.95 | 6.85 |
| Ours | **3.55** | **2.70** | **2.85** | **9.10** |{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of different human motion generation models using a Vision-Language Model (VLM).  The VLM assigns scores from 0 to 5 for three aspects: how well the generated motion aligns with the background scene, how well it aligns with the text description of the motion, and the overall quality of the generated human poses. The table compares the proposed method's performance to several state-of-the-art baselines, demonstrating its superiority in generating high-quality, scene-consistent human motions that match the given text prompts.
> <details>
> <summary>read the caption</summary>
> Table 3: Automated evaluation. We report average VLM scores (0-5) for generated motions, assessing alignment with scene, text, and pose quality. Our method outperforms all evaluated baselines.
> </details>

{{< table-caption >}}
| Timestep | Text | Scene | FID (↓) | Accuracy (↑) |
|---|---|---|---|---|
| AdaLN | In-Context | In-Context | 44.639 | 0.661 |
| AdaLN | In-Context | Cross-Attn | 47.656 | 0.567 |
| In-Context | In-Context | In-Context | 62.927 | 0.554 |
| In-Context | In-Context | Cross-Attn | 66.827 | 0.519 |{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different transformer block designs and conditioning methods on the performance of the model.  Specifically, it compares using AdaLN (Adaptive Layer Normalization) versus in-context conditioning for timestep information; and it compares different methods for incorporating text and scene condition information into the transformer. The goal is to determine the optimal configuration for generating human motion that aligns well with both text and scene inputs, leading to superior motion quality and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study. We study different transformer block designs, and choose AdaLN for timestep conditioning and In-Context for text and scene conditions as our main configuration.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.13185/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13185/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}