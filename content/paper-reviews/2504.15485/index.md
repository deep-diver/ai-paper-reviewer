---
title: "CAPTURe: Evaluating Spatial Reasoning in Vision Language Models via Occluded Object Counting"
summary: "CAPTURE: VLMs struggle with spatial reasoning in occluded environments; a novel benchmark exposes their limitations."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Visual Question Answering", "🏢 UNC Chapel Hill",]
showSummary: true
date: 2025-04-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.15485 {{< /keyword >}}
{{< keyword icon="writer" >}} Atin Pothiraj et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.15485" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.15485" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.15485/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Visual reasoning about occluded objects is crucial, but current Vision-Language Models (VLMs) struggle with it. Occlusions, where objects are partially or fully hidden, challenge spatial comprehension. To address this, the researchers introduce **Counting Amodally for Patterns Through Unseen REgions (CAPTURE)**, a novel benchmark. CAPTURE tests a model's ability to count objects arranged in a pattern by inferring how the pattern continues behind an occluder. This requires both recognizing visual patterns and spatial reasoning. The study evaluates four strong VLMs (GPT-4o, Intern-VL2, Molmo, and Qwen2-VL) on CAPTURE. 



The results show that VLMs struggle to count objects in patterns, especially when occluded. Crucially, models perform worse with occlusion, indicating a deficiency in inferring unseen spatial relationships. Even the strongest VLMs fail to count accurately with occlusion. Humans, in contrast, exhibit very little error on CAPTURE. The study finds that providing auxiliary information about occluded object locations increases performance, underscoring that the model error stems from an inability to handle occlusion and difficulty counting in images. This benchmark highlights the need for improved world modeling capabilities in VLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VLMs struggle with spatial reasoning and object counting when objects are occluded, performing worse than humans. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Providing VLMs with auxiliary information (object coordinates or inpainted images) significantly improves performance, suggesting limitations in visual integration and world modeling. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Current VLMs lack the robust spatial understanding and reasoning abilities necessary for effectively handling occlusions in complex visual scenes. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it exposes **weaknesses in VLMs' spatial reasoning under occlusion**, highlighting the need for improved world modeling capabilities. This work opens new avenues for future research to enhance VLMs' ability to reason about partially observed scenes.

------
#### Visual Insights



