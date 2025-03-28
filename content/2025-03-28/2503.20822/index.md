---
title: "Synthetic Video Enhances Physical Fidelity in Video Synthesis"
summary: "Synthetic data can enhance the physical realism of video synthesis, paving the way for more believable generated content."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 ByteDance Seed",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20822 {{< /keyword >}}
{{< keyword icon="writer" >}} Qi Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20822" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20822" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20822/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Video generation models struggle with physical fidelity, limiting their use in applications demanding realistic physics. Using synthetic videos addresses this gap. These videos, rendered via computer graphics, inherently respect real-world physics, such as 3D consistency. The study investigates how integrating such synthetic data enhances physical fidelity, focusing on human motion, camera rotation, and layer decomposition. 



The solution involves curating and integrating synthetic data. At the data level, the study constructs a synthetic video pipeline offering diverse assets and animations. To mitigate rendering artifacts, they propose **SimDrop**, training a reference model to capture visual patterns of synthetic data. Experiments show significant improvements in reducing collapse in human motion and enhancing 3D consistency under camera movements.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Synthetic video enhances physical fidelity in video synthesis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CGI pipelines can generate high-quality, physically consistent video content at scale. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Incorporating synthetic video data can improve the physical fidelity of video generation models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This study pioneers **a novel data-centric strategy for enhancing video generation** by integrating synthetic data. It paves the way for future investigations into **how synthetic data can address the challenge of physical fidelity** and can potentially shift the focus towards data engineering.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/simulation_main_vis-v3.png)

> 🔼 Figure 1 showcases the capabilities of a novel video generation model enhanced with synthetic data.  The figure presents three rows of video examples, each demonstrating a different aspect of the model's capabilities. Row 1 displays videos of humans dancing, highlighting the model's ability to generate realistic human motion. Row 2 shows scenes with a large camera orbiting around an object, demonstrating the model's capacity to handle complex camera movements while maintaining 3D consistency. Row 3 features examples of animals against solid-color backgrounds, showcasing the model's performance on the challenging task of video matting, preparing the generated videos for seamless integration with other footage or backgrounds.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our synthetic-data-enhanced video generation model is capable of producing videos depicting human dancing (rows 1), scenes featuring large camera orbiting around the object (row 2), and animals against solid-color backgrounds for matting (row 3).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.2">
<tr class="ltx_tr" id="S3.T1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.2.1.1"><span class="ltx_text" id="S3.T1.2.1.1.1" style="font-size:90%;">Training Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.1.2"><span class="ltx_text" id="S3.T1.2.1.2.1" style="font-size:90%;">Human Motion Collapse Rate</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.2.1"><span class="ltx_text" id="S3.T1.2.2.1.1" style="font-size:90%;">(a) Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2"><span class="ltx_text" id="S3.T1.2.2.2.1" style="font-size:90%;">87%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.3.1"><span class="ltx_text" id="S3.T1.2.3.1.1" style="font-size:90%;">(b) Forward shot only</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.2"><span class="ltx_text" id="S3.T1.2.3.2.1" style="font-size:90%;">42%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.2.4.1"><span class="ltx_text" id="S3.T1.2.4.1.1" style="font-size:90%;">(c) Forward + following shot</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.2.4.2"><span class="ltx_text" id="S3.T1.2.4.2.1" style="font-size:90%;">23%</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an experiment evaluating the impact of different camera configurations on the success rate of video generation.  The experiment tested three different setups: (a) randomly chosen camera configurations, (b) camera configurations only using forward shots, and (c) camera configurations using both forward and following shots. The table shows that the success rate is significantly higher when camera configurations align with how cameras are typically used in real-world scenarios.  The high failure rate with random and forward-only setups highlights the importance of using real-world camera techniques for successful video generation.
> <details>
> <summary>read the caption</summary>
> Table 1: Randomly chosen camera configurations (a-b) lead to high collapse rate for generated videos. Using configuration (c) aligning with the real world greatly reduce the rate.
> </details>





### In-depth insights


#### Synthetic Data++
While 'Synthetic Data++' isn't present, I can discuss its implications. It suggests a leap beyond basic synthetic data, implying enhanced realism, diversity, and control. This could involve **advanced rendering techniques** to bridge the reality gap, **procedural generation** for vast datasets, and **AI-driven refinement** to mimic real-world complexities. Key benefits include addressing data scarcity, enabling precise control over data distribution, and mitigating privacy concerns. Challenges involve ensuring the synthetic data truly reflects target scenarios, avoiding bias amplification, and validating the models trained with such data. The "++" signifies a concerted effort to overcome limitations of earlier synthetic data approaches. Such advancement could fuel progress in diverse fields where data is a bottleneck.

#### Physics via CGI
The notion of "Physics via CGI" suggests leveraging computer-generated imagery (CGI) to understand and replicate physical phenomena. This approach offers several advantages, including precise control over experimental conditions, the ability to visualize complex systems, and the potential to generate vast datasets for training AI models. **CGI enables the creation of simulated environments where physical laws can be explicitly defined and manipulated**, allowing researchers to test hypotheses and explore scenarios that would be impossible or impractical in the real world. Furthermore, CGI can visualize intricate physical processes, such as fluid dynamics or electromagnetic fields, providing valuable insights into their behavior. **The realism of CGI-based simulations is crucial for their effectiveness**, requiring accurate modeling of materials, lighting, and interactions. Moreover, the computational cost of high-fidelity simulations can be significant, necessitating efficient algorithms and hardware. **The rise of AI and machine learning offers new opportunities for using CGI in physics research**, with simulated datasets serving as training data for models that can predict physical phenomena or optimize experimental designs.

#### SimDrop Strategy
The SimDrop strategy appears to be a method designed to **mitigate the introduction of unwanted artifacts** during the training of video generation models using synthetic data. It leverages the concept of **classifier-free guidance** to steer the generation process towards the overlapping distribution of real and synthetic videos. A reference model, trained specifically on synthetic data but with captions that omit the desired aspects (e.g., human motion), is used to capture unique patterns and artifacts associated with the rendering engine. This reference model then works in tandem with the main generation model to **remove visual artifacts while preserving physical fidelity** during the inference stage, allowing the model to generate high quality videos. It helps the model to distinguish the specific characteristics of synthetic data and real data, resulting to generating realistic outputs. By training a synthetic reference model and properly guiding the synthetic and the real model can improve the performance.

#### CGI Data Key
While the provided document doesn't explicitly mention a heading titled 'CGI Data Key,' we can infer its relevance based on the paper's content, which emphasizes leveraging **synthetically generated video** to enhance physical fidelity in video synthesis models. The 'CGI Data Key', in this context, represents the critical elements and strategies for creating and utilizing synthetic data effectively. This includes aspects like diverse scene configurations, asset selection (**high-quality 3D assets**), animation, camera movements, varied environments and illumination. Also, it is significant to capture the essence of data curation and integration. Further, the key also is in the **proper blending** with its real counterparts.

