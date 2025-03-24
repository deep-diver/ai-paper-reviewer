---
title: "CapArena: Benchmarking and Analyzing Detailed Image Captioning in the LLM Era"
summary: "CapArena: Detailed image caption benchmark in the LLM era, revealing metric biases and advancing automated evaluation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 National Key Laboratory for Novel Software Technology, Nanjing University",]
showSummary: true
date: 2025-03-16
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12329 {{< /keyword >}}
{{< keyword icon="writer" >}} Kanzhi Cheng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12329" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12329" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12329/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Image captioning faces new challenges with the rise of VLMs, where models can generate longer descriptions. However, reliably evaluating such detailed captions is difficult because of the fine-grained details, diversity and lack of reliable benchmarks. This paper addresses the question of how well VLMs perform when compared to human captioning & how we can reliably assess the quality of the captions they generate. It also shows that current evaluation methods are unsuitable due to their inherent biases.



To tackle these issues, the authors introduce **CapArena**, an arena-style platform for evaluating VLMs via pairwise caption battles. **It provides high-quality human preference votes to benchmark models**. They show that leading models like GPT-4o can match or exceed human-level performance. The authors also introduce **CapArena-Auto**, a new automated benchmark for detailed captioning, achieving high correlation with human rankings at a low cost.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Leading VLMs now rival or surpass human performance in detailed image captioning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Traditional and recent captioning metrics are often unreliable for detailed captions due to inherent biases. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VLM-as-a-Judge shows promise for automated evaluation, especially with reference captions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work provides a crucial benchmark for evaluating detailed image captioning, a task becoming increasingly important. It reveals the limitations of existing metrics and open-source models, while also introducing a new automated benchmark. **This paves the way for more accurate and efficient development of VLMs** and deeper understanding in image content.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12329/x1.png)

> 🔼 This figure presents the results of a pairwise comparison-based evaluation of various vision-language models (VLMs) on the task of detailed image captioning. The models are ranked according to their performance in head-to-head comparisons against human-generated captions. The ranking reveals that top-performing, commercial VLMs achieve performance on par with human annotators, demonstrating the advancement of this technology.  Conversely, many open-source models lag significantly behind, indicating a considerable performance gap between commercial and open-source VLMs in this area.
> <details>
> <summary>read the caption</summary>
> Figure 1: Model rankings from CapArena in detailed captioning. Top models are comparable to humans, while most open-source models lag behind.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.2.2">
<tr class="ltx_tr" id="S1.T1.2.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S1.T1.2.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.3.1.1">
<span class="ltx_p" id="S1.T1.2.2.3.1.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.1.1.1.1">Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S1.T1.2.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.3.2.1">
<span class="ltx_p" id="S1.T1.2.2.3.2.1.1" style="width:303.5pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.2.1.1.1">Pairwise Caption Battle</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S1.T1.2.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.3.3.1">
<span class="ltx_p" id="S1.T1.2.2.3.3.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.3.3.1.1.1">Preference</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.1.1.1.1">
<span class="ltx_p" id="S1.T1.1.1.1.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S1.T1.1.1.1.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="99" id="S1.T1.1.1.1.1.1.1.1.g1" src="extracted/6280623/latex/images/pro_case2.jpg" width="97"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.1.1.2.1">
<span class="ltx_p" id="S1.T1.1.1.1.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S1.T1.1.1.1.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="S1.T1.1.1.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.2.1.1.1.1.1">Caption1 (Qwen2-VL-72B):</span> … The dog is holding a stick in its mouth, and <span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.1.2.3" style="background-color:#FFB3B3;">the kitten is standing on its hind legs</span></span>, reaching up to grab the stick. The kitten’s front paws are extended towards the stick, and <span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.1.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.1.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.1.3.3" style="background-color:#FFB3B3;">its body is slightly arched</span></span> as it tries to take the stick from the dog. …</span>
<span class="ltx_p" id="S1.T1.1.1.1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.2.1.1.1.2.1">Caption2 (Human):</span> … A gray and black kitten is <span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.2.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.2.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.2.2.3" style="background-color:#B3D9B3;">leaping into the air at the dog’s face</span></span>. It is <span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.2.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.2.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.2.3.3" style="background-color:#B3D9B3;">facing the back at a right angle</span></span>. Its right leg is extended out with its paw in front of the dog’s face. <span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.2.4"><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.2.4.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.1.1.1.2.1.1.1.2.4.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.1.1.1.2.1.1.1.2.4.3" style="background-color:#B3D9B3;">Its tail is down to the right in the air</span></span>. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S1.T1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.1.1.1.3.1">
<span class="ltx_p" id="S1.T1.1.1.1.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S1.T1.1.1.1.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="S1.T1.1.1.1.3.1.1.1.1">Caption2 is better (more accurate and vivid description of the cat’s posture).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.2.1.1">
<span class="ltx_p" id="S1.T1.2.2.2.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S1.T1.2.2.2.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="106" id="S1.T1.2.2.2.1.1.1.1.g1" src="extracted/6280623/latex/images/pro_case1.jpg" width="97"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.2.2.1">
<span class="ltx_p" id="S1.T1.2.2.2.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S1.T1.2.2.2.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="S1.T1.2.2.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.2.1.1.1.1.1">Caption1 (GPT-4o):</span> … The mural features a figure that appears to be inspired by <span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.1.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.1.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.1.2.3" style="background-color:#B3D9B3;">traditional Asian art, possibly a deity or spiritual figure</span></span>. The figure is depicted with a serene expression … Surrounding the figure is a halo-like glow in warm tones of yellow and orange, <span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.1.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.1.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.1.3.3" style="background-color:#B3D9B3;">adding a sense of divinity or spirituality</span></span>.</span>
<span class="ltx_p" id="S1.T1.2.2.2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T1.2.2.2.2.1.1.1.2.1">Caption2 (LLama-3.2-90B):</span> The image depicts <span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.2.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.2.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.2.2.3" style="background-color:#FFB3B3;">a vibrant mural of a woman</span></span> on the side of a building, surrounded by various objects and features. **Mural:** The mural is painted in bright colors, featuring <span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.2.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="S1.T1.2.2.2.2.1.1.1.2.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="S1.T1.2.2.2.2.1.1.1.2.3.3" style="background-color:#FFB3B3;">a woman</span></span> with long dark hair wearing a blue robe …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S1.T1.2.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S1.T1.2.2.2.3.1">
<span class="ltx_p" id="S1.T1.2.2.2.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="S1.T1.2.2.2.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="S1.T1.2.2.2.3.1.1.1.1">Caption1 is better (<span class="ltx_text ltx_font_italic" id="S1.T1.2.2.2.3.1.1.1.1.1">a spiritual figure</span> is much more informative than <span class="ltx_text ltx_font_italic" id="S1.T1.2.2.2.3.1.1.1.1.2">a woman</span>).</span>
</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table showcases examples of pairwise comparisons used in the CapArena benchmark.  Each comparison presents two captions describing the same image: one generated by a VLM and one by a human. Annotators judged which caption was better, providing feedback on accuracy and detail.  Red highlights less accurate or less preferable phrases within the captions, while green highlights more accurate or preferable ones.  The complete evaluation guidelines are described in Section 3.1, with additional examples provided in Table 6.
> <details>
> <summary>read the caption</summary>
> Table 1: Examples of pairwise battles in CapArena. Red and green indicate less accurate and more preferable expressions, respectively. The evaluation guidelines are detailed in Section 3.1, and more examples are in Table 6.
> </details>





### In-depth insights


#### Arena Style Eval
**Arena-style evaluation**, drawing inspiration from LLM evaluations, marks a significant advancement. This approach involves pitting captions against each other in pairwise comparisons, judged by humans, to determine preference. It helps overcomes the subjectivity inherent in evaluating detailed descriptions. **Human preferences are essential** due to the nuanced understanding required. **Pairwise comparisons provide a more direct ranking** than scoring systems. This method allows for more granular comparisons, even when differences are subtle. The arena approach mimics real-world scenarios where relative quality matters more than absolute scores. It offers a comprehensive model performance assessment, highlighting comparative strengths and weaknesses. While the method relies on human annotations, the high inter-annotator agreement, ensures data reliability. Ultimately, arena-style evaluation provides a nuanced approach. It facilitates the identification of top-performing models and drives progress in image captioning.

#### VLM Caption Biases
**VLM caption biases** are a crucial concern when evaluating image captioning models. Different VLMs may exhibit systematic tendencies to overemphasize or underestimate certain aspects of an image or favor particular descriptive styles. This can stem from biases present in the VLM's training data, architectural limitations, or the evaluation metrics employed. For example, a VLM trained primarily on datasets with simple captions may struggle to capture the nuances of complex scenes, while another model might be inclined to generate overly verbose descriptions. Understanding these biases is essential for developing more robust and reliable evaluation methods and for ensuring that VLMs generate captions that are accurate, informative, and representative of the image content. Identifying **model biases** will allow the development community to create more fair and trustworthy models for caption generation.

