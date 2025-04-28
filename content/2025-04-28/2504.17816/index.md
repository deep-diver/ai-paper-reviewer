---
title: "Subject-driven Video Generation via Disentangled Identity and Motion"
summary: "Zero-shot subject-driven video generation via disentangling identity & motion using image customization data."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Seoul National University",]
showSummary: true
date: 2025-04-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.17816 {{< /keyword >}}
{{< keyword icon="writer" >}} Daneul Kim et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.17816" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.17816" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.17816/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Subject-driven video generation aims to create videos with consistent subject identity across scenes. Current methods require extensive annotated video data which are expensive and labor-intensive. To solve this issue, this paper introduces a novel approach leveraging image customization datasets, which are more readily available. By factorizing video customization into identity injection and temporal awareness preservation, the model can learn subject-specific features without relying on video datasets, reducing computational resources. 



The authors propose a method using Image-to-Video fine-tuning and stochastic switching, with the framework named the Multi-Modal Diffusion Transformer, to mitigate forgetting issues. Random image token dropping and randomized image initialization are applied during fine-tuning. The study demonstrates that the method maintains strong subject consistency and scalability, and it achieves better performance than existing video customization models in zero-shot settings by using an image customization dataset, factorizing the process, and mitigating catastrophic forgetting.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A new training approach for subject-driven video generation using image customization datasets is proposed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A stochastically-switched fine-tuning method is introduced to mitigate catastrophic forgetting. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed method achieves strong subject consistency and scalability in video customization. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel method for subject-driven video generation, which can **significantly reduce the costs and efforts associated with video customization**. The proposed method offers a **more scalable and flexible solution** for content creation, marketing, and entertainment.

------
#### Visual Insights



