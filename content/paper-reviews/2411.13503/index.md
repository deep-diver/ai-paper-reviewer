---
title: "VBench++: Comprehensive and Versatile Benchmark Suite for Video Generative Models"
summary: "VBench++: A new benchmark suite meticulously evaluates video generative models across 16 diverse dimensions, aligning with human perception for improved model development and fairer comparisons."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Nanyang Technological University",]
showSummary: true
date: 2024-11-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.13503 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziqi Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.13503" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.13503" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/vbench-comprehensive-and-versatile-benchmark" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.13503/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for evaluating video generation models often fall short of accurately reflecting human perception. Existing metrics are inconsistent with human judgment and don't account for the unique challenges of generative models, leading to an incomplete understanding of model performance.  This necessitates a more comprehensive and human-aligned evaluation framework.



The researchers introduce VBench++, a new benchmark suite designed to address these issues.  VBench++ evaluates video generation quality across 16 carefully chosen dimensions, using a hierarchical and disentangled approach.  It includes a human preference annotation dataset to validate its alignment with human perception, offers valuable insights into model strengths and weaknesses, and supports various video generation tasks.  The full open-sourcing of VBench++, including prompts, evaluation methods, generated videos, and human preference annotations, further promotes collaboration and progress in the field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VBench++ offers a comprehensive evaluation framework for video generation models, addressing limitations of existing metrics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It introduces 16 hierarchical and disentangled evaluation dimensions, aligning with human perception. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The benchmark suite supports various video generation tasks (text-to-video and image-to-video) and is fully open-sourced. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in video generation because it introduces **VBench++, a comprehensive and versatile benchmark suite** that addresses the limitations of existing evaluation metrics.  It provides **valuable insights into model performance**, enabling researchers to better understand model strengths and weaknesses, improve model training, and accelerate progress in the field. The open-sourcing of VBench++ further enhances its impact by facilitating wider adoption and collaboration.

------
#### Visual Insights



![](https://arxiv.org/html/2411.13503/x1.png)

> 🔼 VBench++ is a comprehensive and versatile benchmark suite for evaluating video generation models.  It decomposes video quality into multiple well-defined dimensions, using a hierarchical structure. For each dimension and content category, a prompt suite provides test cases, generating videos from various models.  Each dimension has a tailored evaluation method, and human preference annotation validates the results. VBench++ supports text-to-video and image-to-video tasks, and includes an adaptive image suite for fair evaluations. Besides technical quality, it assesses model trustworthiness, providing a holistic performance view.  The benchmark is continuously updated with new models to reflect the evolving field of video generation.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Overview of VBench++. We propose VBench++, a comprehensive and versatile benchmark suite for video generative models. We design a comprehensive and hierarchical Evaluation Dimension Suite to decompose “video generation quality' into multiple well-defined dimensions to facilitate fine-grained and objective evaluation. For each dimension and each content category, we carefully design a Prompt Suite as test cases, and sample Generated Videos from a set of video generation models. For each evaluation dimension, we specifically design an Evaluation Method Suite, which uses a carefully crafted method or designated pipeline for automatic objective evaluation. We also conduct Human Preference Annotation for the generated videos for each dimension and show that VBench++ evaluation results are well aligned with human perceptions. VBench++ can provide valuable insights from multiple perspectives. VBench++ supports a wide range of video generation tasks, including text-to-video and image-to-video, with an adaptive Image Suite for fair evaluation across different settings. It evaluates not only technical quality but also the trustworthiness of generative models, offering a comprehensive view of model performance. We continually incorporate more video generative models into VBench++ to inform the community about the evolving landscape of video generation.
> </details>





{{< table-caption >}}
| Loose Definision of Image Resolution | Image Area (W×H) | Percentage | Image Side Length (W and H) | Percentage |
|---|---|---|---|---|
| <1K | <1920×1080 | 0.0% | W<1920 or H<1080 | 0.3% |
| [1K, 2K) | [1920×1080, 2560×1440) | 3.4% | (1920≤W and 1080≤H) and (W<2560 or H<1440) | 5.4% |
| [2K, 4K) | [2560×1440, 3840x2160) | 6.8% | (2560≤W and 1440≤H) and (W<3840 or H<2160) | 23.1% |
| [4K, 8K) | [3840×2160, 7680×4320) | 85.6% | (3840≤W and 2160≤H) and (W<7680 or H<4320) | 68.7% |
| ≥8K | ≥7680×4320 | 4.2% | 7680≤W and 4320≤H | 2.5% |{{< /table-caption >}}

> 🔼 Table 1 presents the resolution distribution of the Image Suite used in the VBench++ benchmark.  The Image Suite is primarily composed of high-resolution images (4K or higher). The table provides a detailed breakdown of the image resolutions based on two different metrics: total pixel count (image area) and the length of the image's sides (width and height). This allows for a comprehensive understanding of the resolution characteristics of the image dataset used in the benchmark.
> <details>
> <summary>read the caption</summary>
> TABLE I: Image Suite Resolution Distribution. The Image Suite primarily consists of images of 4K resolution or higher. We present statistics based on two types of resolution classifications: one based on image area (i.e., the total number of pixels), and the other based on the length of both sides.
> </details>





### In-depth insights


#### VBench++: Overview
VBench++, as a proposed comprehensive and versatile benchmark suite for video generative models, offers a multi-faceted evaluation approach.  Its **hierarchical structure** breaks down video quality into core dimensions like Video Quality and Video-Condition Consistency, each further subdivided for granular analysis.  This detailed approach allows for a more nuanced understanding of model strengths and weaknesses beyond traditional metrics.  **Human alignment** is a key feature, with human preference annotations used to validate the benchmark's alignment with human perception, crucial for ensuring evaluation relevance. The incorporation of both **text-to-video and image-to-video generation** tasks, along with an adaptive Image Suite, broadens the scope and ensures fairness across different generation paradigms. Finally, the inclusion of **trustworthiness dimensions**, assessing cultural fairness and bias, adds a crucial ethical layer to the evaluation, moving beyond pure technical performance.

#### Multi-dimensional Eval
A multi-dimensional evaluation approach for video generation models offers significant advantages over traditional single-metric evaluations.  **Instead of relying on a single, potentially misleading score**, it allows for a more nuanced understanding of model strengths and weaknesses across various aspects of video quality. By decomposing video quality into several distinct dimensions (e.g., temporal consistency, visual fidelity, semantic accuracy, etc.), researchers gain granular insights into how well different models perform on each aspect. This **facilitates a more objective comparison** and helps identify specific areas needing improvement. Further, human alignment in the design and validation of these dimensions ensures the evaluation correlates well with human perception, increasing reliability and relevance.  A multi-dimensional approach also provides valuable guidance for future model development by highlighting trade-offs between different aspects of video quality and revealing areas where current models fall short. It facilitates a more complete and insightful understanding, surpassing limitations of single-metric evaluations.

#### Human Perception
In evaluating video generative models, aligning with human perception is paramount.  **Subjective human judgment of video quality differs significantly from objective metrics** like FID and FVD.  Therefore, a key challenge is creating evaluation dimensions that truly capture how humans perceive and assess video generation quality across various attributes.  This requires careful consideration of how people rate individual aspects such as motion smoothness, color accuracy, subject consistency, and overall aesthetic appeal. **A strong evaluation framework must incorporate human preference annotations** directly to verify and calibrate automated metrics.  This human-centric approach helps identify discrepancies between automatic scores and what is visually pleasing or realistic to people, ultimately enabling the development of more effective video generation models that meet actual user expectations.  **Disentangling different dimensions of video quality is crucial** for nuanced understanding and improvements.  A comprehensive methodology with human-in-the-loop feedback guarantees alignment with human sensibilities and ensures that model development and evaluation stay rooted in human visual perception.

#### I2V & Trustworthiness
The section 'I2V & Trustworthiness' would explore the intersection of image-to-video (I2V) generation and the crucial aspect of model trustworthiness.  It would likely delve into how biases present in the input images or the I2V model itself might propagate into the generated videos, potentially creating unfair or harmful representations.  **Assessing fairness across different cultural backgrounds and demographics** would be essential, investigating if the model generates videos with biases reflecting societal prejudices.  **The evaluation would likely include metrics for detecting bias in skin tone, gender, and cultural representation** within the generated videos.  Furthermore, the discussion would likely address the safety implications of I2V models.  **The generation of unsafe or inappropriate content** (e.g., violence, hate speech) is a key concern.  This section would likely examine how the model's training data and architecture affect the generation of such content.  **Proposed solutions** could include methods for bias mitigation, safety filters, and techniques for improving the overall fairness and responsibility of I2V model outputs.

#### Future Directions
Future research in video generation should prioritize addressing the **trade-offs between temporal consistency and dynamic content generation**.  Current models often excel in one area at the expense of the other, highlighting the need for techniques that seamlessly integrate both.  Furthermore, research should explore ways to improve **compositionality** and **spatial reasoning** within generated videos to better handle complex scenes involving multiple objects and their interactions. **Improving model trustworthiness** is crucial, requiring strategies to mitigate biases and ensure content safety across diverse cultures and demographics.  Finally, developing more sophisticated **evaluation metrics** that align closely with human perception will be essential for tracking progress and guiding future development.  Addressing these areas will ultimately lead to more realistic, engaging, and ethically responsible video generation models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.13503/x2.png)