#### More Physics?
The notion of 'More Physics?' in video synthesis implies a need to go beyond mere visual plausibility. Current models often generate visually appealing content but fail to adhere to fundamental physical laws, such as object permanence, consistent 3D structure, and realistic dynamics. **Future research** could explore incorporating explicit physical simulation or leveraging physics engines during the training process. This could involve training models to predict physical properties or constraints, or using simulations to generate training data that inherently respects physical laws. **Integrating modalities** beyond RGB, like depth or normals, could also provide valuable cues for physics-aware synthesis. Ultimately, achieving true 'More Physics?' means building models that generate not just visually convincing videos, but physically plausible and consistent ones.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/appearance-gap.png)

> 🔼 This figure illustrates the process of integrating synthetic video data into a video generation model to enhance the model's understanding of physics.  The pipeline begins by planning synthetic videos and assigning descriptive tags to their components (objects, characters, motions, etc.). These descriptions are then combined to create captions for the synthetic videos.  Finally, the synthetic videos and their captions are integrated with real-world video data during model training. This process is designed to improve physical realism in the model's output, particularly for complex video generation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Visualization of the pipeline to augment video generation model with synthetic video data. We first plan the synthetic videos and generation descriptive tags for each elements (e.g. object, character, motion, etc). Then we combine the element descriptions to form the caption for synthetic videos. During training, we mix the synthetic videos with real-world video data to improve physics fidelity in challenging video generation tasks.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/shadow_visualization.png)

> 🔼 This figure visualizes examples of synthetic videos generated using different qualities of 3D assets and rendering techniques.  Subfigure (a) compares videos created with high-quality 3D assets against those with low-quality assets, showcasing the visual impact of asset quality on the realism of the final video. Subfigure (b) demonstrates the effect of rendering quality on the synthetic videos, showing differences between high-quality and low-quality renderings, and their impact on the overall visual fidelity. These visual comparisons highlight the importance of both high-quality 3D assets and rendering techniques to bridge the appearance gap between synthetic and real-world videos, essential for effectively training video generation models using synthetic data.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualizations of synthetic videos highlighting both good- and poor-quality 3D assets (a) and rendering (b).
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/figures/wireframe_v2.jpg)

> 🔼 Figure 4 presents video results generated by a video generation model enhanced with synthetic training data.  The figure is organized into six rows, each showcasing different video generation capabilities. Rows 1 and 2 demonstrate the model's ability to handle wide-angle camera motion, showing smooth transitions and consistent object representation despite large camera movements.  Row 3 illustrates the model's successful layer decomposition, cleanly separating foreground elements (objects and subjects) from the background, even when presented with complex scenes. Rows 4, 5, and 6 focus on the generation of large human motions, showcasing the model's ability to generate realistic and physically consistent human movements without artifacts or distortions even during extreme motion.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualizations of the videos generated by our improved model, trained using synthetic data. Rows 1,2 highlight wide-angle camera motion; rows 3 display layer decomposition; and rows 4,5,6 demonstrate large human motion.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/diversebg_v2.jpg)

> 🔼 This figure displays several frames from videos showcasing large human motions generated by the proposed model.  The key takeaway is that the model accurately generates realistic shadows that dynamically move and change shape in response to the human body's movements. This demonstrates an improvement in the physical fidelity of the model's output, a crucial aspect of realistic video generation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization of video frames with large human motion generated by our model. The shadow of human body follows the human motion.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/bad_asset_affect_layer.png)

> 🔼 Figure 6 shows the 3D scene setups in Blender and Unreal Engine, two popular computer graphics software packages.  The left column displays wireframe representations of the 3D scenes, illustrating the object, camera placement, and lighting configurations.  The right column presents the resulting rendered images that are produced based on the specified setup in the left column. This visualization helps to illustrate how the parameters used in the scene setup (as detailed in the paper) impact the final rendered output, emphasizing the configurability and control offered by these CGI pipelines.
> <details>
> <summary>read the caption</summary>
> Figure 6: 3D scene setup in Blender and Unreal Engine. The wireframes and corresponding rendering outputs.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/bad_asset_affect_spin.png)

> 🔼 Figure 7 showcases examples of synthetic video data generated using diverse backgrounds.  The diversity in backgrounds aims to mitigate potential biases that might arise from using only a limited set of backgrounds during the training process, which can result in the model overfitting to specific visual characteristics of the synthetic data and not generalizing well to real-world videos.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples of our synthetic video data. We render the synthetic videos with diverse background to alleviate the potential biases in synthetic videos.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/overtrained.png)

> 🔼 This figure showcases the negative impact of using low-quality synthetic data for training video generation models.  The images demonstrate that models trained on these datasets produce videos where the generated objects have an unrealistic, cartoonish, or animated appearance. This differs significantly from the intended, more photorealistic visual style.
> <details>
> <summary>read the caption</summary>
> Figure 8: Example outputs from video generation models trained on synthetic datasets with low-quality assets. The resulting objects frequently exhibit cartoonish or animated characteristics, diverging from the intended original visual style.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/caption-v2.png)

> 🔼 This figure visualizes the results of video generation models trained using synthetic data with low-quality assets.  The models were tasked with generating videos featuring large camera motions.  The generated videos of objects show a higher likelihood of appearing static or exhibiting unnatural, animated movements compared to videos generated with high-quality assets, highlighting the importance of high-quality synthetic data in training for physically accurate video generation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualization of generated outputs from video generation models trained with synthetic videos of low quality assets in large camera motion task. The objects in these generated videos more likely to appear static or animated.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/sim_drop1.png)

> 🔼 This figure demonstrates the negative impact of overtraining a video generation model using synthetic data.  When trained for excessive iterations, the model starts to incorporate artifacts from the training data, such as specific color palettes or visual styles, which are not reflective of real-world videos. The generated videos become less realistic due to overfitting. This highlights the importance of carefully balancing training with real and synthetic data to avoid overemphasizing the artificial features of the synthetic datasets.  The figure likely visually shows a series of videos generated after various training epochs, showcasing a progressive shift towards artificial visual patterns.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visualization of over training video generation models trained with synthetic videos. Visual patterns such as color tone are more likely to appear in generated videos.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/visualizations/sim_drop2.png)

> 🔼 This figure compares different captioning methods for synthetic videos.  The existing methods generate generic captions, while the proposed method generates fine-grained captions that provide more detailed descriptions of the video content, including specific actions and visual elements.  The figure also demonstrates the impact of adding 'special tags' to the captions, which help the model distinguish between synthetic and real videos, improving the transfer of physical fidelity from synthetic to real video generation.
> <details>
> <summary>read the caption</summary>
> Figure 11: A comparison of generating captions for synthetic videos using existing methods (Generic Caption) and our method (Fine-Grained Caption). We also show a comparison of captions with special tags and without special tags.
> </details>