![](https://arxiv.org/html/2504.17816/x2.png)

> 🔼 This figure showcases the results of video customization using the proposed subject-driven video generation method.  It demonstrates the model's ability to generate high-quality videos across a variety of scenarios by seamlessly integrating user-specified subjects into different contexts and actions.  The examples presented showcase the method's capacity for preserving subject identity and generating realistic motion, highlighting the key advantages of the proposed disentangled approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: Result on video customization with our proposed decomposed subject-driven generation, demonstrating high-quality results across various scenarios.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.2.1.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.1.1">Training Method</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.2.1.1.1.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.2.1">Used Data</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.3.1">Motion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.4.1">Dynamic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.5" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.5.1">CLIP-T</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.6" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.6.1">CLIP-I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.1.1.1.7" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.1.1.7.1">DINO-I</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.1.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.1.1">Smoothness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.1.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.2.2.2.1">Degree</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.2.1.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">VideoBooth</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T1.2.1.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">Custom T2V</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">96.95</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">51.67</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">29.59</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">66.06</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.2.1.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">34.54</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.1.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.1.4.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">OmniControl+I2V</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.2.1.4.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">Custom T2I</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">98.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">51.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">31.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">72.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.1.4.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">54.16</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.5.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">BLIP+I2V</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.5.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">Custom T2I</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">97.53</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">49.17</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">28.19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.5.2.6.1">79.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.5.2.7" style="padding-left:2.0pt;padding-right:2.0pt;">56.58</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.6.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">IP-Adapter+I2V</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.2.1.6.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">Custom T2I</th>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">97.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">55.83</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">26.97</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">73.86</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.6.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">45.18</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.1.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.2.1.7.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">Ours</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.2.1.7.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">Custom T2I</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.7.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.7.4.3.1">98.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.7.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.7.4.4.1">60.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.7.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.7.4.5.1">32.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.7.4.6" style="padding-left:2.0pt;padding-right:2.0pt;">73.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.2.1.7.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.2.1.7.4.7.1">59.29</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of different video generation methods using the VBench benchmark.  It shows the performance of various models on several metrics, including motion smoothness, dynamic degree (amount of movement), CLIP-T score (text-video alignment), CLIP-I score (image-video alignment), and DINO-I score (identity consistency).  The table allows for a direct comparison of the proposed model against existing state-of-the-art methods in generating videos based on a given image input, highlighting the strengths and weaknesses of each approach in terms of identity preservation, motion fidelity, and overall visual quality.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison with other methods on VBench.
> </details>





### In-depth insights


#### S2V Factorization
The 'S2V Factorization' likely refers to decomposing the subject-to-video generation task into manageable sub-problems. A crucial insight is to **separate identity preservation from temporal dynamics**. Instead of learning both simultaneously (which requires vast, annotated video data), the model could focus on injecting subject-specific features using image data. This acknowledges that high-quality images are more readily available. Temporal awareness, then, is addressed separately, perhaps via a pre-trained model or a smaller, unannotated video dataset. This factorization **simplifies training and improves scalability**, as it leverages existing resources more effectively. It also allows for a more modular approach, where advancements in image-based subject customization can be readily integrated into video generation pipelines.

#### Stochastic Tuning
**Stochastic Tuning** offers a novel way to balance competing objectives in machine learning. Instead of sequential training, it uses probabilistic switches. This mitigates catastrophic forgetting as the model retains previous knowledge while learning new tasks. The parameter p controls the balance between tasks. It leads to more robust and generalizable models than conventional methods.

#### Image vs. Video
When comparing image and video generation, key differences emerge. **Image generation** focuses on creating a single, coherent visual representation, prioritizing detail and composition. **Video generation**, however, introduces the temporal dimension, demanding not only visually appealing frames but also coherent motion and scene transitions. This significantly increases complexity, requiring models to learn motion dynamics and maintain subject consistency over time. Consequently, video models must balance individual frame quality with overall temporal coherence, a challenge not present in static image synthesis. Datasets, training strategies, and evaluation metrics also differ, reflecting the distinct requirements of generating static versus dynamic visual content. The computation cost of the latter is also significantly higher.

#### Temporal Control
**Temporal control** in video generation is crucial for creating realistic and coherent sequences. It involves managing the evolution of scenes and characters over time, ensuring smooth transitions and consistent motion. Effective temporal control allows for the creation of videos with specific pacing and rhythm, essential for storytelling or conveying information clearly. Methods for achieving temporal control often involve techniques to maintain frame-to-frame consistency, prevent flickering, and manage long-range dependencies. **Advanced techniques** might use recurrent neural networks or transformers to model the temporal dynamics of the video, while simpler methods could focus on enforcing consistency between adjacent frames. Furthermore, users should have intuitive ways to influence the temporal aspects of the generated video, such as specifying the duration of events or the speed of actions, for better control.

#### No S2V Dataset
**The core challenge in subject-driven video generation (S2V) lies in the scarcity of large, annotated video datasets.** Current S2V methods often rely on extensive video data with subject-specific annotations, which are expensive and time-consuming to create. This lack of readily available, high-quality S2V datasets hinders the development of more generalizable and robust S2V models. Furthermore, the absence of a standardized, large-scale public S2V dataset restricts progress in the field, making it difficult to compare and reproduce results across different studies. **Therefore, a key focus in S2V research should be on developing data-efficient methods that can leverage existing image customization datasets or explore novel techniques for generating synthetic video data with accurate subject annotations.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.17816/x3.png)

> 🔼 This figure illustrates the proposed framework for subject-driven video generation. The framework decouples the task into two main components: identity injection and temporal awareness preservation.  The left side shows the factorization of the subject-driven video customization (S2V) into these two components. Identity injection leverages an image customization dataset to inject subject-specific features, while temporal awareness preservation uses a separate, small set of unpaired videos to maintain temporal coherence. The right side depicts the stochastically-switched fine-tuning process, which randomly switches between optimizing the identity injection and temporal awareness objectives during training. This approach mitigates catastrophic forgetting, enabling the model to effectively learn both subject identity and temporal dynamics simultaneously.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our framework. We factorize the subject-driven video customization (S2V) into temporal-awareness preservation and ID injection (Left). To optimize the two objectives, we utilize stochastically-switched finetuning, randomly switching between two training objectives (Right).
> </details>