#### Detailed Eval Era
The "Detailed Eval Era" in image captioning signifies a shift towards **more nuanced and comprehensive evaluation methodologies**. Traditional metrics often fall short in capturing the richness and accuracy of the descriptions generated by modern Vision-Language Models (VLMs). This era necessitates metrics that can assess the **fine-grained details, spatial relationships, and contextual understanding** exhibited in captions. Furthermore, it involves **addressing the biases inherent in existing evaluation methods** and ensuring that the assessment aligns with human preferences. The focus moves beyond simple n-gram overlap to encompass semantic relevance and the ability to detect subtle errors or hallucinations in the generated text. **Robust benchmarks** with high-quality human annotations become crucial for reliably comparing different models and driving progress in detailed image understanding and description.

#### Automated Metrics?
The question of automated metrics in image captioning is crucial, especially with the advent of VLMs generating detailed captions. Traditional metrics, designed for shorter captions, often fail to capture the nuances and fine-grained details present in longer descriptions. This necessitates the development of new, more robust automated evaluation methods. While some existing metrics like METEOR show promise at the caption level, they exhibit systematic biases across different models, leading to unreliable model rankings. Therefore, reliable automated metrics are essential for efficient benchmarking and iterative improvement of detailed captioning capabilities in VLMs. This ensures **accurate assessment** and **reduces reliance on costly human evaluations**. One promising solution lies in employing VLM-as-a-Judge, leveraging the capabilities of powerful VLMs to simulate human preferences and provide more consistent and accurate evaluations.

#### VLM Judge Insights
VLM-as-a-Judge presents itself as a promising avenue for automated caption evaluation, offering notable advantages over traditional metrics. Its key strength lies in its ability to **better discern fine-grained details** and nuanced semantic alignment between images and captions. Moreover, **reference descriptions enhances judgement** by clarifying image details, further improving model level agreement. This approach suggests that **reducing bias** in automated metrics is crucial for accurate model assessment. While exhibiting strong consistency with human preferences, challenges remain in evaluating subtly different caption pairs, highlighting the need for improvements in fine-grained perception.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12329/x2.png)

> 🔼 This figure shows the distribution of caption lengths generated by various Vision-Language Models (VLMs) and human annotators.  The x-axis represents the caption length in words, and the y-axis represents the frequency of captions with that length.  The distributions are shown as histograms, allowing for a visual comparison of how concise or verbose the different models tend to be in their image captioning.  It helps to visualize whether a model produces relatively short or long captions and how that compares to human-generated captions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Caption length distribution of different VLMs.
> </details>