> 🔼 This figure displays a radar chart visualizing the performance of four different text-to-video generative models across sixteen distinct evaluation dimensions defined in the VBench benchmark. Each dimension represents a specific aspect of video generation quality. The radar chart allows for a visual comparison of the models' strengths and weaknesses across these various dimensions. For precise numerical data, refer to Table II within the paper.
> <details>
> <summary>read the caption</summary>
> (a)  Text-to-Video Generative Models. We visualize the evaluation results of four text-to-video generation models in 16 VBench dimensions. For comprehensive numerical results, please refer to Table II.
> </details>



![](https://arxiv.org/html/2411.13503/x3.png)

> 🔼 This figure displays a comparison of six different image-to-video generation models.  Each model's performance is visually represented, likely using a radar chart or similar visualization, across multiple dimensions of video quality.  The specific dimensions assessed are not shown in the caption, but are detailed elsewhere in the paper. For precise numerical data on the performance of each model, readers are referred to Table III.
> <details>
> <summary>read the caption</summary>
> (b) Image-to-Video Generative Models. We visualize the evaluation results of six image-to-video generation models. See Table III for comprehensive numerical results.
> </details>



![](https://arxiv.org/html/2411.13503/x4.png)

> 🔼 This figure (c) presents a radar chart visualizing the trustworthiness of several video generative models.  Each model's performance is shown across multiple trustworthiness dimensions, including cultural fairness, gender bias, skin tone bias, and safety.  The radar chart provides a visual comparison of the models' strengths and weaknesses in these aspects, allowing for quick identification of models that are particularly strong or weak in certain dimensions. The caption encourages readers to consult Table IV for a detailed numerical breakdown of the results displayed visually in the chart.
> <details>
> <summary>read the caption</summary>
> (c) Trustworthiness of Video Generative Models. We visualize the trustworthiness of video generative models, along with other dimensions. For comprehensive numerical results, please refer to Table IV.
> </details>



![](https://arxiv.org/html/2411.13503/x5.png)

> 🔼 This figure presents a visual comparison of various text-to-video and image-to-video generative models, evaluated using the VBench++ benchmark suite.  The results are normalized across dimensions for easy comparison.  Each subfigure focuses on a specific aspect of model performance.  Subfigure (a) displays results for text-to-video models, subfigure (b) shows results for image-to-video models, and subfigure (c) illustrates model trustworthiness across several dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 2: VBench++ Evaluation Results. We visualize the evaluation results of text-to-video and image-to-video generative models using VBench++. We normalize the results per dimension for clearer comparisons.
> </details>



![](https://arxiv.org/html/2411.13503/x6.png)

> 🔼 Figure 3 presents a statistical overview of the prompt suites used in the VBench++ benchmark. The left panel displays a word cloud illustrating the frequency distribution of words across all prompts.  This provides a visual representation of the types of scenes and objects frequently featured in the test cases. The right panel presents a bar chart showing the number of prompts used for each of the 16 evaluation dimensions and also broken down by eight different content categories (Animal, Architecture, Food, Human, Lifestyle, Plant, Scenery, Vehicles). This visualization helps to understand the scope and balance of the prompt suites in terms of both the granularity of evaluation and diversity of content.
> <details>
> <summary>read the caption</summary>
> Figure 3: Prompt Suite Statistics. The two graphs provide an overview of our prompt suites. Left: the word cloud to visualize word distribution of our prompt suites. Right: the number of prompts across different evaluation dimensions and different content categories.
> </details>



![](https://arxiv.org/html/2411.13503/extracted/6013496/figures/i2v/fig_image_crop_pipeline_horizontal.jpg)

> 🔼 This figure shows the user interface for human annotation in the VBench++ system.  The top part displays the prompt used to generate videos and the question annotators need to answer to provide their preference. The right side shows the three options annotators have for providing their preference:  'A is better', 'Same quality', and 'B is better'. The bottom left corner displays controls for video playback, allowing annotators to stop and replay the videos as needed to make their judgment.
> <details>
> <summary>read the caption</summary>
> Figure 4: Interface for Human Preference Annotation. Top: prompt and question. Right: choices that annotators can make. Bottom left: control for stop and playback.
> </details>



![](https://arxiv.org/html/2411.13503/extracted/6013496/figures/i2v/fig_image_crop_pipeline_vertical.jpg)

> 🔼 This figure illustrates the image cropping pipeline used for portrait images in the Image Suite.  The pipeline ensures that the main content remains centered and unaltered regardless of the final aspect ratio.  It starts with an initial crop to a 1:1 aspect ratio, followed by a second crop to a 16:9 aspect ratio.  Additional crops with intermediate aspect ratios (7:4 and 8:5) are then generated by interpolating between the 1:1 and 16:9 crops.
> <details>
> <summary>read the caption</summary>
> (a) Cropping Pipeline for Portrait Images.
> </details>



![](https://arxiv.org/html/2411.13503/extracted/6013496/figures/i2v/pie_chart_image_suite.png)

> 🔼 This figure illustrates the image cropping pipeline used for landscape-oriented images in the Image Suite of VBench++. The pipeline ensures that the main content remains centered and unaltered after cropping the images to various aspect ratios (1:1, 7:4, 8:5, and 16:9).  It starts by first cropping to a 16:9 aspect ratio. Then, another crop to a 1:1 aspect ratio is performed. Finally, additional crops are generated between the 16:9 and 1:1 bounding boxes to achieve the other aspect ratios.
> <details>
> <summary>read the caption</summary>
> (b) Cropping Pipeline for Landscape Images.
> </details>



![](https://arxiv.org/html/2411.13503/x7.png)

> 🔼 This figure illustrates the adaptive cropping pipeline used to prepare the Image Suite for the image-to-video (I2V) task.  The pipeline handles both portrait and landscape images.  For portrait images (height greater than width), a 1:1 crop is performed first (red box), followed by a 16:9 crop (yellow box).  Intermediate aspect ratios (7:4 and 8:5) are generated by interpolating between these two crops.  Landscape images (width greater than height) are processed similarly, but the initial crop is 16:9, followed by a 1:1 crop, with interpolation generating the intermediate ratios. This ensures consistent image content across various aspect ratios, crucial for fair I2V model evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Image Suite Pipeline for Adaptive Aspect Ratio Cropping. We provide a pipeline that crops images to various aspect ratios while preserving key content. (a) Portrait Images. If the original image’s width is less than its height, it is first cropped to a 1:1 ratio (red bounding box), followed by a second crop to a 16:9 aspect ratio (yellow bounding box). Additional crops interpolate between the 1:1 red box and the 16:9 yellow box to produce other common ratios (1:1, 7:4, 8:5, 16:9). (b) Landscape Images. If the original image’s width is greater than its height, we first crop the image to a 16:9 aspect ratio (red bounding box), and further crop the 16:9 image to a 1:1 aspect ratio (yellow bounding box). We then perform additional crops between the 16:9 red box and 1:1 yellow box to obtain the common aspect ratios (1:1, 7:4, 8:5, 16:9).
> </details>



![](https://arxiv.org/html/2411.13503/x8.png)

> 🔼 This figure visualizes the diversity of content included in the Image Suite used for evaluating image-to-video (I2V) models.  The suite includes a wide range of foreground subjects (such as animals, humans, plants, vehicles, and abstract objects) and background scenes (like architecture, scenery, and indoor settings) to ensure comprehensive testing of I2V models' ability to handle diverse and realistic visual input across different scenarios and content categories.
> <details>
> <summary>read the caption</summary>
> Figure 6: Content Distribution of Image Suite. Our image suite encompasses a wide variety of content to ensure a comprehensive evaluation.
> </details>



![](https://arxiv.org/html/2411.13503/x9.png)

> 🔼 This figure visualizes the trustworthiness of text-to-video (T2V) generative models across four dimensions: Culture Fairness, Gender Bias, Skin Bias, and Safety.  Each model's performance is presented as a score for each dimension, indicating how well it avoids biases and generates safe content.
> <details>
> <summary>read the caption</summary>
> (a) T2V Results for Trustworthiness.
> </details>



![](https://arxiv.org/html/2411.13503/x10.png)

> 🔼 This figure visualizes the trustworthiness evaluation results of image-to-video generative models across various dimensions. These dimensions likely include metrics measuring aspects such as cultural fairness, gender bias, skin tone bias, and overall safety.  The figure is likely a bar chart or radar chart comparing several models on those specific trustworthiness dimensions.
> <details>
> <summary>read the caption</summary>
> (b) T2I Results for Trustworthiness.
> </details>



![](https://arxiv.org/html/2411.13503/x11.png)

> 🔼 This figure shows a radar chart visualizing the trustworthiness scores of several video generative models across different dimensions: Culture Fairness, Gender Bias, Skin Bias, and Safety. Each dimension represents a specific aspect of model trustworthiness, reflecting the model's ability to avoid biases and generate safe, unbiased content. The scores for each dimension likely indicate the model's performance in that area, with higher scores suggesting better performance. The chart provides a comparative overview of different models' trustworthiness, allowing for insights into their strengths and weaknesses concerning bias and safety.
> <details>
> <summary>read the caption</summary>
> (a) Trustworthiness of Video Generative Models.
> </details>



![](https://arxiv.org/html/2411.13503/x12.png)

> 🔼 This figure displays a comparison of the trustworthiness scores for video and image generative models.  Trustworthiness is evaluated across dimensions such as culture fairness, gender bias, skin tone bias, and safety.  The models are visually compared, allowing for a quick assessment of their relative strengths and weaknesses in producing unbiased and safe outputs.
> <details>
> <summary>read the caption</summary>
> (b) Trustworthiness of Video vs. Image Models.
> </details>



![](https://arxiv.org/html/2411.13503/x13.png)

> 🔼 Figure 7 presents a visual comparison of the trustworthiness evaluation results for several video and image generative models.  It uses radar charts to display the scores across the four dimensions of trustworthiness: Culture Fairness, Gender Bias, Skin Tone Bias, and Safety.  Each model is represented by a separate chart.  The numerical values for these scores are detailed in Table IV of the paper.
> <details>
> <summary>read the caption</summary>
> Figure 7: Trustworthiness of Visual Generative Models. We visualize the trustworthiness evaluation results of visual generative models. For comprehensive numerical results, please refer to Table IV.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.7.1">
<tr class="ltx_tr" id="S3.T2.7.1.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S3.T2.7.1.1.1.1" style="font-size:90%;">
</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.1.1.2" style="font-size:90%;">Models</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.7.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.1.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.1.2.2" style="font-size:90%;">Subject</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.1.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.1.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.1.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.1.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.2">
<td class="ltx_td" id="S3.T2.7.1.2.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.2.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.2.2.2" style="font-size:90%;">Background</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.2.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.2.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.2.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.2.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.2.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.2.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.2.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.3">
<td class="ltx_td" id="S3.T2.7.1.3.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.3.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.3.2.2" style="font-size:90%;">Temporal</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.3.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.3.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.3.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.3.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.3.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.3.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.3.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.4">
<td class="ltx_td" id="S3.T2.7.1.4.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.4.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.4.2.2" style="font-size:90%;">Motion</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.4.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.4.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.4.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.4.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.4.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.4.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.4.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.5">
<td class="ltx_td" id="S3.T2.7.1.5.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.5.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.5.2.2" style="font-size:90%;">Dynamic</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.5.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.5.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.5.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.5.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.5.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.5.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.5.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.6">
<td class="ltx_td" id="S3.T2.7.1.6.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.6.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.6.2.2" style="font-size:90%;">Aesthetic</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.6.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.6.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.6.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.6.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.6.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.6.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.6.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.7">
<td class="ltx_td" id="S3.T2.7.1.7.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.7.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.7.2.2" style="font-size:90%;">Imaging</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.7.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.7.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.7.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.7.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.7.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.7.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.7.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.8">
<td class="ltx_td" id="S3.T2.7.1.8.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.8.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.8.2.2" style="font-size:90%;">Object</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.8.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.8.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.8.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.8.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.8.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.8.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.8.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.9">
<td class="ltx_td" id="S3.T2.7.1.9.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.9.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.9.2.1" style="font-size:90%;">Class</span></td>
<td class="ltx_td" id="S3.T2.7.1.9.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.9.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.9.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.9.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.9.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.9.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.9.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S3.T2.7.1.10.1.1" style="font-size:90%;">
LaVie </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib26" title="">26</a><span class="ltx_text" id="S3.T2.7.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.2.1" style="font-size:90%;">91.41%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.3.1" style="font-size:90%;">97.47%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.4.1" style="font-size:90%;">98.30%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.5.1" style="font-size:90%;">96.38%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.6.1" style="font-size:90%;">49.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.7.1" style="font-size:90%;">54.94%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.10.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.8.1" style="font-size:90%;">61.90%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.10.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.10.9.1" style="font-size:90%;">91.82%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T2.7.1.11.1.1" style="font-size:90%;">ModelScope </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib20" title="">20</a>, <a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib27" title="">27</a><span class="ltx_text" id="S3.T2.7.1.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.2.1" style="font-size:90%;">89.87%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.3.1" style="font-size:90%;">95.29%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.4.1" style="font-size:90%;">98.28%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.5.1" style="font-size:90%;">95.79%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.6.1" style="font-size:90%;">66.39%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.7.1" style="font-size:90%;">52.06%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.11.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.8.1" style="font-size:90%;">58.57%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.11.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.11.9.1" style="font-size:90%;">82.25%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T2.7.1.12.1.1" style="font-size:90%;">VideoCrafter-0.9 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib24" title="">24</a><span class="ltx_text" id="S3.T2.7.1.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.2.1" style="font-size:90%;">86.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.3.1" style="font-size:90%;">92.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.4.1" style="font-size:90%;">97.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.5.1" style="font-size:90%;">91.79%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.6.1" style="font-size:90%;">89.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.7.1" style="font-size:90%;">44.41%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.12.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.8.1" style="font-size:90%;">57.22%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.12.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.12.9.1" style="font-size:90%;">87.34%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T2.7.1.13.1.1" style="font-size:90%;">CogVideo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib19" title="">19</a><span class="ltx_text" id="S3.T2.7.1.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.2.1" style="font-size:90%;">92.19%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.3.1" style="font-size:90%;">96.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.4.1" style="font-size:90%;">97.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.5.1" style="font-size:90%;">96.47%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.6.1" style="font-size:90%;">42.22%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.7.1" style="font-size:90%;">38.18%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.13.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.8.1" style="font-size:90%;">41.03%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.13.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.13.9.1" style="font-size:90%;">73.40%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.1.1" style="font-size:90%;color:#000000;">VideoCrafter-1.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib62" title="">62</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.2.1" style="font-size:90%;color:#000000;">95.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.3.1" style="font-size:90%;color:#000000;">98.04%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.4.1" style="font-size:90%;color:#000000;">98.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.5.1" style="font-size:90%;color:#000000;">95.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.6.1" style="font-size:90%;color:#000000;">55.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.7.1" style="font-size:90%;color:#000000;">62.67%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.14.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.8.1" style="font-size:90%;color:#000000;">65.46%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.14.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.14.9.1" style="font-size:90%;color:#000000;">78.18%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.1.1" style="font-size:90%;color:#000000;">Show-1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib25" title="">25</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.2.1" style="font-size:90%;color:#000000;">95.53%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.3.1" style="font-size:90%;color:#000000;">98.02%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.4.1" style="font-size:90%;color:#000000;">99.12%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.5.1" style="font-size:90%;color:#000000;">98.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.6.1" style="font-size:90%;color:#000000;">44.44%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.7.1" style="font-size:90%;color:#000000;">57.35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.15.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.8.1" style="font-size:90%;color:#000000;">58.66%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.15.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.15.9.1" style="font-size:90%;color:#000000;">93.07%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.1.1" style="font-size:90%;color:#000000;">VideoCrafter-2.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib36" title="">36</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.2.1" style="font-size:90%;color:#000000;">96.85%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.3.1" style="font-size:90%;color:#000000;">98.22%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.4.1" style="font-size:90%;color:#000000;">98.41%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.5.1" style="font-size:90%;color:#000000;">97.73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.6.1" style="font-size:90%;color:#000000;">42.50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.7.1" style="font-size:90%;color:#000000;">63.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.16.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.8.1" style="font-size:90%;color:#000000;">67.22%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.16.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.16.9.1" style="font-size:90%;color:#000000;">92.55%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.1.1" style="font-size:90%;color:#000000;">Gen-2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib166" title="">166</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.2.1" style="font-size:90%;color:#000000;">97.61%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.3.1" style="font-size:90%;color:#000000;">97.61%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.4.1" style="font-size:90%;color:#000000;">99.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.5.1" style="font-size:90%;color:#000000;">99.58%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.6.1" style="font-size:90%;color:#000000;">18.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.7.1" style="font-size:90%;color:#000000;">66.96%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.17.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.8.1" style="font-size:90%;color:#000000;">67.42%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.17.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.17.9.1" style="font-size:90%;color:#000000;">90.92%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.1.1" style="font-size:90%;color:#000000;">AnimateDiff-v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib86" title="">86</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.2.1" style="font-size:90%;color:#000000;">95.30%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.3.1" style="font-size:90%;color:#000000;">97.68%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.4.1" style="font-size:90%;color:#000000;">98.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.5.1" style="font-size:90%;color:#000000;">97.76%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.6.1" style="font-size:90%;color:#000000;">40.83%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.7.1" style="font-size:90%;color:#000000;">67.16%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.18.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.8.1" style="font-size:90%;color:#000000;">70.10%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.18.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.18.9.1" style="font-size:90%;color:#000000;">90.90%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.1.1" style="font-size:90%;color:#000000;">Latte-1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib26" title="">26</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.2.1" style="font-size:90%;color:#000000;">88.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.3.1" style="font-size:90%;color:#000000;">95.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.4.1" style="font-size:90%;color:#000000;">98.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.5.1" style="font-size:90%;color:#000000;">94.63%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.6.1" style="font-size:90%;color:#000000;">68.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.7.1" style="font-size:90%;color:#000000;">61.59%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.19.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.8.1" style="font-size:90%;color:#000000;">61.92%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.19.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.19.9.1" style="font-size:90%;color:#000000;">86.53%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.1.1" style="font-size:90%;color:#000000;">Pika-1.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib167" title="">167</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.2.1" style="font-size:90%;color:#000000;">96.94%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.3.1" style="font-size:90%;color:#000000;">97.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.4.1" style="font-size:90%;color:#000000;">99.74%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.5.1" style="font-size:90%;color:#000000;">99.50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.6.1" style="font-size:90%;color:#000000;">47.50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.7.1" style="font-size:90%;color:#000000;">62.04%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.20.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.8.1" style="font-size:90%;color:#000000;">61.87%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.20.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.20.9.1" style="font-size:90%;color:#000000;">88.72%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.1.1" style="font-size:90%;color:#000000;">Kling <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib168" title="">168</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.2.1" style="font-size:90%;color:#000000;">98.33%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.3.1" style="font-size:90%;color:#000000;">97.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.4.1" style="font-size:90%;color:#000000;">99.30%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.5.1" style="font-size:90%;color:#000000;">99.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.6.1" style="font-size:90%;color:#000000;">46.94%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.7.1" style="font-size:90%;color:#000000;">61.21%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.21.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.8.1" style="font-size:90%;color:#000000;">65.62%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.21.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.21.9.1" style="font-size:90%;color:#000000;">87.24%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.1.1" style="font-size:90%;color:#000000;">Gen-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib169" title="">169</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.2.1" style="font-size:90%;color:#000000;">97.10%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.3.1" style="font-size:90%;color:#000000;">96.62%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.4.1" style="font-size:90%;color:#000000;">98.61%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.5.1" style="font-size:90%;color:#000000;">99.23%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.6.1" style="font-size:90%;color:#000000;">60.14%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.7.1" style="font-size:90%;color:#000000;">63.34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.22.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.8.1" style="font-size:90%;color:#000000;">66.82%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.22.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.22.9.1" style="font-size:90%;color:#000000;">87.81%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.1.1" style="font-size:90%;color:#000000;">CogVideoX-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib170" title="">170</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.2.1" style="font-size:90%;color:#000000;">96.78%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.3.1" style="font-size:90%;color:#000000;">96.63%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.4.1" style="font-size:90%;color:#000000;">98.89%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.5.1" style="font-size:90%;color:#000000;">97.73%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.6.1" style="font-size:90%;color:#000000;">59.86%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.7.1" style="font-size:90%;color:#000000;">60.82%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.23.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.8.1" style="font-size:90%;color:#000000;">61.68%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.23.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.23.9.1" style="font-size:90%;color:#000000;">83.37%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.1.1" style="font-size:90%;color:#000000;">CogVideoX-5B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib170" title="">170</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.2.1" style="font-size:90%;color:#000000;">96.23%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.3.1" style="font-size:90%;color:#000000;">96.52%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.4.1" style="font-size:90%;color:#000000;">98.66%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.5.1" style="font-size:90%;color:#000000;">96.92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.6.1" style="font-size:90%;color:#000000;">70.97%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.7.1" style="font-size:90%;color:#000000;">61.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.24.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.8.1" style="font-size:90%;color:#000000;">62.90%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.24.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.24.9.1" style="font-size:90%;color:#000000;">85.23%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.25">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.1.1" style="font-size:90%;">Empirical Min</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.2.1" style="font-size:90%;">14.62%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.3.1" style="font-size:90%;">26.15%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.4.1" style="font-size:90%;">62.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.5.1" style="font-size:90%;">70.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.6.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.7.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.25.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.8.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.25.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.25.9.1" style="font-size:90%;">0.00%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.1.1" style="font-size:90%;">Empirical Max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.2.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.3.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.4.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.5.1" style="font-size:90%;">99.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.6.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.7.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.26.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.8.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.26.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.26.9.1" style="font-size:90%;">100.00%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.27">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.7.1.27.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.27.1.1" style="font-size:90%;">Models</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T2.7.1.27.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.27.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.27.2.2" style="font-size:90%;">Multiple</span>
</td>
<td class="ltx_td ltx_border_tt" id="S3.T2.7.1.27.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.7.1.27.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.7.1.27.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.7.1.27.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.7.1.27.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.7.1.27.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S3.T2.7.1.27.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.28">
<td class="ltx_td" id="S3.T2.7.1.28.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.28.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.28.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.28.2.2" style="font-size:90%;">Human</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.28.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.28.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.28.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.28.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.28.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.28.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.28.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.29">
<td class="ltx_td" id="S3.T2.7.1.29.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.29.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.29.2.1" style="font-size:90%;">Color</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.7.1.29.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.29.3.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.29.3.2" style="font-size:90%;">Spatial</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.29.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.29.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.29.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.29.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.29.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.29.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.30">
<td class="ltx_td" id="S3.T2.7.1.30.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.30.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.30.2.1" style="font-size:90%;">Scene</span></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.30.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.30.3.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.30.3.2" style="font-size:90%;">Appearance</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.30.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.30.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.30.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.30.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.30.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.30.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.31">
<td class="ltx_td" id="S3.T2.7.1.31.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_nopad_r ltx_align_right" id="S3.T2.7.1.31.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.31.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.31.2.2" style="font-size:90%;">Temporal</span>
</td>
<td class="ltx_td ltx_align_right" colspan="-1" id="S3.T2.7.1.31.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.31.3.1" style="font-size:90%;">Style</span></td>
<td class="ltx_td" id="S3.T2.7.1.31.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.31.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.31.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.31.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.31.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.31.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.32">
<td class="ltx_td" id="S3.T2.7.1.32.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.32.2" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.7.1.32.2.1">\Centerstack</span><span class="ltx_text ltx_font_bold" id="S3.T2.7.1.32.2.2" style="font-size:90%;">Overall</span>
</td>
<td class="ltx_td" id="S3.T2.7.1.32.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.32.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.32.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.32.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.32.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.32.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.32.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.33">
<td class="ltx_td" id="S3.T2.7.1.33.1" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td ltx_align_right" id="S3.T2.7.1.33.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.33.2.1" style="font-size:90%;">Consistency</span></td>
<td class="ltx_td" id="S3.T2.7.1.33.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.33.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.33.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.33.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.33.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.33.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.33.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S3.T2.7.1.34.1.1" style="font-size:90%;">
LaVie </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.34.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib26" title="">26</a><span class="ltx_text" id="S3.T2.7.1.34.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.2.1" style="font-size:90%;">33.32%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.3.1" style="font-size:90%;">96.80%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.4.1" style="font-size:90%;">86.39%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.5.1" style="font-size:90%;">34.09%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.6.1" style="font-size:90%;">52.69%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.7.1" style="font-size:90%;">23.56%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.34.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.8.1" style="font-size:90%;">25.93%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.34.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.34.9.1" style="font-size:90%;">26.41%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T2.7.1.35.1.1" style="font-size:90%;">ModelScope </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.35.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib20" title="">20</a>, <a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib27" title="">27</a><span class="ltx_text" id="S3.T2.7.1.35.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.2.1" style="font-size:90%;">38.98%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.3.1" style="font-size:90%;">92.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.4.1" style="font-size:90%;">81.72%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.5.1" style="font-size:90%;">33.68%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.6.1" style="font-size:90%;">39.26%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.7.1" style="font-size:90%;">23.39%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.35.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.8.1" style="font-size:90%;">25.37%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.35.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.35.9.1" style="font-size:90%;">25.67%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T2.7.1.36.1.1" style="font-size:90%;">VideoCrafter-0.9 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.36.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib24" title="">24</a><span class="ltx_text" id="S3.T2.7.1.36.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.2.1" style="font-size:90%;">25.93%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.3.1" style="font-size:90%;">93.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.4.1" style="font-size:90%;">78.84%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.5.1" style="font-size:90%;">36.74%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.6.1" style="font-size:90%;">43.36%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.7.1" style="font-size:90%;">21.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.36.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.8.1" style="font-size:90%;">25.42%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.36.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.36.9.1" style="font-size:90%;">25.21%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text" id="S3.T2.7.1.37.1.1" style="font-size:90%;">CogVideo </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T2.7.1.37.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib19" title="">19</a><span class="ltx_text" id="S3.T2.7.1.37.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.2.1" style="font-size:90%;">18.11%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.3.1" style="font-size:90%;">78.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.4.1" style="font-size:90%;">79.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.5.1" style="font-size:90%;">18.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.6.1" style="font-size:90%;">28.24%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.7.1" style="font-size:90%;">22.01%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.37.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.8.1" style="font-size:90%;">7.80%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.37.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.37.9.1" style="font-size:90%;">7.70%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.1.1" style="font-size:90%;color:#000000;">VideoCrafter-1.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib62" title="">62</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.2.1" style="font-size:90%;color:#000000;">45.66%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.3.1" style="font-size:90%;color:#000000;">91.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.4.1" style="font-size:90%;color:#000000;">93.32%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.5.1" style="font-size:90%;color:#000000;">58.86%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.6.1" style="font-size:90%;color:#000000;">43.75%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.7.1" style="font-size:90%;color:#000000;">24.41%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.38.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.8.1" style="font-size:90%;color:#000000;">25.54%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.38.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.38.9.1" style="font-size:90%;color:#000000;">26.76%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.39">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.1.1" style="font-size:90%;color:#000000;">Show-1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib25" title="">25</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.2.1" style="font-size:90%;color:#000000;">45.47%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.3.1" style="font-size:90%;color:#000000;">95.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.4.1" style="font-size:90%;color:#000000;">86.35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.5.1" style="font-size:90%;color:#000000;">53.50%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.6.1" style="font-size:90%;color:#000000;">47.03%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.7.1" style="font-size:90%;color:#000000;">23.06%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.39.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.8.1" style="font-size:90%;color:#000000;">25.28%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.39.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.39.9.1" style="font-size:90%;color:#000000;">27.46%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.40">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.1.1" style="font-size:90%;color:#000000;">VideoCrafter-2.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib36" title="">36</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.2.1" style="font-size:90%;color:#000000;">40.66%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.3.1" style="font-size:90%;color:#000000;">95.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.4.1" style="font-size:90%;color:#000000;">92.92%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.5.1" style="font-size:90%;color:#000000;">35.86%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.6.1" style="font-size:90%;color:#000000;">55.29%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.7.1" style="font-size:90%;color:#000000;">25.13%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.40.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.8.1" style="font-size:90%;color:#000000;">25.84%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.40.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.40.9.1" style="font-size:90%;color:#000000;">28.23%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.41">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.1.1" style="font-size:90%;color:#000000;">Gen-2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib166" title="">166</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.2.1" style="font-size:90%;color:#000000;">55.47%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.3.1" style="font-size:90%;color:#000000;">89.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.4.1" style="font-size:90%;color:#000000;">89.49%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.5.1" style="font-size:90%;color:#000000;">66.91%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.6.1" style="font-size:90%;color:#000000;">48.91%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.7.1" style="font-size:90%;color:#000000;">19.34%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.41.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.8.1" style="font-size:90%;color:#000000;">24.12%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.41.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.41.9.1" style="font-size:90%;color:#000000;">26.17%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.42">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.1.1" style="font-size:90%;color:#000000;">AnimateDiff-v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib86" title="">86</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.2.1" style="font-size:90%;color:#000000;">36.88%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.3.1" style="font-size:90%;color:#000000;">92.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.4.1" style="font-size:90%;color:#000000;">87.47%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.5.1" style="font-size:90%;color:#000000;">34.60%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.6.1" style="font-size:90%;color:#000000;">50.19%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.7.1" style="font-size:90%;color:#000000;">22.42%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.42.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.8.1" style="font-size:90%;color:#000000;">26.03%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.42.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.42.9.1" style="font-size:90%;color:#000000;">27.04%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.43">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.1.1" style="font-size:90%;color:#000000;">Latte-1 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib26" title="">26</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.2.1" style="font-size:90%;color:#000000;">34.53%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.3.1" style="font-size:90%;color:#000000;">90.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.4.1" style="font-size:90%;color:#000000;">85.31%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.5.1" style="font-size:90%;color:#000000;">41.53%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.6.1" style="font-size:90%;color:#000000;">36.26%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.7.1" style="font-size:90%;color:#000000;">23.74%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.43.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.8.1" style="font-size:90%;color:#000000;">24.76%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.43.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.43.9.1" style="font-size:90%;color:#000000;">27.33%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.44">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.1.1" style="font-size:90%;color:#000000;">Pika-1.0 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib167" title="">167</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.2.1" style="font-size:90%;color:#000000;">43.08%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.3.1" style="font-size:90%;color:#000000;">86.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.4.1" style="font-size:90%;color:#000000;">90.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.5.1" style="font-size:90%;color:#000000;">61.03%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.6.1" style="font-size:90%;color:#000000;">49.83%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.7.1" style="font-size:90%;color:#000000;">22.26%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.44.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.8.1" style="font-size:90%;color:#000000;">24.22%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.44.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.44.9.1" style="font-size:90%;color:#000000;">25.94%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.45">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.1.1" style="font-size:90%;color:#000000;">Kling <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib168" title="">168</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.2.1" style="font-size:90%;color:#000000;">68.05%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.3.1" style="font-size:90%;color:#000000;">93.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.4.1" style="font-size:90%;color:#000000;">89.90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.5.1" style="font-size:90%;color:#000000;">73.03%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.6.1" style="font-size:90%;color:#000000;">50.86%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.7.1" style="font-size:90%;color:#000000;">19.62%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.45.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.8.1" style="font-size:90%;color:#000000;">24.17%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.45.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.45.9.1" style="font-size:90%;color:#000000;">26.42%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.46">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.1.1" style="font-size:90%;color:#000000;">Gen-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib169" title="">169</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.2.1" style="font-size:90%;color:#000000;">53.64%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.3.1" style="font-size:90%;color:#000000;">96.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.4.1" style="font-size:90%;color:#000000;">80.90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.5.1" style="font-size:90%;color:#000000;">65.09%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.6.1" style="font-size:90%;color:#000000;">54.57%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.7.1" style="font-size:90%;color:#000000;">24.31%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.46.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.8.1" style="font-size:90%;color:#000000;">24.71%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.46.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.46.9.1" style="font-size:90%;color:#000000;">26.69%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.47">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.1.1" style="font-size:90%;color:#000000;">CogVideoX-2B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib170" title="">170</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.2.1" style="font-size:90%;color:#000000;">62.63%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.3.1" style="font-size:90%;color:#000000;">98.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.4.1" style="font-size:90%;color:#000000;">79.41%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.5.1" style="font-size:90%;color:#000000;">69.90%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.6.1" style="font-size:90%;color:#000000;">51.14%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.7.1" style="font-size:90%;color:#000000;">24.80%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.47.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.8.1" style="font-size:90%;color:#000000;">24.36%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.47.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.47.9.1" style="font-size:90%;color:#000000;">26.66%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.48">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.1.1" style="font-size:90%;color:#000000;">CogVideoX-5B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2411.13503v1#bib.bib170" title="">170</a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.2.1" style="font-size:90%;color:#000000;">62.11%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.3.1" style="font-size:90%;color:#000000;">99.40%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.4.1" style="font-size:90%;color:#000000;">82.81%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.5.1" style="font-size:90%;color:#000000;">66.35%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.6.1" style="font-size:90%;color:#000000;">53.20%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.7.1" style="font-size:90%;color:#000000;">24.91%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.48.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.8.1" style="font-size:90%;color:#000000;">25.38%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.48.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.48.9.1" style="font-size:90%;color:#000000;">27.59%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.49">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.1.1" style="font-size:90%;">Empirical Min</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.2.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.3.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.4.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.5.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.6.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.7.1" style="font-size:90%;">0.09%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.7.1.49.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.8.1" style="font-size:90%;">0.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.1.49.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.49.9.1" style="font-size:90%;">0.00%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.50">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.1.1" style="font-size:90%;">Empirical Max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.2.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.3.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.4.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.5.1" style="font-size:90%;">100.00%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.6" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.6.1" style="font-size:90%;">82.22%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.7" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.7.1" style="font-size:90%;">28.55%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.50.8" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.8.1" style="font-size:90%;">36.40%</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.1.50.9" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S3.T2.7.1.50.9.1" style="font-size:90%;">36.40%</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.1.51">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.7.1.51.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S3.T2.7.1.51.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.51.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.51.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.51.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.51.6" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.51.7" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.51.8" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S3.T2.7.1.51.9" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of various video generative models across 16 different dimensions of video quality, as defined by the VBench++ benchmark.  The results show the performance of each model on each dimension, allowing for a detailed comparison of their strengths and weaknesses.  The table includes data for 32 models (a selection shown), significantly expanding upon the initial four presented in the CVPR 2024 paper.  Two additional rows provide baseline scores, 'Empirical Min' and 'Empirical Max', representing the theoretically lowest and highest achievable scores, respectively, on each dimension.  Higher scores indicate better performance on that specific dimension.
> <details>
> <summary>read the caption</summary>
> TABLE II:   Text-to-Video Evaluation Results per Dimension. This table compares the performance of video generative models across each of the 16 VBench dimensions. We continuously expand the VBench++ Leaderboard by evaluating 32 additional models beyond the 4 models initially presented in the CVPR 2024 paper. A selection of these newly evaluated models is presented in the table below. A higher score indicates relatively better performance for a particular dimension. We also provide two specially built baselines, i.e., Empirical Min and Max (the approximated achievable min and max scores for each dimension), as references.
> </details>

{{< table-caption >}}
| Models | I2V | Camera | Subject | Background | Temporal | Motion | Dynamic | Aesthetic | Imaging | Quality |
|---|---|---|---|---|---|---|---|---|---|---|
| DynamiCrafter-1024 [56] | 96.71% | 96.05% | 35.44% | 95.69% | 97.38% | 97.63% | 97.38% | 47.40% | 66.46% | 69.34% |
| SEINE-512x320 [57] | 94.85% | 94.02% | 23.36% | 94.20% | 97.26% | 96.72% | 96.68% | 34.31% | 58.42% | 70.97% |
| I2VGen-XL [64] | 96.74% | 95.44% | 13.32% | 96.36% | 97.93% | 98.48% | 98.31% | 24.96% | 65.33% | 69.85% |
| Animate-Anything [63] | 98.54% | 96.88% | 12.56% | 98.90% | 98.19% | 98.14% | 98.61% | 2.68% | 67.12% | 72.09% |
| ConsistI2V [60] | 94.69% | 94.57% | 33.60% | 95.27% | 98.28% | 97.56% | 97.38% | 18.62% | 59.00% | 66.92% |
| VideoCrafter-I2V [62] | 90.97% | 90.51% | 33.58% | 97.86% | 98.79% | 98.19% | 98.00% | 22.60% | 60.78% | 71.68% |
| SVD-XT-1.1 [55] | 97.51% | 97.62% | - | 95.42% | 96.77% | 99.17% | 98.12% | 43.17% | 60.23% | 70.23% |{{< /table-caption >}}
> 🔼 Table III presents a detailed comparison of seven different image-to-video (I2V) generative models across various evaluation dimensions defined in the VBench++ benchmark.  These dimensions assess multiple aspects of video generation quality, including consistency between the generated video and the input image (in terms of subject, background, and camera motion) as well as the overall quality of the generated video (in terms of temporal flickering, motion smoothness, aesthetic and imaging quality, dynamic degree, and the video's general consistency).  Higher scores indicate better performance in each dimension, providing a comprehensive view of each model's strengths and weaknesses in I2V generation.
> <details>
> <summary>read the caption</summary>
> TABLE III: Image-to-Video Evaluation Results. This table compares the performance of seven I2V models across VBench++’s I2V dimensions. A higher score indicates relatively better performance for a particular dimension.
> </details>

{{< table-caption >}}
| Models | Culture | Gender | Skin | Safety |
|---|---|---|---|---|
| LaVie [26] | 81.59% | 22.91% | 13.38% | 50.11% |
| ModelScope [20, 27] | 81.75% | 36.70% | 28.44% | 41.22% |
| Show-1 [171] | 79.21% | 16.68% | 20.61% | 43.89% |
| VideoCrafter0.9 [24] | 74.76% | 39.57% | 17.56% | 42.00% |
| VideoCrafter2.0 [36] | 84.92% | 14.25% | 30.94% | 54.33% |
| CogVideo [19] | 49.29% | 21.59% | 15.08% | 42.11% |{{< /table-caption >}}
> 🔼 Table IV presents a quantitative analysis of the trustworthiness of various image and video generative models.  Trustworthiness is assessed across four dimensions: Culture Fairness (how well the models avoid cultural biases), Gender Bias (how well the models avoid gender biases), Skin Tone Bias (how well the models avoid skin tone biases), and Safety (how well the models avoid generating unsafe content).  Higher scores indicate better performance in each trustworthiness dimension, signifying the model's ability to generate content free from harmful biases and unsafe material.
> <details>
> <summary>read the caption</summary>
> TABLE IV: Evaluation Results for Model Trustworthiness. This table compares the trustworthiness of image and video generative models. A higher score indicates relatively better performance for a particular dimension.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.13503/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.13503/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}