![](https://arxiv.org/html/2504.17816/x4.png)

> 🔼 Figure 3 presents a qualitative comparison of several video generation methods on the DreamBooth dataset.  The figure showcases the results from four different approaches: Ours, OmniControl + I2V, Vidu 2.0, and VideoBooth, for two different prompts. Each row demonstrates how effectively the method preserves subject identity and generates temporally coherent video while accurately representing specified scene details.  Visual inspection allows for comparing the strengths and weaknesses of each approach in terms of subject identity consistency and motion quality.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison on Dreambooth dataset.
> </details>



![](https://arxiv.org/html/2504.17816/x5.png)

> 🔼 This figure presents a qualitative comparison of video generation results between the proposed method and the Still-Moving method [8].  For each row, a reference image and text prompt are given.  The left column shows the results produced by the Still-Moving method, while the right column displays the results obtained using the proposed method.  The examples highlight differences in subject identity preservation, motion detail, and overall visual quality between the two methods.  The comparison focuses on the ability of each method to accurately reproduce the subject's characteristics and to generate temporally consistent and realistic motion.
> <details>
> <summary>read the caption</summary>
> Figure 4: Several examples of qualitative comparison with Still-Moving [8] (left) and ours (right).
> </details>



![](https://arxiv.org/html/2504.17816/x6.png)

> 🔼 This figure shows the results of an ablation study evaluating the impact of different training strategies on the temporal awareness preservation component of the proposed model.  It compares three approaches: using only image data for training, using a two-stage training process (image data followed by video data), and the authors' proposed stochastically-switched approach that combines image and video data training. The results are presented in terms of the generated videos' characteristics, demonstrating the effectiveness of the stochastically-switched method in maintaining temporal coherence while accurately representing the subject identity.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative result on ablation study of our component in temporal awareness preservance.
> </details>



![](https://arxiv.org/html/2504.17816/x7.png)

> 🔼 This figure shows the effects of two regularization techniques: random initial frame selection and image token dropping, used during image-to-video (I2V) fine-tuning in the proposed framework.  The leftmost column shows the results without using these techniques, leading to the model heavily relying on the first frame, resulting in repetitive and unnatural video sequences. The middle column shows the results when only random initial frame selection is applied. The rightmost column depicts the results when both random initial frame selection and image token dropping are employed. The image demonstrates that the proposed techniques effectively enhance video generation by mitigating the over-reliance on the first frame and producing more dynamic and diverse motion results.
> <details>
> <summary>read the caption</summary>
> Figure 6: Effect of random initial frame and image token dropping.
> </details>



![](https://arxiv.org/html/2504.17816/x8.png)

> 🔼 Figure 7 presents a qualitative comparison of video generation results from the proposed method against three baselines: VideoBooth, Vidu 2.0, and OmniControl + I2V.  Two example scenarios are shown: a toy car on a wet street at night and a teddy bear in a bathtub.  The comparison highlights the ability of the proposed method to generate higher-quality videos with improved subject identity preservation and more natural motion compared to the baselines. 
> <details>
> <summary>read the caption</summary>
> Figure 7: Additional qualitative result. Comparison with other baselines.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.2.1.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1.1">Training Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.2.1">Motion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.3.1">Dynamic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.4" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.4.1">CLIP-T</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.5" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.5.1">CLIP-I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.1.1.1.6" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.6.1">DINO-I</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.2.2.1.1">Smoothness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T2.2.1.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.2.2.2.1">Degree</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.1.3.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Image-only</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">99.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">32.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">71.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.3.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">43.19</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.1.4.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Two-stage</th>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">96.04</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">81.51</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">28.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">84.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.2.6" style="padding-left:2.0pt;padding-right:2.0pt;">76.13</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.2.1.5.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.1.5.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">98.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.1.5.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">60.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.1.5.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">32.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.1.5.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">73.70</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.2.1.5.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">59.29</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study comparing three different training strategies for a subject-driven video generation model: image-only training, a two-stage training approach, and the proposed stochastically-switched training method.  The metrics evaluated include motion smoothness, dynamic degree, CLIP-T (textual similarity), CLIP-I (image similarity), and DINO-I (identity preservation). The goal is to determine which training strategy best balances subject identity preservation with realistic and dynamic motion generation.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation result on training strategy of alternating optimization with image-only and two-stage training approaches.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.4.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1">Small<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2.2">Medium<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3.3">Large<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.4.4.4.1">CogVideoX<math alttext="\dagger" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><mo id="S4.T3.4.4.4.1.m1.1.1" xref="S4.T3.4.4.4.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">†</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.4.4.2">597.54</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.4.4.3">594.26</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.4.4.4.4">573.86</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.4.5.1.1">Image-only</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.2">641.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.3">636.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5.1.4">680.34</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.4.6.2.1">Two-stage</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2.2">801.97</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2.3">872.30</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.6.2.4">824.03</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.4.4.7.3.1">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.4.7.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.7.3.2.1">512.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.7.3.3.1">511.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.4.7.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.7.3.4.1">550.14</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the temporal quality of videos generated by different methods.  It specifically measures the Fréchet Video Distance (FVD), a metric evaluating the realism and fidelity of motion in generated videos, across three levels of motion complexity: small, medium, and large. The methods being compared include the proposed model and baseline models (image-only and two-stage training).  The results show how each method performs across different video motion characteristics, highlighting the effectiveness of the proposed method. The CogVideoX model is used as a pre-trained baseline model, and it is further fine-tuned using Pexels dataset for this comparison.
> <details>
> <summary>read the caption</summary>
> Table 3: Temporal Evaluation following FloVD [23], assessing whether motion dynamics improve compared to image-only or two-stage training. Small - Medium - Large - with each number representing FVD. ††\dagger† denotes Pexels [1]-finetuned version of CogVideoX [44].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.2.1.1.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.1.2.1">ID</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.1.3.1">Prompt</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.1.4.1">Motion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.1.5.1">Overall</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.1.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.2.1.1">Consistency</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.1.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.2.2.1">Alignment</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.1.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.2.3.1">Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T4.2.1.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.2.4.1">Quality</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.1.3.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Omini+I2V</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">3.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">3.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">3.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.3.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">3.44</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.1.4.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">VideoBooth</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">3.25</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">3.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">3.08</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.4.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">2.91</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.1.5.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Vidu 2.0</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">3.42</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">3.24</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">3.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">3.03</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.2.1.6.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">Ours</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.2.1.6.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.6.4.2.1">4.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.2.1.6.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.6.4.3.1">3.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.2.1.6.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.6.4.4.1">3.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.2.1.6.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.6.4.5.1">3.71</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a human preference study evaluating the quality of videos generated by different methods.  Participants rated videos on a Likert scale (1-5) across four dimensions: ID Consistency (how well the subject's identity is maintained), Prompt Alignment (how well the generated video matches the text prompt), Motion Quality (how realistic and natural the motion in the video appears), and Overall Quality (an overall assessment of the video's quality).  The scores provide a human perspective on the relative strengths and weaknesses of different video generation techniques, supplementing objective quantitative evaluations.
> <details>
> <summary>read the caption</summary>
> Table 4: Result on human preference study in Likert scale of 1-5.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T5.2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.1.1" style="font-size:144%;">Training Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.2.1" style="font-size:144%;">Motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.3.1" style="font-size:144%;">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.4.1" style="font-size:144%;">CLIP-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.5.1" style="font-size:144%;">CLIP-I</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.2.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.1.1.6.1" style="font-size:144%;">DINO-I</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.2.2">
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.2.2.1.1" style="font-size:144%;">Smoothness</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.2.2.2.1" style="font-size:144%;">Degree</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.2.1.3.3.1"><span class="ltx_text" id="A1.T5.2.1.3.3.1.1" style="font-size:144%;">w/o Ref. token</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.3.3.2"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.3.3.2.1" style="font-size:144%;">98.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.3.3.3"><span class="ltx_text" id="A1.T5.2.1.3.3.3.1" style="font-size:144%;">54.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.3.3.4"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.3.3.4.1" style="font-size:144%;">32.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.3.3.5"><span class="ltx_text" id="A1.T5.2.1.3.3.5.1" style="font-size:144%;">73.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.2.1.3.3.6"><span class="ltx_text" id="A1.T5.2.1.3.3.6.1" style="font-size:144%;">57.51</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T5.2.1.4.4.1"><span class="ltx_text" id="A1.T5.2.1.4.4.1.1" style="font-size:144%;">w/ Ref. token</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.2.1.4.4.2"><span class="ltx_text" id="A1.T5.2.1.4.4.2.1" style="font-size:144%;">98.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.2.1.4.4.3"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.4.4.3.1" style="font-size:144%;">60.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.2.1.4.4.4"><span class="ltx_text" id="A1.T5.2.1.4.4.4.1" style="font-size:144%;">32.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.2.1.4.4.5"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.4.4.5.1" style="font-size:144%;">73.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.2.1.4.4.6"><span class="ltx_text ltx_font_bold" id="A1.T5.2.1.4.4.6.1" style="font-size:144%;">59.29</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of using a special  `<CLS>` token in the model's input.  The table compares model performance with and without the `<CLS>` token across various metrics: motion smoothness, dynamic degree, and subject identity scores (CLIP-I and DINO-I). The results show that adding the `<CLS>` token improves both subject identity and dynamic range in the generated videos.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on the reference token. Adding <CLS> yields improved subject identity scores (CLIP-I, DINO-I) and a higher dynamic degree.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T6.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T6.2.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.1.1" style="font-size:144%;">Training Method</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.2.1" style="font-size:144%;">Motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.3.1" style="font-size:144%;">Dynamic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.4.1" style="font-size:144%;">CLIP-T</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.5.1" style="font-size:144%;">CLIP-I</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.1.1.6.1" style="font-size:144%;">DINO-I</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.2.2">
<td class="ltx_td ltx_align_center" id="A1.T6.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.2.2.1.1" style="font-size:144%;">Smoothness</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.2.2.2.1" style="font-size:144%;">Degree</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T6.2.1.3.3.1"><span class="ltx_text" id="A1.T6.2.1.3.3.1.1" style="font-size:144%;">T2I + T2V (joint)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.3.3.2"><span class="ltx_text" id="A1.T6.2.1.3.3.2.1" style="font-size:144%;">98.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.3.3.3"><span class="ltx_text" id="A1.T6.2.1.3.3.3.1" style="font-size:144%;">44.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.3.3.4"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.3.3.4.1" style="font-size:144%;">33.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.3.3.5"><span class="ltx_text" id="A1.T6.2.1.3.3.5.1" style="font-size:144%;">72.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.2.1.3.3.6"><span class="ltx_text" id="A1.T6.2.1.3.3.6.1" style="font-size:144%;">48.68</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.4.1"><span class="ltx_text" id="A1.T6.2.1.4.4.1.1" style="font-size:144%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.4.2"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.4.4.2.1" style="font-size:144%;">98.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.4.3"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.4.4.3.1" style="font-size:144%;">60.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.4.4"><span class="ltx_text" id="A1.T6.2.1.4.4.4.1" style="font-size:144%;">32.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.4.5"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.4.4.5.1" style="font-size:144%;">73.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.2.1.4.4.6"><span class="ltx_text ltx_font_bold" id="A1.T6.2.1.4.4.6.1" style="font-size:144%;">59.29</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two different fine-tuning methods for video generation: the proposed method (Ours) which uses a combination of image and video data, and a method that only uses text-to-video (T2V) data. The comparison is made using several metrics including motion smoothness, dynamic degree, and CLIP-T and CLIP-I scores (which evaluate text and image similarity).  The results show that while the T2V-only approach slightly improves CLIP-T scores (text alignment), it significantly reduces subject fidelity (CLIP-I and DINO-I scores) and dynamic degree, highlighting the importance of using both image and video data for optimal performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison with T2V-only stochastically-switched finetuning, with image drop probaiblity of 1. Switching to text-only input (T2V) moderately boosts CLIP-T but hurts subject fidelity and dynamic degree.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T7.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T7.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.1.1" style="font-size:144%;">Video</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.2.1" style="font-size:144%;">Motion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.3.1" style="font-size:144%;">Dynamic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.4.1" style="font-size:144%;">CLIP-T</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.5.1" style="font-size:144%;">CLIP-I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T7.2.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.1.1.6.1" style="font-size:144%;">DINO-I</span></th>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A1.T7.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.2.1.1" style="font-size:144%;">Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T7.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.2.2.1" style="font-size:144%;">Smoothness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T7.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T7.2.1.2.2.3.1" style="font-size:144%;">Degree</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.2.1.3.1.1"><span class="ltx_text" id="A1.T7.2.1.3.1.1.1" style="font-size:144%;">1K</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.3.1.2"><span class="ltx_text" id="A1.T7.2.1.3.1.2.1" style="font-size:144%;">99.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.3.1.3"><span class="ltx_text" id="A1.T7.2.1.3.1.3.1" style="font-size:144%;">59.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.3.1.4"><span class="ltx_text" id="A1.T7.2.1.3.1.4.1" style="font-size:144%;">32.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.3.1.5"><span class="ltx_text" id="A1.T7.2.1.3.1.5.1" style="font-size:144%;">72.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.2.1.3.1.6"><span class="ltx_text" id="A1.T7.2.1.3.1.6.1" style="font-size:144%;">56.98</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.2.1.4.2.1"><span class="ltx_text" id="A1.T7.2.1.4.2.1.1" style="font-size:144%;">2K</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.4.2.2"><span class="ltx_text" id="A1.T7.2.1.4.2.2.1" style="font-size:144%;">98.96</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.4.2.3"><span class="ltx_text" id="A1.T7.2.1.4.2.3.1" style="font-size:144%;">52.25</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.4.2.4"><span class="ltx_text" id="A1.T7.2.1.4.2.4.1" style="font-size:144%;">32.49</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.4.2.5"><span class="ltx_text" id="A1.T7.2.1.4.2.5.1" style="font-size:144%;">72.13</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.4.2.6"><span class="ltx_text" id="A1.T7.2.1.4.2.6.1" style="font-size:144%;">54.42</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.2.1.5.3.1"><span class="ltx_text" id="A1.T7.2.1.5.3.1.1" style="font-size:144%;">3K</span></th>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.5.3.2"><span class="ltx_text" id="A1.T7.2.1.5.3.2.1" style="font-size:144%;">98.79</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.5.3.3"><span class="ltx_text" id="A1.T7.2.1.5.3.3.1" style="font-size:144%;">55.46</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.5.3.4"><span class="ltx_text" id="A1.T7.2.1.5.3.4.1" style="font-size:144%;">32.04</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.5.3.5"><span class="ltx_text" id="A1.T7.2.1.5.3.5.1" style="font-size:144%;">72.79</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.1.5.3.6"><span class="ltx_text" id="A1.T7.2.1.5.3.6.1" style="font-size:144%;">55.57</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T7.2.1.6.4.1"><span class="ltx_text" id="A1.T7.2.1.6.4.1.1" style="font-size:144%;">4K (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.2.1.6.4.2"><span class="ltx_text" id="A1.T7.2.1.6.4.2.1" style="font-size:144%;">98.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.2.1.6.4.3"><span class="ltx_text" id="A1.T7.2.1.6.4.3.1" style="font-size:144%;">60.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.2.1.6.4.4"><span class="ltx_text" id="A1.T7.2.1.6.4.4.1" style="font-size:144%;">32.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.2.1.6.4.5"><span class="ltx_text" id="A1.T7.2.1.6.4.5.1" style="font-size:144%;">73.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.2.1.6.4.6"><span class="ltx_text" id="A1.T7.2.1.6.4.6.1" style="font-size:144%;">59.29</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of varying the size of the unpaired video dataset used for image-to-video (I2V) fine-tuning in a subject-driven video generation model.  It shows how model performance, specifically motion smoothness, dynamic degree, and the CLIP and DINO similarity scores, changes with the use of 1K, 2K, 3K, and 4K videos. This helps assess how much unlabeled video data is necessary for effective temporal modeling and preservation of the subject's identity in the generated videos.
> <details>
> <summary>read the caption</summary>
> Table 7: Abalation study on using different number of videos.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T8.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T8.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T8.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.1.1.1.1" style="font-size:144%;">Video</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.1.1.2.1" style="font-size:144%;">Motion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.1.1.3.1" style="font-size:144%;">Dynamic</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.2.1.1.1.4" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.1.1.4.1" style="font-size:144%;">CLIP-T</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.2.1.1.1.5" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.1.1.5.1" style="font-size:144%;">CLIP-I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T8.2.1.1.1.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.1.1.6.1" style="font-size:144%;">DINO-I</span></th>
</tr>
<tr class="ltx_tr" id="A1.T8.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A1.T8.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.2.2.1.1" style="font-size:144%;">Ratio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T8.2.1.2.2.2"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.2.2.2.1" style="font-size:144%;">Smoothness</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A1.T8.2.1.2.2.3"><span class="ltx_text ltx_font_bold" id="A1.T8.2.1.2.2.3.1" style="font-size:144%;">Degree</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T8.2.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T8.2.1.3.1.1"><span class="ltx_text" id="A1.T8.2.1.3.1.1.1" style="font-size:144%;">0.0</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.1.3.1.2"><span class="ltx_text" id="A1.T8.2.1.3.1.2.1" style="font-size:144%;">99.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.1.3.1.3"><span class="ltx_text" id="A1.T8.2.1.3.1.3.1" style="font-size:144%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.1.3.1.4"><span class="ltx_text" id="A1.T8.2.1.3.1.4.1" style="font-size:144%;">32.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.1.3.1.5"><span class="ltx_text" id="A1.T8.2.1.3.1.5.1" style="font-size:144%;">71.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T8.2.1.3.1.6"><span class="ltx_text" id="A1.T8.2.1.3.1.6.1" style="font-size:144%;">43.19</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.2.1.4.2.1"><span class="ltx_text" id="A1.T8.2.1.4.2.1.1" style="font-size:144%;">0.2 (Ours)</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.4.2.2"><span class="ltx_text" id="A1.T8.2.1.4.2.2.1" style="font-size:144%;">98.72</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.4.2.3"><span class="ltx_text" id="A1.T8.2.1.4.2.3.1" style="font-size:144%;">60.19</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.4.2.4"><span class="ltx_text" id="A1.T8.2.1.4.2.4.1" style="font-size:144%;">32.24</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.4.2.5"><span class="ltx_text" id="A1.T8.2.1.4.2.5.1" style="font-size:144%;">73.70</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.4.2.6"><span class="ltx_text" id="A1.T8.2.1.4.2.6.1" style="font-size:144%;">59.29</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T8.2.1.5.3.1"><span class="ltx_text" id="A1.T8.2.1.5.3.1.1" style="font-size:144%;">0.4</span></th>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.5.3.2"><span class="ltx_text" id="A1.T8.2.1.5.3.2.1" style="font-size:144%;">98.31</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.5.3.3"><span class="ltx_text" id="A1.T8.2.1.5.3.3.1" style="font-size:144%;">59.12</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.5.3.4"><span class="ltx_text" id="A1.T8.2.1.5.3.4.1" style="font-size:144%;">31.94</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.5.3.5"><span class="ltx_text" id="A1.T8.2.1.5.3.5.1" style="font-size:144%;">73.53</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.1.5.3.6"><span class="ltx_text" id="A1.T8.2.1.5.3.6.1" style="font-size:144%;">56.60</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.2.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T8.2.1.6.4.1"><span class="ltx_text" id="A1.T8.2.1.6.4.1.1" style="font-size:144%;">0.6</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.2.1.6.4.2"><span class="ltx_text" id="A1.T8.2.1.6.4.2.1" style="font-size:144%;">98.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.2.1.6.4.3"><span class="ltx_text" id="A1.T8.2.1.6.4.3.1" style="font-size:144%;">60.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.2.1.6.4.4"><span class="ltx_text" id="A1.T8.2.1.6.4.4.1" style="font-size:144%;">31.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.2.1.6.4.5"><span class="ltx_text" id="A1.T8.2.1.6.4.5.1" style="font-size:144%;">76.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T8.2.1.6.4.6"><span class="ltx_text" id="A1.T8.2.1.6.4.6.1" style="font-size:144%;">62.84</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the impact of varying the switching probability ('p') during the training process of the proposed subject-driven video generation model. The switching probability determines the likelihood of using image-to-video (I2V) fine-tuning versus identity injection during training.  Different values of 'p' were tested (0.0, 0.2, 0.4, 0.6), each representing a different balance between identity injection and temporal awareness preservation. The table shows how the model's performance on various metrics (motion smoothness, dynamic degree, CLIP-T, CLIP-I, DINO-I) changes with different switching probabilities. This helps to analyze the optimal balance between identity preservation and temporal modeling for improved subject-driven video generation.
> <details>
> <summary>read the caption</summary>
> Table 8: Abalation study on using different ’p’ to choose I2V finetuning.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.17816/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.17816/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}