![](https://arxiv.org/html/2504.15485/x1.png)

> 🔼 This figure shows an example from the CAPTURE task, where the goal is to count the number of cups arranged in a grid pattern, some of which are hidden behind a black box.  Humans can easily infer the number of hidden cups by extrapolating the visible pattern, demonstrating strong spatial reasoning skills. In contrast, the example shows that the GPT-4-0 model fails to correctly count the cups due to its difficulty in reasoning about occluded objects.  This highlights a key limitation of current vision-language models in handling real-world scenarios where objects are frequently partially or fully occluded.
> <details>
> <summary>read the caption</summary>
> Figure 1: CAPTURe example with an output from GPT4-o. While people can easily infer the missing number of cups and correctly reason over occluded patterns, models generally struggle to reason over these occluded scenes.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T1.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S2.T1.2.2.2.3"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.1.1.1.1.1">CAPTURe<math alttext="{}^{\text{real}}" class="ltx_Math" display="inline" id="S2.T1.1.1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.1.1.m1.1a"><msup id="S2.T1.1.1.1.1.1.m1.1.1" xref="S2.T1.1.1.1.1.1.m1.1.1.cmml"><mi id="S2.T1.1.1.1.1.1.m1.1.1a" xref="S2.T1.1.1.1.1.1.m1.1.1.cmml"></mi><mtext id="S2.T1.1.1.1.1.1.m1.1.1.1" xref="S2.T1.1.1.1.1.1.m1.1.1.1a.cmml">real</mtext></msup><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.1.1.m1.1b"><apply id="S2.T1.1.1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.1.1.m1.1.1"><ci id="S2.T1.1.1.1.1.1.m1.1.1.1a.cmml" xref="S2.T1.1.1.1.1.1.m1.1.1.1"><mtext id="S2.T1.1.1.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T1.1.1.1.1.1.m1.1.1.1">real</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.1.1.m1.1c">{}^{\text{real}}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.2.2.2"><span class="ltx_text ltx_font_smallcaps" id="S2.T1.2.2.2.2.1">CAPTURe<math alttext="{}^{\text{synthetic}}" class="ltx_Math" display="inline" id="S2.T1.2.2.2.2.1.m1.1"><semantics id="S2.T1.2.2.2.2.1.m1.1a"><msup id="S2.T1.2.2.2.2.1.m1.1.1" xref="S2.T1.2.2.2.2.1.m1.1.1.cmml"><mi id="S2.T1.2.2.2.2.1.m1.1.1a" xref="S2.T1.2.2.2.2.1.m1.1.1.cmml"></mi><mtext id="S2.T1.2.2.2.2.1.m1.1.1.1" xref="S2.T1.2.2.2.2.1.m1.1.1.1a.cmml">synthetic</mtext></msup><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.2.1.m1.1b"><apply id="S2.T1.2.2.2.2.1.m1.1.1.cmml" xref="S2.T1.2.2.2.2.1.m1.1.1"><ci id="S2.T1.2.2.2.2.1.m1.1.1.1a.cmml" xref="S2.T1.2.2.2.2.1.m1.1.1.1"><mtext id="S2.T1.2.2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S2.T1.2.2.2.2.1.m1.1.1.1">synthetic</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.2.1.m1.1c">{}^{\text{synthetic}}</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.2.1.m1.1d">start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.2.2.3.1.1"># Images</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.3.1.2">924</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.3.1.3">1250</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.2.4.2.1"># Object Types</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.4.2.2">92</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.4.2.3">2</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.2.5.3.1">Avg. Occluded Obj.</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.5.3.2">13.97</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.5.3.3">2.73</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.2.6.4.1">Avg. Total Obj.</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.6.4.2">61.45</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.6.4.3">10.00</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.7.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S2.T1.2.2.7.5.1"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.7.5.2">Diverse Objects/Settings</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.2.2.7.5.3">Confounder-free</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S2.T1.2.2.8.6.1">Strengths</th>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.8.6.2">Naturalistic</td>
<td class="ltx_td ltx_align_center" id="S2.T1.2.2.8.6.3">Controllable Attributes</td>
</tr>
<tr class="ltx_tr" id="S2.T1.2.2.9.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S2.T1.2.2.9.7.1"></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.2.9.7.2">Realistic Context</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.2.2.9.7.3">Uniformly Distributed</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the statistics for the two subsets of the CAPTURE dataset: CAPTUREreal and CAPTURESynthetic.  For each subset, it shows the number of images, the number of object types present in the images, the average number of occluded objects, and the average total number of objects (both occluded and unoccluded). Additionally, it highlights the key strengths of each subset; CAPTUREreal offers diversity in object types and realistic settings, while CAPTURESynthetic provides a controlled environment with easily controllable attributes and a uniform distribution of data.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics and strengths for CAPTURe splits.
> </details>





### In-depth insights


#### Occlusion Deficit
An "occlusion deficit" in vision-language models (VLMs) refers to their struggle to accurately perceive and reason about scenes where objects are partially or fully hidden. This limitation stems from the models' difficulty in inferring the complete shape, position, and properties of occluded objects, **hindering their ability to form a coherent understanding of the environment**. The VLM needs to not only identify visible parts but also extrapolate information about the unseen portions, a capability that requires spatial reasoning and a learned "world model." Overcoming the occlusion deficit is vital for VLMs to effectively function in real-world scenarios where partial visibility is common. Models improve substantially with **oracle information of visible objects**.

#### CAPTURE: Eval Tool
While 'CAPTURE: Eval Tool' isn't explicitly present, the paper introduces CAPTURE, a novel benchmark, which effectively functions as an evaluation tool. **CAPTURE assesses spatial reasoning in VLMs via occluded object counting.** The task challenges models to infer patterns behind occlusions, demanding both visual pattern recognition and spatial understanding. It probes VLMs' ability to form 'world models,' filling in missing information. CAPTURE's design, with both real and synthetic images, enables a multifaceted evaluation, from naturalistic contexts to controlled diagnostics. The performance of VLMs on CAPTURE highlights their **limitations in handling occlusion and inferring spatial relationships, even with auxiliary information**, suggesting areas for improvement in visual world modeling.

#### Pattern Matters
The notion of patterns significantly impacts how visual reasoning models, specifically VLMs, approach tasks involving spatial understanding and object counting. The presence of a discernible pattern in the arrangement of objects provides a crucial framework for these models to extrapolate and infer information about occluded or missing elements. **Exploiting regularities in object arrangements** aids in predicting the continuation of the pattern behind occlusions, allowing the model to estimate the total count of objects. Models struggle to combine reasoning, counting and world modeling effectively. However, it improves performance significantly when the models have information about visible objects.

#### Text vs. Vision
The interplay between textual and visual information is a central theme when evaluating Vision-Language Models (VLMs). The research paper underscores a critical observation: VLMs often struggle to seamlessly integrate and reason across these modalities. **Simply providing textual coordinates of visible objects significantly boosts performance**, implying a bottleneck in visual processing rather than pure reasoning. Conversely, furnishing the VLMs with predicted inpainting of occluded areas leads to only marginal gains, suggesting that the limitation isn't solely in `seeing` the full picture, but also in understanding its spatial implications. The findings advocate for enhanced architectures capable of better fusing visual perception with linguistic understanding. **The models may lack the intrinsic ability to create a robust world model**, which humans use to bridge the gap between the visible and the occluded. Future research should explore methods to imbue VLMs with more structural priors, thus enabling them to perform spatial reasoning akin to human cognition.

#### World Models?
The concept of "World Models" is pivotal for imbuing AI agents with **anticipatory and planning capabilities.** It suggests that agents should internally represent the environment, allowing them to simulate future scenarios and make informed decisions. This representation goes beyond immediate sensory input, integrating past experiences and contextual understanding. A robust world model enables agents to **reason about cause and effect**, predict outcomes of actions, and even imagine counterfactual situations. The quality of a world model dictates the agent's capacity to handle uncertainty, adapt to novel situations, and learn from experience. Furthermore, the ability to create and refine world models is likely a key ingredient for achieving human-level intelligence, enabling **complex problem-solving** and creative exploration. The challenge lies in developing learning algorithms and architectures that can efficiently build and maintain accurate, scalable, and adaptable world models from limited data.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.15485/x2.png)

> 🔼 This figure shows example images from the CAPTURE dataset, specifically the real and synthetic subsets with occluded objects.  For each image, the human-provided ground truth count of the objects is shown, along with GPT-40's response. This demonstrates how well (or poorly) the model is able to extrapolate the pattern of objects from the visible portion to estimate the total number of objects, which are partially hidden behind a black box.
> <details>
> <summary>read the caption</summary>
> Figure 2: Example images with GPT-4o responses to CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT and CAPTUResyntheticsynthetic{}^{\text{synthetic}}start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT occluded splits.
> </details>



![](https://arxiv.org/html/2504.15485/x3.png)

> 🔼 This histogram shows the distribution of the number of objects present in the images of the CAPTUREreal dataset.  The x-axis represents ranges of object counts, and the y-axis shows the frequency of images falling within each count range. This visualization helps understand the scale and variability of object counts in the real-world images used for the CAPTURE benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: # of objects in CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT images.
> </details>



![](https://arxiv.org/html/2504.15485/x4.png)

> 🔼 This histogram shows the distribution of the number of occluded objects across all images in the CAPTURESynthetic dataset.  The x-axis represents the number of occluded objects, and the y-axis shows the frequency (number of images) with that count of occluded objects.  This visualization helps to understand the range and typical number of occluded objects present in the dataset, which is useful for evaluating model performance on the CAPTURE task.
> <details>
> <summary>read the caption</summary>
> Figure 4: # of occluded objects in CAPTUResyntheticsynthetic{}^{\text{synthetic}}start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT images.
> </details>



![](https://arxiv.org/html/2504.15485/x5.png)

> 🔼 This figure compares the performance of four vision-language models (VLMs) individually against their performance when combined with the CountGD object detection model.  The comparison is made on a subset of the CAPTUREreal dataset (the real-world images with occlusions) specifically excluding images used to train the CountGD model. The metric used to evaluate model performance is the Symmetric Mean Absolute Percentage Error (SMAPE), with lower scores indicating better performance. The goal is to illustrate how CountGD, while strong at counting visible objects, can supplement the VLMs to improve their overall amodal counting performance (counting objects that are partially or fully occluded).
> <details>
> <summary>read the caption</summary>
> Figure 5: VLM vs. VLM + CountGD hybrid on questions from the CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT (occluded split) that are not in CountGD training set. Metric: sMAPE (lower is better).
> </details>



![](https://arxiv.org/html/2504.15485/x6.png)

> 🔼 This figure displays the relationship between the total number of objects in an image, the number of occluded objects, and the Symmetric Mean Absolute Percentage Error (SMAPE) obtained from the CAPTUREsynthetic dataset (occluded split).  The x-axis in the left panel represents the total number of objects, while the right panel's x-axis shows the number of occluded objects. The y-axis in both panels represents the SMAPE score. Lower SMAPE values indicate better model performance.  The figure aims to show how model performance changes based on the number of total objects and the number of occluded objects in the images.  Each line represents a different Vision Language Model (VLM).
> <details>
> <summary>read the caption</summary>
> Figure 6: Effect of number of total objects in the image and number of occluded objects on sMAPE from CAPTUResyntheticsynthetic{}^{\text{synthetic}}start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT (occluded split). Metric: sMAPE (lower is better).
> </details>



![](https://arxiv.org/html/2504.15485/x7.png)

> 🔼 This figure shows the impact of different object arrangement patterns on the model's performance in the CAPTUREsynthetic (occluded) dataset.  The x-axis represents the type of pattern (circle, rectangle, triangle), and the y-axis represents the Symmetric Mean Absolute Percentage Error (SMAPE). Lower SMAPE values indicate better model performance. The figure helps to understand how the model's spatial reasoning ability varies depending on the arrangement of objects.
> <details>
> <summary>read the caption</summary>
> Figure 7: Effect of pattern type in CAPTUResyntheticsynthetic{}^{\text{synthetic}}start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT (occluded split) on sMAPE. Metric: sMAPE (lower is better).
> </details>



![](https://arxiv.org/html/2504.15485/x8.png)

> 🔼 Figure 8 shows examples of how auxiliary information was provided to the models in the experiments described in Section 4.3.  The figure presents three variations on an image of occluded cans: one with just the original occluded image, one where object coordinates (visible and all) were provided as text to the model, and one where an image inpainting pipeline was used to fill in the occluded area. Each version shows the prompt used for that condition. The 'blue eyes' overlay on some objects indicates which objects' coordinates were extracted and provided to the models (in the coordinate oracle conditions). The brighter area in the inpainting condition shows the area that was filled in by the inpainting model; this filled-in region is not part of the image that is provided to the model.
> <details>
> <summary>read the caption</summary>
> Figure 8: Example image and text inputs for experiments with auxiliary information experiments (Sec. 4.3). Blue eyes indicate objects for which the All Object Coordinate Oracle or Visible Object Coordinate Oracle extracts coordinates. Brighter part of image represents the area which Inpainting Pipeline fills in. Example prompts shown in italics. Blue eye overlays and faded parts of images are for demonstration purposes and are not passed with the image.
> </details>



![](https://arxiv.org/html/2504.15485/x9.png)

> 🔼 This figure shows the relationship between the model's confidence in its prediction and the accuracy of that prediction, measured by sMAPE (Symmetric Mean Absolute Percentage Error).  Higher confidence scores ideally correspond to lower sMAPE values (more accurate predictions). The graph helps analyze whether the model's confidence is well-calibrated; a well-calibrated model would show a strong negative correlation between confidence and error.  Separate curves are shown for different scenarios (real vs. synthetic data, and occluded vs. unoccluded images), highlighting how confidence calibration may vary under different conditions.
> <details>
> <summary>read the caption</summary>
> Figure 9: Reliability curve of prompted confidence vs. sMAPE.
> </details>



![](https://arxiv.org/html/2504.15485/x10.png)

> 🔼 This figure shows the relationship between the model's confidence in its predictions and the Symmetric Mean Absolute Percentage Error (sMAPE) for the CAPTURE task.  The x-axis represents the model's sampled confidence (calculated by generating multiple predictions and determining the frequency of the most common answer). The y-axis represents the sMAPE, a measure of prediction accuracy, where lower values indicate better accuracy. Separate lines are plotted for real and synthetic data, both with and without occlusion, illustrating how the relationship between confidence and accuracy varies across different scenarios of the CAPTURE dataset. The graph helps assess if the model is well-calibrated (i.e., does its confidence accurately reflect its prediction error).
> <details>
> <summary>read the caption</summary>
> Figure 10: Reliability curve of sampled confidence vs. sMAPE.
> </details>



![](https://arxiv.org/html/2504.15485/x11.png)

> 🔼 This figure presents confusion matrices visualizing the performance of four different vision-language models (GPT-40, InternVL2, Molmo, and Qwen2VL) on the CAPTUREreal (occluded split) task. Each matrix shows the counts of predictions versus ground truth object counts. The matrices reveal the models' tendencies for over- or under-prediction and their accuracy across various object counts.
> <details>
> <summary>read the caption</summary>
> Figure 11: Confusion matrix: predicted vs. ground truth counts for CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT’s occluded split.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.2" rowspan="3"><span class="ltx_text" id="S4.T2.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.1.1.1.1">Error (%) [<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math>]</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.2.2.2.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T2.2.2.2.1.1">CAPTURe<math alttext="{}^{\text{real}}" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.1.m1.1"><semantics id="S4.T2.2.2.2.1.1.m1.1a"><msup id="S4.T2.2.2.2.1.1.m1.1.1" xref="S4.T2.2.2.2.1.1.m1.1.1.cmml"><mi id="S4.T2.2.2.2.1.1.m1.1.1a" xref="S4.T2.2.2.2.1.1.m1.1.1.cmml"></mi><mtext id="S4.T2.2.2.2.1.1.m1.1.1.1" xref="S4.T2.2.2.2.1.1.m1.1.1.1a.cmml">real</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.1.m1.1b"><apply id="S4.T2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.1.m1.1.1"><ci id="S4.T2.2.2.2.1.1.m1.1.1.1a.cmml" xref="S4.T2.2.2.2.1.1.m1.1.1.1"><mtext id="S4.T2.2.2.2.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.2.2.2.1.1.m1.1.1.1">real</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.1.m1.1c">{}^{\text{real}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.1.m1.1d">start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.3.3.3.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T2.3.3.3.2.1">CAPTURe<math alttext="{}^{\text{synthetic}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.2.1.m1.1"><semantics id="S4.T2.3.3.3.2.1.m1.1a"><msup id="S4.T2.3.3.3.2.1.m1.1.1" xref="S4.T2.3.3.3.2.1.m1.1.1.cmml"><mi id="S4.T2.3.3.3.2.1.m1.1.1a" xref="S4.T2.3.3.3.2.1.m1.1.1.cmml"></mi><mtext id="S4.T2.3.3.3.2.1.m1.1.1.1" xref="S4.T2.3.3.3.2.1.m1.1.1.1a.cmml">synthetic</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.2.1.m1.1b"><apply id="S4.T2.3.3.3.2.1.m1.1.1.cmml" xref="S4.T2.3.3.3.2.1.m1.1.1"><ci id="S4.T2.3.3.3.2.1.m1.1.1.1a.cmml" xref="S4.T2.3.3.3.2.1.m1.1.1.1"><mtext id="S4.T2.3.3.3.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T2.3.3.3.2.1.m1.1.1.1">synthetic</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.2.1.m1.1c">{}^{\text{synthetic}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.2.1.m1.1d">start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.3">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.4.4.1">w/ Occlusion (<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mi id="S4.T2.4.4.4.1.m1.1.1" mathvariant="normal" xref="S4.T2.4.4.4.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">roman_Δ</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.4">Original</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.2">w/ Occlusion (<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.5.5.5.2.m1.1"><semantics id="S4.T2.5.5.5.2.m1.1a"><mi id="S4.T2.5.5.5.2.m1.1.1" mathvariant="normal" xref="S4.T2.5.5.5.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.2.m1.1b"><ci id="S4.T2.5.5.5.2.m1.1.1.cmml" xref="S4.T2.5.5.5.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.2.m1.1d">roman_Δ</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.5.5.6.1.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.2">13.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.3">14.75 (+1.41)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.4">5.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.1.5">9.71 (+3.81)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.7.2.1">InternVL2</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.2">26.17</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.3">32.90 (+6.73)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.4">16.44</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.2.5">17.57 (+1.13)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.8.3.1">Molmo</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.2">25.90</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.3">32.49 (+6.59)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.4">8.40</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.5">17.73 (+9.33)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.5.5.9.4.1">Qwen2VL</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.2">18.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.3">29.33 (+10.37)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.4">6.63</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4.5">11.74 (+5.11)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T2.5.5.10.5.1">Avg. of 4 VLMs</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.5.10.5.2">21.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.5.10.5.3">27.37 (+6.28)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.5.10.5.4">9.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.5.10.5.5">14.19 (+4.85)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of four different Vision-Language Models (VLMs) on the CAPTURE benchmark task.  The table shows the Symmetric Mean Absolute Percentage Error (sMAPE) for each model across four different conditions: CAPTUREreal with occlusion, CAPTUREreal without occlusion, CAPTURESynthetic with occlusion, and CAPTURESynthetic without occlusion.  Lower sMAPE values indicate better performance.  The results reveal how well the models perform amodal object counting (counting objects that are partially or fully hidden).
> <details>
> <summary>read the caption</summary>
> Table 2:  Results across VLMs on all splits of CAPTURe, with average error for each column. Metric: sMAPE (lower is better).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T3.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.1.1.1.1">Error (%) [<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↓</annotation></semantics></math>]</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.2.2.2.1.1">CAPTURe<math alttext="{}^{\text{real}}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.1.m1.1"><semantics id="S4.T3.2.2.2.1.1.m1.1a"><msup id="S4.T3.2.2.2.1.1.m1.1.1" xref="S4.T3.2.2.2.1.1.m1.1.1.cmml"><mi id="S4.T3.2.2.2.1.1.m1.1.1a" xref="S4.T3.2.2.2.1.1.m1.1.1.cmml"></mi><mtext id="S4.T3.2.2.2.1.1.m1.1.1.1" xref="S4.T3.2.2.2.1.1.m1.1.1.1a.cmml">real</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.1.m1.1b"><apply id="S4.T3.2.2.2.1.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.1.m1.1.1"><ci id="S4.T3.2.2.2.1.1.m1.1.1.1a.cmml" xref="S4.T3.2.2.2.1.1.m1.1.1.1"><mtext id="S4.T3.2.2.2.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.2.2.2.1.1.m1.1.1.1">real</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.1.m1.1c">{}^{\text{real}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.1.m1.1d">start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.2"><span class="ltx_text ltx_font_smallcaps" id="S4.T3.3.3.3.2.1">CAPTURe<math alttext="{}^{\text{synthetic}}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.2.1.m1.1"><semantics id="S4.T3.3.3.3.2.1.m1.1a"><msup id="S4.T3.3.3.3.2.1.m1.1.1" xref="S4.T3.3.3.3.2.1.m1.1.1.cmml"><mi id="S4.T3.3.3.3.2.1.m1.1.1a" xref="S4.T3.3.3.3.2.1.m1.1.1.cmml"></mi><mtext id="S4.T3.3.3.3.2.1.m1.1.1.1" xref="S4.T3.3.3.3.2.1.m1.1.1.1a.cmml">synthetic</mtext></msup><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.2.1.m1.1b"><apply id="S4.T3.3.3.3.2.1.m1.1.1.cmml" xref="S4.T3.3.3.3.2.1.m1.1.1"><ci id="S4.T3.3.3.3.2.1.m1.1.1.1a.cmml" xref="S4.T3.3.3.3.2.1.m1.1.1.1"><mtext id="S4.T3.3.3.3.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T3.3.3.3.2.1.m1.1.1.1">synthetic</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.2.1.m1.1c">{}^{\text{synthetic}}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.2.1.m1.1d">start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.3.4.1.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.4.1.1.1" style="color:#808080;">(Baseline)</span></th>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.4.1.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.4.1.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.5.2.1"><span class="ltx_text" id="S4.T3.3.3.5.2.1.1" style="color:#808080;">Human</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.2"><span class="ltx_text" id="S4.T3.3.3.5.2.2.1" style="color:#808080;">3.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.5.2.3"><span class="ltx_text" id="S4.T3.3.3.5.2.3.1" style="color:#808080;">0.92</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.3.3.6.3.1"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.6.3.1.1" style="color:#000000;">(VLMs)</span></th>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.3.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.3.3.6.3.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.7.4.1">GPT-4o</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.2">14.09</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.7.4.3">8.40</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.8.5.1">InternVL2</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.8.5.2">29.74</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.8.5.3">24.98</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.9.6.1">Molmo</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.6.2">33.68</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.9.6.3">17.24</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.3.10.7.1">Qwen2VL</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.7.2">29.80</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.10.7.3">9.39</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.3.3.11.8.1">Avg. of 4 VLMs</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.11.8.2">26.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.3.3.11.8.3">15.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of human participants and several Vision-Language Models (VLMs) on the CAPTURE task, specifically focusing on the occluded splits of both real-world (CAPTUREreal) and synthetic (CAPTURESynthetic) datasets.  The performance is measured using the Symmetric Mean Absolute Percentage Error (SMAPE) metric, where a lower score indicates better performance. The table allows for a direct comparison of human-level accuracy against the capabilities of current state-of-the-art VLMs in handling occluded objects and spatial reasoning.
> <details>
> <summary>read the caption</summary>
> Table 3: Human baseline vs VLMs on CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT and CAPTUResyntheticsynthetic{}^{\text{synthetic}}start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT (occluded split). Metric: sMAPE (lower is better).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T4.1.1.1.2.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.1.1.1.1">Accuracy (%) [<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math>]</th>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.2.2.2.2">Original</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.2.2.2.1">w/ Occlusion (<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T4.2.2.2.1.m1.1"><semantics id="S4.T4.2.2.2.1.m1.1a"><mi id="S4.T4.2.2.2.1.m1.1.1" mathvariant="normal" xref="S4.T4.2.2.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.1.m1.1b"><ci id="S4.T4.2.2.2.1.m1.1.1.cmml" xref="S4.T4.2.2.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.1.m1.1d">roman_Δ</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.2.2.3.1.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.2">84.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.2.3.1.3">78.52 (-5.48)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.2.4.2.1">InternVL2</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.2">68.52</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.4.2.3">47.48 (-21.04)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.2.5.3.1">Molmo</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.2">80.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.5.3.3">65.22 (-15.48)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.2.2.6.4.1">Qwen2VL</th>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.4.2">88.35</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.6.4.3">86.43 (-1.92)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.2.2.7.5.1">Avg. of 4 VLMs</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.2.2.7.5.2">80.39</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.2.2.7.5.3">69.41 (-10.98)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various Vision-Language Models (VLMs) on the task of identifying patterns in synthetic images from the CAPTURE dataset.  Specifically, it shows the accuracy of each VLM in correctly identifying the type of pattern (circle, rectangle, or triangle) present in the image. A higher accuracy score indicates better performance. The table also breaks down the accuracy for both original and occluded images.
> <details>
> <summary>read the caption</summary>
> Table 4:  VLM accuracy in identifying pattern in CAPTUResyntheticsynthetic{}^{\text{synthetic}}start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT. Metric: accuracy (higher is better).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.3.3.4.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.3.3.4.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.3.3.4.1.2" rowspan="2"><span class="ltx_text" id="S4.T5.3.3.4.1.2.1" style="color:#808080;">Original</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.4.1.3" rowspan="2"><span class="ltx_text" id="S4.T5.3.3.4.1.3.1">w/ Occlusion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T5.3.3.4.1.4">Oracle Information</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.4.1.5">Predicted Information</th>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.1.1.1.1">+ All Coordinates (<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T5.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.2.2.2.2">+ Visible (<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mi id="S4.T5.2.2.2.2.m1.1.1" mathvariant="normal" xref="S4.T5.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math>)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T5.3.3.3.3">+ Inpainting (<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mi id="S4.T5.3.3.3.3.m1.1.1" mathvariant="normal" xref="S4.T5.3.3.3.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">roman_Δ</annotation></semantics></math>)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.3.3.5.1.1">GPT-4o</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.3.5.1.2"><span class="ltx_text" id="S4.T5.3.3.5.1.2.1" style="color:#808080;">13.34</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.3">14.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.4">2.93 (-11.82)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.5">9.20 (-5.55)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.3.5.1.6">15.89 (+1.14)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.3.3.6.2.1">InternVL2</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.3.6.2.2"><span class="ltx_text" id="S4.T5.3.3.6.2.2.1" style="color:#808080;">26.17</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.3">32.90</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.4">17.48 (-15.42)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.5">25.13 (-7.77)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.2.6">31.12 (-1.78)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.3.3.7.3.1">Qwen2VL</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.3.7.3.2"><span class="ltx_text" id="S4.T5.3.3.7.3.2.1" style="color:#808080;">18.96</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.3">29.33</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.4">9.62 (-19.71)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.5">17.70 (-11.63)</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.7.3.6">22.64 (-6.69)</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T5.3.3.8.4.1">Avg. of 3 VLMs</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T5.3.3.8.4.2"><span class="ltx_text" id="S4.T5.3.3.8.4.2.1" style="color:#808080;">19.49</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.3.3.8.4.3">25.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.3.3.8.4.4">10.01 (-15.65)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.3.3.8.4.5">17.34 (-8.32)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.3.3.8.4.6">23.22 (-2.44)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment designed to evaluate the impact of providing additional information to vision-language models (VLMs) when performing the CAPTURE task on real-world images.  The task involves counting occluded objects in images by inferring a pattern.  The table compares the performance of the VLMs under normal occluded conditions against their performance when provided with three types of auxiliary information: all object coordinates (ground truth locations of all objects), visible object coordinates (only visible objects), and an inpainted image (where the occluded region is filled in by a separate model).  The metric used to measure performance is the Symmetric Mean Absolute Percentage Error (SMAPE). The difference in SMAPE between the baseline occluded condition and each auxiliary condition is also reported to show the effect of providing additional information.
> <details>
> <summary>read the caption</summary>
> Table 5:  Effect of auxiliary information on occluded CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT. Δ=Δabsent\Delta=roman_Δ = (Auxiliary Information) −-- (w/ Occlusion). Metric: sMAPE.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.25.25">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A3.T6.1.1.1.2" rowspan="3"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.2.1">Model</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="A3.T6.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.1">sMAPE</span> (<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T6.1.1.1.1.m1.1"><semantics id="A3.T6.1.1.1.1.m1.1a"><mo id="A3.T6.1.1.1.1.m1.1.1" stretchy="false" xref="A3.T6.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T6.1.1.1.1.m1.1b"><ci id="A3.T6.1.1.1.1.m1.1.1.cmml" xref="A3.T6.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.1.1.1.1.m1.1d">↓</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A3.T6.25.25.26.1">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A3.T6.25.25.26.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.25.25.26.1.1.1">Real</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A3.T6.25.25.26.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.25.25.26.1.2.1">Synthetic</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.25.25.27.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T6.25.25.27.2.1"><span class="ltx_text ltx_font_bold" id="A3.T6.25.25.27.2.1.1">Occluded</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T6.25.25.27.2.2"><span class="ltx_text ltx_font_bold" id="A3.T6.25.25.27.2.2.1">Unoccluded</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T6.25.25.27.2.3"><span class="ltx_text ltx_font_bold" id="A3.T6.25.25.27.2.3.1">Occluded</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T6.25.25.27.2.4"><span class="ltx_text ltx_font_bold" id="A3.T6.25.25.27.2.4.1">Unoccluded</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.5">
<th class="ltx_td ltx_th ltx_th_row" id="A3.T6.5.5.5.5"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.5.6"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.5.6.1">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.2.2.2.1"><span class="ltx_text ltx_font_bold" id="A3.T6.2.2.2.1.1">w/ backoff (<math alttext="\Delta" class="ltx_Math" display="inline" id="A3.T6.2.2.2.1.1.m1.1"><semantics id="A3.T6.2.2.2.1.1.m1.1a"><mi id="A3.T6.2.2.2.1.1.m1.1.1" mathvariant="normal" xref="A3.T6.2.2.2.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A3.T6.2.2.2.1.1.m1.1b"><ci id="A3.T6.2.2.2.1.1.m1.1.1.cmml" xref="A3.T6.2.2.2.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.2.2.2.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A3.T6.2.2.2.1.1.m1.1d">roman_Δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.5.7"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.5.7.1">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.3.3.3.2"><span class="ltx_text ltx_font_bold" id="A3.T6.3.3.3.2.1">w/ backoff (<math alttext="\Delta" class="ltx_Math" display="inline" id="A3.T6.3.3.3.2.1.m1.1"><semantics id="A3.T6.3.3.3.2.1.m1.1a"><mi id="A3.T6.3.3.3.2.1.m1.1.1" mathvariant="normal" xref="A3.T6.3.3.3.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A3.T6.3.3.3.2.1.m1.1b"><ci id="A3.T6.3.3.3.2.1.m1.1.1.cmml" xref="A3.T6.3.3.3.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.3.3.2.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.3.3.2.1.m1.1d">roman_Δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.5.8"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.5.8.1">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.4.4.4.3"><span class="ltx_text ltx_font_bold" id="A3.T6.4.4.4.3.1">w/ backoff (<math alttext="\Delta" class="ltx_Math" display="inline" id="A3.T6.4.4.4.3.1.m1.1"><semantics id="A3.T6.4.4.4.3.1.m1.1a"><mi id="A3.T6.4.4.4.3.1.m1.1.1" mathvariant="normal" xref="A3.T6.4.4.4.3.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A3.T6.4.4.4.3.1.m1.1b"><ci id="A3.T6.4.4.4.3.1.m1.1.1.cmml" xref="A3.T6.4.4.4.3.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.4.4.3.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.4.4.3.1.m1.1d">roman_Δ</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.5.9"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.5.9.1">Original</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.5.4"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.5.4.1">w/ backoff (<math alttext="\Delta" class="ltx_Math" display="inline" id="A3.T6.5.5.5.4.1.m1.1"><semantics id="A3.T6.5.5.5.4.1.m1.1a"><mi id="A3.T6.5.5.5.4.1.m1.1.1" mathvariant="normal" xref="A3.T6.5.5.5.4.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A3.T6.5.5.5.4.1.m1.1b"><ci id="A3.T6.5.5.5.4.1.m1.1.1.cmml" xref="A3.T6.5.5.5.4.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.5.5.4.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.5.5.4.1.m1.1d">roman_Δ</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.9.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T6.9.9.9.5">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.9.9.9.6">14.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.6.6.6.1">14.39 (<math alttext="-0.36" class="ltx_Math" display="inline" id="A3.T6.6.6.6.1.m1.1"><semantics id="A3.T6.6.6.6.1.m1.1a"><mrow id="A3.T6.6.6.6.1.m1.1.1" xref="A3.T6.6.6.6.1.m1.1.1.cmml"><mo id="A3.T6.6.6.6.1.m1.1.1a" xref="A3.T6.6.6.6.1.m1.1.1.cmml">−</mo><mn id="A3.T6.6.6.6.1.m1.1.1.2" xref="A3.T6.6.6.6.1.m1.1.1.2.cmml">0.36</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.6.6.6.1.m1.1b"><apply id="A3.T6.6.6.6.1.m1.1.1.cmml" xref="A3.T6.6.6.6.1.m1.1.1"><minus id="A3.T6.6.6.6.1.m1.1.1.1.cmml" xref="A3.T6.6.6.6.1.m1.1.1"></minus><cn id="A3.T6.6.6.6.1.m1.1.1.2.cmml" type="float" xref="A3.T6.6.6.6.1.m1.1.1.2">0.36</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.6.6.6.1.m1.1c">-0.36</annotation><annotation encoding="application/x-llamapun" id="A3.T6.6.6.6.1.m1.1d">- 0.36</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.9.9.9.7">13.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.7.7.7.2">12.57 (<math alttext="-0.77" class="ltx_Math" display="inline" id="A3.T6.7.7.7.2.m1.1"><semantics id="A3.T6.7.7.7.2.m1.1a"><mrow id="A3.T6.7.7.7.2.m1.1.1" xref="A3.T6.7.7.7.2.m1.1.1.cmml"><mo id="A3.T6.7.7.7.2.m1.1.1a" xref="A3.T6.7.7.7.2.m1.1.1.cmml">−</mo><mn id="A3.T6.7.7.7.2.m1.1.1.2" xref="A3.T6.7.7.7.2.m1.1.1.2.cmml">0.77</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.7.7.7.2.m1.1b"><apply id="A3.T6.7.7.7.2.m1.1.1.cmml" xref="A3.T6.7.7.7.2.m1.1.1"><minus id="A3.T6.7.7.7.2.m1.1.1.1.cmml" xref="A3.T6.7.7.7.2.m1.1.1"></minus><cn id="A3.T6.7.7.7.2.m1.1.1.2.cmml" type="float" xref="A3.T6.7.7.7.2.m1.1.1.2">0.77</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.7.7.7.2.m1.1c">-0.77</annotation><annotation encoding="application/x-llamapun" id="A3.T6.7.7.7.2.m1.1d">- 0.77</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.9.9.9.8">9.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.8.8.8.3">9.23 (<math alttext="-0.48" class="ltx_Math" display="inline" id="A3.T6.8.8.8.3.m1.1"><semantics id="A3.T6.8.8.8.3.m1.1a"><mrow id="A3.T6.8.8.8.3.m1.1.1" xref="A3.T6.8.8.8.3.m1.1.1.cmml"><mo id="A3.T6.8.8.8.3.m1.1.1a" xref="A3.T6.8.8.8.3.m1.1.1.cmml">−</mo><mn id="A3.T6.8.8.8.3.m1.1.1.2" xref="A3.T6.8.8.8.3.m1.1.1.2.cmml">0.48</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.8.8.8.3.m1.1b"><apply id="A3.T6.8.8.8.3.m1.1.1.cmml" xref="A3.T6.8.8.8.3.m1.1.1"><minus id="A3.T6.8.8.8.3.m1.1.1.1.cmml" xref="A3.T6.8.8.8.3.m1.1.1"></minus><cn id="A3.T6.8.8.8.3.m1.1.1.2.cmml" type="float" xref="A3.T6.8.8.8.3.m1.1.1.2">0.48</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.8.8.8.3.m1.1c">-0.48</annotation><annotation encoding="application/x-llamapun" id="A3.T6.8.8.8.3.m1.1d">- 0.48</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.9.9.9.9">5.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.9.9.9.4">5.93 (<math alttext="+0.03" class="ltx_Math" display="inline" id="A3.T6.9.9.9.4.m1.1"><semantics id="A3.T6.9.9.9.4.m1.1a"><mrow id="A3.T6.9.9.9.4.m1.1.1" xref="A3.T6.9.9.9.4.m1.1.1.cmml"><mo id="A3.T6.9.9.9.4.m1.1.1a" xref="A3.T6.9.9.9.4.m1.1.1.cmml">+</mo><mn id="A3.T6.9.9.9.4.m1.1.1.2" xref="A3.T6.9.9.9.4.m1.1.1.2.cmml">0.03</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.9.9.9.4.m1.1b"><apply id="A3.T6.9.9.9.4.m1.1.1.cmml" xref="A3.T6.9.9.9.4.m1.1.1"><plus id="A3.T6.9.9.9.4.m1.1.1.1.cmml" xref="A3.T6.9.9.9.4.m1.1.1"></plus><cn id="A3.T6.9.9.9.4.m1.1.1.2.cmml" type="float" xref="A3.T6.9.9.9.4.m1.1.1.2">0.03</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.9.9.9.4.m1.1c">+0.03</annotation><annotation encoding="application/x-llamapun" id="A3.T6.9.9.9.4.m1.1d">+ 0.03</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A3.T6.13.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.13.13.13.5">InternVL2</th>
<td class="ltx_td ltx_align_center" id="A3.T6.13.13.13.6">32.90</td>
<td class="ltx_td ltx_align_center" id="A3.T6.10.10.10.1">32.37 (<math alttext="-0.53" class="ltx_Math" display="inline" id="A3.T6.10.10.10.1.m1.1"><semantics id="A3.T6.10.10.10.1.m1.1a"><mrow id="A3.T6.10.10.10.1.m1.1.1" xref="A3.T6.10.10.10.1.m1.1.1.cmml"><mo id="A3.T6.10.10.10.1.m1.1.1a" xref="A3.T6.10.10.10.1.m1.1.1.cmml">−</mo><mn id="A3.T6.10.10.10.1.m1.1.1.2" xref="A3.T6.10.10.10.1.m1.1.1.2.cmml">0.53</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.10.10.10.1.m1.1b"><apply id="A3.T6.10.10.10.1.m1.1.1.cmml" xref="A3.T6.10.10.10.1.m1.1.1"><minus id="A3.T6.10.10.10.1.m1.1.1.1.cmml" xref="A3.T6.10.10.10.1.m1.1.1"></minus><cn id="A3.T6.10.10.10.1.m1.1.1.2.cmml" type="float" xref="A3.T6.10.10.10.1.m1.1.1.2">0.53</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.10.10.10.1.m1.1c">-0.53</annotation><annotation encoding="application/x-llamapun" id="A3.T6.10.10.10.1.m1.1d">- 0.53</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.13.13.13.7">26.17</td>
<td class="ltx_td ltx_align_center" id="A3.T6.11.11.11.2">27.09 (<math alttext="+0.92" class="ltx_Math" display="inline" id="A3.T6.11.11.11.2.m1.1"><semantics id="A3.T6.11.11.11.2.m1.1a"><mrow id="A3.T6.11.11.11.2.m1.1.1" xref="A3.T6.11.11.11.2.m1.1.1.cmml"><mo id="A3.T6.11.11.11.2.m1.1.1a" xref="A3.T6.11.11.11.2.m1.1.1.cmml">+</mo><mn id="A3.T6.11.11.11.2.m1.1.1.2" xref="A3.T6.11.11.11.2.m1.1.1.2.cmml">0.92</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.11.11.11.2.m1.1b"><apply id="A3.T6.11.11.11.2.m1.1.1.cmml" xref="A3.T6.11.11.11.2.m1.1.1"><plus id="A3.T6.11.11.11.2.m1.1.1.1.cmml" xref="A3.T6.11.11.11.2.m1.1.1"></plus><cn id="A3.T6.11.11.11.2.m1.1.1.2.cmml" type="float" xref="A3.T6.11.11.11.2.m1.1.1.2">0.92</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.11.11.11.2.m1.1c">+0.92</annotation><annotation encoding="application/x-llamapun" id="A3.T6.11.11.11.2.m1.1d">+ 0.92</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.13.13.13.8">17.57</td>
<td class="ltx_td ltx_align_center" id="A3.T6.12.12.12.3">16.24 (<math alttext="-1.33" class="ltx_Math" display="inline" id="A3.T6.12.12.12.3.m1.1"><semantics id="A3.T6.12.12.12.3.m1.1a"><mrow id="A3.T6.12.12.12.3.m1.1.1" xref="A3.T6.12.12.12.3.m1.1.1.cmml"><mo id="A3.T6.12.12.12.3.m1.1.1a" xref="A3.T6.12.12.12.3.m1.1.1.cmml">−</mo><mn id="A3.T6.12.12.12.3.m1.1.1.2" xref="A3.T6.12.12.12.3.m1.1.1.2.cmml">1.33</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.12.12.12.3.m1.1b"><apply id="A3.T6.12.12.12.3.m1.1.1.cmml" xref="A3.T6.12.12.12.3.m1.1.1"><minus id="A3.T6.12.12.12.3.m1.1.1.1.cmml" xref="A3.T6.12.12.12.3.m1.1.1"></minus><cn id="A3.T6.12.12.12.3.m1.1.1.2.cmml" type="float" xref="A3.T6.12.12.12.3.m1.1.1.2">1.33</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.12.12.12.3.m1.1c">-1.33</annotation><annotation encoding="application/x-llamapun" id="A3.T6.12.12.12.3.m1.1d">- 1.33</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.13.13.13.9">16.44</td>
<td class="ltx_td ltx_align_center" id="A3.T6.13.13.13.4">15.59 (<math alttext="-0.85" class="ltx_Math" display="inline" id="A3.T6.13.13.13.4.m1.1"><semantics id="A3.T6.13.13.13.4.m1.1a"><mrow id="A3.T6.13.13.13.4.m1.1.1" xref="A3.T6.13.13.13.4.m1.1.1.cmml"><mo id="A3.T6.13.13.13.4.m1.1.1a" xref="A3.T6.13.13.13.4.m1.1.1.cmml">−</mo><mn id="A3.T6.13.13.13.4.m1.1.1.2" xref="A3.T6.13.13.13.4.m1.1.1.2.cmml">0.85</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.13.13.13.4.m1.1b"><apply id="A3.T6.13.13.13.4.m1.1.1.cmml" xref="A3.T6.13.13.13.4.m1.1.1"><minus id="A3.T6.13.13.13.4.m1.1.1.1.cmml" xref="A3.T6.13.13.13.4.m1.1.1"></minus><cn id="A3.T6.13.13.13.4.m1.1.1.2.cmml" type="float" xref="A3.T6.13.13.13.4.m1.1.1.2">0.85</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.13.13.13.4.m1.1c">-0.85</annotation><annotation encoding="application/x-llamapun" id="A3.T6.13.13.13.4.m1.1d">- 0.85</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A3.T6.17.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.17.17.17.5">Molmo</th>
<td class="ltx_td ltx_align_center" id="A3.T6.17.17.17.6">32.49</td>
<td class="ltx_td ltx_align_center" id="A3.T6.14.14.14.1">28.17 (<math alttext="-4.32" class="ltx_Math" display="inline" id="A3.T6.14.14.14.1.m1.1"><semantics id="A3.T6.14.14.14.1.m1.1a"><mrow id="A3.T6.14.14.14.1.m1.1.1" xref="A3.T6.14.14.14.1.m1.1.1.cmml"><mo id="A3.T6.14.14.14.1.m1.1.1a" xref="A3.T6.14.14.14.1.m1.1.1.cmml">−</mo><mn id="A3.T6.14.14.14.1.m1.1.1.2" xref="A3.T6.14.14.14.1.m1.1.1.2.cmml">4.32</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.14.14.14.1.m1.1b"><apply id="A3.T6.14.14.14.1.m1.1.1.cmml" xref="A3.T6.14.14.14.1.m1.1.1"><minus id="A3.T6.14.14.14.1.m1.1.1.1.cmml" xref="A3.T6.14.14.14.1.m1.1.1"></minus><cn id="A3.T6.14.14.14.1.m1.1.1.2.cmml" type="float" xref="A3.T6.14.14.14.1.m1.1.1.2">4.32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.14.14.14.1.m1.1c">-4.32</annotation><annotation encoding="application/x-llamapun" id="A3.T6.14.14.14.1.m1.1d">- 4.32</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.17.17.17.7">25.90</td>
<td class="ltx_td ltx_align_center" id="A3.T6.15.15.15.2">21.23 (<math alttext="-4.67" class="ltx_Math" display="inline" id="A3.T6.15.15.15.2.m1.1"><semantics id="A3.T6.15.15.15.2.m1.1a"><mrow id="A3.T6.15.15.15.2.m1.1.1" xref="A3.T6.15.15.15.2.m1.1.1.cmml"><mo id="A3.T6.15.15.15.2.m1.1.1a" xref="A3.T6.15.15.15.2.m1.1.1.cmml">−</mo><mn id="A3.T6.15.15.15.2.m1.1.1.2" xref="A3.T6.15.15.15.2.m1.1.1.2.cmml">4.67</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.15.15.15.2.m1.1b"><apply id="A3.T6.15.15.15.2.m1.1.1.cmml" xref="A3.T6.15.15.15.2.m1.1.1"><minus id="A3.T6.15.15.15.2.m1.1.1.1.cmml" xref="A3.T6.15.15.15.2.m1.1.1"></minus><cn id="A3.T6.15.15.15.2.m1.1.1.2.cmml" type="float" xref="A3.T6.15.15.15.2.m1.1.1.2">4.67</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.15.15.15.2.m1.1c">-4.67</annotation><annotation encoding="application/x-llamapun" id="A3.T6.15.15.15.2.m1.1d">- 4.67</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.17.17.17.8">17.73</td>
<td class="ltx_td ltx_align_center" id="A3.T6.16.16.16.3">15.85 (<math alttext="-1.88" class="ltx_Math" display="inline" id="A3.T6.16.16.16.3.m1.1"><semantics id="A3.T6.16.16.16.3.m1.1a"><mrow id="A3.T6.16.16.16.3.m1.1.1" xref="A3.T6.16.16.16.3.m1.1.1.cmml"><mo id="A3.T6.16.16.16.3.m1.1.1a" xref="A3.T6.16.16.16.3.m1.1.1.cmml">−</mo><mn id="A3.T6.16.16.16.3.m1.1.1.2" xref="A3.T6.16.16.16.3.m1.1.1.2.cmml">1.88</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.16.16.16.3.m1.1b"><apply id="A3.T6.16.16.16.3.m1.1.1.cmml" xref="A3.T6.16.16.16.3.m1.1.1"><minus id="A3.T6.16.16.16.3.m1.1.1.1.cmml" xref="A3.T6.16.16.16.3.m1.1.1"></minus><cn id="A3.T6.16.16.16.3.m1.1.1.2.cmml" type="float" xref="A3.T6.16.16.16.3.m1.1.1.2">1.88</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.16.16.16.3.m1.1c">-1.88</annotation><annotation encoding="application/x-llamapun" id="A3.T6.16.16.16.3.m1.1d">- 1.88</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.17.17.17.9">8.40</td>
<td class="ltx_td ltx_align_center" id="A3.T6.17.17.17.4">2.88 (<math alttext="-5.52" class="ltx_Math" display="inline" id="A3.T6.17.17.17.4.m1.1"><semantics id="A3.T6.17.17.17.4.m1.1a"><mrow id="A3.T6.17.17.17.4.m1.1.1" xref="A3.T6.17.17.17.4.m1.1.1.cmml"><mo id="A3.T6.17.17.17.4.m1.1.1a" xref="A3.T6.17.17.17.4.m1.1.1.cmml">−</mo><mn id="A3.T6.17.17.17.4.m1.1.1.2" xref="A3.T6.17.17.17.4.m1.1.1.2.cmml">5.52</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.17.17.17.4.m1.1b"><apply id="A3.T6.17.17.17.4.m1.1.1.cmml" xref="A3.T6.17.17.17.4.m1.1.1"><minus id="A3.T6.17.17.17.4.m1.1.1.1.cmml" xref="A3.T6.17.17.17.4.m1.1.1"></minus><cn id="A3.T6.17.17.17.4.m1.1.1.2.cmml" type="float" xref="A3.T6.17.17.17.4.m1.1.1.2">5.52</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.17.17.17.4.m1.1c">-5.52</annotation><annotation encoding="application/x-llamapun" id="A3.T6.17.17.17.4.m1.1d">- 5.52</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A3.T6.21.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T6.21.21.21.5">Qwen2VL</th>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.21.6">29.33</td>
<td class="ltx_td ltx_align_center" id="A3.T6.18.18.18.1">28.47 (<math alttext="-0.86" class="ltx_Math" display="inline" id="A3.T6.18.18.18.1.m1.1"><semantics id="A3.T6.18.18.18.1.m1.1a"><mrow id="A3.T6.18.18.18.1.m1.1.1" xref="A3.T6.18.18.18.1.m1.1.1.cmml"><mo id="A3.T6.18.18.18.1.m1.1.1a" xref="A3.T6.18.18.18.1.m1.1.1.cmml">−</mo><mn id="A3.T6.18.18.18.1.m1.1.1.2" xref="A3.T6.18.18.18.1.m1.1.1.2.cmml">0.86</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.18.18.18.1.m1.1b"><apply id="A3.T6.18.18.18.1.m1.1.1.cmml" xref="A3.T6.18.18.18.1.m1.1.1"><minus id="A3.T6.18.18.18.1.m1.1.1.1.cmml" xref="A3.T6.18.18.18.1.m1.1.1"></minus><cn id="A3.T6.18.18.18.1.m1.1.1.2.cmml" type="float" xref="A3.T6.18.18.18.1.m1.1.1.2">0.86</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.18.18.18.1.m1.1c">-0.86</annotation><annotation encoding="application/x-llamapun" id="A3.T6.18.18.18.1.m1.1d">- 0.86</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.21.7">18.96</td>
<td class="ltx_td ltx_align_center" id="A3.T6.19.19.19.2">19.40 (<math alttext="+0.44" class="ltx_Math" display="inline" id="A3.T6.19.19.19.2.m1.1"><semantics id="A3.T6.19.19.19.2.m1.1a"><mrow id="A3.T6.19.19.19.2.m1.1.1" xref="A3.T6.19.19.19.2.m1.1.1.cmml"><mo id="A3.T6.19.19.19.2.m1.1.1a" xref="A3.T6.19.19.19.2.m1.1.1.cmml">+</mo><mn id="A3.T6.19.19.19.2.m1.1.1.2" xref="A3.T6.19.19.19.2.m1.1.1.2.cmml">0.44</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.19.19.19.2.m1.1b"><apply id="A3.T6.19.19.19.2.m1.1.1.cmml" xref="A3.T6.19.19.19.2.m1.1.1"><plus id="A3.T6.19.19.19.2.m1.1.1.1.cmml" xref="A3.T6.19.19.19.2.m1.1.1"></plus><cn id="A3.T6.19.19.19.2.m1.1.1.2.cmml" type="float" xref="A3.T6.19.19.19.2.m1.1.1.2">0.44</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.19.19.19.2.m1.1c">+0.44</annotation><annotation encoding="application/x-llamapun" id="A3.T6.19.19.19.2.m1.1d">+ 0.44</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.21.8">11.74</td>
<td class="ltx_td ltx_align_center" id="A3.T6.20.20.20.3">11.51 (<math alttext="-0.23" class="ltx_Math" display="inline" id="A3.T6.20.20.20.3.m1.1"><semantics id="A3.T6.20.20.20.3.m1.1a"><mrow id="A3.T6.20.20.20.3.m1.1.1" xref="A3.T6.20.20.20.3.m1.1.1.cmml"><mo id="A3.T6.20.20.20.3.m1.1.1a" xref="A3.T6.20.20.20.3.m1.1.1.cmml">−</mo><mn id="A3.T6.20.20.20.3.m1.1.1.2" xref="A3.T6.20.20.20.3.m1.1.1.2.cmml">0.23</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.20.20.20.3.m1.1b"><apply id="A3.T6.20.20.20.3.m1.1.1.cmml" xref="A3.T6.20.20.20.3.m1.1.1"><minus id="A3.T6.20.20.20.3.m1.1.1.1.cmml" xref="A3.T6.20.20.20.3.m1.1.1"></minus><cn id="A3.T6.20.20.20.3.m1.1.1.2.cmml" type="float" xref="A3.T6.20.20.20.3.m1.1.1.2">0.23</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.20.20.20.3.m1.1c">-0.23</annotation><annotation encoding="application/x-llamapun" id="A3.T6.20.20.20.3.m1.1d">- 0.23</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.21.9">6.63</td>
<td class="ltx_td ltx_align_center" id="A3.T6.21.21.21.4">6.66 (<math alttext="+0.03" class="ltx_Math" display="inline" id="A3.T6.21.21.21.4.m1.1"><semantics id="A3.T6.21.21.21.4.m1.1a"><mrow id="A3.T6.21.21.21.4.m1.1.1" xref="A3.T6.21.21.21.4.m1.1.1.cmml"><mo id="A3.T6.21.21.21.4.m1.1.1a" xref="A3.T6.21.21.21.4.m1.1.1.cmml">+</mo><mn id="A3.T6.21.21.21.4.m1.1.1.2" xref="A3.T6.21.21.21.4.m1.1.1.2.cmml">0.03</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.21.21.21.4.m1.1b"><apply id="A3.T6.21.21.21.4.m1.1.1.cmml" xref="A3.T6.21.21.21.4.m1.1.1"><plus id="A3.T6.21.21.21.4.m1.1.1.1.cmml" xref="A3.T6.21.21.21.4.m1.1.1"></plus><cn id="A3.T6.21.21.21.4.m1.1.1.2.cmml" type="float" xref="A3.T6.21.21.21.4.m1.1.1.2">0.03</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.21.21.21.4.m1.1c">+0.03</annotation><annotation encoding="application/x-llamapun" id="A3.T6.21.21.21.4.m1.1d">+ 0.03</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="A3.T6.25.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T6.25.25.25.5"><span class="ltx_text ltx_font_bold" id="A3.T6.25.25.25.5.1">Avg. of 4 VLMs</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.25.25.25.6">27.37</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.22.22.22.1">25.85 (<math alttext="-1.52" class="ltx_Math" display="inline" id="A3.T6.22.22.22.1.m1.1"><semantics id="A3.T6.22.22.22.1.m1.1a"><mrow id="A3.T6.22.22.22.1.m1.1.1" xref="A3.T6.22.22.22.1.m1.1.1.cmml"><mo id="A3.T6.22.22.22.1.m1.1.1a" xref="A3.T6.22.22.22.1.m1.1.1.cmml">−</mo><mn id="A3.T6.22.22.22.1.m1.1.1.2" xref="A3.T6.22.22.22.1.m1.1.1.2.cmml">1.52</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.22.22.22.1.m1.1b"><apply id="A3.T6.22.22.22.1.m1.1.1.cmml" xref="A3.T6.22.22.22.1.m1.1.1"><minus id="A3.T6.22.22.22.1.m1.1.1.1.cmml" xref="A3.T6.22.22.22.1.m1.1.1"></minus><cn id="A3.T6.22.22.22.1.m1.1.1.2.cmml" type="float" xref="A3.T6.22.22.22.1.m1.1.1.2">1.52</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.22.22.22.1.m1.1c">-1.52</annotation><annotation encoding="application/x-llamapun" id="A3.T6.22.22.22.1.m1.1d">- 1.52</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.25.25.25.7">21.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.23.23.23.2">20.07 (<math alttext="-1.02" class="ltx_Math" display="inline" id="A3.T6.23.23.23.2.m1.1"><semantics id="A3.T6.23.23.23.2.m1.1a"><mrow id="A3.T6.23.23.23.2.m1.1.1" xref="A3.T6.23.23.23.2.m1.1.1.cmml"><mo id="A3.T6.23.23.23.2.m1.1.1a" xref="A3.T6.23.23.23.2.m1.1.1.cmml">−</mo><mn id="A3.T6.23.23.23.2.m1.1.1.2" xref="A3.T6.23.23.23.2.m1.1.1.2.cmml">1.02</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.23.23.23.2.m1.1b"><apply id="A3.T6.23.23.23.2.m1.1.1.cmml" xref="A3.T6.23.23.23.2.m1.1.1"><minus id="A3.T6.23.23.23.2.m1.1.1.1.cmml" xref="A3.T6.23.23.23.2.m1.1.1"></minus><cn id="A3.T6.23.23.23.2.m1.1.1.2.cmml" type="float" xref="A3.T6.23.23.23.2.m1.1.1.2">1.02</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.23.23.23.2.m1.1c">-1.02</annotation><annotation encoding="application/x-llamapun" id="A3.T6.23.23.23.2.m1.1d">- 1.02</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.25.25.25.8">14.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.24.24.24.3">13.21 (<math alttext="-0.98" class="ltx_Math" display="inline" id="A3.T6.24.24.24.3.m1.1"><semantics id="A3.T6.24.24.24.3.m1.1a"><mrow id="A3.T6.24.24.24.3.m1.1.1" xref="A3.T6.24.24.24.3.m1.1.1.cmml"><mo id="A3.T6.24.24.24.3.m1.1.1a" xref="A3.T6.24.24.24.3.m1.1.1.cmml">−</mo><mn id="A3.T6.24.24.24.3.m1.1.1.2" xref="A3.T6.24.24.24.3.m1.1.1.2.cmml">0.98</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.24.24.24.3.m1.1b"><apply id="A3.T6.24.24.24.3.m1.1.1.cmml" xref="A3.T6.24.24.24.3.m1.1.1"><minus id="A3.T6.24.24.24.3.m1.1.1.1.cmml" xref="A3.T6.24.24.24.3.m1.1.1"></minus><cn id="A3.T6.24.24.24.3.m1.1.1.2.cmml" type="float" xref="A3.T6.24.24.24.3.m1.1.1.2">0.98</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.24.24.24.3.m1.1c">-0.98</annotation><annotation encoding="application/x-llamapun" id="A3.T6.24.24.24.3.m1.1d">- 0.98</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.25.25.25.9">9.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T6.25.25.25.4">7.76 (<math alttext="-1.58" class="ltx_Math" display="inline" id="A3.T6.25.25.25.4.m1.1"><semantics id="A3.T6.25.25.25.4.m1.1a"><mrow id="A3.T6.25.25.25.4.m1.1.1" xref="A3.T6.25.25.25.4.m1.1.1.cmml"><mo id="A3.T6.25.25.25.4.m1.1.1a" xref="A3.T6.25.25.25.4.m1.1.1.cmml">−</mo><mn id="A3.T6.25.25.25.4.m1.1.1.2" xref="A3.T6.25.25.25.4.m1.1.1.2.cmml">1.58</mn></mrow><annotation-xml encoding="MathML-Content" id="A3.T6.25.25.25.4.m1.1b"><apply id="A3.T6.25.25.25.4.m1.1.1.cmml" xref="A3.T6.25.25.25.4.m1.1.1"><minus id="A3.T6.25.25.25.4.m1.1.1.1.cmml" xref="A3.T6.25.25.25.4.m1.1.1"></minus><cn id="A3.T6.25.25.25.4.m1.1.1.2.cmml" type="float" xref="A3.T6.25.25.25.4.m1.1.1.2">1.58</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.25.25.25.4.m1.1c">-1.58</annotation><annotation encoding="application/x-llamapun" id="A3.T6.25.25.25.4.m1.1d">- 1.58</annotation></semantics></math>)</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of four different vision-language models (VLMs) on the CAPTURE task.  The comparison is made across four conditions: CAPTUREreal with occlusion, CAPTUREreal without occlusion, CAPTURESynthetic with occlusion, and CAPTURESynthetic without occlusion.  The results show the Symmetric Mean Absolute Percentage Error (SMAPE) for each model and condition.  Additionally, the impact of applying a temperature backoff technique is evaluated, comparing original results to results with backoff applied.  Lower SMAPE values indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 6:  Comparison of models on CAPTURe across four scenarios (CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT vs. CAPTUResyntheticsynthetic{}^{\text{synthetic}}start_FLOATSUPERSCRIPT synthetic end_FLOATSUPERSCRIPT, Occluded vs. Unoccluded). “Original” indicates no backoff; “w/ backoff” indicates applying backoff, with ΔΔ\Deltaroman_Δ = (w/ backoff) −-- (Original). Negative ΔΔ\Deltaroman_Δ values indicate an improvement.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A3.T7.1.1.2">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1">Error (%) [<math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T7.1.1.1.m1.1"><semantics id="A3.T7.1.1.1.m1.1a"><mo id="A3.T7.1.1.1.m1.1.1" stretchy="false" xref="A3.T7.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T7.1.1.1.m1.1b"><ci id="A3.T7.1.1.1.m1.1.1.cmml" xref="A3.T7.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T7.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T7.1.1.1.m1.1d">↓</annotation></semantics></math>]</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.1.2.1.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T7.1.2.1.2">26.13</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.1.3.2.1">InternVL2</th>
<td class="ltx_td ltx_align_center" id="A3.T7.1.3.2.2">75.82</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.1.4.3.1">Molmo</th>
<td class="ltx_td ltx_align_center" id="A3.T7.1.4.3.2">96.79</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.1.5.4.1">Qwen2VL</th>
<td class="ltx_td ltx_align_center" id="A3.T7.1.5.4.2">32.89</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T7.1.6.5.1">Avg. of 4 VLMs</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T7.1.6.5.2">57.91</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Symmetric Mean Absolute Percentage Error (sMAPE) scores achieved by various Vision-Language Models (VLMs) when tasked with solely counting the occluded objects within the CAPTUREreal dataset.  Lower sMAPE scores indicate better performance. The table provides a focused evaluation of the models' ability to reason about and count objects that are not fully visible, offering insights into their amodal completion capabilities.
> <details>
> <summary>read the caption</summary>
> Table 7:  VLM sMAPE for only counting the occluded objects in CAPTURerealreal{}^{\text{real}}start_FLOATSUPERSCRIPT real end_FLOATSUPERSCRIPT. Metric: sMAPE (lower is better).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.15485/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.15485/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}