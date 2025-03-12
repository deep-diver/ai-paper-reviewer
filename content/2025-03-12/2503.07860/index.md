---
title: "Video Action Differencing"
summary: "VidDiff: Identify subtle action differences in videos for coaching and skill learning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Stanford",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07860 {{< /keyword >}}
{{< keyword icon="writer" >}} James Burgess et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07860" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07860" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07860/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The paper introduces Video Action Differencing (VidDiff), a new task focused on identifying subtle differences between videos of the same action. This is motivated by applications like coaching and skill learning, where understanding these nuances is crucial. However, there is a lack of suitable datasets for developing and evaluating models for this task. Current video understanding research emphasizes coarse-grained action comparisons, missing the fine-grained details needed in many real-world scenarios. To tackle this the authors introduce a 'closed' setting for video analysis to focus on video analysis. 



To facilitate research in this area, the authors create VidDiffBench, a benchmark dataset containing 549 video pairs with annotations of action differences. The benchmark uses the VidDiff Method: action difference proposal, keyframe localization, and frame differencing. Experiments demonstrate that VidDiffBench poses a significant challenge for state-of-the-art large multimodal models (LMMs). The paper also analyzes the failure cases of LMMs, highlighting challenges in localizing relevant sub-actions and achieving fine-grained frame comparison.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces VidDiffBench, a new benchmark dataset for video action differencing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Highlights challenges in localizing sub-actions and fine-grained frame comparison. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposes VidDiff, an agentic workflow using specialized foundation models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **novel task, dataset, and method** for video action differencing, which could significantly impact coaching, skill learning, and automated performance feedback. It encourages further exploration into broader video comparison methods.

------
#### Visual Insights