![](https://arxiv.org/html/2503.20822/extracted/6306596/figures/layer_change_background_v4.jpg)

> 🔼 This figure compares video generation results with and without the SimDrop method.  The top row (Row 1) shows videos generated without SimDrop, exhibiting noticeable color inconsistencies and artifacts stemming from the synthetic training data. The bottom row (Row 2) displays videos generated using SimDrop.  SimDrop effectively mitigates these artifacts, resulting in videos with more natural and consistent color tones, demonstrating improved visual fidelity.
> <details>
> <summary>read the caption</summary>
> Figure 12: A comparison showcasing the effect of SimDrop. Row 1 is the result without SimDrop and Row 2 is the video with the method. The color tone in row two is significantly more better and without color pattern from the synthetic data.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.2">
<tr class="ltx_tr" id="S3.T2.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T2.2.1.1"><span class="ltx_text" id="S3.T2.2.1.1.1" style="font-size:80%;">Training Data</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.2.1.2"><span class="ltx_text" id="S3.T2.2.1.2.1" style="font-size:80%;">Gym</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.2.1.3"><span class="ltx_text" id="S3.T2.2.1.3.1" style="font-size:80%;">Layer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.1.4"><span class="ltx_text" id="S3.T2.2.1.4.1" style="font-size:80%;">Spin shot</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.2.2.1"><span class="ltx_text" id="S3.T2.2.2.1.1" style="font-size:80%;">Default</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.2.2"><span class="ltx_text" id="S3.T2.2.2.2.1" style="font-size:80%;">83.3%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.2.3"><span class="ltx_text" id="S3.T2.2.2.3.1" style="font-size:80%;">95%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.4"><span class="ltx_text" id="S3.T2.2.2.4.1" style="font-size:80%;">85%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.2.3.1"><span class="ltx_text" id="S3.T2.2.3.1.1" style="font-size:80%;">Low-quality asset</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.3.2"><span class="ltx_text" id="S3.T2.2.3.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.2.3.3"><span class="ltx_text" id="S3.T2.2.3.3.1" style="font-size:80%;">92.5%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.3.4"><span class="ltx_text" id="S3.T2.2.3.4.1" style="font-size:80%;">22.5%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T2.2.4.1"><span class="ltx_text" id="S3.T2.2.4.1.1" style="font-size:80%;">Low-cost rendering</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.2.4.2"><span class="ltx_text" id="S3.T2.2.4.2.1" style="font-size:80%;">41.7%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.2.4.3"><span class="ltx_text" id="S3.T2.2.4.3.1" style="font-size:80%;">17.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.4.4"><span class="ltx_text" id="S3.T2.2.4.4.1" style="font-size:80%;">-</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the success rates of video generation models trained with synthetic videos of varying asset and rendering quality.  The success rate indicates how well the physical fidelity of the synthetic videos transfers to the generated videos.  Low-quality assets or rendering significantly reduce the success rate, suggesting that high-fidelity synthetic data is crucial for effective training and achieving high physical realism in the generated videos.  The results highlight the importance of using high-quality assets and rendering techniques when creating synthetic training data for video generation models.
> <details>
> <summary>read the caption</summary>
> Table 2: Success rates illustrating how asset and rendering quality in synthetic videos affect physical fidelity. When asset or rendering quality is low, the physical fidelity in these synthetic videos is less likely to transfer effectively to video generation models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.6">
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T3.1.1.2.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1"><math alttext="\epsilon_{\mathrm{conf}}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><msub id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T3.1.1.1.m1.1.1.2.cmml">ϵ</mi><mi id="S4.T3.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.T3.1.1.1.m1.1.1.3.cmml">conf</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2">italic-ϵ</ci><ci id="S4.T3.1.1.1.m1.1.1.3.cmml" xref="S4.T3.1.1.1.m1.1.1.3">conf</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\epsilon_{\mathrm{conf}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_ϵ start_POSTSUBSCRIPT roman_conf end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.3"><span class="ltx_text" id="S4.T3.1.1.3.1" style="font-size:80%;">User Study</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.1">
<span class="ltx_text" id="S4.T3.2.2.1.1" style="font-size:80%;">Gym</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.1"><semantics id="S4.T3.2.2.1.m1.1a"><mo id="S4.T3.2.2.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.1b"><ci id="S4.T3.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.3.2">
<span class="ltx_text" id="S4.T3.3.3.2.1" style="font-size:80%;">Dance</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.2.m1.1"><semantics id="S4.T3.3.3.2.m1.1a"><mo id="S4.T3.3.3.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.3.3.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.2.m1.1b"><ci id="S4.T3.3.3.2.m1.1.1.cmml" xref="S4.T3.3.3.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.3">
<span class="ltx_text" id="S4.T3.4.4.3.1" style="font-size:80%;">Gym</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.3.m1.1"><semantics id="S4.T3.4.4.3.m1.1a"><mo id="S4.T3.4.4.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.4.4.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.3.m1.1b"><ci id="S4.T3.4.4.3.m1.1.1.cmml" xref="S4.T3.4.4.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.4">
<span class="ltx_text" id="S4.T3.5.5.4.1" style="font-size:80%;">Dance</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.4.m1.1"><semantics id="S4.T3.5.5.4.m1.1a"><mo id="S4.T3.5.5.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.5.5.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.4.m1.1b"><ci id="S4.T3.5.5.4.m1.1.1.cmml" xref="S4.T3.5.5.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.6.7.1">
<span class="ltx_text" id="S4.T3.6.7.1.1" style="font-size:80%;">Kling 1.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T3.6.7.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.2"><span class="ltx_text" id="S4.T3.6.7.2.1" style="font-size:80%;">0.715</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.6.7.3"><span class="ltx_text" id="S4.T3.6.7.3.1" style="font-size:80%;">0.812</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.4"><span class="ltx_text" id="S4.T3.6.7.4.1" style="font-size:80%;">10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.7.5"><span class="ltx_text" id="S4.T3.6.7.5.1" style="font-size:80%;">43%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_align_left" id="S4.T3.6.6.1">
<span class="ltx_text" id="S4.T3.6.6.1.1" style="font-size:80%;">Runway Gen-3</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T3.6.6.1.m1.1"><semantics id="S4.T3.6.6.1.m1.1a"><mi id="S4.T3.6.6.1.m1.1.1" mathsize="80%" xref="S4.T3.6.6.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.1.m1.1b"><ci id="S4.T3.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.1.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="S4.T3.6.6.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.6.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T3.6.6.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.2"><span class="ltx_text" id="S4.T3.6.6.2.1" style="font-size:80%;">0.672</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.6.3"><span class="ltx_text" id="S4.T3.6.6.3.1" style="font-size:80%;">0.809</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.4"><span class="ltx_text" id="S4.T3.6.6.4.1" style="font-size:80%;">4%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.5"><span class="ltx_text" id="S4.T3.6.6.5.1" style="font-size:80%;">14%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.8">
<td class="ltx_td ltx_align_left" id="S4.T3.6.8.1">
<span class="ltx_text" id="S4.T3.6.8.1.1" style="font-size:80%;">Sora </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.6.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S4.T3.6.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.2"><span class="ltx_text" id="S4.T3.6.8.2.1" style="font-size:80%;">0.722</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.8.3"><span class="ltx_text" id="S4.T3.6.8.3.1" style="font-size:80%;">0.813</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.4"><span class="ltx_text" id="S4.T3.6.8.4.1" style="font-size:80%;">15%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.8.5"><span class="ltx_text" id="S4.T3.6.8.5.1" style="font-size:80%;">44%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.9">
<td class="ltx_td ltx_align_left" id="S4.T3.6.9.1"><span class="ltx_text" id="S4.T3.6.9.1.1" style="font-size:80%;">Base Model</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.2"><span class="ltx_text" id="S4.T3.6.9.2.1" style="font-size:80%;">0.779</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.6.9.3"><span class="ltx_text" id="S4.T3.6.9.3.1" style="font-size:80%;">0.818</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.4"><span class="ltx_text" id="S4.T3.6.9.4.1" style="font-size:80%;">9%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.9.5"><span class="ltx_text" id="S4.T3.6.9.5.1" style="font-size:80%;">30%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.10">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.6.10.1"><span class="ltx_text" id="S4.T3.6.10.1.1" style="font-size:80%;">Our Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.10.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.10.2.1" style="font-size:80%;">0.791</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.6.10.3"><span class="ltx_text ltx_font_bold" id="S4.T3.6.10.3.1" style="font-size:80%;">0.837</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.10.4"><span class="ltx_text ltx_font_bold" id="S4.T3.6.10.4.1" style="font-size:80%;">61%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.10.5"><span class="ltx_text ltx_font_bold" id="S4.T3.6.10.5.1" style="font-size:80%;">86%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative and qualitative analysis of the large human motion generation task.  It shows the average confidence scores from human pose estimation, a metric measuring the realism and accuracy of human poses in generated videos.  Higher scores indicate better pose fidelity.  Additionally, it includes user study results, reflecting subjective assessments of the generated video quality. The user study data, expressed as percentages, likely represents the success rate of the model in generating realistic-looking human motions without artifacts. Comparing these metrics across different models allows for an evaluation of their performance regarding the physical realism and accuracy of generated human motions.
> <details>
> <summary>read the caption</summary>
> Table 3: The average confidence score of human pose estimation and user study results on the large human motion task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.8">
<tr class="ltx_tr" id="S4.T4.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T4.7.7.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.7.7.8.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\mathcal{N}\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mrow id="S4.T4.1.1.1.m1.1.1" xref="S4.T4.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T4.1.1.1.m1.1.1.2.cmml">𝒩</mi><mo id="S4.T4.1.1.1.m1.1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S4.T4.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1"><ci id="S4.T4.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1.1">↑</ci><ci id="S4.T4.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.m1.1.1.2">𝒩</ci><csymbol cd="latexml" id="S4.T4.1.1.1.m1.1.1.3.cmml" xref="S4.T4.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\mathcal{N}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">caligraphic_N ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;"><math alttext="\mathcal{T}\downarrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mrow id="S4.T4.2.2.2.m1.1.1" xref="S4.T4.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T4.2.2.2.m1.1.1.2" mathsize="80%" xref="S4.T4.2.2.2.m1.1.1.2.cmml">𝒯</mi><mo id="S4.T4.2.2.2.m1.1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.1.cmml">↓</mo><mi id="S4.T4.2.2.2.m1.1.1.3" xref="S4.T4.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><apply id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1"><ci id="S4.T4.2.2.2.m1.1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1.1">↓</ci><ci id="S4.T4.2.2.2.m1.1.1.2.cmml" xref="S4.T4.2.2.2.m1.1.1.2">𝒯</ci><csymbol cd="latexml" id="S4.T4.2.2.2.m1.1.1.3.cmml" xref="S4.T4.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\mathcal{T}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">caligraphic_T ↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">
<math alttext="\epsilon_{\mathrm{proj}}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><msub id="S4.T4.3.3.3.m1.1.1" xref="S4.T4.3.3.3.m1.1.1.cmml"><mi id="S4.T4.3.3.3.m1.1.1.2" mathsize="80%" xref="S4.T4.3.3.3.m1.1.1.2.cmml">ϵ</mi><mi id="S4.T4.3.3.3.m1.1.1.3" mathsize="80%" xref="S4.T4.3.3.3.m1.1.1.3.cmml">proj</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><apply id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.3.3.3.m1.1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T4.3.3.3.m1.1.1.2.cmml" xref="S4.T4.3.3.3.m1.1.1.2">italic-ϵ</ci><ci id="S4.T4.3.3.3.m1.1.1.3.cmml" xref="S4.T4.3.3.3.m1.1.1.3">proj</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\epsilon_{\mathrm{proj}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">italic_ϵ start_POSTSUBSCRIPT roman_proj end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m2.1"><semantics id="S4.T4.4.4.4.m2.1a"><mo id="S4.T4.4.4.4.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T4.4.4.4.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m2.1b"><ci id="S4.T4.4.4.4.m2.1.1.cmml" xref="S4.T4.4.4.4.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.6.6.6" style="padding-left:3.0pt;padding-right:3.0pt;">
<math alttext="\hat{\epsilon}_{\mathrm{proj}}" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><msub id="S4.T4.5.5.5.m1.1.1" xref="S4.T4.5.5.5.m1.1.1.cmml"><mover accent="true" id="S4.T4.5.5.5.m1.1.1.2" xref="S4.T4.5.5.5.m1.1.1.2.cmml"><mi id="S4.T4.5.5.5.m1.1.1.2.2" mathsize="80%" xref="S4.T4.5.5.5.m1.1.1.2.2.cmml">ϵ</mi><mo id="S4.T4.5.5.5.m1.1.1.2.1" mathsize="80%" xref="S4.T4.5.5.5.m1.1.1.2.1.cmml">^</mo></mover><mi id="S4.T4.5.5.5.m1.1.1.3" mathsize="80%" xref="S4.T4.5.5.5.m1.1.1.3.cmml">proj</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><apply id="S4.T4.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.5.5.5.m1.1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1">subscript</csymbol><apply id="S4.T4.5.5.5.m1.1.1.2.cmml" xref="S4.T4.5.5.5.m1.1.1.2"><ci id="S4.T4.5.5.5.m1.1.1.2.1.cmml" xref="S4.T4.5.5.5.m1.1.1.2.1">^</ci><ci id="S4.T4.5.5.5.m1.1.1.2.2.cmml" xref="S4.T4.5.5.5.m1.1.1.2.2">italic-ϵ</ci></apply><ci id="S4.T4.5.5.5.m1.1.1.3.cmml" xref="S4.T4.5.5.5.m1.1.1.3">proj</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">\hat{\epsilon}_{\mathrm{proj}}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">over^ start_ARG italic_ϵ end_ARG start_POSTSUBSCRIPT roman_proj end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T4.6.6.6.m2.1"><semantics id="S4.T4.6.6.6.m2.1a"><mo id="S4.T4.6.6.6.m2.1.1" mathsize="80%" stretchy="false" xref="S4.T4.6.6.6.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T4.6.6.6.m2.1b"><ci id="S4.T4.6.6.6.m2.1.1.cmml" xref="S4.T4.6.6.6.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.6.6.6.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.6.6.6.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.7.7.7" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.7.7.7.1" style="font-size:80%;">User Study</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.7.7.7.m1.1"><semantics id="S4.T4.7.7.7.m1.1a"><mo id="S4.T4.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.7.7.7.m1.1b"><ci id="S4.T4.7.7.7.m1.1.1.cmml" xref="S4.T4.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.8.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.8.9.1.1" style="font-size:80%;">Kling 1.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.8.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S4.T4.8.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.9.2.1" style="font-size:80%;">13,328</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.9.3.1" style="font-size:80%;">36.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.8.9.4.1" style="font-size:80%;">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.8.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.9.5.1" style="font-size:80%;">0.298</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.8.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.9.6.1" style="font-size:80%;">20%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.8">
<td class="ltx_td ltx_align_left" id="S4.T4.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.8.8.1.1" style="font-size:80%;">Runway Gen-3</span><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T4.8.8.1.m1.1"><semantics id="S4.T4.8.8.1.m1.1a"><mi id="S4.T4.8.8.1.m1.1.1" mathsize="80%" xref="S4.T4.8.8.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T4.8.8.1.m1.1b"><ci id="S4.T4.8.8.1.m1.1.1.cmml" xref="S4.T4.8.8.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.8.8.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T4.8.8.1.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="S4.T4.8.8.1.2" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.8.8.1.3.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S4.T4.8.8.1.4.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.8.2.1" style="font-size:80%;">13,199</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.8.3.1" style="font-size:80%;">36.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.8.4.1" style="font-size:80%;">1.181</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.8.5.1" style="font-size:80%;">0.361</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.8.6.1" style="font-size:80%;">26%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.10">
<td class="ltx_td ltx_align_left" id="S4.T4.8.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S4.T4.8.10.1.1" style="font-size:80%;">Sora </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T4.8.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S4.T4.8.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.10.2.1" style="font-size:80%;">14,443</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.10.3.1" style="font-size:80%;">33.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.10.4.1" style="font-size:80%;">1.244</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.10.5.1" style="font-size:80%;">0.318</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.10.6.1" style="font-size:80%;">25%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.11">
<td class="ltx_td ltx_align_left" id="S4.T4.8.11.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.11.1.1" style="font-size:80%;">Base Model</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.11.2.1" style="font-size:80%;">16,548</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.11.3.1" style="font-size:80%;">31.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.11.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.11.4.1" style="font-size:80%;">1.159</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.8.11.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.11.5.1" style="font-size:80%;">0.437</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.8.11.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.11.6.1" style="font-size:80%;">20%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.8.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.8.12.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.12.1.1" style="font-size:80%;">Our Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.12.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.8.12.2.1" style="font-size:80%;">42,895</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.12.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.8.12.3.1" style="font-size:80%;">12.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.12.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T4.8.12.4.1" style="font-size:80%;">1.077</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.8.12.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.8.12.5.1" style="font-size:80%;">0.135</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.8.12.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.8.12.6.1" style="font-size:80%;">80%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative and qualitative evaluation of different video generation models on the task of generating videos with large camera motions.  It assesses the physical fidelity of the generated videos by using 3D reconstruction metrics from COLMAP.  These metrics include the number of matched feature points (N), the average track length (T), and the average reprojection error (ϵproj).  A lower reprojection error indicates higher 3D consistency.  The table also includes a user study comparing the success rate of the various models in generating videos that accurately depict the intended camera motion and are free of artifacts. Note that two versions of the reprojection error are shown: one calculated using all feature points, and another that only uses the top 1000 points with the smallest error, which provides a more fair comparison of models with vastly different numbers of feature points. 
> <details>
> <summary>read the caption</summary>
> Table 4: 3D reconstruction metrics and user study results on the large camera motion task. Note that the re-projection error ϵprojsubscriptitalic-ϵproj\epsilon_{\mathrm{proj}}italic_ϵ start_POSTSUBSCRIPT roman_proj end_POSTSUBSCRIPT is computed over all extracted feature points, whereas ϵ^projsubscript^italic-ϵproj\hat{\epsilon}_{\mathrm{proj}}over^ start_ARG italic_ϵ end_ARG start_POSTSUBSCRIPT roman_proj end_POSTSUBSCRIPT only considers the 1,000 points with the smallest error in each case. The latter metric offers a fairer comparison for methods that produce a significantly higher volume of feature points.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.2">
<tr class="ltx_tr" id="S4.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.1.1.2">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1">Layer Decomposition<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.3.1">Kling-1.6 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.2">4%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2">
<td class="ltx_td ltx_align_left" id="S4.T5.2.2.1">Runway-gen3<math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T5.2.2.1.m1.1"><semantics id="S4.T5.2.2.1.m1.1a"><mi id="S4.T5.2.2.1.m1.1.1" xref="S4.T5.2.2.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.1.m1.1b"><ci id="S4.T5.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.1.m1.1d">italic_α</annotation></semantics></math> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2">1%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4">
<td class="ltx_td ltx_align_left" id="S4.T5.2.4.1">Sora <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.20822v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.2">4%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.5">
<td class="ltx_td ltx_align_left" id="S4.T5.2.5.1">Base Model</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.5.2">26%</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.2.6.1">Our Model</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.6.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.6.2.1">84%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a user study evaluating the performance of different video generation models on a layer decomposition task.  The task involved generating videos with a subject clearly separated from a solid-color background, a challenge often faced by video generation models.  The models compared include the authors' model (trained with and without synthetic data augmentation), along with several leading commercial video generation models and their original pre-trained model. The results are expressed as a percentage representing the success rate of each model in correctly performing the layer decomposition.  The data shows that the authors' model, when trained with synthetic data augmentation, significantly outperforms all other models tested, indicating the effectiveness of their proposed synthetic data integration method for enhancing physical fidelity in video generation.
> <details>
> <summary>read the caption</summary>
> Table 5: User study results on the layer decomposition task. With synthetic data augmentation, our model greatly outperforms leading commercial models and the original pretrained model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.3">
<tr class="ltx_tr" id="S4.T6.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T6.3.3.4"><span class="ltx_text" id="S4.T6.3.3.4.1" style="font-size:90%;">Caption Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T6.1.1.1">
<span class="ltx_text" id="S4.T6.1.1.1.1" style="font-size:90%;">Uprock</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T6.2.2.2">
<span class="ltx_text" id="S4.T6.2.2.2.1" style="font-size:90%;">Spin</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.m1.1a"><mo id="S4.T6.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.3.3">
<span class="ltx_text" id="S4.T6.3.3.3.1" style="font-size:90%;">Freeze</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.m1.1"><semantics id="S4.T6.3.3.3.m1.1a"><mo id="S4.T6.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.m1.1b"><ci id="S4.T6.3.3.3.m1.1.1.cmml" xref="S4.T6.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.3.4.1"><span class="ltx_text" id="S4.T6.3.4.1.1" style="font-size:90%;">a) Generic</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.3.4.2"><span class="ltx_text" id="S4.T6.3.4.2.1" style="font-size:90%;">2%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.3.4.3"><span class="ltx_text" id="S4.T6.3.4.3.1" style="font-size:90%;">16%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.4.4"><span class="ltx_text" id="S4.T6.3.4.4.1" style="font-size:90%;">0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T6.3.5.1"><span class="ltx_text" id="S4.T6.3.5.1.1" style="font-size:90%;">b) Fine-grained</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.3.5.2"><span class="ltx_text" id="S4.T6.3.5.2.1" style="font-size:90%;">98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.3.5.3"><span class="ltx_text" id="S4.T6.3.5.3.1" style="font-size:90%;">84%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.5.4"><span class="ltx_text" id="S4.T6.3.5.4.1" style="font-size:90%;">66%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the success rates achieved in generating human motion videos using different captioning methods.  The task is challenging because it involves creating videos of people performing complex dance moves, requiring a high degree of physical realism. Two captioning strategies are compared: generic captions, which provide general descriptions of the actions, and fine-grained captions, which provide more specific and detailed descriptions of the dance moves, including particular dance move names such as 'Uprock', 'Spin', and 'Freeze'. The success rate for each method is shown for three specific dance moves, highlighting the significant improvement in accuracy when using more detailed and precise captions. This improvement demonstrates the importance of providing detailed, specific instructions to the model in order to generate more accurate results.
> <details>
> <summary>read the caption</summary>
> Table 6: Fine-grained captions on human motion achieve better successful rate than generic captions on the large human motion task. “Uprock”, “Spin”, “Freeze” are particular dance moves.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T7.2">
<tr class="ltx_tr" id="S4.T7.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T7.2.1.1"><span class="ltx_text" id="S4.T7.2.1.1.1" style="font-size:90%;">Caption Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T7.2.1.2"><span class="ltx_text" id="S4.T7.2.1.2.1" style="font-size:90%;">Dance Move</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T7.2.2.1"><span class="ltx_text" id="S4.T7.2.2.1.1" style="font-size:90%;">a) No Special Tags</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.2.2.2"><span class="ltx_text" id="S4.T7.2.2.2.1" style="font-size:90%;">12.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.2.3.1"><span class="ltx_text" id="S4.T7.2.3.1.1" style="font-size:90%;">b) Special Tags</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.2.3.2"><span class="ltx_text" id="S4.T7.2.3.2.1" style="font-size:90%;">90%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T7.2.4.1"><span class="ltx_text" id="S4.T7.2.4.1.1" style="font-size:90%;">c) Special Tags+Special NP</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T7.2.4.2"><span class="ltx_text" id="S4.T7.2.4.2.1" style="font-size:90%;">92.5%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of using special tags in captions for synthetic training data on video generation model performance.  Three experimental conditions are compared: (a) captions without special tags, (b) captions with special tags, and (c) captions with special tags in both positive and negative prompts during generation. The results show a significant improvement in model performance when using special tags, indicating that these tags help the model distinguish between real and synthetic video data. However, adding the tags to negative prompts leads to only marginal improvements, suggesting diminishing returns.
> <details>
> <summary>read the caption</summary>
> Table 7: Experiment results on the effect of special tags in synthetic data captioning. Without special tags to differentiate the visual style of the synthetic videos, the video generated models will more likely to generate animated characters or collapsed human motions after training. Also, adding the special tags in negative prompts during generation will help although marginally.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T8.1">
<tr class="ltx_tr" id="S4.T8.1.1">
<td class="ltx_td ltx_nopad ltx_align_center ltx_border_r ltx_border_tt" id="S4.T8.1.1.1"><svg height="22" overflow="visible" version="1.1" width="118.02"><g transform="translate(0,22) scale(1,-1)"><path d="M 0,22 118.02,0" stroke="#000000" stroke-width="0.4"></path><g class="ltx_svg_fog" transform="translate(0,0)"><g transform="translate(0,10.93) scale(1, -1)"><foreignobject height="10.93" overflow="visible" width="59.01">
<span class="ltx_inline-block" id="S4.T8.1.1.1.pic1.1.1">
<span class="ltx_inline-block ltx_align_left" id="S4.T8.1.1.1.pic1.1.1.1">
<span class="ltx_p" id="S4.T8.1.1.1.pic1.1.1.1.1"><span class="ltx_text" id="S4.T8.1.1.1.pic1.1.1.1.1.1" style="font-size:90%;">Percentage</span></span>
</span>
</span></foreignobject></g></g><g class="ltx_svg_fog" transform="translate(78.52,10.93)"><g transform="translate(0,11.07) scale(1, -1)"><foreignobject height="11.07" overflow="visible" width="39.5">
<span class="ltx_inline-block" id="S4.T8.1.1.1.pic1.2.1">
<span class="ltx_inline-block ltx_align_right" id="S4.T8.1.1.1.pic1.2.1.1">
<span class="ltx_p" id="S4.T8.1.1.1.pic1.2.1.1.1"><span class="ltx_text" id="S4.T8.1.1.1.pic1.2.1.1.1.1" style="font-size:90%;">#Steps</span></span>
</span>
</span></foreignobject></g></g></g></svg></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.1.1.2"><span class="ltx_text" id="S4.T8.1.1.2.1" style="font-size:90%;">3000</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.1.1.3"><span class="ltx_text" id="S4.T8.1.1.3.1" style="font-size:90%;">5000</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.1.1.4"><span class="ltx_text" id="S4.T8.1.1.4.1" style="font-size:90%;">10000</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T8.1.1.5"><span class="ltx_text" id="S4.T8.1.1.5.1" style="font-size:90%;">15000</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.1.2.1"><span class="ltx_text" id="S4.T8.1.2.1.1" style="font-size:90%;">10% synthetic videos</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.2"><span class="ltx_text" id="S4.T8.1.2.2.1" style="font-size:90%;">20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.3"><span class="ltx_text" id="S4.T8.1.2.3.1" style="font-size:90%;">25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.4"><span class="ltx_text" id="S4.T8.1.2.4.1" style="font-size:90%;">40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.1.2.5"><span class="ltx_text" id="S4.T8.1.2.5.1" style="font-size:90%;">60%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.1.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T8.1.3.1"><span class="ltx_text" id="S4.T8.1.3.1.1" style="font-size:90%;">50% synthetic videos</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.2"><span class="ltx_text" id="S4.T8.1.3.2.1" style="font-size:90%;">55%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.3"><span class="ltx_text" id="S4.T8.1.3.3.1" style="font-size:90%;">75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.4"><span class="ltx_text ltx_font_bold" id="S4.T8.1.3.4.1" style="font-size:90%;">85%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.1.3.5"><span class="ltx_text" id="S4.T8.1.3.5.1" style="font-size:90%;">80%</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the impact of synthetic data mix rate and training steps on the video generation model. The 'success rate' is defined as the percentage of generated videos that adhere to the prompts without exhibiting visual artifacts from the synthetic data.  The study reveals that increasing the proportion of synthetic data and extending the training duration facilitates the transfer of physical properties from synthetic to real videos.  However,  the improvement plateaus after a certain point, and excessive training leads to overfitting where generated videos may start incorporating the unique visual patterns of the synthetic data, thus reducing the success rate.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation results on synthetic data mix rate and training steps. Here we measure the success rate which the trained foundation model generates videos that follows the prompts but does not include visual patterns in the synthetic videos. We found that large proportion and longer training steps help transferring the properties in synthetic videos to the video generation model. However, performance will saturate and failure cases will include visual patterns of synthetic data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T9.2">
<tr class="ltx_tr" id="S4.T9.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T9.1.1.1"><math alttext="\alpha" class="ltx_Math" display="inline" id="S4.T9.1.1.1.m1.1"><semantics id="S4.T9.1.1.1.m1.1a"><mi id="S4.T9.1.1.1.m1.1.1" xref="S4.T9.1.1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="S4.T9.1.1.1.m1.1b"><ci id="S4.T9.1.1.1.m1.1.1.cmml" xref="S4.T9.1.1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.1.1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="S4.T9.1.1.1.m1.1d">italic_α</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T9.2.2.3">Good</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T9.2.2.4">Same</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T9.2.2.5">Bad</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T9.2.2.2">G-B<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T9.2.2.2.m1.1"><semantics id="S4.T9.2.2.2.m1.1a"><mo id="S4.T9.2.2.2.m1.1.1" stretchy="false" xref="S4.T9.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T9.2.2.2.m1.1b"><ci id="S4.T9.2.2.2.m1.1.1.cmml" xref="S4.T9.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T9.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T9.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T9.2.3.1">0.1</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T9.2.3.2">26.32%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T9.2.3.3">71.05%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T9.2.3.4">2.63%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.2.3.5">23.69%</td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T9.2.4.1">0.2</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T9.2.4.2">39.47%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T9.2.4.3">52.63%</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T9.2.4.4">7.89%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T9.2.4.5">31.58%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the effectiveness of SimDrop, a novel technique introduced to mitigate artifacts introduced by synthetic data in video generation.  Two video generation models are compared: one trained with SimDrop and one without. Human evaluators compared pairs of videos (one from each model, generated using the same prompt) and selected the better-quality video based on visual preference. The results are presented as percentages representing the frequency of each model being chosen as 'better', showing the relative improvement achieved by SimDrop in generating videos without synthetic data artifacts.
> <details>
> <summary>read the caption</summary>
> Table 9: Experiment results on SimDrop. Here, we compare the output videos with SimDrop with the models without SimDrop. Evaluators will choose the best out of two videos side-by-side. We then compute the winning/same/losing rate against the baseline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T10.2">
<tr class="ltx_tr" id="A1.T10.2.1">
<td class="ltx_td ltx_border_r ltx_border_tt" id="A1.T10.2.1.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T10.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.1.2.1">
<span class="ltx_p" id="A1.T10.2.1.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.1.2.1.1.1" style="font-size:80%;">Property Name</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T10.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.1.3.1">
<span class="ltx_p" id="A1.T10.2.1.3.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.1.3.1.1.1" style="font-size:80%;">Choice</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T10.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.1.4.1">
<span class="ltx_p" id="A1.T10.2.1.4.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.1.4.1.1.1" style="font-size:80%;">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T10.2.2.1" rowspan="7"><span class="ltx_text" id="A1.T10.2.2.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A1.T10.2.2.1.1.1" style="width:5.5pt;height:27.1pt;vertical-align:-10.8pt;"><span class="ltx_transformed_inner" style="width:27.1pt;transform:translate(-10.83pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A1.T10.2.2.1.1.1.1">Camera</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.2.2.1">
<span class="ltx_p" id="A1.T10.2.2.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.2.2.1.1.1" style="font-size:80%;">Camera Focus Type</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.2.3.1">
<span class="ltx_p" id="A1.T10.2.2.3.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.2.3.1.1.1" style="font-size:80%;">Follow</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.2.4.1">
<span class="ltx_p" id="A1.T10.2.2.4.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.2.4.1.1.1" style="font-size:80%;">The camera focus follows the object.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.3">
<td class="ltx_td ltx_align_top ltx_border_r" id="A1.T10.2.3.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.3.2.1">
<span class="ltx_p" id="A1.T10.2.3.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.3.2.1.1.1" style="font-size:80%;">Fixed</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.3.3.1">
<span class="ltx_p" id="A1.T10.2.3.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.3.3.1.1.1" style="font-size:80%;">The camera focus is static in the world space.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.4.1.1">
<span class="ltx_p" id="A1.T10.2.4.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.4.1.1.1.1" style="font-size:80%;">Camera Focus Position</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.4.2.1">
<span class="ltx_p" id="A1.T10.2.4.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.4.2.1.1.1" style="font-size:80%;">Upper, Center, Lower</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.4.3.1">
<span class="ltx_p" id="A1.T10.2.4.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.4.3.1.1.1" style="font-size:80%;">The camera focus is at the upper/center/lower part of the object.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.5.1.1">
<span class="ltx_p" id="A1.T10.2.5.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.5.1.1.1.1" style="font-size:80%;">Camera Movement Type</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.5.2.1">
<span class="ltx_p" id="A1.T10.2.5.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.5.2.1.1.1" style="font-size:80%;">Truck, Dolly, Pedestal, Tilt, Pan, Spin, Following, Zoom</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.5.3.1">
<span class="ltx_p" id="A1.T10.2.5.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.5.3.1.1.1" style="font-size:80%;">The basic camera movement types.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.6.1.1">
<span class="ltx_p" id="A1.T10.2.6.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.6.1.1.1.1" style="font-size:80%;">Camera Movement Value</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.6.2.1">
<span class="ltx_p" id="A1.T10.2.6.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.6.2.1.1.1" style="font-size:80%;">Scalar</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.6.3.1">
<span class="ltx_p" id="A1.T10.2.6.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.6.3.1.1.1" style="font-size:80%;">How much the camera moves.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.7.1.1">
<span class="ltx_p" id="A1.T10.2.7.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.7.1.1.1.1" style="font-size:80%;">Camera Initial Position</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.7.2.1">
<span class="ltx_p" id="A1.T10.2.7.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.7.2.1.1.1" style="font-size:80%;">3D Position</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.7.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.7.3.1">
<span class="ltx_p" id="A1.T10.2.7.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.7.3.1.1.1" style="font-size:80%;">The initial position of the camera.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.8.1.1">
<span class="ltx_p" id="A1.T10.2.8.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.8.1.1.1.1" style="font-size:80%;">Camera Focal Length</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.8.2.1">
<span class="ltx_p" id="A1.T10.2.8.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.8.2.1.1.1" style="font-size:80%;">Scalar</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.8.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.8.3.1">
<span class="ltx_p" id="A1.T10.2.8.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.8.3.1.1.1" style="font-size:80%;">The scalar controls how much percentage of the object is visible on the screen.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T10.2.9.1" rowspan="8"><span class="ltx_text" id="A1.T10.2.9.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A1.T10.2.9.1.1.1" style="width:7.1pt;height:82pt;vertical-align:-39.0pt;"><span class="ltx_transformed_inner" style="width:82.0pt;transform:translate(-37.46pt,2.33pt) rotate(-90deg) ;">
<span class="ltx_p" id="A1.T10.2.9.1.1.1.1">Light and Environment</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.9.2.1">
<span class="ltx_p" id="A1.T10.2.9.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.9.2.1.1.1" style="font-size:80%;">Scene Type</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.9.3.1">
<span class="ltx_p" id="A1.T10.2.9.3.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.9.3.1.1.1" style="font-size:80%;">Env</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.9.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.9.4.1">
<span class="ltx_p" id="A1.T10.2.9.4.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.9.4.1.1.1" style="font-size:80%;">The environment is given by a HDR environmental map. The map will also be used as the light source.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.10">
<td class="ltx_td ltx_align_top ltx_border_r" id="A1.T10.2.10.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.10.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.10.2.1">
<span class="ltx_p" id="A1.T10.2.10.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.10.2.1.1.1" style="font-size:80%;">Basic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.10.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.10.3.1">
<span class="ltx_p" id="A1.T10.2.10.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.10.3.1.1.1" style="font-size:80%;">The environment is an indoor room which color is controlled by “Scene Color” and has two light sources.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.11">
<td class="ltx_td ltx_align_top ltx_border_r" id="A1.T10.2.11.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.11.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.11.2.1">
<span class="ltx_p" id="A1.T10.2.11.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.11.2.1.1.1" style="font-size:80%;">Empty</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.11.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.11.3.1">
<span class="ltx_p" id="A1.T10.2.11.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.11.3.1.1.1" style="font-size:80%;">The environment is empty but has two light sources or one environmental map as the light source.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.12">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.12.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.12.1.1">
<span class="ltx_p" id="A1.T10.2.12.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.12.1.1.1.1" style="font-size:80%;">Scene Color</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.12.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.12.2.1">
<span class="ltx_p" id="A1.T10.2.12.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.12.2.1.1.1" style="font-size:80%;">RGB color</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.12.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.12.3.1">
<span class="ltx_p" id="A1.T10.2.12.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.12.3.1.1.1" style="font-size:80%;">The color for the indoor room when presented.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.13.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.13.1.1">
<span class="ltx_p" id="A1.T10.2.13.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.13.1.1.1.1" style="font-size:80%;">Light Position</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.13.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.13.2.1">
<span class="ltx_p" id="A1.T10.2.13.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.13.2.1.1.1" style="font-size:80%;">3D position</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.13.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.13.3.1">
<span class="ltx_p" id="A1.T10.2.13.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.13.3.1.1.1" style="font-size:80%;">The position of the light when presented.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.14">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.14.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.14.1.1">
<span class="ltx_p" id="A1.T10.2.14.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.14.1.1.1.1" style="font-size:80%;">Light Color</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.14.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.14.2.1">
<span class="ltx_p" id="A1.T10.2.14.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.14.2.1.1.1" style="font-size:80%;">Scalar</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.14.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.14.3.1">
<span class="ltx_p" id="A1.T10.2.14.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.14.3.1.1.1" style="font-size:80%;">The color temperature of the light when presented.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.15">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.15.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.15.1.1">
<span class="ltx_p" id="A1.T10.2.15.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.15.1.1.1.1" style="font-size:80%;">Light Intensity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.15.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.15.2.1">
<span class="ltx_p" id="A1.T10.2.15.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.15.2.1.1.1" style="font-size:80%;">Scalar</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.15.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.15.3.1">
<span class="ltx_p" id="A1.T10.2.15.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.15.3.1.1.1" style="font-size:80%;">The intensity of the light when presented.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.16">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.16.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.16.1.1">
<span class="ltx_p" id="A1.T10.2.16.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.16.1.1.1.1" style="font-size:80%;">Ambient Light Intensity</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.16.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.16.2.1">
<span class="ltx_p" id="A1.T10.2.16.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.16.2.1.1.1" style="font-size:80%;">Scalar</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.16.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.16.3.1">
<span class="ltx_p" id="A1.T10.2.16.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.16.3.1.1.1" style="font-size:80%;">Ambient light intensity. The ambient light exists when the lights are used.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.17">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A1.T10.2.17.1" rowspan="3"><span class="ltx_text" id="A1.T10.2.17.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="A1.T10.2.17.1.1.1" style="width:5.6pt;height:25pt;vertical-align:-9.7pt;"><span class="ltx_transformed_inner" style="width:25.0pt;transform:translate(-9.73pt,0pt) rotate(-90deg) ;">
<span class="ltx_p" id="A1.T10.2.17.1.1.1.1">Render</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.17.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.17.2.1">
<span class="ltx_p" id="A1.T10.2.17.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.17.2.1.1.1" style="font-size:80%;">Background Color</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T10.2.17.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.17.3.1">
<span class="ltx_p" id="A1.T10.2.17.3.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.17.3.1.1.1" style="font-size:80%;">RGBA color</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T10.2.17.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.17.4.1">
<span class="ltx_p" id="A1.T10.2.17.4.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.17.4.1.1.1" style="font-size:80%;">The background color of the location where the scene is empty.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.18">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T10.2.18.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.18.1.1">
<span class="ltx_p" id="A1.T10.2.18.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.18.1.1.1.1" style="font-size:80%;">Render Engine</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="A1.T10.2.18.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.18.2.1">
<span class="ltx_p" id="A1.T10.2.18.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.18.2.1.1.1" style="font-size:80%;">Blender/Unreal</span></span>
</span>
</td>
<td class="ltx_td ltx_align_top" id="A1.T10.2.18.3"></td>
</tr>
<tr class="ltx_tr" id="A1.T10.2.19">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A1.T10.2.19.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.19.1.1">
<span class="ltx_p" id="A1.T10.2.19.1.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.19.1.1.1.1" style="font-size:80%;">Render Quality</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="A1.T10.2.19.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.19.2.1">
<span class="ltx_p" id="A1.T10.2.19.2.1.1" style="width:86.7pt;"><span class="ltx_text" id="A1.T10.2.19.2.1.1.1" style="font-size:80%;">High/Low</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T10.2.19.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T10.2.19.3.1">
<span class="ltx_p" id="A1.T10.2.19.3.1.1" style="width:216.8pt;"><span class="ltx_text" id="A1.T10.2.19.3.1.1.1" style="font-size:80%;">The quality of the rendering. We have two presets of rendering setting.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the parameters used to control the video rendering pipeline in the study.  It details the options available for each parameter, affecting aspects such as camera focus, movement, position, and focal length; scene type, color, and lighting; background color; and rendering engine and quality. These parameters are used to generate diverse and controlled synthetic videos for training the video generation model.  Understanding these parameters is crucial to understanding how the synthetic data is created and its impact on the model.
> <details>
> <summary>read the caption</summary>
> Table 10: The parameters used for controlling our rendering pipeline.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20822/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20822/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}