![](https://arxiv.org/html/2503.12329/x3.png)

> 🔼 This figure visualizes the results of pairwise comparisons between different vision-language models (VLMs) in the CapArena benchmark.  The heatmap displays the number of pairwise comparisons conducted between each model pair (battle counts), showing how often each model was pitted against every other model.  The win rate matrix uses color intensity to represent each model's win rate in its head-to-head battles against other models, providing a visual representation of the relative performance of the different VLMs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Battle counts and win rate matrix between models in CapArena.
> </details>



![](https://arxiv.org/html/2503.12329/x4.png)

> 🔼 This figure displays the correlation between a model's performance on standard vision-language benchmarks and its ranking in the CapArena benchmark specifically designed for detailed image captioning.  The x-axis represents the scores from various vision-language benchmarks (MathVista, POPE, and VCR), while the y-axis shows the ranking in CapArena.  Each point corresponds to a specific Vision-Language Model (VLM), and its size reflects the model's parameter count.  The plot reveals that strong performance on general vision-language benchmarks does not guarantee strong performance on detailed image captioning tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Correlation between vision-language benchmark scores and CapArena ranking. Models that perform well on general benchmarks do not necessarily excel in captioning. The size of each point represents the model size.
> </details>



![](https://arxiv.org/html/2503.12329/x5.png)

> 🔼 Figure 5 is a heatmap visualizing the systematic biases of various captioning metrics. Each row represents a model, and each column corresponds to a specific metric.  The color intensity indicates the bias magnitude, with warmer colors indicating overestimation and cooler colors indicating underestimation of the model's performance by that metric. The figure reveals that different metrics exhibit varying degrees of bias towards different models, highlighting the lack of consistency in metric evaluation. Notably, GPT-40 shows relatively low biases across most metrics, which contributes to its higher model-level agreement with human judgments, as shown in Table 2.
> <details>
> <summary>read the caption</summary>
> Figure 5: Metrics exhibit systematic biases—overestimating (positive values) or underestimating (negative values) certain models. Color saturation represents bias magnitude. Different metrics favor different models. GPT-4o exhibits lower biases (lighter overall colors), contributing to higher model-level agreement observed in Table 2.
> </details>



![](https://arxiv.org/html/2503.12329/x6.png)

> 🔼 This figure shows two detailed captions generated by a Vision-Language Model (VLM) for the same image.  The difference highlights how variations in prompt wording can significantly affect the generated caption's level of detail, descriptive style, and the specific aspects of the image that are emphasized.  The captions demonstrate the VLM's ability to generate detailed and descriptive text based on different prompts.  The image itself is not shown.
> <details>
> <summary>read the caption</summary>
> Figure 6: Detailed caption generated with different prompt.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T2.1.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.1">Need</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T2.1.1.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.3.1">Caption-level Agreement (Including Tie)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.2.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.4.1">Model-level Agreement</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">Metrics</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">Ref?</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1">Level1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.6.1">Level2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.7.1">Level3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.1.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.8.1">Level4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.9.1">Spearman</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Kendall <math alttext="\tau" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">italic_τ</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Inter-Annotator</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.683</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.810</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.650</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.650</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.620</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.3.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Output Length</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.585</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.672</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.593</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.552</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.4.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.521</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.710</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.582</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.1.1.5.1" style="background-color:#DFDFDF;padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.1.1" style="background-color:#DFDFDF;">Traditional Image Captioning Metrics</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">BLEU-4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.474</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.477</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.480</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.475</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.6.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.467</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.424</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.319</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">SPICE</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.417</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.441</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.422</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.415</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.387</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.275</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0. 231</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">CIDER</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.384</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.378</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.383</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.389</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.8.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.387</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-0.279</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-0.209</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">METEOR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.576</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.657</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.582</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.536</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.9.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.530</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.785</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.9.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.582</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Polos</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.479</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.526</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.467</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.462</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.10.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.462</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.420</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.10.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.363</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">CLIPScore</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.325</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.266</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.308</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.362</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.11.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.355</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-0.574</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.11.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-0.451</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">LongCLIPScore</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.400</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.422</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.404</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.384</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.12.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.395</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">-0.226</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.12.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">-0.121</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">FLEUR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.458</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.513</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.462</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.444</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.13.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.414</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.393</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.13.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.297</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.1.1.14.1" style="background-color:#DFDFDF;padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.14.1.1" style="background-color:#DFDFDF;">Metrics Designed for Detailed Image Captioning</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">CAPTURE</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.525</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.601</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.504</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.15.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.479</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.15.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.613</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.15.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.538</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">VDC-Score</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.557</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.687</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.579</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.496</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.16.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.460</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.890</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.16.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.736</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.17">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.1.1.17.1" style="background-color:#DFDFDF;padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.17.1.1" style="background-color:#DFDFDF;">VLM-as-a-Judge</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">LLaVA-OneVision</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.606</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.709</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.642</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.541</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.18.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.537</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.18.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.921</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.18.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.780</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">LLaVA-Critic</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.609</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.735</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.631</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.544</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.19.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.530</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.903</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.19.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.736</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">Qwen2.5-VL</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.625</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.739</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.647</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.566</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.20.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.552</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.908</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.20.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.736</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.21.3.1">0.628</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.21.4.1">0.740</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.647</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.21.6.1">0.572</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.1.21.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.557</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.21.8" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.930</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.21.9" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.802</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.22">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.1.1.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">GPT-4o (with ref)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.22.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.22.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.627</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.22.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.733</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.22.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.22.5.1">0.663</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.22.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">0.559</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.1.22.7" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.22.7.1">0.560</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.22.8" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.22.8.1">0.943</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.22.9" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.22.9.1">0.846</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of different captioning metrics on the task of detailed image captioning.  It compares traditional metrics (like BLEU, CIDEr, METEOR), recently proposed metrics designed for detailed captions (like CAPTURE, VDC-Score), and the novel VLM-as-a-Judge approach. The evaluation considers both caption-level agreement (how well each metric agrees with human judgment on individual captions) and model-level agreement (how well metric rankings of different models correlate with human rankings).  The table also notes whether a metric requires human-written reference captions.  Higher scores indicate better alignment with human preferences. The results show that GPT-40, when used as an evaluator (VLM-as-a-Judge), significantly outperforms other methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation of various metrics on detailed captioning tasks. Need Ref indicates whether human-written reference captions are required. Higher scores indicate better alignment with human preferences. The best results in each column are highlighted in bold. GPT-4o as the evaluator achieves the best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.1.1">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<td class="ltx_td ltx_border_tt" id="S5.T3.1.1.1.2"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.3.1">Spearman</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1">Kendall <math alttext="\tau" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.1.m1.1a"><mi id="S5.T3.1.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.1.m1.1.1.cmml">τ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.1.m1.1.1">𝜏</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.1.m1.1c">\tau</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.1.m1.1d">italic_τ</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.1.1.2.1">DOCCI (with BLEU-4)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.2">0.341</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.1.1.2.3">0.275</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.3">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.3.1">DOCCI (with METEOR)</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.2">0.859</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.3.3">0.648</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.4">
<td class="ltx_td ltx_align_left" id="S5.T3.1.1.4.1">CAPTURE</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.2">0.763</td>
<td class="ltx_td ltx_align_center" id="S5.T3.1.1.4.3">0.604</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.1.1.5.1"><span class="ltx_text ltx_font_italic" id="S5.T3.1.1.5.1.1">CapArena-Auto</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.2"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.5.2.1">0.943</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.1.1.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.5.3.1">0.824</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the correlation between CapArena-Auto, an automated benchmark for detailed image captioning, and the human-evaluated rankings from CapArena.  The Spearman and Kendall's Tau correlation coefficients are shown, indicating the strength of agreement between the automated and human evaluations. CapArena-Auto demonstrates the highest correlation with human judgments, signifying its effectiveness as a reliable and efficient alternative to human evaluation for this task.
> <details>
> <summary>read the caption</summary>
> Table 3: Correlation between the automated benchmark and CapArena’s golden ranking. CapArena-Auto exhibits the highest alignment with human preferences.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T4.1">
<tr class="ltx_tr" id="A2.T4.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A2.T4.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.1.1.1">
<span class="ltx_p" id="A2.T4.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.1.1">Prompts for Caption Generating</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T4.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.2.1.1">
<span class="ltx_p" id="A2.T4.1.2.1.1.1" style="width:411.9pt;">Describe this image in detail.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.3.1.1">
<span class="ltx_p" id="A2.T4.1.3.1.1.1" style="width:411.9pt;">Generate a detailed caption for this image.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.4.1.1">
<span class="ltx_p" id="A2.T4.1.4.1.1.1" style="width:411.9pt;">Explain the contents of this photo with specifics.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.5.1.1">
<span class="ltx_p" id="A2.T4.1.5.1.1.1" style="width:411.9pt;">Create a rich and descriptive caption for this visual content.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.6.1.1">
<span class="ltx_p" id="A2.T4.1.6.1.1.1" style="width:411.9pt;">Give this image a detailed image caption.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.7.1.1">
<span class="ltx_p" id="A2.T4.1.7.1.1.1" style="width:411.9pt;">Write a detailed explanation of the scene depicted here.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.8.1.1">
<span class="ltx_p" id="A2.T4.1.8.1.1.1" style="width:411.9pt;">Provide a detailed description of this photo.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.9.1.1">
<span class="ltx_p" id="A2.T4.1.9.1.1.1" style="width:411.9pt;">Provide a thorough description of this image.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.1.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.10.1.1">
<span class="ltx_p" id="A2.T4.1.10.1.1.1" style="width:411.9pt;">Describe this scene with specifics.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T4.1.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.11.1.1">
<span class="ltx_p" id="A2.T4.1.11.1.1.1" style="width:411.9pt;">Provide a descriptive caption for this image.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the ten different prompts used to generate detailed image captions for the CapArena benchmark.  These prompts varied slightly in wording to encourage a range of descriptive responses from the various vision-language models being evaluated.
> <details>
> <summary>read the caption</summary>
> Table 4: Prompts for detailed captioning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T5.2.2">
<tr class="ltx_tr" id="A4.T5.2.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T5.2.2.3.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.2.3.1.1">
<span class="ltx_p" id="A4.T5.2.2.3.1.1.1" style="width:160.4pt;"><span class="ltx_text ltx_font_bold" id="A4.T5.2.2.3.1.1.1.1">Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T5.2.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.2.3.2.1">
<span class="ltx_p" id="A4.T5.2.2.3.2.1.1" style="width:273.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T5.2.2.3.2.1.1.1">Detailed Caption</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T5.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.1.1.1.1">
<span class="ltx_p" id="A4.T5.1.1.1.1.1.1" style="width:160.4pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A4.T5.1.1.1.1.1.1.1" style="width:160.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="150" id="A4.T5.1.1.1.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_03636.jpg" width="199"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T5.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.1.1.1.2.1">
<span class="ltx_p" id="A4.T5.1.1.1.2.1.1" style="width:273.2pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A4.T5.1.1.1.2.1.1.1" style="width:273.2pt;">
<span class="ltx_p" id="A4.T5.1.1.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T5.1.1.1.2.1.1.1.1.1">human: </span>A dog laying on it’s belly looking at the camera, The dog appears to be by a tree on a lawn of grass with dead leaves around the area. The dog has white and curly fur, It has a bone held by its paws, and has a red leash leading to the bottom of the image. The dog is looking directly at the camera and has its body shifted to the right.</span>
<span class="ltx_p" id="A4.T5.1.1.1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T5.1.1.1.2.1.1.1.2.1">GPT-4o-0806</span>: A fluffy, cream-colored puppy is resting against the trunk of a large tree in a grassy area. The puppy has a soft, curly coat and is holding a chew stick in its front paws. <span class="ltx_text" id="A4.T5.1.1.1.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A4.T5.1.1.1.2.1.1.1.2.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.1.1.1.2.1.1.1.2.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.1.1.1.2.1.1.1.2.2.3" style="background-color:#B3D9B3;">A red leash is attached to its collar</span></span>, trailing across the grass. The ground is scattered with dry leaves, <span class="ltx_text" id="A4.T5.1.1.1.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A4.T5.1.1.1.2.1.1.1.2.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.1.1.1.2.1.1.1.2.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.1.1.1.2.1.1.1.2.3.3" style="background-color:#B3D9B3;">and the background shows part</span></span> <span class="ltx_text" id="A4.T5.1.1.1.2.1.1.1.2.4"><span class="ltx_text ltx_phantom" id="A4.T5.1.1.1.2.1.1.1.2.4.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.1.1.1.2.1.1.1.2.4.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.1.1.1.2.1.1.1.2.4.3" style="background-color:#B3D9B3;">of a house with some garden elements</span></span>. The puppy looks content and relaxed in its outdoor setting.</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T5.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A4.T5.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.2.2.1.1">
<span class="ltx_p" id="A4.T5.2.2.2.1.1.1" style="width:160.4pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A4.T5.2.2.2.1.1.1.1" style="width:160.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="157" id="A4.T5.2.2.2.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_01540.jpg" width="210"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A4.T5.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T5.2.2.2.2.1">
<span class="ltx_p" id="A4.T5.2.2.2.2.1.1" style="width:273.2pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A4.T5.2.2.2.2.1.1.1" style="width:273.2pt;">
<span class="ltx_p" id="A4.T5.2.2.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T5.2.2.2.2.1.1.1.1.1">human: </span>A medium three quarters frontal view of a white yacht on a dock near a body of water that is partially visible at the bottom of the view. Behind the yacht is a large blue building with a blue toned color on the right side of the view, and on its left side the color is gray. The building extends from the middle left of the view to the right side. At the top of the view the blue sky is visible behind large metal constructs and poles that stand above the yacht and nearby building. Between the metal columns and poles are large nets that extend across the upper portion of the view. Reflections of the white yahct are visible on the water at the bottom of the view. The yacht has blue accents around the bottom and has two different deck sections.</span>
<span class="ltx_p" id="A4.T5.2.2.2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T5.2.2.2.2.1.1.1.2.1">GPT-4o-0806</span>: The image depicts a large yacht docked at a marina. <span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.2.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.2.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.2.2.3" style="background-color:#B3D9B3;">The yacht</span></span> <span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.2.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.2.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.2.3.3" style="background-color:#B3D9B3;">has a sleek, modern design with a white hull and a blue stripe near the waterline</span></span>. <span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.2.4"><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.2.4.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.2.4.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.2.4.3" style="background-color:#B3D9B3;">The upper structure features a combination of white and wooden elements, giv-</span></span></span>
<span class="ltx_p" id="A4.T5.2.2.2.2.1.1.1.3"><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.3.3" style="background-color:#B3D9B3;">ing it a classic and elegant appearance</span></span>
<span class="ltx_p" id="A4.T5.2.2.2.2.1.1.1.4">. The main deck has wooden railings and a covered area with blue fabric, likely for protection against the elements. The yacht has multiple levels, with large windows on the lower deck and a spacious upper deck area, possibly for navigation and leisure. There are antennas and equipment on the top, indicating communication or navigation systems. In the background, <span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.4.1"><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.4.1.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.4.1.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.4.1.3" style="background-color:#B3D9B3;">there is a large building with a blue exterior and multiple windows</span></span>, <span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.4.2"><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.4.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.4.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.4.2.3" style="background-color:#B3D9B3;">some of which display images or posters</span></span>. The building is adjacent to the marina, with a walkway and railings visible alongside the water. Above the building, there are tall metal structures, possibly part of a nearby facility or infrastructure. The water is calm, reflecting parts of the yacht and the surrounding structures. <span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.4.3"><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.4.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A4.T5.2.2.2.2.1.1.1.4.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A4.T5.2.2.2.2.1.1.1.4.3.3" style="background-color:#B3D9B3;">The sky is clear, suggesting a sunny day</span></span>.</span>
</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents two examples where GPT-40's image captioning outperforms human-generated captions. For each example, an image is shown along with the human-generated caption and the caption generated by GPT-40.  The GPT-40 captions demonstrate a more detailed and comprehensive description of the image, including details that the human captions omitted.  The examples highlight the ability of GPT-40 to surpass human-level performance in detailed image captioning, particularly in noticing and including fine-grained features.
> <details>
> <summary>read the caption</summary>
> Table 5: Examples of GPT-4o perform better than human
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A6.T6.8.8">
<tr class="ltx_tr" id="A6.T6.8.8.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A6.T6.8.8.9.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.8.8.9.1.1">
<span class="ltx_p" id="A6.T6.8.8.9.1.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="A6.T6.8.8.9.1.1.1.1">Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A6.T6.8.8.9.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.8.8.9.2.1">
<span class="ltx_p" id="A6.T6.8.8.9.2.1.1" style="width:303.5pt;"><span class="ltx_text ltx_font_bold" id="A6.T6.8.8.9.2.1.1.1">Pairwise Caption Battle</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A6.T6.8.8.9.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.8.8.9.3.1">
<span class="ltx_p" id="A6.T6.8.8.9.3.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="A6.T6.8.8.9.3.1.1.1">Preference</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.1.1.1.1.1">
<span class="ltx_p" id="A6.T6.1.1.1.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.1.1.1.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="79" id="A6.T6.1.1.1.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_00727.jpg" width="105"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.1.1.1.2.1">
<span class="ltx_p" id="A6.T6.1.1.1.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.1.1.1.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.1.1.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.1.1.1.2.1.1.1.1.1">Caption1 (Qwen2-VL-7B):</span> … The background shows more cars parked outside, <span class="ltx_text" id="A6.T6.1.1.1.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.1.1.1.2.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.1.1.1.2.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.1.1.1.2.1.1.1.1.2.3" style="background-color:#FFB3B3;">indicating that the dealership has a large inventory</span></span>. The showroom also features a high ceiling with large windows, allowing for ample natural light. …</span>
<span class="ltx_p" id="A6.T6.1.1.1.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.1.1.1.2.1.1.1.2.1">Caption2 (Qwen2-VL-72B):</span> … Outside the large windows, the view shows <span class="ltx_text" id="A6.T6.1.1.1.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.1.1.1.2.1.1.1.2.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.1.1.1.2.1.1.1.2.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.1.1.1.2.1.1.1.2.2.3" style="background-color:#B3D9B3;">a parking</span></span> <span class="ltx_text" id="A6.T6.1.1.1.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A6.T6.1.1.1.2.1.1.1.2.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.1.1.1.2.1.1.1.2.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.1.1.1.2.1.1.1.2.3.3" style="background-color:#B3D9B3;">lot with several cars parked, including a mix of sedans and SUVs</span></span>. The parking lot is surrounded by greenery, with trees and bushes visible in the distance. The sky is partly cloudy, with patches of blue sky and white clouds. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.1.1.1.3.1">
<span class="ltx_p" id="A6.T6.1.1.1.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.1.1.1.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.1.1.1.3.1.1.1.1">Caption2 is better (Caption1 has baseless speculation).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.2.2.2.1.1">
<span class="ltx_p" id="A6.T6.2.2.2.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.2.2.2.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="79" id="A6.T6.2.2.2.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_00578.jpg" width="105"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.2.2.2.2.1">
<span class="ltx_p" id="A6.T6.2.2.2.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.2.2.2.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.2.2.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.2.2.1.1.1.1.1">Caption1 (Gemini-2.0-flash-exp):</span> … The most prominent feature is a large, <span class="ltx_text" id="A6.T6.2.2.2.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.2.2.2.2.1.1.1.1.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.2.2.2.2.1.1.1.1.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.2.2.2.2.1.1.1.1.2.3" style="background-color:#B3D9B3;">reversed text</span></span> <span class="ltx_text" id="A6.T6.2.2.2.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A6.T6.2.2.2.2.1.1.1.1.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.2.2.2.2.1.1.1.1.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.2.2.2.2.1.1.1.1.3.3" style="background-color:#B3D9B3;">that reads "BLACK SASH"</span></span> when viewed correctly (likely through a window). The letters are black, three-dimensional, and seemingly made of a hard, glossy material. …</span>
<span class="ltx_p" id="A6.T6.2.2.2.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.2.2.2.2.1.1.1.2.1">Caption2 (MiniCPM-V2.6-8B):</span> The image shows a wall with the word <span class="ltx_text" id="A6.T6.2.2.2.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.2.2.2.2.1.1.1.2.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.2.2.2.2.1.1.1.2.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.2.2.2.2.1.1.1.2.2.3" style="background-color:#FFB3B3;">"BLACK ASH"</span></span> written in large, black, capital letters. Below the text, there are several colorful ribbons or banners attached to the wall. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.2.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.2.2.2.3.1">
<span class="ltx_p" id="A6.T6.2.2.2.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.2.2.2.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.2.2.2.3.1.1.1.1">Caption1 is better (correctly point out "reversed" and accurately identify it).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.3.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.3.3.3.1.1">
<span class="ltx_p" id="A6.T6.3.3.3.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.3.3.3.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="138" id="A6.T6.3.3.3.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_03897.jpg" width="103"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.3.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.3.3.3.2.1">
<span class="ltx_p" id="A6.T6.3.3.3.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.3.3.3.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.3.3.3.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.3.3.3.2.1.1.1.1.1">Caption1 (GPT-4o-0806):</span> … It shows a person sitting on a wooden chair by a lake, <span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.1.2.3" style="background-color:#FFB3B3;">but instead of a human head, the person has the head of a dog. The dog’s head is large</span></span> <span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.1.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.1.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.1.3.3" style="background-color:#FFB3B3;">and fluffy, with a friendly expression and perked ears</span></span>. The person is wearing a gray shirt, white pants, and brown slip-on shoes, and their arms are resting on the armrests of the chair. …</span>
<span class="ltx_p" id="A6.T6.3.3.3.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.3.3.3.2.1.1.1.2.1">Caption2 (Claude-3.5-Sonnet):</span> … The scene shows a large, <span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.2.3" style="background-color:#B3D9B3;">fluffy dog sitting on</span></span> <span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.3.3" style="background-color:#B3D9B3;">someone’s lap</span></span> in a wooden chair on what looks like a dock or pier by a body of water. The dog, which seems to be a mixed breed with long fur, is front and center, <span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.4"><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.4.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.4.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.4.3" style="background-color:#B3D9B3;">taking up</span></span> <span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.5"><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.5.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.3.3.3.2.1.1.1.2.5.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.3.3.3.2.1.1.1.2.5.3" style="background-color:#B3D9B3;">most of the person’s torso and obscuring their upper body</span></span>. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.3.3.3.3.1">
<span class="ltx_p" id="A6.T6.3.3.3.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.3.3.3.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.3.3.3.3.1.1.1.1">Caption2 is better (correctly identify the spatial relationship).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.4.4.4.1.1">
<span class="ltx_p" id="A6.T6.4.4.4.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.4.4.4.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="79" id="A6.T6.4.4.4.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_01562.jpg" width="105"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.4.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.4.4.4.2.1">
<span class="ltx_p" id="A6.T6.4.4.4.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.4.4.4.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.4.4.4.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.4.4.4.2.1.1.1.1.1">Caption1 (Claude-3.5-Sonnet):</span> … There are at least three turtles visible, with <span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.1.2.3" style="background-color:#FFB3B3;">one larger turtle perched on top</span></span> and <span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.1.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.1.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.1.3.3" style="background-color:#FFB3B3;">two smaller ones below</span></span>. The turtles’ shells have distinct patterns and colors, ranging from dark green to brown. …</span>
<span class="ltx_p" id="A6.T6.4.4.4.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.4.4.4.2.1.1.1.2.1">Caption2 (human):</span> … There is <span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.2.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.2.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.2.2.3" style="background-color:#B3D9B3;">one big turtle and a little small one on top of its shell</span></span> and in front of the big turtle there is <span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.2.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.4.4.4.2.1.1.1.2.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.4.4.4.2.1.1.1.2.3.3" style="background-color:#B3D9B3;">a small one on the log looking up</span></span>. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.4.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.4.4.4.3.1">
<span class="ltx_p" id="A6.T6.4.4.4.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.4.4.4.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.4.4.4.3.1.1.1.1">Caption2 is better (accurately identify the characteristics of the three turtles).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.5.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.5.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.5.5.5.1.1">
<span class="ltx_p" id="A6.T6.5.5.5.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.5.5.5.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="79" id="A6.T6.5.5.5.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_04963.jpg" width="105"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.5.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.5.5.5.2.1">
<span class="ltx_p" id="A6.T6.5.5.5.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.5.5.5.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.5.5.5.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.5.5.5.2.1.1.1.1.1">Caption1 (Gemini-1.5-pro-002):</span> A light green and purple monster truck toy is seen in motion, <span class="ltx_text" id="A6.T6.5.5.5.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.5.5.5.2.1.1.1.1.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.5.5.5.2.1.1.1.1.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.5.5.5.2.1.1.1.1.2.3" style="background-color:#B3D9B3;">just about to drive off the bottom of a bright green plastic slide</span></span>. The toy has large black tires, a pink chassis, and a textured, mottled design on its body that incorporates darker green and black markings, resembling scales or flames. …</span>
<span class="ltx_p" id="A6.T6.5.5.5.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.5.5.5.2.1.1.1.2.1">Caption2 (Qwen2-VL-72B):</span>…The truck is <span class="ltx_text" id="A6.T6.5.5.5.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.5.5.5.2.1.1.1.2.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.5.5.5.2.1.1.1.2.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.5.5.5.2.1.1.1.2.2.3" style="background-color:#FFB3B3;">positioned on a grassy surface</span></span>, and behind it is a large, green, plastic slide. The slide has a smooth, curved surface and is likely part of a playground set. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.5.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.5.5.5.3.1">
<span class="ltx_p" id="A6.T6.5.5.5.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.5.5.5.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.5.5.5.3.1.1.1.1">Caption1 is better (precisely capture the motion state).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.6.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.6.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.6.6.6.1.1">
<span class="ltx_p" id="A6.T6.6.6.6.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.6.6.6.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="138" id="A6.T6.6.6.6.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_01077.jpg" width="103"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.6.6.6.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.6.6.6.2.1">
<span class="ltx_p" id="A6.T6.6.6.6.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.6.6.6.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.6.6.6.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.6.6.6.2.1.1.1.1.1">Caption1 (GPT-4o-mini-0718):</span> … The car is notable for <span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.1.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.1.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.1.2.3" style="background-color:#B3D9B3;">its body damage—specifically</span></span>, <span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.1.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.1.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.1.3.3" style="background-color:#B3D9B3;">a significant scrape or dent running along the lower part of its driver’s side</span></span>, suggesting that it may have been in a minor collision or scraped against a post or another vehicle. …</span>
<span class="ltx_p" id="A6.T6.6.6.6.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.6.6.6.2.1.1.1.2.1">Caption2 (InternVL2-26B):</span> … The car is positioned with its rear facing the camera, and the license plate is visible. <span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.2.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.2.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.2.2.3" style="background-color:#FFB3B3;">The car appears to be in good condition, with no apparent</span></span> <span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.2.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.6.6.6.2.1.1.1.2.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.6.6.6.2.1.1.1.2.3.3" style="background-color:#FFB3B3;">damage</span></span>. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.6.6.6.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.6.6.6.3.1">
<span class="ltx_p" id="A6.T6.6.6.6.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.6.6.6.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.6.6.6.3.1.1.1.1">Caption1 is better (correctly describe the condition of the car).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.7.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.7.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.7.7.7.1.1">
<span class="ltx_p" id="A6.T6.7.7.7.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.7.7.7.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="138" id="A6.T6.7.7.7.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_00038.jpg" width="103"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.7.7.7.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.7.7.7.2.1">
<span class="ltx_p" id="A6.T6.7.7.7.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.7.7.7.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.7.7.7.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.7.7.7.2.1.1.1.1.1">Caption1 (human):</span> … The shadow depicts a person standing up straight and <span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.1.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.1.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.1.2.3" style="background-color:#B3D9B3;">suspended</span></span> <span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.1.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.1.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.1.3.3" style="background-color:#B3D9B3;">in the air while jumping</span></span>. The person can be seen wearing shorts, and the edge of a backpack can be seen. …</span>
<span class="ltx_p" id="A6.T6.7.7.7.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.7.7.7.2.1.1.1.2.1">Caption2 (Gemini-2.0-flash-exp):</span> …Shadow Details:…**Pose:** The arms are positioned slightly away from the body and the legs are separated at the feet. <span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.2.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.2.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.2.2.3" style="background-color:#FFB3B3;">This indicates a</span></span> <span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.2.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.7.7.7.2.1.1.1.2.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.7.7.7.2.1.1.1.2.3.3" style="background-color:#FFB3B3;">casual, natural standing position</span></span>. …</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A6.T6.7.7.7.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.7.7.7.3.1">
<span class="ltx_p" id="A6.T6.7.7.7.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.7.7.7.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.7.7.7.3.1.1.1.1">Caption1 is better (accurately describe the jumping state).</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A6.T6.8.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A6.T6.8.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.8.8.8.1.1">
<span class="ltx_p" id="A6.T6.8.8.8.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.8.8.8.1.1.1.1" style="width:65.0pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="138" id="A6.T6.8.8.8.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_02693.jpg" width="103"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A6.T6.8.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.8.8.8.2.1">
<span class="ltx_p" id="A6.T6.8.8.8.2.1.1" style="width:303.5pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.8.8.8.2.1.1.1" style="width:303.5pt;">
<span class="ltx_p" id="A6.T6.8.8.8.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A6.T6.8.8.8.2.1.1.1.1.1">Caption1 (CogVLM2-llama3-chat-19B):</span> This image depicts <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.2.3" style="background-color:#B3D9B3;">a pink toy car with a</span></span> <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.3.3" style="background-color:#B3D9B3;">yellow roof</span></span>, parked on a <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.4"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.4.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.4.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.4.3" style="background-color:#B3D9B3;">paved surface</span></span>. The toy car has a simplistic design, <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.5"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.5.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.5.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.5.3" style="background-color:#B3D9B3;">with a</span></span> <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.6"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.6.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.6.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.6.3" style="background-color:#B3D9B3;">steering wheel on the left side</span></span> and a single seat. <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.7"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.7.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.7.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.7.3" style="background-color:#B3D9B3;">Atop the toy car is a blue helmet</span></span>, which is not typically associated with toys. The background shows <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.8"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.8.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.8.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.8.3" style="background-color:#B3D9B3;">a wooden fence and a gravel</span></span> <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.9"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.9.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.1.9.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.1.9.3" style="background-color:#B3D9B3;">ground</span></span>, suggesting an outdoor setting, possibly a backyard or a park.</span>
<span class="ltx_p" id="A6.T6.8.8.8.2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T6.8.8.8.2.1.1.1.2.1">Caption2 (MiniCPM-V2.6-8B):</span> The image shows <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.2"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.2.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.2.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.2.3" style="background-color:#B3D9B3;">a child’s toy car, which is pink</span></span> <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.3"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.3.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.3.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.3.3" style="background-color:#B3D9B3;">with a beige roof</span></span>. The car is <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.4"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.4.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.4.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.4.3" style="background-color:#B3D9B3;">equipped with a steering wheel and has a blue helmet</span></span> <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.5"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.5.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.5.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.5.3" style="background-color:#B3D9B3;">placed on the roof</span></span>. The car is situated on <span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.6"><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.6.1" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A6.T6.8.8.8.2.1.1.1.2.6.2" style="background-color:#B3D9B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A6.T6.8.8.8.2.1.1.1.2.6.3" style="background-color:#B3D9B3;">a paved area with a wooden fence and gravel</span></span> in the background. The toy car appears to be designed for young children, providing a safe and playful environment for imaginative play.</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A6.T6.8.8.8.3">
<span class="ltx_inline-block ltx_align_top" id="A6.T6.8.8.8.3.1">
<span class="ltx_p" id="A6.T6.8.8.8.3.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A6.T6.8.8.8.3.1.1.1" style="width:65.0pt;">
<span class="ltx_p" id="A6.T6.8.8.8.3.1.1.1.1">Tie (Both captions accurately describe the appearance of the toy car, the surrounding objects and environment).</span>
</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents additional examples illustrating the pairwise caption battle evaluation protocol used in the CapArena benchmark.  Each row shows an image, two captions generated by different vision-language models (VLMs) or a human, and a human preference indicating which caption is better. The examples showcase diverse scenarios and highlight various aspects of caption quality, including precision, informativeness, and handling of unusual or complex image content.
> <details>
> <summary>read the caption</summary>
> Table 6: More example of the evaluation protocol.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A7.T7.5.5">
<tr class="ltx_tr" id="A7.T7.5.5.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A7.T7.5.5.6.1">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.5.5.6.1.1">
<span class="ltx_p" id="A7.T7.5.5.6.1.1.1" style="width:43.4pt;"><span class="ltx_text ltx_font_bold" id="A7.T7.5.5.6.1.1.1.1">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A7.T7.5.5.6.2">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.5.5.6.2.1">
<span class="ltx_p" id="A7.T7.5.5.6.2.1.1" style="width:117.1pt;"><span class="ltx_text ltx_font_bold" id="A7.T7.5.5.6.2.1.1.1">Image</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A7.T7.5.5.6.3">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.5.5.6.3.1">
<span class="ltx_p" id="A7.T7.5.5.6.3.1.1" style="width:273.2pt;"><span class="ltx_text ltx_font_bold" id="A7.T7.5.5.6.3.1.1.1">Failure Caption</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A7.T7.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.1.1.1.2.1">
<span class="ltx_p" id="A7.T7.1.1.1.2.1.1" style="width:43.4pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.1.1.1.2.1.1.1" style="width:43.4pt;">
<span class="ltx_p" id="A7.T7.1.1.1.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.1.1.1.2.1.1.1.1.1">Unusual
<br class="ltx_break"/>Scene</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.1.1.1.1.1">
<span class="ltx_p" id="A7.T7.1.1.1.1.1.1" style="width:117.1pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.1.1.1.1.1.1.1" style="width:117.1pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="118" id="A7.T7.1.1.1.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_00222.jpg" width="157"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.1.1.1.3.1">
<span class="ltx_p" id="A7.T7.1.1.1.3.1.1" style="width:273.2pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.1.1.1.3.1.1.1" style="width:273.2pt;">
<span class="ltx_p" id="A7.T7.1.1.1.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.1.1.1.3.1.1.1.1.1">GPT-4o-0806: </span>In this image, a flatbed tow truck is transporting a white GMC pickup truck. Unusually, a white Cadillac sedan is partially lodged underneath the rear of the pickup, <span class="ltx_text" id="A7.T7.1.1.1.3.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A7.T7.1.1.1.3.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.1.1.1.3.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.1.1.1.3.1.1.1.1.2.3" style="background-color:#FFB3B3;">with its front end lifted off the ground</span></span>. The scene appears to be on a highway, with a shipping container visible in the background, indicating a busy roadway. The Cadillac’s position suggests it may have collided with the pickup, resulting in this precarious arrangement. The surrounding environment includes concrete barriers and other vehicles, emphasizing the urban setting.</span>
<span class="ltx_p" id="A7.T7.1.1.1.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T7.1.1.1.3.1.1.1.2.1" style="color:#FF0000;">Comment<span class="ltx_text ltx_font_medium" id="A7.T7.1.1.1.3.1.1.1.2.1.1">: A misinterpretation of the scene, where it should be the rear end being lifted, not the front, as commonly assumed.</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A7.T7.2.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.2.2.2.2.1">
<span class="ltx_p" id="A7.T7.2.2.2.2.1.1" style="width:43.4pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.2.2.2.2.1.1.1" style="width:52.0pt;">
<span class="ltx_p" id="A7.T7.2.2.2.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.2.2.2.2.1.1.1.1.1">Important
<br class="ltx_break"/>Details</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.2.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.2.2.2.1.1">
<span class="ltx_p" id="A7.T7.2.2.2.1.1.1" style="width:117.1pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.2.2.2.1.1.1.1" style="width:108.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="197" id="A7.T7.2.2.2.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_02061.jpg" width="148"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.2.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.2.2.2.3.1">
<span class="ltx_p" id="A7.T7.2.2.2.3.1.1" style="width:273.2pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.2.2.2.3.1.1.1" style="width:273.2pt;">
<span class="ltx_p" id="A7.T7.2.2.2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.2.2.2.3.1.1.1.1.1">Claude-3.5-Sonnet-0620: </span>This image shows a close-up of a gray cat sitting on a wooden floor. The cat has striking green eyes and is looking directly at the camera. Its fur appears to be a mix of light and dark gray, giving it a silvery appearance. The cat’s whiskers are prominently visible. In the foreground, we can see <span class="ltx_text" id="A7.T7.2.2.2.3.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A7.T7.2.2.2.3.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.2.2.2.3.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.2.2.2.3.1.1.1.1.2.3" style="background-color:#FFB3B3;">the cat’s paw raised, showing its pink paw pads. This gives the impression</span></span> <span class="ltx_text" id="A7.T7.2.2.2.3.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A7.T7.2.2.2.3.1.1.1.1.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.2.2.2.3.1.1.1.1.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.2.2.2.3.1.1.1.1.3.3" style="background-color:#FFB3B3;">that the cat might have been in the middle of grooming or was about to make a</span></span> <span class="ltx_text" id="A7.T7.2.2.2.3.1.1.1.1.4"><span class="ltx_text ltx_phantom" id="A7.T7.2.2.2.3.1.1.1.1.4.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.2.2.2.3.1.1.1.1.4.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.2.2.2.3.1.1.1.1.4.3" style="background-color:#FFB3B3;">playful gesture</span></span>. The background of the image shows parts of what seems to be a living room. There’s a glimpse of furniture, possibly a chair or sofa, and what looks like a bookshelf or cabinet in the distance. The room appears to be dimly lit, making the cat the main focus of the photograph. The wooden floor the cat is sitting on looks to be hardwood, and there’s a hint of a rug or carpet visible at the edge of the frame. Overall, this image captures a candid and endearing moment of a domestic cat in its home environment, showcasing its curiosity and the close relationship between the photographer and the feline subject.</span>
<span class="ltx_p" id="A7.T7.2.2.2.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T7.2.2.2.3.1.1.1.2.1" style="color:#FF0000;">Comment<span class="ltx_text ltx_font_medium" id="A7.T7.2.2.2.3.1.1.1.2.1.1">: There should be two cats in the scene, and the paw in the foreground actually belongs to the other cat, not the one in the close-up.</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A7.T7.3.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.3.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.3.3.3.2.1">
<span class="ltx_p" id="A7.T7.3.3.3.2.1.1" style="width:43.4pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.3.3.3.2.1.1.1" style="width:52.0pt;">
<span class="ltx_p" id="A7.T7.3.3.3.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.3.3.3.2.1.1.1.1.1">Require
<br class="ltx_break"/>Association</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.3.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.3.3.3.1.1">
<span class="ltx_p" id="A7.T7.3.3.3.1.1.1" style="width:117.1pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.3.3.3.1.1.1.1" style="width:108.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="122" id="A7.T7.3.3.3.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_03283.jpg" width="163"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.3.3.3.3.1">
<span class="ltx_p" id="A7.T7.3.3.3.3.1.1" style="width:273.2pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.3.3.3.3.1.1.1" style="width:273.2pt;">
<span class="ltx_p" id="A7.T7.3.3.3.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.3.3.3.3.1.1.1.1.1">GPT-4o-mini-0718: </span>A series of five artistic shields are displayed on a patch of dirt next to a sidewalk. <span class="ltx_text" id="A7.T7.3.3.3.3.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A7.T7.3.3.3.3.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.3.3.3.3.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.3.3.3.3.1.1.1.1.2.3" style="background-color:#FFB3B3;">The shields, painted in vibrant reds and adorned with</span></span> <span class="ltx_text" id="A7.T7.3.3.3.3.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A7.T7.3.3.3.3.1.1.1.1.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.3.3.3.3.1.1.1.1.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.3.3.3.3.1.1.1.1.3.3" style="background-color:#FFB3B3;">intricate designs that resemble leaves or vines, vary in size and orientation.</span></span> They are positioned in a line, suggesting movement, with the largest shield at the far left and gradually decreasing in size towards the right. A grassy area and a white wooden fence can be seen in the background, completing the scene with a touch of nature and structure. The setting appears to be an outdoor space, likely a park or community area, illuminated by bright sunlight.</span>
<span class="ltx_p" id="A7.T7.3.3.3.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T7.3.3.3.3.1.1.1.2.1" style="color:#FF0000;">Comment<span class="ltx_text ltx_font_medium" id="A7.T7.3.3.3.3.1.1.1.2.1.1">: It should be pointed out that this is a set of tomato slices, which is important for accurately describing the scene.</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A7.T7.4.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.4.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.4.4.4.2.1">
<span class="ltx_p" id="A7.T7.4.4.4.2.1.1" style="width:43.4pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.4.4.4.2.1.1.1" style="width:52.0pt;">
<span class="ltx_p" id="A7.T7.4.4.4.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.4.4.4.2.1.1.1.1.1">Identify
<br class="ltx_break"/>Clock Time</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.4.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.4.4.4.1.1">
<span class="ltx_p" id="A7.T7.4.4.4.1.1.1" style="width:117.1pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.4.4.4.1.1.1.1" style="width:108.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="197" id="A7.T7.4.4.4.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_03557.jpg" width="148"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A7.T7.4.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.4.4.4.3.1">
<span class="ltx_p" id="A7.T7.4.4.4.3.1.1" style="width:273.2pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.4.4.4.3.1.1.1" style="width:273.2pt;">
<span class="ltx_p" id="A7.T7.4.4.4.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.4.4.4.3.1.1.1.1.1">Gemini-1.5-pro-002: </span>The image shows a close-up of an analog clock on a textured, light blue wall. The clock has a black plastic or metal frame and a white face with black Arabic numerals. <span class="ltx_text" id="A7.T7.4.4.4.3.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A7.T7.4.4.4.3.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.4.4.4.3.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.4.4.4.3.1.1.1.1.2.3" style="background-color:#FFB3B3;">The time displayed is approximately 1:53</span></span>. The word "QUARTZ" is printed in small black letters below the center of the clock face. The wall shows some signs of wear and tear. There’s a noticeable crack running diagonally across the top left portion of the frame, and some smaller imperfections and possible chipped areas scattered around the wall’s surface. In the top right corner, partially obstructing the view of the wall, is the corner of a metal fence or gate. A galvanized metal pole is attached to the wall with a metal bracket. The wall appears damaged around the area where the pole is attached, with some of the surface material missing, revealing what looks like the underlying concrete or plaster. A small section of chain-link fencing is also visible behind the pole. This suggests the clock might be located in a more utilitarian or perhaps outdoor setting.</span>
<span class="ltx_p" id="A7.T7.4.4.4.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T7.4.4.4.3.1.1.1.2.1" style="color:#FF0000;">Comment<span class="ltx_text ltx_font_medium" id="A7.T7.4.4.4.3.1.1.1.2.1.1">: The correct time is about 1:07.</span></span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A7.T7.5.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A7.T7.5.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.5.5.5.2.1">
<span class="ltx_p" id="A7.T7.5.5.5.2.1.1" style="width:43.4pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.5.5.5.2.1.1.1" style="width:52.0pt;">
<span class="ltx_p" id="A7.T7.5.5.5.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.5.5.5.2.1.1.1.1.1">General
<br class="ltx_break"/>Mistake</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A7.T7.5.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.5.5.5.1.1">
<span class="ltx_p" id="A7.T7.5.5.5.1.1.1" style="width:117.1pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.5.5.5.1.1.1.1" style="width:108.4pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="126" id="A7.T7.5.5.5.1.1.1.1.g1" src="extracted/6280623/latex/images/examples/test_02766.jpg" width="168"/>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A7.T7.5.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A7.T7.5.5.5.3.1">
<span class="ltx_p" id="A7.T7.5.5.5.3.1.1" style="width:273.2pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A7.T7.5.5.5.3.1.1.1" style="width:273.2pt;">
<span class="ltx_p" id="A7.T7.5.5.5.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T7.5.5.5.3.1.1.1.1.1">LLaVA-1.6-34B: </span>The image captures a simple yet intriguing scene of <span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.2"><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.2.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.2.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.2.3" style="background-color:#FFB3B3;">a stack of</span></span> <span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.3"><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.3.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.3.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.3.3" style="background-color:#FFB3B3;">six rectangular concrete blocks arranged in a pyramid-like structure on a sandy</span></span> <span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.4"><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.4.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.4.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.4.3" style="background-color:#FFB3B3;">ground</span></span>. The blocks, varying in shades of gray and brown, are stacked in such a way that <span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.5"><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.5.1" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text ltx_phantom" id="A7.T7.5.5.5.3.1.1.1.1.5.2" style="background-color:#FFB3B3;"><span style="visibility:hidden">Ay</span></span><span class="ltx_text" id="A7.T7.5.5.5.3.1.1.1.1.5.3" style="background-color:#FFB3B3;">the smallest block is at the top, and the largest block is at the bottom</span></span>. The pyramid casts a shadow on the ground, adding depth to the scene. The sandy ground beneath the pyramid is scattered with small rocks and pebbles, providing a natural contrast to the man-made structure. The image is taken from a slightly elevated angle, giving a clear view of the pyramid and its surroundings. The overall composition of the image suggests a sense of balance and stability, as the pyramid stands firm on the sandy ground.</span>
<span class="ltx_p" id="A7.T7.5.5.5.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T7.5.5.5.3.1.1.1.2.1" style="color:#FF0000;">Comment<span class="ltx_text ltx_font_medium" id="A7.T7.5.5.5.3.1.1.1.2.1.1">: The description of the arrangement of the bricks in terms of quantity and size is incorrect. There are more than six equal-sized bricks.</span></span></span>
</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases instances where various Vision-Language Models (VLMs) fail to generate accurate or complete image captions.  Each row presents an image, the flawed caption generated by a specific VLM, and a comment explaining the nature of the error. The errors are categorized into four types: unusual scene misinterpretations, important detail omissions, difficulties with requiring associations between objects, and issues in identifying clock times or general factual mistakes. These examples highlight the challenges VLMs face in detailed and nuanced image understanding.
> <details>
> <summary>read the caption</summary>
> Table 7: Examples of failure cases.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A10.T8.26.26">
<tr class="ltx_tr" id="A10.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A10.T8.1.1.1.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A10.T8.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A10.T8.1.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A10.T8.1.1.1.1.1">Score_Avg<math alttext="\uparrow" class="ltx_Math" display="inline" id="A10.T8.1.1.1.1.1.m1.1"><semantics id="A10.T8.1.1.1.1.1.m1.1a"><mo id="A10.T8.1.1.1.1.1.m1.1.1" stretchy="false" xref="A10.T8.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A10.T8.1.1.1.1.1.m1.1b"><ci id="A10.T8.1.1.1.1.1.m1.1.1.cmml" xref="A10.T8.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A10.T8.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A10.T8.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A10.T8.1.1.1.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A10.T8.1.1.1.3.1">Score_GPT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A10.T8.1.1.1.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A10.T8.1.1.1.4.1">Score_Cog</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A10.T8.1.1.1.5" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A10.T8.1.1.1.5.1">Score_CPM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A10.T8.1.1.1.6" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="A10.T8.1.1.1.6.1">Length_Avg</span></td>
</tr>
<tr class="ltx_tr" id="A10.T8.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A10.T8.3.3.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.2.2.2.1.g1" src="extracted/6280623/latex/images/emoji/first_place_medal.png" width="14"/><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.3.3.3.2.g2" src="extracted/6280623/latex/images/emoji/lock.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.3.3.3.2.1">Gemini-1.5-pro-002</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T8.3.3.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">56.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T8.3.3.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">29.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T8.3.3.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T8.3.3.3.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A10.T8.3.3.3.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">168.6</td>
</tr>
<tr class="ltx_tr" id="A10.T8.5.5.5">
<td class="ltx_td ltx_align_left" id="A10.T8.5.5.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.4.4.4.1.g1" src="extracted/6280623/latex/images/emoji/second_place_medal.png" width="14"/><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.5.5.5.2.g2" src="extracted/6280623/latex/images/emoji/lock.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.5.5.5.2.1">GPT-4o-0806</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.5.5.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">44.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.5.5.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.5.5.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.5.5.5.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.5.5.5.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">115.8</td>
</tr>
<tr class="ltx_tr" id="A10.T8.7.7.7">
<td class="ltx_td ltx_align_left" id="A10.T8.7.7.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.6.6.6.1.g1" src="extracted/6280623/latex/images/emoji/third_place_medal.png" width="14"/><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.7.7.7.2.g2" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.7.7.7.2.1">Qwen2.5-VL-72B-Instruct</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.7.7.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">35.33</td>
<td class="ltx_td ltx_align_center" id="A10.T8.7.7.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.7.7.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">49.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.7.7.7.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">58.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.7.7.7.7" style="padding-top:0.5pt;padding-bottom:0.5pt;">163.7</td>
</tr>
<tr class="ltx_tr" id="A10.T8.8.8.8">
<td class="ltx_td ltx_align_left" id="A10.T8.8.8.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.8.8.8.1.g1" src="extracted/6280623/latex/images/emoji/lock.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.8.8.8.1.1">Gemini-2.0-flash-exp</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.8.8.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.83</td>
<td class="ltx_td ltx_align_center" id="A10.T8.8.8.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-2.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.8.8.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">39.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.8.8.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">55.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.8.8.8.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">417.0</td>
</tr>
<tr class="ltx_tr" id="A10.T8.9.9.9">
<td class="ltx_td ltx_align_left" id="A10.T8.9.9.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.9.9.9.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.9.9.9.1.1">Ovis--2-34b</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.9.9.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">27.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.9.9.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-15.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.9.9.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">33.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.9.9.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">62.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.9.9.9.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">120.2</td>
</tr>
<tr class="ltx_tr" id="A10.T8.10.10.10">
<td class="ltx_td ltx_align_left" id="A10.T8.10.10.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.10.10.10.1.g1" src="extracted/6280623/latex/images/emoji/lock.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.10.10.10.1.1">Claude-3.5-Sonnet-0620</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.10.10.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">21.50</td>
<td class="ltx_td ltx_align_center" id="A10.T8.10.10.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-14.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.10.10.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.10.10.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">48.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.10.10.10.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">147.9</td>
</tr>
<tr class="ltx_tr" id="A10.T8.11.11.11">
<td class="ltx_td ltx_align_left" id="A10.T8.11.11.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.11.11.11.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.11.11.11.1.1">InternVL2-26B</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.11.11.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">13.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.11.11.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-38.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.11.11.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.11.11.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">57.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.11.11.11.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">236.3</td>
</tr>
<tr class="ltx_tr" id="A10.T8.12.12.12">
<td class="ltx_td ltx_align_left" id="A10.T8.12.12.12.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.12.12.12.1.g1" src="extracted/6280623/latex/images/emoji/lock.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.12.12.12.1.1">GPT-4o-mini-0718</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.12.12.12.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">9.33</td>
<td class="ltx_td ltx_align_center" id="A10.T8.12.12.12.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-36.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.12.12.12.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">17.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.12.12.12.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">47.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.12.12.12.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">139.8</td>
</tr>
<tr class="ltx_tr" id="A10.T8.13.13.13">
<td class="ltx_td ltx_align_left" id="A10.T8.13.13.13.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.13.13.13.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.13.13.13.1.1">Ovis-1.6-27b</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.13.13.13.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">3.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.13.13.13.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-49.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.13.13.13.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">14.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.13.13.13.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">44.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.13.13.13.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">94.2</td>
</tr>
<tr class="ltx_tr" id="A10.T8.14.14.14">
<td class="ltx_td ltx_align_left" id="A10.T8.14.14.14.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.14.14.14.1.g1" src="extracted/6280623/latex/images/emoji/lock.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.14.14.14.1.1">GLM-4V-Plus</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.14.14.14.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-0.17</td>
<td class="ltx_td ltx_align_center" id="A10.T8.14.14.14.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-51.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.14.14.14.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">13.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.14.14.14.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.14.14.14.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">109.3</td>
</tr>
<tr class="ltx_tr" id="A10.T8.15.15.15">
<td class="ltx_td ltx_align_left" id="A10.T8.15.15.15.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.15.15.15.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.15.15.15.1.1">CogVLM2-llama3-chat-19B</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.15.15.15.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-8.50</td>
<td class="ltx_td ltx_align_center" id="A10.T8.15.15.15.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-56.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.15.15.15.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.15.15.15.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">31.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.15.15.15.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">115.9</td>
</tr>
<tr class="ltx_tr" id="A10.T8.16.16.16">
<td class="ltx_td ltx_align_left" id="A10.T8.16.16.16.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.16.16.16.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.16.16.16.1.1">Qwen2-VL-72B-Instruct</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.16.16.16.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-9.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.16.16.16.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-50.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.16.16.16.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-4.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.16.16.16.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">28.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.16.16.16.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">114.5</td>
</tr>
<tr class="ltx_tr" id="A10.T8.17.17.17">
<td class="ltx_td ltx_align_left" id="A10.T8.17.17.17.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.17.17.17.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.17.17.17.1.1">LLaVA-Onevision-72B-sft</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.17.17.17.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-12.33</td>
<td class="ltx_td ltx_align_center" id="A10.T8.17.17.17.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-57.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.17.17.17.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-6.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.17.17.17.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">26.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.17.17.17.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">200.9</td>
</tr>
<tr class="ltx_tr" id="A10.T8.18.18.18">
<td class="ltx_td ltx_align_left" id="A10.T8.18.18.18.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.18.18.18.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.18.18.18.1.1">LLama-3.2-vision-90B-Instruct</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.18.18.18.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-25.67</td>
<td class="ltx_td ltx_align_center" id="A10.T8.18.18.18.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-72.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.18.18.18.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-13.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.18.18.18.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">8.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.18.18.18.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">160.3</td>
</tr>
<tr class="ltx_tr" id="A10.T8.19.19.19">
<td class="ltx_td ltx_align_left" id="A10.T8.19.19.19.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.19.19.19.1.g1" src="extracted/6280623/latex/images/emoji/lock.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.19.19.19.1.1">Hunyuan-standard-vision</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.19.19.19.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-26.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.19.19.19.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-63.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.19.19.19.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-19.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.19.19.19.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">4.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.19.19.19.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">354.1</td>
</tr>
<tr class="ltx_tr" id="A10.T8.20.20.20">
<td class="ltx_td ltx_align_left" id="A10.T8.20.20.20.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.20.20.20.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.20.20.20.1.1">InternVL2-5-8B</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.20.20.20.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-29.83</td>
<td class="ltx_td ltx_align_center" id="A10.T8.20.20.20.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-71.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.20.20.20.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-29.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.20.20.20.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">10.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.20.20.20.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">117.8</td>
</tr>
<tr class="ltx_tr" id="A10.T8.21.21.21">
<td class="ltx_td ltx_align_left" id="A10.T8.21.21.21.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.21.21.21.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.21.21.21.1.1">MiniCPM-V2.6-8B</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.21.21.21.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-38.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.21.21.21.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-80.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.21.21.21.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-34.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.21.21.21.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.21.21.21.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">106.7</td>
</tr>
<tr class="ltx_tr" id="A10.T8.22.22.22">
<td class="ltx_td ltx_align_left" id="A10.T8.22.22.22.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.22.22.22.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.22.22.22.1.1">Qwen2-VL-2B-Instruct</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.22.22.22.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-48.67</td>
<td class="ltx_td ltx_align_center" id="A10.T8.22.22.22.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-86.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.22.22.22.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-49.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.22.22.22.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-10.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.22.22.22.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">116.8</td>
</tr>
<tr class="ltx_tr" id="A10.T8.23.23.23">
<td class="ltx_td ltx_align_left" id="A10.T8.23.23.23.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.23.23.23.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.23.23.23.1.1">Qwen2-VL-7B-Instruct</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.23.23.23.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-49.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.23.23.23.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-78.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.23.23.23.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-59.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.23.23.23.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-10.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.23.23.23.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">97.8</td>
</tr>
<tr class="ltx_tr" id="A10.T8.24.24.24">
<td class="ltx_td ltx_align_left" id="A10.T8.24.24.24.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.24.24.24.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.24.24.24.1.1">LLaVA-1.6-34B</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.24.24.24.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-67.50</td>
<td class="ltx_td ltx_align_center" id="A10.T8.24.24.24.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-92.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.24.24.24.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-53.5</td>
<td class="ltx_td ltx_align_center" id="A10.T8.24.24.24.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-57.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.24.24.24.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">124.8</td>
</tr>
<tr class="ltx_tr" id="A10.T8.25.25.25">
<td class="ltx_td ltx_align_left" id="A10.T8.25.25.25.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.25.25.25.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.25.25.25.1.1">cambrian-34b</span>
</td>
<td class="ltx_td ltx_align_center" id="A10.T8.25.25.25.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-75.00</td>
<td class="ltx_td ltx_align_center" id="A10.T8.25.25.25.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-93.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.25.25.25.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-76.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.25.25.25.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-56.0</td>
<td class="ltx_td ltx_align_center" id="A10.T8.25.25.25.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">120.2</td>
</tr>
<tr class="ltx_tr" id="A10.T8.26.26.26">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A10.T8.26.26.26.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">   <img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="14" id="A10.T8.26.26.26.1.g1" src="extracted/6280623/latex/images/emoji/key.png" width="14"/><span class="ltx_text ltx_font_typewriter ltx_font_bold" id="A10.T8.26.26.26.1.1">LLaVA-1.5-7B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A10.T8.26.26.26.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-94.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A10.T8.26.26.26.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-99.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A10.T8.26.26.26.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">-92.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A10.T8.26.26.26.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">-90.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A10.T8.26.26.26.6" style="padding-top:0.5pt;padding-bottom:0.5pt;">74.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the leaderboard for CapArena-Auto, an automated benchmark for detailed image captioning.  It shows the average scores achieved by various vision-language models (VLMs) on a set of 600 test images. The scores reflect the models' performance in generating detailed and accurate image captions, compared against baseline models and assessed using a pairwise battle paradigm with a VLM acting as a judge.  The table includes scores from GPT-4, CogVLM-19B, MiniCPM-8B, various open-source models, and the average caption length generated by each model.
> <details>
> <summary>read the caption</summary>
> Table 8: CapArena-Auto Leaderboard.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12329/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12329/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}