![](https://arxiv.org/html/2503.07860/extracted/6268239/figs/pull-fig-5.png)

> 🔼 Figure 1 illustrates the Video Action Differencing (VidDiff) task and its accompanying benchmark dataset, VidDiffBench.  The task involves identifying subtle differences between two videos depicting the same action. VidDiffBench contains video pairs from diverse domains (fitness, sports, music, surgery, diving) with human-annotated differences, relevant to skill learning. The top row of the figure exemplifies the challenge of localizing specific sub-actions within the videos for accurate comparison. The bottom row highlights the challenge of fine-grained visual understanding required to discern subtle differences in the execution of actions.
> <details>
> <summary>read the caption</summary>
> Figure 1: The Video Action Differencing task and benchmark (VidDiffBench). Given a pair of videos and an action, the task is to generate a list of differences as natural language descriptions. Our VidDiffBench consists of annotated differences across diverse domains, where the differences are relevant to human skill learning. The first row emphasizes the first key challenge: localization of sub-actions between segments of the video for comparison. The second row highlights the second key challenge: fine-grained image understanding of actions in order to perform comparison.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1">Category</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.2">Source Dataset</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.3">Activity</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.4">Video Pair</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.5">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.5.1.1.1">Difference</td>
</tr>
</table>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.6">
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.6.1.1.1">Timestamp</td>
</tr>
</table>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.1">Fitness</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.2.1.2">HuMMan <cite class="ltx_cite ltx_citemacro_citep">(Cai et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07860v1#bib.bib12" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.3">8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.4">193</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.2.1.5">1,466</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1.1.2.1.6">310</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.1">Ballsports</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.3.2.2">Ego-Exo4d <cite class="ltx_cite ltx_citemacro_citep">(Grauman et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07860v1#bib.bib25" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.3">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.4">98</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.3.2.5">996</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.3.2.6">595</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.3.1">Surgery</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.4.3.2">JIGSAWS <cite class="ltx_cite ltx_citemacro_citep">(Gao et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07860v1#bib.bib23" title="">2014</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3.3">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3.4">166</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.4.3.5">1,386</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.4.3.6">672</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T1.1.5.4.1">Music</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.5.4.2">Ego-Exo4d <cite class="ltx_cite ltx_citemacro_citep">(Grauman et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07860v1#bib.bib25" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.4.3">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.4.4">29</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.5.4.5">180</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.5.4.6">320</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.6.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.6.5.1">Diving</td>
<td class="ltx_td ltx_align_left" id="S4.T1.1.6.5.2">FineDiving <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.07860v1#bib.bib70" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.5.3">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.5.4">63</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.6.5.5">441</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T1.1.6.5.6">140</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.1">Total</td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.2"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.6.3.1">18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.6.4.1">549</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.6.5.1">4,469</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S4.T1.1.7.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.7.6.6.1">2,075</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the VidDiffBench dataset, which is a benchmark dataset for Video Action Differencing. It shows the number of unique activities, video pairs, difference annotations, and timestamp annotations included in the dataset, broken down by category (Fitness, Ballsports, Surgery, Music, and Diving). This information helps to understand the scale and diversity of the VidDiffBench dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of VidDiffBench statistics across categories and datasets: number of unique activities, video pairs, annotations for differences, and timestamps.
> </details>





### In-depth insights


#### Action Differencing
**Action Differencing**, as presented in the paper, introduces a novel task focusing on identifying subtle differences between videos of the same action. This is significant, as current research largely overlooks fine-grained comparisons. The task has key challenges: localizing sub-actions and frame comparison. Addressing these hurdles could unlock applications like skill learning and coaching. This focus on nuanced distinctions sets it apart from broader action recognition or feature visualization techniques, potentially driving advancements in video understanding by requiring models to analyze subtle movements and their impact on overall performance. The task formulation using natural language also allows for the potential of interpretability that might bring forth more sophisticated models.

#### VidDiffBench
**VidDiffBench is presented as a novel benchmark for video action differencing**, a task involving identifying subtle differences between videos of the same action. It contains **549 video pairs with detailed human annotations,** including 4,469 fine-grained action differences and 2,075 localization timestamps. **The dataset spans diverse domains like fitness, sports, music, and surgery**, ensuring broad applicability and challenging models with varying levels of action complexity and background variation. A structured difference taxonomy was developed to address ambiguity, and labeling consistency was maintained by assigning single annotators per action. **VidDiffBench aims to advance video understanding by enabling precise comparison of subtle action differences**, a capability essential for applications in coaching, skill acquisition, and automated performance feedback. By releasing this benchmark, the authors facilitate further research and development in this relatively unexplored area.

#### Agentic Workflow
The paper introduces an "agentic workflow" named VidDiff Method, breaking down the task of video action differencing into stages, an approach that mirrors cognitive processes of humans. **Difference Proposer** (LLM) generates potential differences, **Frame Localizer** (CLIP) identifies relevant frames. **Action Differencer** (VQA) assesses differences, streamlining analysis. This leverages specialized foundation models for each stage, showing a structured approach to enhance video comparison which will make visual comparison easier.

#### LMM limitations
While this paper showcases potential, **LMMs have limitations**. Reliance on pre-trained models restricts application in specialized domains. The **open setting evaluation** uses LLMs, raising subjectivity in annotations: **relevance and significance of differences**. Reducing LLM response verbosity caused degraded performance, balancing cost and quality is important.

#### Future Research
The paper identifies several avenues for **future research**, including enhancing frame retrieval techniques, explicitly training Vision-Language Models (VLMs) for fine-grained feature comparison, and developing methods tailored to specialized domains. Overcoming limitations in relying on general foundation models that may struggle with domain-specific tasks. These areas aim to improve video understanding and enable broader applications in skill acquisition and more.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.07860/x1.png)

> 🔼 The VidDiff method is a three-stage process for identifying subtle differences between two videos showing the same action.  First, a large language model (LLM) proposes potential differences between the videos (e.g., 'faster ascent', 'wider stance').  Next, a frame localization module identifies the specific frames in each video where these differences are visible. Finally, a vision-language model compares the identified frames to determine whether each proposed difference applies more strongly to video A, video B, or neither.
> <details>
> <summary>read the caption</summary>
> Figure 2: VidDiff Method. One input is an action description (e.g. “weighted squat”). The Difference Proposer generates potential differences using a large language model (LLM). The Frame Localizer assigns frames where these differences are observable. Finally, the Action Differencer checks each difference using a vision-language model, determining whether it applies more to video A or video B, or neither.
> </details>



![](https://arxiv.org/html/2503.07860/x2.png)

> 🔼 This figure showcases examples of successful and unsuccessful video action difference predictions made by the GPT-40 model.  The 'success cases' (left) illustrate situations where GPT-40 achieves high accuracy. These cases generally involve readily apparent differences between the videos, easy identification of the specific frames where the differences occur, and actions that are relatively straightforward or simple in nature.  In contrast, the 'failure cases' (right) represent instances where GPT-40's performance is poor.  These typically involve subtle differences requiring keen visual discernment, precise temporal localization to pinpoint the exact frames containing the difference, or actions that are complex and nuanced.  The differences between success and failure highlight the challenges of identifying and localizing nuanced action differences.
> <details>
> <summary>read the caption</summary>
> Figure 3: Examples of ‘success cases’ (left) – differences where GPT-4o has high accuracy – and failure cases (right). Success cases typically involve coarse differences, easy localization, or simple actions, while failure cases often involve fine differences, precise localization or complex actions.
> </details>



![](https://arxiv.org/html/2503.07860/x3.png)

> 🔼 This figure showcases examples of frame localization within the VidDiff method. It visually compares the ground truth frame selections with the model's predictions for various action differences. Each row represents a different difference, highlighting the model's ability to pinpoint the relevant frames where visual differences are observable.  The differences shown range in complexity and granularity, demonstrating the challenges in precise temporal localization within video action differencing.
> <details>
> <summary>read the caption</summary>
> Figure 4: Sample frame localizations: prediction vs ground truth.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.5.1.1.1">Difference</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various large multimodal models (LMMs) on a closed-set video action differencing task.  The task involves predicting whether a given difference description applies more to one of two videos of the same action.  The table shows the accuracy of each model across three difficulty levels (Easy, Medium, Hard).  Scores significantly better than random chance (50%) are highlighted in gray, indicating statistical significance at a p-value below 0.05 using a binomial test.  The best performance for each difficulty level is shown in bold, and the second-best is underlined.
> <details>
> <summary>read the caption</summary>
> Table 2: Results for closed setting (accuracy). Best scores in bold, second best underlined. Scores are better than random, with statistical significance highlighted in gray. Significance is p-value<0.05absent0.05<0.05< 0.05 on a binomial test.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T1.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T1.1.1.1.6.1.1.1">Timestamp</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 presents the results of the open-set evaluation for the Video Action Differencing (VidDiff) task.  Recall@Ndiff is used as the evaluation metric, measuring the proportion of correctly identified and generated differences out of the total number of ground truth differences. The table shows the performance of different large multimodal models (LMMs) and the VidDiff method across three difficulty levels: easy, medium, and hard. The best scores for each difficulty level are highlighted in bold, and the second-best scores are underlined.
> <details>
> <summary>read the caption</summary>
> Table 3: Results for open setting (recall@Ndiffsubscript𝑁diffN_{\text{diff}}italic_N start_POSTSUBSCRIPT diff end_POSTSUBSCRIPT). Best scores in bold, second best underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T2.7.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.7.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T2.7.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T2.7.1.1.2.1">Easy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T2.7.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.7.1.1.3.1">Med</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T2.7.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.7.1.1.4.1">Hard</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T2.7.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T2.7.1.1.5.1">Avg</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.7.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.7.2.1.1"><span class="ltx_text ltx_font_bold" id="S6.T2.7.2.1.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.2.1.2" style="background-color:#D9D9D9;"><span class="ltx_text" id="S6.T2.7.2.1.2.1" style="background-color:#D9D9D9;">58.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.2.1.3">53.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.2.1.4">48.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.2.1.5" style="background-color:#D9D9D9;"><span class="ltx_text" id="S6.T2.7.2.1.5.1" style="background-color:#D9D9D9;">53.5</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.7.3.2.1"><span class="ltx_text ltx_font_bold" id="S6.T2.7.3.2.1.1">Gemini-1.5-Pro</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.3.2.2" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S6.T2.7.3.2.2.1" style="background-color:#D9D9D9;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.3.2.3" style="background-color:#D9D9D9;">
<span class="ltx_ERROR undefined" id="S6.T2.7.3.2.3.1">\ul</span><span class="ltx_text" id="S6.T2.7.3.2.3.2" style="background-color:#D9D9D9;">53.6</span>
</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.3.2.4">
<span class="ltx_ERROR undefined" id="S6.T2.7.3.2.4.1">\ul</span>51.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.3.2.5" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S6.T2.7.3.2.5.1" style="background-color:#D9D9D9;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.7.4.3.1"><span class="ltx_text ltx_font_bold" id="S6.T2.7.4.3.1.1">Claude-3.5-Sonnet</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.4.3.2" style="background-color:#D9D9D9;"><span class="ltx_text" id="S6.T2.7.4.3.2.1" style="background-color:#D9D9D9;">57.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.4.3.3">50.5</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.4.3.4" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S6.T2.7.4.3.4.1" style="background-color:#D9D9D9;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.4.3.5" style="background-color:#D9D9D9;"><span class="ltx_text" id="S6.T2.7.4.3.5.1" style="background-color:#D9D9D9;">53.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.7.5.4.1"><span class="ltx_text ltx_font_bold" id="S6.T2.7.5.4.1.1">LLaVA-Video</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.4.2" style="background-color:#D9D9D9;"><span class="ltx_text" id="S6.T2.7.5.4.2.1" style="background-color:#D9D9D9;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.4.3">52.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.4.4">48.3</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.5.4.5" style="background-color:#D9D9D9;"><span class="ltx_text" id="S6.T2.7.5.4.5.1" style="background-color:#D9D9D9;">52.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.7.6.5.1"><span class="ltx_text ltx_font_bold" id="S6.T2.7.6.5.1.1">Qwen2-VL-7B</span></th>
<td class="ltx_td ltx_align_center" id="S6.T2.7.6.5.2">49.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.6.5.3">52.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.6.5.4">49.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.7.6.5.5">50.4</td>
</tr>
<tr class="ltx_tr" id="S6.T2.7.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T2.7.7.6.1"><span class="ltx_text ltx_font_bold" id="S6.T2.7.7.6.1.1">VidDiff (ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.7.6.2" style="background-color:#D9D9D9;">
<span class="ltx_ERROR undefined" id="S6.T2.7.7.6.2.1">\ul</span><span class="ltx_text" id="S6.T2.7.7.6.2.2" style="background-color:#D9D9D9;">62.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.7.6.3" style="background-color:#D9D9D9;"><span class="ltx_text ltx_font_bold" id="S6.T2.7.7.6.3.1" style="background-color:#D9D9D9;">56.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.7.6.4">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.7.7.6.5" style="background-color:#D9D9D9;">
<span class="ltx_ERROR undefined" id="S6.T2.7.7.6.5.1">\ul</span><span class="ltx_text" id="S6.T2.7.7.6.5.2" style="background-color:#D9D9D9;">56.3</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the performance of the visual question answering (VQA) component of the VidDiff method when provided with perfectly aligned ground truth frames.  The experiment tests the ability of zero-shot vision-language models to identify subtle differences between the images. The evaluation is a 3-way multiple-choice question for each comparison.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study results for frame differencing VQA with ground truth frames. Questions are 3-way multiple-choice.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.7.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S6.T3.7.1.1.1" style="padding-left:8.5pt;padding-right:8.5pt;"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T3.7.1.1.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.1.2.1">Easy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T3.7.1.1.3" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.1.3.1">Med</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T3.7.1.1.4" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.1.4.1">Hard</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T3.7.1.1.5" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.1.1.5.1">Average</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.7.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T3.7.2.1.1" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.2.1.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.7.2.1.2" style="padding-left:8.5pt;padding-right:8.5pt;">
<span class="ltx_ERROR undefined" id="S6.T3.7.2.1.2.1">\ul</span>45.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.7.2.1.3" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.2.1.3.1">41.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.7.2.1.4" style="padding-left:8.5pt;padding-right:8.5pt;">
<span class="ltx_ERROR undefined" id="S6.T3.7.2.1.4.1">\ul</span>38.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.7.2.1.5" style="padding-left:8.5pt;padding-right:8.5pt;">
<span class="ltx_ERROR undefined" id="S6.T3.7.2.1.5.1">\ul</span>41.7</td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T3.7.3.2.1" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.3.2.1.1">Gemini-1.5-Pro</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.7.3.2.2" style="padding-left:8.5pt;padding-right:8.5pt;">30.3</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.3.2.3" style="padding-left:8.5pt;padding-right:8.5pt;">30.5</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.3.2.4" style="padding-left:8.5pt;padding-right:8.5pt;">24.1</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.3.2.5" style="padding-left:8.5pt;padding-right:8.5pt;">28.3</td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T3.7.4.3.1" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.4.3.1.1">Claude-3.5-Sonnet</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.7.4.3.2" style="padding-left:8.5pt;padding-right:8.5pt;">37.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.4.3.3" style="padding-left:8.5pt;padding-right:8.5pt;">34.6</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.4.3.4" style="padding-left:8.5pt;padding-right:8.5pt;">34.3</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.4.3.5" style="padding-left:8.5pt;padding-right:8.5pt;">35.6</td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T3.7.5.4.1" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.5.4.1.1">LLaVA-Video</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.7.5.4.2" style="padding-left:8.5pt;padding-right:8.5pt;">7.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.5.4.3" style="padding-left:8.5pt;padding-right:8.5pt;">9.0</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.5.4.4" style="padding-left:8.5pt;padding-right:8.5pt;">8.5</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.5.4.5" style="padding-left:8.5pt;padding-right:8.5pt;">8.4</td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T3.7.6.5.1" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.6.5.1.1">Qwen2-VL-7B</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.7.6.5.2" style="padding-left:8.5pt;padding-right:8.5pt;">11.2</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.6.5.3" style="padding-left:8.5pt;padding-right:8.5pt;">8.8</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.6.5.4" style="padding-left:8.5pt;padding-right:8.5pt;">1.6</td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.6.5.5" style="padding-left:8.5pt;padding-right:8.5pt;">7.2</td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T3.7.7.6.1" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.7.6.1.1">VidDiff (ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.7.7.6.2" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.7.6.2.1">49.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.7.7.6.3" style="padding-left:8.5pt;padding-right:8.5pt;">
<span class="ltx_ERROR undefined" id="S6.T3.7.7.6.3.1">\ul</span>37.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.7.7.6.4" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.7.6.4.1">38.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.7.7.6.5" style="padding-left:8.5pt;padding-right:8.5pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.7.7.6.5.1">42.1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the impact of different frame localization techniques on the accuracy of video action differencing.  Specifically, it compares the performance of the proposed VidDiff method's frame localization component against a baseline of random frame retrieval and a method without the Viterbi decoding step. The results are presented for the 'easy' difficulty split of the VidDiffBench dataset.  The table helps illustrate the importance of precise frame localization for accurate video action differencing, showcasing the contribution of the specific techniques employed in VidDiff.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on frame localization using different retrieval techniques on easy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1.1">Split</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.2.1">Easy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.3.1">Medium</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.4.1">Hard</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T4.1.2.1.1">Acc</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S6.T4.1.2.1.2">78.6</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S6.T4.1.2.1.3">61.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S6.T4.1.2.1.4">51.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the difficulty level assigned to each action in the VidDiffBench benchmark dataset.  For each action, it provides the action's short name (code), its full name, and a description of the action itself. The difficulty level is categorized into 'easy', 'medium', or 'hard', reflecting the complexity of identifying and annotating subtle differences within the action's video pairs.  This categorization is crucial for evaluating model performance and ensuring the benchmark's comprehensiveness.
> <details>
> <summary>read the caption</summary>
> Table 6: The difficulty splits with action code and names
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.2.1">Accuracy</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.1.2.1.1">Oracle (GT timestamps)</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S6.T5.1.2.1.2">78.6</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.3.2.1">Random</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.3.2.2">50.1</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.4.3.1">Ours w/o Viterbi Decoding</th>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S6.T5.1.4.3.2">57.4</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T5.1.5.4.1">Ours</th>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S6.T5.1.5.4.2">62.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a human evaluation study conducted to validate the LLM's approach to assigning difficulty levels (easy, medium, hard) to the video action differencing tasks. Three human evaluators independently ranked the difficulty of the actions, and these rankings were compared against the rankings generated by the LLM using Spearman's rank correlation.  The table shows the correlation coefficients between each human evaluator's ranking and the LLM's ranking, offering a quantitative assessment of the agreement between human judgment and the LLM's automated approach.
> <details>
> <summary>read the caption</summary>
> Table 7: Results on human evaluation study on choosing the splits. This is the Spearman’s rank corrlation between the ranks of action dificulty, comparing our LLM approach and 3 humans.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T6.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.1.1">Split</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.2.1">Action</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.3.1">Action Name</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A3.T6.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.1.1.4.1">
<span class="ltx_p" id="A3.T6.1.1.1.4.1.1" style="width:199.2pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.1.1.1.4.1.1.1">Action description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.2.1.1">easy</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.2.1.2">fitness_0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.1.2.1.3">Hip circle anticlockwise</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A3.T6.1.2.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.2.1.4.1">
<span class="ltx_p" id="A3.T6.1.2.1.4.1.1" style="width:199.2pt;">fitness exercise called standing hip circle with hands on hips, one rotation anticlockwise</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.3.2">
<td class="ltx_td ltx_align_left" id="A3.T6.1.3.2.1">easy</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.3.2.2">fitness_3</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.3.2.3">lucky cat</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.3.2.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.3.2.4.1">
<span class="ltx_p" id="A3.T6.1.3.2.4.1.1" style="width:199.2pt;">fitness exercise called two arm standing lucky cat starting with arms up, one repetition</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.4.3">
<td class="ltx_td ltx_align_left" id="A3.T6.1.4.3.1">easy</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.4.3.2">fitness_4</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.4.3.3">Squat Knee Raise side view</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.4.3.4.1">
<span class="ltx_p" id="A3.T6.1.4.3.4.1.1" style="width:199.2pt;">squat without weights, then knee raise on left side</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.5.4">
<td class="ltx_td ltx_align_left" id="A3.T6.1.5.4.1">easy</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.5.4.2">fitness_6</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.5.4.3">Hip circle clockwise</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.5.4.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.5.4.4.1">
<span class="ltx_p" id="A3.T6.1.5.4.4.1.1" style="width:199.2pt;">fitness exercise called standing hip circle with hands on hips, one rotation clockwise</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.6.5">
<td class="ltx_td ltx_align_left" id="A3.T6.1.6.5.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.6.5.2">ballsports_0</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.6.5.3">basketball jump shot</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.6.5.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.6.5.4.1">
<span class="ltx_p" id="A3.T6.1.6.5.4.1.1" style="width:199.2pt;">a person is doing a basketball mid-range jump shot, starting with the ball in their hand, no defense, practice only</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.7.6">
<td class="ltx_td ltx_align_left" id="A3.T6.1.7.6.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.7.6.2">ballsports_1</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.7.6.3">basketball mikan layup</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.7.6.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.7.6.4.1">
<span class="ltx_p" id="A3.T6.1.7.6.4.1.1" style="width:199.2pt;">a person does the Basketball drill called the Mikan layup where they start under the basket, do a layup with the right hand and catch it, do a left hand layup and catch it, no defense, practice only</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.8.7">
<td class="ltx_td ltx_align_left" id="A3.T6.1.8.7.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.8.7.2">ballsports_2</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.8.7.3">basketball reverse layup</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.8.7.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.8.7.4.1">
<span class="ltx_p" id="A3.T6.1.8.7.4.1.1" style="width:199.2pt;">a person playing basketball does a reverse layup starting from the left side of the basket and lays it up with their right hand on the right hand side, no defense, practice only</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.9.8">
<td class="ltx_td ltx_align_left" id="A3.T6.1.9.8.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.9.8.2">ballsports_3</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.9.8.3">soccer penalty kick</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.9.8.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.9.8.4.1">
<span class="ltx_p" id="A3.T6.1.9.8.4.1.1" style="width:199.2pt;">a person does a soccer drill where they do a single penalty kick, practice only, no defense, no goalie</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.10.9">
<td class="ltx_td ltx_align_left" id="A3.T6.1.10.9.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.10.9.2">diving_0</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.10.9.3">diving</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.10.9.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.10.9.4.1">
<span class="ltx_p" id="A3.T6.1.10.9.4.1.1" style="width:199.2pt;">competitive diving from 10m</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.11.10">
<td class="ltx_td ltx_align_left" id="A3.T6.1.11.10.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.11.10.2">fitness_1</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.11.10.3">Opening and closing step left side first</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.11.10.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.11.10.4.1">
<span class="ltx_p" id="A3.T6.1.11.10.4.1.1" style="width:199.2pt;">fitness exercise called opening and closing step on left side and then opening and closing step on right side</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.12.11">
<td class="ltx_td ltx_align_left" id="A3.T6.1.12.11.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.12.11.2">fitness_2</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.12.11.3">car deadlift</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.12.11.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.12.11.4.1">
<span class="ltx_p" id="A3.T6.1.12.11.4.1.1" style="width:199.2pt;">a single free weight deadlift without any weight</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.13.12">
<td class="ltx_td ltx_align_left" id="A3.T6.1.13.12.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.13.12.2">fitness_5</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.13.12.3">Squat Knee Raise diagonal view</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.13.12.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.13.12.4.1">
<span class="ltx_p" id="A3.T6.1.13.12.4.1.1" style="width:199.2pt;">a squat then a knee raise on left side</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.14.13">
<td class="ltx_td ltx_align_left" id="A3.T6.1.14.13.1">medium</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.14.13.2">fitness_7</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.14.13.3">Opening and closing step right side first</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.14.13.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.14.13.4.1">
<span class="ltx_p" id="A3.T6.1.14.13.4.1.1" style="width:199.2pt;">fitness exercise called opening and closing step on right side and then opening and closing step on left side</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.15.14">
<td class="ltx_td ltx_align_left" id="A3.T6.1.15.14.1">hard</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.15.14.2">music_0</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.15.14.3">piano</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.15.14.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.15.14.4.1">
<span class="ltx_p" id="A3.T6.1.15.14.4.1.1" style="width:199.2pt;">a person is playing scales on the piano</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.16.15">
<td class="ltx_td ltx_align_left" id="A3.T6.1.16.15.1">hard</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.16.15.2">music_1</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.16.15.3">guitar</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.16.15.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.16.15.4.1">
<span class="ltx_p" id="A3.T6.1.16.15.4.1.1" style="width:199.2pt;">a person is playing scales on the guitar</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.17.16">
<td class="ltx_td ltx_align_left" id="A3.T6.1.17.16.1">hard</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.17.16.2">surgery_0</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.17.16.3">Knot Tying</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.17.16.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.17.16.4.1">
<span class="ltx_p" id="A3.T6.1.17.16.4.1.1" style="width:199.2pt;">The subject picks up one end of a suture tied to a flexible tube attached at its ends to the surface of the bench-top model, and ties a single loop knot.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.18.17">
<td class="ltx_td ltx_align_left" id="A3.T6.1.18.17.1">hard</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.18.17.2">surgery_1</td>
<td class="ltx_td ltx_align_left" id="A3.T6.1.18.17.3">Suturing</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T6.1.18.17.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.18.17.4.1">
<span class="ltx_p" id="A3.T6.1.18.17.4.1.1" style="width:199.2pt;">The subject picks up needle, proceeds to the incision (designated as a vertical line on the bench-top model), and passes the needle through the fake tissue, entering at the dot marked on one side of the incision and exiting at the corresponding dot marked on the other side of the incision. After the first needle pass, the subject extracts the needle out of the tissue, passes it to the right hand and repeats the needle pass three more times.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.1.19.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.1.19.18.1">hard</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.1.19.18.2">surgery_2</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.1.19.18.3">Needle Passing</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A3.T6.1.19.18.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.1.19.18.4.1">
<span class="ltx_p" id="A3.T6.1.19.18.4.1.1" style="width:199.2pt;">The subject picks up the needle (in some cases not captured in the video) and passes it through four small metal hoops from right to left. The hoops are attached at a small height above the surface of the bench-top model.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the VidDiffBench dataset statistics, categorized by difficulty level (easy, medium, hard).  It includes the number of video pairs, average and total video lengths, the count of difference annotations, and the standard deviation of those annotations within and across retrieval types (indicating the consistency of annotation within a video and across different videos). Finally, it shows the distribution of the A/B/C annotation labels in the dataset, illustrating the relative frequency of different levels of perceived action differences. This granular level of detail helps researchers understand the characteristics of the benchmark and better design and evaluate their models.
> <details>
> <summary>read the caption</summary>
> Table 8: Detailed data statistics by split
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T7.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T7.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A3.T7.1.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.2.1">LLM</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.3.1">Human 1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.4.1">Human 2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T7.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A3.T7.1.1.1.5.1">Human 3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T7.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T7.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.2.1.1.1">LLM</span></th>
<td class="ltx_td ltx_border_t" id="A3.T7.1.2.1.2"></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T7.1.2.1.3">53.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T7.1.2.1.4">68.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A3.T7.1.2.1.5">80.6</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.3.2.1.1">Human 1</span></th>
<td class="ltx_td ltx_align_right" id="A3.T7.1.3.2.2">53.1</td>
<td class="ltx_td" id="A3.T7.1.3.2.3"></td>
<td class="ltx_td ltx_align_right" id="A3.T7.1.3.2.4">45.9</td>
<td class="ltx_td ltx_align_right" id="A3.T7.1.3.2.5">64.5</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.1.4.3.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.4.3.1.1">Human 2</span></th>
<td class="ltx_td ltx_align_right" id="A3.T7.1.4.3.2">68.0</td>
<td class="ltx_td ltx_align_right" id="A3.T7.1.4.3.3">45.9</td>
<td class="ltx_td" id="A3.T7.1.4.3.4"></td>
<td class="ltx_td ltx_align_right" id="A3.T7.1.4.3.5">70.3</td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T7.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.5.4.1.1">Human 3</span></th>
<td class="ltx_td ltx_align_right" id="A3.T7.1.5.4.2">80.6</td>
<td class="ltx_td ltx_align_right" id="A3.T7.1.5.4.3">64.5</td>
<td class="ltx_td ltx_align_right" id="A3.T7.1.5.4.4">70.3</td>
<td class="ltx_td" id="A3.T7.1.5.4.5"></td>
</tr>
<tr class="ltx_tr" id="A3.T7.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T7.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A3.T7.1.6.5.1.1">Average</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T7.1.6.5.2">67.3</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T7.1.6.5.3">54.5</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T7.1.6.5.4">61.4</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A3.T7.1.6.5.5">71.8</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the agreement rates between the predictions made by a Large Language Model (LLM) and three human annotators on a video action difference matching task.  It shows how well the LLM's automated matching of video action differences aligns with human judgment.  The data is presented as a matrix, showing the agreement rates between each pair of the LLM and the three human annotators.
> <details>
> <summary>read the caption</summary>
> Table 9: Agreement rate of LLM and human predictions for the evaluation matching.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T8.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.1.1">Split</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.2.1">easy</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.3.1">medium</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.4.1">hard</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A4.T8.1.1.1.5.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T8.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.2.2.1.1"># video pairs</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T8.1.2.2.2">95</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T8.1.2.2.3">265</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T8.1.2.2.4">197</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A4.T8.1.2.2.5">557</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.3.3">
<td class="ltx_td ltx_align_left" id="A4.T8.1.3.3.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.3.3.1.1">Avg video length (secs)</span></td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.3.3.2">2.1</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.3.3.3">3.9</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.3.3.4">18.7</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.3.3.5">8.8</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.4.4">
<td class="ltx_td ltx_align_left" id="A4.T8.1.4.4.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.4.4.1.1">Total video length (mins)</span></td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.4.4.2">6.5</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.4.4.3">34.7</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.4.4.4">122.5</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.4.4.5">163.7</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.5.5">
<td class="ltx_td ltx_align_left" id="A4.T8.1.5.5.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.5.5.1.1"># differences tagged</span></td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.5.5.2">1224</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.5.5.3">4788</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.5.5.4">3542</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.5.5.5">9554</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.6.6">
<td class="ltx_td ltx_align_left" id="A4.T8.1.6.6.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.6.6.1.1">StdDev within retrieval type</span></td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.6.6.2">8.4%</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.6.6.3">5.2%</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.6.6.4">4.1%</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.6.6.5">5.9%</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.7.7">
<td class="ltx_td ltx_align_left" id="A4.T8.1.7.7.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.7.7.1.1">StdDev across retrieval types</span></td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.7.7.2">17.3%</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.7.7.3">25.7%</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.7.7.4">20.2%</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.7.7.5">21.0%</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.8.8">
<td class="ltx_td ltx_align_left" id="A4.T8.1.8.8.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.8.8.1.1">Difference annotations count</span></td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.8.8.2">578</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.8.8.3">1771</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.8.8.4">2370</td>
<td class="ltx_td ltx_align_right" id="A4.T8.1.8.8.5">4719</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.1.9.9.1"><span class="ltx_text ltx_font_bold" id="A4.T8.1.9.9.1.1">Difference annotations A/B/C distribution</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.1.9.9.2" style="background-color:#FFFFFF;"><span class="ltx_text" id="A4.T8.1.9.9.2.1" style="background-color:#FFFFFF;">167/190/221</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.1.9.9.3">622/605/1143</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.1.9.9.4">435/452/884</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.1.9.9.5">1224/1247/2248</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the pairwise correlation coefficients between the action-level accuracy scores achieved by different large multimodal models (LMMs) on the VidDiffBench benchmark.  Higher correlation indicates that the models perform similarly across the different actions in the benchmark. This helps to understand the relationship between the models' performance and whether they exhibit similar strengths and weaknesses.
> <details>
> <summary>read the caption</summary>
> Table 10: Correlations between models where the data is the action-level accuracy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A6.T9.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A6.T9.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A6.T9.1.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T9.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A6.T9.1.1.1.2.1">LLM</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T9.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A6.T9.1.1.1.3.1">Human 1</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T9.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A6.T9.1.1.1.4.1">Human 2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A6.T9.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A6.T9.1.1.1.5.1">Human 3</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A6.T9.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A6.T9.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A6.T9.1.2.1.1.1">LLM</span></th>
<td class="ltx_td ltx_border_t" id="A6.T9.1.2.1.2"></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.1.2.1.3">72.4</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.1.2.1.4">74.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A6.T9.1.2.1.5">70.1</td>
</tr>
<tr class="ltx_tr" id="A6.T9.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T9.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A6.T9.1.3.2.1.1">Human 1</span></th>
<td class="ltx_td ltx_align_right" id="A6.T9.1.3.2.2">72.4</td>
<td class="ltx_td" id="A6.T9.1.3.2.3"></td>
<td class="ltx_td ltx_align_right" id="A6.T9.1.3.2.4">75.0</td>
<td class="ltx_td ltx_align_right" id="A6.T9.1.3.2.5">78.2</td>
</tr>
<tr class="ltx_tr" id="A6.T9.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T9.1.4.3.1"><span class="ltx_text ltx_font_bold" id="A6.T9.1.4.3.1.1">Human 2</span></th>
<td class="ltx_td ltx_align_right" id="A6.T9.1.4.3.2">74.0</td>
<td class="ltx_td ltx_align_right" id="A6.T9.1.4.3.3">75.0</td>
<td class="ltx_td" id="A6.T9.1.4.3.4"></td>
<td class="ltx_td ltx_align_right" id="A6.T9.1.4.3.5">73.9</td>
</tr>
<tr class="ltx_tr" id="A6.T9.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A6.T9.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A6.T9.1.5.4.1.1">Human 3</span></th>
<td class="ltx_td ltx_align_right" id="A6.T9.1.5.4.2">70.1</td>
<td class="ltx_td ltx_align_right" id="A6.T9.1.5.4.3">78.2</td>
<td class="ltx_td ltx_align_right" id="A6.T9.1.5.4.4">73.9</td>
<td class="ltx_td" id="A6.T9.1.5.4.5"></td>
</tr>
<tr class="ltx_tr" id="A6.T9.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A6.T9.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A6.T9.1.6.5.1.1">Average</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="A6.T9.1.6.5.2">72.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="A6.T9.1.6.5.3">75.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="A6.T9.1.6.5.4">74.3</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="A6.T9.1.6.5.5">74.0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of five large multimodal models (GPT-40, Gemini-1.5-Pro, Claude-3.5-Sonnet, LLaVA-Video-7B, and Qwen2-VL-7B) on a video action differencing task.  It shows the accuracy scores achieved by each model on each individual action within the dataset.  The scores are presented for different difficulty levels, and differences between the model's performance and the average performance across all models for each action are also provided. This allows for a granular analysis of model strengths and weaknesses in this new video understanding task.
> <details>
> <summary>read the caption</summary>
> Table 11: Action-level scores for each model, and their differences compared to the average model score for that action. The model names are abbreviated and the full model names are GPT-4o, Gemini-1.5-Pro, Claude-3.5-Sonnet, LLaVA-Video-7B, Qwen2-VL-7B
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A7.T10.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A7.T10.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A7.T10.1.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T10.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.2.1">GPT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T10.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.3.1">Gemini</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T10.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.4.1">Claude</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T10.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.5.1">LLava-Video</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T10.1.1.1.6"><span class="ltx_text ltx_font_bold" id="A7.T10.1.1.1.6.1">Qwen2-VL</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T10.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A7.T10.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.2.1.1.1">GPT-4o</span></th>
<td class="ltx_td ltx_border_t" id="A7.T10.1.2.1.2"></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.2.1.3">0.152</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.2.1.4" style="background-color:#B7B7B7;"><span class="ltx_text" id="A7.T10.1.2.1.4.1" style="background-color:#B7B7B7;">0.375</span></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.2.1.5">0.243</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T10.1.2.1.6">0.273</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.3.2.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.3.2.1.1">Gemini-1.5-Pro</span></th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.3.2.2">0.152</td>
<td class="ltx_td" id="A7.T10.1.3.2.3"></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.3.2.4">0.215</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.3.2.5">0.111</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.3.2.6">0.223</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.4.3.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.4.3.1.1">Claude-3.5-Sonnet</span></th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.3.2">0.375</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.3.3">0.215</td>
<td class="ltx_td" id="A7.T10.1.4.3.4"></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.3.5">0.261</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.4.3.6">0.220</td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A7.T10.1.5.4.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.5.4.1.1">LLaVA-Video</span></th>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.4.2">0.243</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.4.3">0.111</td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.4.4">0.261</td>
<td class="ltx_td" id="A7.T10.1.5.4.5"></td>
<td class="ltx_td ltx_align_right" id="A7.T10.1.5.4.6" style="background-color:#B7B7B7;"><span class="ltx_text" id="A7.T10.1.5.4.6.1" style="background-color:#B7B7B7;">0.376</span></td>
</tr>
<tr class="ltx_tr" id="A7.T10.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A7.T10.1.6.5.1"><span class="ltx_text ltx_font_bold" id="A7.T10.1.6.5.1.1">Qwen2-VL-7b</span></th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.6.5.2">0.273</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.6.5.3">0.223</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.6.5.4">0.220</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T10.1.6.5.5">0.376</td>
<td class="ltx_td ltx_border_bb" id="A7.T10.1.6.5.6"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different large multimodal models (LLMs) on a video action differencing task, broken down by individual actions.  Instead of showing absolute scores, it shows the difference between each model's performance on a specific action and the average performance of all models on that same action.  This allows for a more nuanced comparison, highlighting which models excel or struggle on particular actions, rather than just giving overall accuracy metrics.  Model names are abbreviated for brevity; the full names are provided in the caption.
> <details>
> <summary>read the caption</summary>
> Table 12: Action-level difference scores for each model relative to the mean model score on that action. This is the difference with respect to the table 11. The model names are abbreviated and the full model names are GPT-4o, Gemini-1.5-Pro, Claude-3.5-Sonnet, LLaVA-Video-7B, Qwen2-VL-7B
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A7.T11.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A7.T11.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.1.1">Split</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.2.1">Action</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.3.1">Action Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.4.1">Count</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.1.1.5.1">Scores</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.6"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.7"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.8"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A7.T11.1.1.1.9"></th>
<td class="ltx_td ltx_border_tt" id="A7.T11.1.1.1.10"></td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.2.2">
<td class="ltx_td" id="A7.T11.1.2.2.1"></td>
<th class="ltx_td ltx_th ltx_th_column" id="A7.T11.1.2.2.2"></th>
<th class="ltx_td ltx_th ltx_th_column" id="A7.T11.1.2.2.3"></th>
<th class="ltx_td ltx_th ltx_th_column" id="A7.T11.1.2.2.4"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A7.T11.1.2.2.5"><span class="ltx_text ltx_font_bold" id="A7.T11.1.2.2.5.1">GPT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A7.T11.1.2.2.6"><span class="ltx_text ltx_font_bold" id="A7.T11.1.2.2.6.1">Gemini</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A7.T11.1.2.2.7"><span class="ltx_text ltx_font_bold" id="A7.T11.1.2.2.7.1">Claude</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A7.T11.1.2.2.8"><span class="ltx_text ltx_font_bold" id="A7.T11.1.2.2.8.1">LLaVA-Vid</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A7.T11.1.2.2.9"><span class="ltx_text ltx_font_bold" id="A7.T11.1.2.2.9.1">Qwen2</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A7.T11.1.2.2.10"><span class="ltx_text ltx_font_bold" id="A7.T11.1.2.2.10.1">Avg</span></th>
</tr>
<tr class="ltx_tr" id="A7.T11.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T11.1.3.3.1">easy</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T11.1.3.3.2">fitness_0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A7.T11.1.3.3.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.3.3.3.1">
<tr class="ltx_tr" id="A7.T11.1.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.3.3.3.1.1.1">Hip circle</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.3.3.3.1.2.1">anticlockwise</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.4">129</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.5">56.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.6">58.1</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.7">56.6</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.8">51.9</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.9">45.0</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A7.T11.1.3.3.10">53.6</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.4.4">
<td class="ltx_td ltx_align_left" id="A7.T11.1.4.4.1">easy</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.4.4.2">fitness_3</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.4.4.3">lucky cat</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.4">62</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.5">53.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.6">58.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.7">43.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.8">58.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.9">45.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.4.4.10">51.6</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.5.5">
<td class="ltx_td ltx_align_left" id="A7.T11.1.5.5.1">easy</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.5.5.2">fitness_4</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.5.5.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.5.5.3.1">
<tr class="ltx_tr" id="A7.T11.1.5.5.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.5.5.3.1.1.1">Squat Knee Raise</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.5.5.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.5.5.3.1.2.1">side view</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.4">43</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.5">65.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.6">69.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.7">37.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.8">69.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.9">55.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.5.5.10">59.5</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.6.6">
<td class="ltx_td ltx_align_left" id="A7.T11.1.6.6.1">easy</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.6.6.2">fitness_6</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.6.6.3">Hip circle clockwise</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.4">123</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.5">58.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.6">76.4</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.7">69.9</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.8">56.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.9">52.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.6.6.10">62.8</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.7.7">
<td class="ltx_td ltx_align_left" id="A7.T11.1.7.7.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.7.7.2">ballsports_0</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.7.7.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.7.7.3.1">
<tr class="ltx_tr" id="A7.T11.1.7.7.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.7.7.3.1.1.1">basketball</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.7.7.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.7.7.3.1.2.1">jump shot</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.4">96</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.5">55.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.6">57.3</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.7">52.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.8">57.3</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.9">61.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.7.7.10">56.7</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.8.8">
<td class="ltx_td ltx_align_left" id="A7.T11.1.8.8.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.8.8.2">ballsports_1</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.8.8.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.8.8.3.1">
<tr class="ltx_tr" id="A7.T11.1.8.8.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.8.8.3.1.1.1">basketball</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.8.8.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.8.8.3.1.2.1">mikan layup</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.8.8.4">148</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.8.8.5">56.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.8.8.6">49.3</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.8.8.7">46.6</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.8.8.8">51.4</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.8.8.9">56.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.8.8.10">52.0</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.9.9">
<td class="ltx_td ltx_align_left" id="A7.T11.1.9.9.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.9.9.2">ballsports_2</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.9.9.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.9.9.3.1">
<tr class="ltx_tr" id="A7.T11.1.9.9.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.9.9.3.1.1.1">basketball</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.9.9.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.9.9.3.1.2.1">reverse layup</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.9.9.4">125</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.9.9.5">46.4</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.9.9.6">55.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.9.9.7">49.6</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.9.9.8">44.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.9.9.9">50.4</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.9.9.10">49.1</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.10.10">
<td class="ltx_td ltx_align_left" id="A7.T11.1.10.10.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.10.10.2">ballsports_3</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.10.10.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.10.10.3.1">
<tr class="ltx_tr" id="A7.T11.1.10.10.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.10.10.3.1.1.1">soccer</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.10.10.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.10.10.3.1.2.1">penalty kick</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.4">70</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.5">51.4</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.6">60.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.7">57.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.8">70.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.9">54.3</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.10.10.10">58.6</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.11.11">
<td class="ltx_td ltx_align_left" id="A7.T11.1.11.11.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.11.11.2">diving_0</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.11.11.3">diving</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.4">240</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.5">53.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.6">52.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.7">53.3</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.8">50.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.9">54.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.11.11.10">52.8</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.12.12">
<td class="ltx_td ltx_align_left" id="A7.T11.1.12.12.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.12.12.2">fitness_1</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.12.12.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.12.12.3.1">
<tr class="ltx_tr" id="A7.T11.1.12.12.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.12.12.3.1.1.1">Opening and closing step</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.12.12.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.12.12.3.1.2.1">left side first</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.4">186</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.5">57.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.6">54.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.7">52.7</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.8">51.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.9">51.6</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.12.12.10">53.5</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.13.13">
<td class="ltx_td ltx_align_left" id="A7.T11.1.13.13.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.13.13.2">fitness_2</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.13.13.3">car deadlift</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.4">137</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.5">55.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.6">62.8</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.7">62.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.8">47.4</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.9">54.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.13.13.10">56.4</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.14.14">
<td class="ltx_td ltx_align_left" id="A7.T11.1.14.14.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.14.14.2">fitness_5</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.14.14.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.14.14.3.1">
<tr class="ltx_tr" id="A7.T11.1.14.14.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.14.14.3.1.1.1">Squat Knee Raise</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.14.14.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.14.14.3.1.2.1">diagonal view</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.14.14.4">70</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.14.14.5">35.7</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.14.14.6">32.9</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.14.14.7">38.6</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.14.14.8">62.9</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.14.14.9">44.3</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.14.14.10">42.9</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.15.15">
<td class="ltx_td ltx_align_left" id="A7.T11.1.15.15.1">medium</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.15.15.2">fitness_7</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.15.15.3">
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.15.15.3.1">
<tr class="ltx_tr" id="A7.T11.1.15.15.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.15.15.3.1.1.1">Opening and closing</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.15.15.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.15.15.3.1.2.1">step right side first</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.15.15.4">155</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.15.15.5">52.9</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.15.15.6">52.9</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.15.15.7">63.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.15.15.8">49.7</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.15.15.9">52.9</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.15.15.10">54.3</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.16.16">
<td class="ltx_td ltx_align_left" id="A7.T11.1.16.16.1">hard</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.16.16.2">music_0</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.16.16.3">piano</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.4">94</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.5">51.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.6">51.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.7">58.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.8">51.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.9">52.1</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.16.16.10">52.8</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.17.17">
<td class="ltx_td ltx_align_left" id="A7.T11.1.17.17.1">hard</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.17.17.2">music_1</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.17.17.3">guitar</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.4">20</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.5">55.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.6">40.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.7">45.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.8">50.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.9">65.0</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.17.17.10">51.0</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.18.18">
<td class="ltx_td ltx_align_left" id="A7.T11.1.18.18.1">hard</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.18.18.2">surgery_0</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.18.18.3">Knot Tying</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.4">237</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.5">47.7</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.6">43.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.7">43.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.8">46.4</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.9">44.3</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.18.18.10">45.1</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.19.19">
<td class="ltx_td ltx_align_left" id="A7.T11.1.19.19.1">hard</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.19.19.2">surgery_1</td>
<td class="ltx_td ltx_align_left" id="A7.T11.1.19.19.3">Suturing</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.4">309</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.5">48.9</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.6">51.5</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.7">48.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.8">47.6</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.9">50.2</td>
<td class="ltx_td ltx_align_right" id="A7.T11.1.19.19.10">49.3</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.20.20">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T11.1.20.20.1">hard</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T11.1.20.20.2">surgery_2</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A7.T11.1.20.20.3">Needle Passing</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.20.20.4">211</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.20.20.5">51.7</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.20.20.6">46.9</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.20.20.7">49.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.20.20.8">48.8</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.20.20.9">50.2</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A7.T11.1.20.20.10">49.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists all actions included in the VidDiffBench benchmark dataset, providing a key (identifier) for each action and a detailed description of the action.  The descriptions offer sufficient detail to understand the action's nature and the type of movement involved.  This is crucial for researchers working with the dataset, providing them with the necessary context to understand the nuances of the actions being compared.
> <details>
> <summary>read the caption</summary>
> Table 13: Actions keys and their descriptions
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.3.3.3.1">
<tr class="ltx_tr" id="A7.T11.1.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.3.3.3.1.1.1">Hip circle</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.3.3.3.1.2.1">anticlockwise</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the accuracy scores achieved for each specific difference identified within the VidDiff benchmark.  It shows the accuracy for each difference, the number of samples used in the evaluation for that difference, and whether the accuracy was statistically significant (p-value < 0.05 using a two-tailed binomial test). The differences are linked to their corresponding actions via a key, allowing for cross-referencing with Table 13 which defines the actions. Gray shading highlights statistically significant results.
> <details>
> <summary>read the caption</summary>
> Table 14: Difference-level accuracy scores for VidDiff. The ‘action’ values can be looked up at table 13. The grayed columns indicate a p-value <<< 0.05 for the two-tailed binomial significance test
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A7.T11.1.5.5.3.1">
<tr class="ltx_tr" id="A7.T11.1.5.5.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.5.5.3.1.1.1">Squat Knee Raise</td>
</tr>
<tr class="ltx_tr" id="A7.T11.1.5.5.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="A7.T11.1.5.5.3.1.2.1">side view</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment evaluating the performance of three different large multimodal models (GPT-40, Gemini-1.5-Pro, and Claude-3.5-Sonnet) on the 'easy' split of the VidDiffBench dataset.  The experiment varied the frames per second (fps) of the video input to the models, testing 1 fps, 2 fps, 4 fps, and 8 fps. The evaluation protocol used in the paper establishes 4 fps as the standard. The table shows the accuracy of each model at each fps rate, allowing for comparison of model performance under different input conditions and highlighting the impact of fps on model accuracy.
> <details>
> <summary>read the caption</summary>
> Table 15: Evaluating ‘easy’ split with variable video fps for three models. Our evaluation protocol chooses 4fps.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07860/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07860/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}