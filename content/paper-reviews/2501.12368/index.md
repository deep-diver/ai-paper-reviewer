---
title: "InternLM-XComposer2.5-Reward: A Simple Yet Effective Multi-Modal Reward Model"
summary: "InternLM-XComposer2.5-Reward: A novel multi-modal reward model boosting Large Vision Language Model performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-01-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.12368 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuhang Zang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.12368" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.12368" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.12368/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Large Vision Language Models (LVLMs) often produce inaccurate outputs. While reward models (RMs) offer improvement potential, publicly available multi-modal RMs for LVLMs are lacking, hindering progress. This research addresses this gap by introducing InternLM-XComposer2.5-Reward (IXC-2.5-Reward), a simple yet effective multi-modal RM.  **The model uses a high-quality multi-modal preference corpus for training**, encompassing text, image, and video data across various domains. 



The study demonstrates IXC-2.5-Reward's effectiveness in three key applications. **First**, it provides a supervisory signal for reinforcement learning (RL), improving instruction following and multi-modal dialogue. **Second**, it enables test-time scaling by selecting the best response from candidates. **Third**, it filters noisy samples from training data.  **IXC-2.5-Reward outperforms existing models on benchmark evaluations** and shows competitive results even on text-only benchmarks.  The authors have open-sourced all model weights and training recipes to encourage further research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} IXC-2.5-Reward, a novel multi-modal reward model, significantly improves Large Vision Language Model (LVLM) performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The model demonstrates effectiveness in RL training, test-time scaling, and data cleaning, showcasing its versatility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Open-sourcing the model and training recipes facilitates further research and development in the field. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the scarcity of publicly available multi-modal reward models for Large Vision Language Models (LVLMs).  **It introduces InternLM-XComposer2.5-Reward (IXC-2.5-Reward), a simple yet effective model**,  demonstrates its effectiveness across various benchmarks and applications (RL training, test-time scaling, data cleaning), and open-sources its weights and training recipes, thus advancing research and development in LVLMs.  **Its findings have strong implications for improving the quality and reliability of LVLMs** in diverse applications.

------
#### Visual Insights



![](https://arxiv.org/html/2501.12368/x1.png)

> 🔼 Figure 1 illustrates the training and application of the InternLM-XComposer2.5-Reward (IXC-2.5-Reward) model.  Panel (a) shows the diverse multi-modal dataset used for training, encompassing various domains (natural scenes, text-rich documents, reasoning tasks) and modalities (image, text, video).  Panel (b) details the IXC-2.5-Reward model architecture, highlighting its components such as vision encoders, tokenizers, large language models, and a score head for reward prediction.  Panel (c) demonstrates the role of IXC-2.5-Reward in reinforcement learning, specifically guiding the training of IXC-2.5-Chat by providing a reward signal to improve the policy.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) To train the IXC-2.5-Reward, we construct a multi-modal preference dataset spanning diverse domains (e.g., natural scenes, text-rich, reasoning) and modalities (image, text, video). (b) The framework of IXC-2.5-Reward. (c) The IXC-2.5-Reward guides policy training for IXC-2.5-Chat via reinforcement learning.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T2.fig1.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T2.fig1.3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S1.T2.fig1.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T2.fig1.3.1.1.1.1.1">Category</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T2.fig1.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T2.fig1.3.1.1.1.2.1">Dataset</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S1.T2.fig1.3.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S1.T2.fig1.3.1.2.2.1.1">Text</span></th>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T2.fig1.3.1.3.3.1" rowspan="2"><span class="ltx_text" id="S1.T2.fig1.3.1.3.3.1.1">IF General</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.fig1.3.1.3.3.2">Tulu-3-IF-augmented-on-policy-8b <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.4.4">
<td class="ltx_td ltx_align_center" id="S1.T2.fig1.3.1.4.4.1">UltraFeedback <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T2.fig1.3.1.5.5.1" rowspan="2"><span class="ltx_text" id="S1.T2.fig1.3.1.5.5.1.1">Safety</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.fig1.3.1.5.5.2">hhh alignment <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>, PKU-Safe <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.6.6">
<td class="ltx_td ltx_align_center" id="S1.T2.fig1.3.1.6.6.1">SHP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>, Anthropic-hhrlhf <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S1.T2.fig1.3.1.7.7.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S1.T2.fig1.3.1.7.7.1.1">Image</span></th>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T2.fig1.3.1.8.8.1">Chat</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.fig1.3.1.8.8.2">WildVision-Battle <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S1.T2.fig1.3.1.9.9.1" rowspan="2"><span class="ltx_text" id="S1.T2.fig1.3.1.9.9.1.1">General</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.fig1.3.1.9.9.2">LLaVA-Critic <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a>]</cite>, VL-Feedback <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>,</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig1.3.1.10.10">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T2.fig1.3.1.10.10.1">RLAIF-V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a>]</cite>
MIA-DPO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance comparison of various models on the VLRewardBench benchmark.  The benchmark evaluates the quality of responses generated by large vision-language models (LVLMs) across multiple aspects, such as general understanding, hallucination detection, and reasoning abilities.  The table shows the performance scores for each model in terms of accuracy across these aspects.  Proprietary and open-source models are compared, with the best and second-best performances within each group highlighted for clarity.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluation results on VLRewardBench [43]. The best and second-best results for proprietary models and open-source models are highlighted in bold and underlined, respectively.
> </details>





### In-depth insights


#### Multimodal Reward
Multimodal reward models represent a significant advancement in AI, particularly for large vision-language models (LVLMs).  **Their core function is to bridge the gap between model outputs and human preferences across diverse modalities**, such as text, images, and video. Unlike unimodal reward models that focus solely on text, multimodal models offer a more holistic evaluation framework, leading to more natural and nuanced assessments of LVLMs.  **The challenge lies in creating high-quality, multi-modal datasets** that accurately capture human judgment on the various combinations of input types.  The effectiveness of a multimodal reward model hinges on its capacity to **generalize across different domains and scenarios**, not just perform well on specific, limited tasks. This generalizability is crucial for building robust and reliable LVLMs for real-world applications. Furthermore, the use of multimodal rewards **facilitates effective reinforcement learning from human feedback (RLHF)**. It allows for better fine-tuning of LVLMs, leading to improved performance in instruction following, dialogue generation, and overall model safety.

#### RLHF & Test-Time
The section on "RLHF & Test-Time" would explore the crucial role of reinforcement learning from human feedback (RLHF) and test-time techniques in enhancing Large Vision Language Models (LVLMs).  **RLHF**, a key training methodology, uses reward models (RMs) to guide the LVLMs toward aligning with human preferences, thereby improving the quality and safety of their outputs.  The discussion would likely highlight the challenges in creating effective multi-modal RMs, particularly the scarcity of publicly available datasets and the complexities of incorporating diverse modalities like images and videos into the training process.  **Test-time techniques**, such as best-of-N sampling, further enhance LVLMs by leveraging RMs to select the best outputs from a set of candidate responses.  The analysis would likely demonstrate how these two approaches complement each other to improve model performance and address limitations. The researchers might showcase empirical results that quantitatively show the benefits of RLHF in refining LVLMs through enhanced instruction following and multi-modal dialogue capabilities and the advantages of test-time scaling in selecting superior responses, leading to a substantial enhancement of the overall model's efficiency and precision.

#### Benchmark Results
Benchmark results are crucial for evaluating the effectiveness of any new model, and this paper is no exception.  The authors meticulously present results across multiple benchmarks, showcasing **superior performance** of their InternLM-XComposer2.5-Reward model, especially on multi-modal benchmarks like VLRewardBench.  The **consistent outperformance** across various metrics, even when compared against larger proprietary models, strongly suggests the model's robustness and effectiveness.  Further, the inclusion of results on text-only benchmarks allows for a comprehensive comparison, highlighting the model's capability to generalize across different modalities.  **Specific numerical results** from these benchmarks would be essential to fully assess the extent of the model's improvements over existing models.  However,  the discussion of these results could be further strengthened by a deeper analysis of why the model outperforms others on certain tasks—providing insight into the model's strengths and potential weaknesses.

#### Data Cleaning Use
The application of InternLM-XComposer2.5-Reward for data cleaning is a significant contribution.  It leverages the model's ability to identify low-quality samples, such as those with hallucinations or mismatched content between image/video and text, by assigning low reward scores. This **automated process greatly improves efficiency**, replacing manual data cleaning which is time-consuming and prone to errors. The strong correlation between low reward scores and problematic samples highlights the model's effectiveness as a filter for improving the quality of training data.  **This automated data filtering is particularly valuable for multi-modal datasets**, where inconsistencies can be harder to detect manually. The open-sourcing of the model and its training recipes allows for broader adoption and further exploration of this data cleaning technique, fostering advancements in multi-modal training and improving the overall quality of LVLMs.

#### Future of Multimodal
The future of multimodal AI hinges on several key factors. **Data remains a critical bottleneck**, with the need for larger, more diverse, and higher-quality datasets spanning various modalities and domains.  **Benchmarking and evaluation require significant improvements** to accurately assess model performance across different tasks and modalities. While current benchmarks exist, they often lack the scope and sophistication needed to capture the full capabilities of these advanced systems.  **Model architectures need further refinement**, moving beyond simple concatenation or fusion methods toward more sophisticated approaches that capture complex intermodal relationships.  **Explainability and interpretability are crucial**, especially for high-stakes applications where trust and reliability are paramount.  Finally,  **research into ethical considerations** regarding bias, fairness, and potential misuse of multimodal systems is vital for responsible development and deployment.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.12368/x2.png)

> 🔼 Table 1 provides an overview of existing datasets used to train IXC-2.5-Reward, a multi-modal reward model.  It categorizes the datasets based on their focus (Instruction Following, Safety, Chat, General) and lists specific dataset names for each category.  This table highlights the diversity of data sources utilized in training the reward model, which contributes to its robustness and performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of existing preference datasets used in IXC-2.5-Reward. IF denotes to Instruction Following.
> </details>



![](https://arxiv.org/html/2501.12368/x3.png)

> 🔼 Table 2 shows the sources of the newly collected dataset used to train the InternLM-XComposer2.5-Reward model.  The dataset is categorized by data modality (image or text), and then further sub-categorized by the task or domain the data originates from.  Each sub-category lists specific datasets used in the creation of the multi-modal preference data.  This illustrates the diversity of data sources used to ensure the model's robustness across various situations.
> <details>
> <summary>read the caption</summary>
> Table 2: Overview of the source of newly collected data used in IXC-2.5-Reward.
> </details>



![](https://arxiv.org/html/2501.12368/x4.png)

> 🔼 Figure 2 showcases examples of outlier and noisy data points identified by the InternLM-XComposer2.5-Reward model.  These data points, sourced from the ALLaVA [10] and LLaVA-Video-178K [115] datasets, received low reward scores, indicating a mismatch between the model's response and human expectations.  The figure visually presents these examples, alongside human expert explanations of the errors, highlighting instances of hallucinations, missing answers, and misalignment between visual and textual content. These visualizations help illustrate how the IXC-2.5-Reward model facilitates data cleaning and improves the quality of training datasets for large vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Using IXC-2.5-Reward for Data Cleaning. We visualize the outlier and noisy examples detected by IXC-2.5-Reward with low reward scores from existing image and video instruction-tuning datasets, such as ALLaVA [10] and LLaVA-Video-178K [115]. The “Explain” refers to explanations of error causes as identified by human experts, rather than outputs generated by the reward model.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S1.T2.fig2.3.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S1.T2.fig2.3.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S1.T2.fig2.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T2.fig2.3.1.1.1.1.1">Category</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T2.fig2.3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S1.T2.fig2.3.1.1.1.2.1">Dataset</span></td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S1.T2.fig2.3.1.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S1.T2.fig2.3.1.2.2.1.1">Image</span></th>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T2.fig2.3.1.3.3.1" rowspan="2"><span class="ltx_text" id="S1.T2.fig2.3.1.3.3.1.1">IF General</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.fig2.3.1.3.3.2">in-house (will release)</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.4.4">
<td class="ltx_td ltx_align_center" id="S1.T2.fig2.3.1.4.4.1">KVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>, A-OKVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a>]</cite>, PMC-VQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib114" title=""><span class="ltx_text" style="font-size:90%;">114</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T2.fig2.3.1.5.5.1" rowspan="2"><span class="ltx_text" id="S1.T2.fig2.3.1.5.5.1.1">Text-Rich</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.fig2.3.1.5.5.2">AI2D <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>, IconQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>, TQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.6.6">
<td class="ltx_td ltx_align_center" id="S1.T2.fig2.3.1.6.6.1">ChartQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>, DVQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>, ScienceQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S1.T2.fig2.3.1.7.7.1" rowspan="2"><span class="ltx_text" id="S1.T2.fig2.3.1.7.7.1.1">Reasoning</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T2.fig2.3.1.7.7.2">GeoQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>, CLEVR-Math <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.8.8">
<td class="ltx_td ltx_align_center" id="S1.T2.fig2.3.1.8.8.1">Super-CLEVR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>, TabMWP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="2" id="S1.T2.fig2.3.1.9.9.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S1.T2.fig2.3.1.9.9.1.1">Video</span></th>
</tr>
<tr class="ltx_tr" id="S1.T2.fig2.3.1.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S1.T2.fig2.3.1.10.10.1">General</th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T2.fig2.3.1.10.10.2">TrafficQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>, FunQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a>]</cite>, MiraData <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various reward models (RMs) on the Reward Bench benchmark [41]. It includes both language-only reward models (representing the state-of-the-art) and multi-modal generative reward models.  The evaluation metrics cover several aspects, including the models’ performance on chat, chat hard, safety, and reasoning tasks. The table allows for a comparison of language-only RMs against multi-modal RMs, highlighting the strengths and weaknesses of each type of model in various aspects.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation results on Reward Bench [41]. We report the performance of selective representative language-only RMs and previous multi-modal generative RMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T3.12.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.12.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S3.T3.12.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.1.1.1.1" style="font-size:90%;">Models</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S3.T3.12.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.1.1.2.1" style="font-size:90%;">#Param</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.12.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.1.1.3.1" style="font-size:90%;">General</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.12.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.1.1.4.1" style="font-size:90%;">Hallucination</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.12.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.1.1.5.1" style="font-size:90%;">Reasoning</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.12.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.1.1.6.1" style="font-size:90%;">Overall Acc</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.12.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.1.1.7.1" style="font-size:90%;">Macro Acc</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S3.T3.12.1.2.2.1"><em class="ltx_emph ltx_font_italic" id="S3.T3.12.1.2.2.1.1" style="font-size:90%;">Proprietary Models</em></th>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.12.1.3.3.1">
<span class="ltx_text" id="S3.T3.12.1.3.3.1.1" style="font-size:90%;">Gemini-1.5-Flash (2024-09-24) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a><span class="ltx_text" id="S3.T3.12.1.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.12.1.3.3.2"><span class="ltx_text" id="S3.T3.12.1.3.3.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.12.1.3.3.3"><span class="ltx_text" id="S3.T3.12.1.3.3.3.1" style="font-size:90%;">47.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.12.1.3.3.4"><span class="ltx_text" id="S3.T3.12.1.3.3.4.1" style="font-size:90%;">59.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.12.1.3.3.5"><span class="ltx_text" id="S3.T3.12.1.3.3.5.1" style="font-size:90%;">58.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.12.1.3.3.6"><span class="ltx_text" id="S3.T3.12.1.3.3.6.1" style="font-size:90%;">57.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.12.1.3.3.7"><span class="ltx_text" id="S3.T3.12.1.3.3.7.1" style="font-size:90%;">55.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.4.4.1">
<span class="ltx_text" id="S3.T3.12.1.4.4.1.1" style="font-size:90%;">Gemini-1.5-Pro (2024-09-24) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a><span class="ltx_text" id="S3.T3.12.1.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.4.4.2"><span class="ltx_text" id="S3.T3.12.1.4.4.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.4.4.3"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.4.4.3.1" style="font-size:90%;">50.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.4.4.4.1" style="font-size:90%;">72.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.4.4.5"><span class="ltx_text" id="S3.T3.12.1.4.4.5.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.4.4.6"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.4.4.6.1" style="font-size:90%;">67.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.4.4.7"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.4.4.7.1" style="font-size:90%;">62.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.5.5.1">
<span class="ltx_text" id="S3.T3.12.1.5.5.1.1" style="font-size:90%;">Claude-3.5-Sonnet (2024-06-22) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S3.T3.12.1.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.5.5.2"><span class="ltx_text" id="S3.T3.12.1.5.5.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.5.5.3"><span class="ltx_text" id="S3.T3.12.1.5.5.3.1" style="font-size:90%;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.5.5.4"><span class="ltx_text" id="S3.T3.12.1.5.5.4.1" style="font-size:90%;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.5.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.5.5.5.1" style="font-size:90%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.5.5.6"><span class="ltx_text" id="S3.T3.12.1.5.5.6.1" style="font-size:90%;">55.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.5.5.7"><span class="ltx_text" id="S3.T3.12.1.5.5.7.1" style="font-size:90%;">53.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.6.6.1">
<span class="ltx_text" id="S3.T3.12.1.6.6.1.1" style="font-size:90%;">GPT-4o-mini (2024-07-18) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S3.T3.12.1.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.6.6.2"><span class="ltx_text" id="S3.T3.12.1.6.6.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.6.6.3"><span class="ltx_text" id="S3.T3.12.1.6.6.3.1" style="font-size:90%;">41.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.6.6.4"><span class="ltx_text" id="S3.T3.12.1.6.6.4.1" style="font-size:90%;">34.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.6.6.5"><span class="ltx_text" id="S3.T3.12.1.6.6.5.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.6.6.6"><span class="ltx_text" id="S3.T3.12.1.6.6.6.1" style="font-size:90%;">41.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.6.6.7"><span class="ltx_text" id="S3.T3.12.1.6.6.7.1" style="font-size:90%;">44.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.7.7.1">
<span class="ltx_text" id="S3.T3.12.1.7.7.1.1" style="font-size:90%;">GPT-4o (2024-08-06) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S3.T3.12.1.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.7.7.2"><span class="ltx_text" id="S3.T3.12.1.7.7.2.1" style="font-size:90%;">-</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.7.7.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.7.7.3.1" style="font-size:90%;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.7.7.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.7.7.4.1" style="font-size:90%;">67.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.7.7.5.1" style="font-size:90%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.7.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.7.7.6.1" style="font-size:90%;">65.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.7.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.7.7.7.1" style="font-size:90%;">62.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S3.T3.12.1.8.8.1"><em class="ltx_emph ltx_font_italic" id="S3.T3.12.1.8.8.1.1" style="font-size:90%;">Open-Source Models</em></th>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T3.12.1.9.9.1">
<span class="ltx_text" id="S3.T3.12.1.9.9.1.1" style="font-size:90%;">LLaVA-OneVision-7B-ov </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S3.T3.12.1.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.12.1.9.9.2"><span class="ltx_text" id="S3.T3.12.1.9.9.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.12.1.9.9.3"><span class="ltx_text" id="S3.T3.12.1.9.9.3.1" style="font-size:90%;">32.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.12.1.9.9.4"><span class="ltx_text" id="S3.T3.12.1.9.9.4.1" style="font-size:90%;">20.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.12.1.9.9.5"><span class="ltx_text" id="S3.T3.12.1.9.9.5.1" style="font-size:90%;">57.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.12.1.9.9.6"><span class="ltx_text" id="S3.T3.12.1.9.9.6.1" style="font-size:90%;">29.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.12.1.9.9.7"><span class="ltx_text" id="S3.T3.12.1.9.9.7.1" style="font-size:90%;">36.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.10.10.1">
<span class="ltx_text" id="S3.T3.12.1.10.10.1.1" style="font-size:90%;">Qwen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.10.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib90" title=""><span class="ltx_text" style="font-size:90%;">90</span></a><span class="ltx_text" id="S3.T3.12.1.10.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.10.10.2"><span class="ltx_text" id="S3.T3.12.1.10.10.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.10.10.3"><span class="ltx_text" id="S3.T3.12.1.10.10.3.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.10.10.4"><span class="ltx_text" id="S3.T3.12.1.10.10.4.1" style="font-size:90%;">19.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.10.10.5"><span class="ltx_text" id="S3.T3.12.1.10.10.5.1" style="font-size:90%;">51.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.10.10.6"><span class="ltx_text" id="S3.T3.12.1.10.10.6.1" style="font-size:90%;">28.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.10.10.7"><span class="ltx_text" id="S3.T3.12.1.10.10.7.1" style="font-size:90%;">33.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.11.11.1">
<span class="ltx_text" id="S3.T3.12.1.11.11.1.1" style="font-size:90%;">Molmo-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.11.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S3.T3.12.1.11.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.11.11.2"><span class="ltx_text" id="S3.T3.12.1.11.11.2.1" style="font-size:90%;">7B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.11.11.3"><span class="ltx_text" id="S3.T3.12.1.11.11.3.1" style="font-size:90%;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.11.11.4"><span class="ltx_text" id="S3.T3.12.1.11.11.4.1" style="font-size:90%;">31.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.11.11.5"><span class="ltx_text" id="S3.T3.12.1.11.11.5.1" style="font-size:90%;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.11.11.6"><span class="ltx_text" id="S3.T3.12.1.11.11.6.1" style="font-size:90%;">37.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.11.11.7"><span class="ltx_text" id="S3.T3.12.1.11.11.7.1" style="font-size:90%;">39.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.12.12.1">
<span class="ltx_text" id="S3.T3.12.1.12.12.1.1" style="font-size:90%;">InternVL2-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.12.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a><span class="ltx_text" id="S3.T3.12.1.12.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.12.12.2"><span class="ltx_text" id="S3.T3.12.1.12.12.2.1" style="font-size:90%;">8B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.12.12.3"><span class="ltx_text" id="S3.T3.12.1.12.12.3.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.12.12.4"><span class="ltx_text" id="S3.T3.12.1.12.12.4.1" style="font-size:90%;">41.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.12.12.5"><span class="ltx_text" id="S3.T3.12.1.12.12.5.1" style="font-size:90%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.12.12.6"><span class="ltx_text" id="S3.T3.12.1.12.12.6.1" style="font-size:90%;">44.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.12.12.7"><span class="ltx_text" id="S3.T3.12.1.12.12.7.1" style="font-size:90%;">45.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.13.13.1">
<span class="ltx_text" id="S3.T3.12.1.13.13.1.1" style="font-size:90%;">LLaVA-Critic-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.13.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a><span class="ltx_text" id="S3.T3.12.1.13.13.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.13.13.2"><span class="ltx_text" id="S3.T3.12.1.13.13.2.1" style="font-size:90%;">8B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.13.13.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.13.13.3.1" style="font-size:90%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.13.13.4"><span class="ltx_text" id="S3.T3.12.1.13.13.4.1" style="font-size:90%;">38.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.13.13.5"><span class="ltx_text" id="S3.T3.12.1.13.13.5.1" style="font-size:90%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.13.13.6"><span class="ltx_text" id="S3.T3.12.1.13.13.6.1" style="font-size:90%;">41.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.13.13.7"><span class="ltx_text" id="S3.T3.12.1.13.13.7.1" style="font-size:90%;">44.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.14.14.1">
<span class="ltx_text" id="S3.T3.12.1.14.14.1.1" style="font-size:90%;">Llama-3.2-11B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.14.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a><span class="ltx_text" id="S3.T3.12.1.14.14.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.14.14.2"><span class="ltx_text" id="S3.T3.12.1.14.14.2.1" style="font-size:90%;">11B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.14.14.3"><span class="ltx_text" id="S3.T3.12.1.14.14.3.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.14.14.4"><span class="ltx_text" id="S3.T3.12.1.14.14.4.1" style="font-size:90%;">38.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.14.14.5"><span class="ltx_text" id="S3.T3.12.1.14.14.5.1" style="font-size:90%;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.14.14.6"><span class="ltx_text" id="S3.T3.12.1.14.14.6.1" style="font-size:90%;">42.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.14.14.7"><span class="ltx_text" id="S3.T3.12.1.14.14.7.1" style="font-size:90%;">42.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.15.15.1">
<span class="ltx_text" id="S3.T3.12.1.15.15.1.1" style="font-size:90%;">Pixtral-12B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.15.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S3.T3.12.1.15.15.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.15.15.2"><span class="ltx_text" id="S3.T3.12.1.15.15.2.1" style="font-size:90%;">12B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.15.15.3"><span class="ltx_text" id="S3.T3.12.1.15.15.3.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.15.15.4"><span class="ltx_text" id="S3.T3.12.1.15.15.4.1" style="font-size:90%;">25.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.15.15.5"><span class="ltx_text" id="S3.T3.12.1.15.15.5.1" style="font-size:90%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.15.15.6"><span class="ltx_text" id="S3.T3.12.1.15.15.6.1" style="font-size:90%;">35.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.15.15.7"><span class="ltx_text" id="S3.T3.12.1.15.15.7.1" style="font-size:90%;">40.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.16.16.1">
<span class="ltx_text" id="S3.T3.12.1.16.16.1.1" style="font-size:90%;">Molmo-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.16.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S3.T3.12.1.16.16.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.16.16.2"><span class="ltx_text" id="S3.T3.12.1.16.16.2.1" style="font-size:90%;">72B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.16.16.3"><span class="ltx_text" id="S3.T3.12.1.16.16.3.1" style="font-size:90%;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.16.16.4"><span class="ltx_text" id="S3.T3.12.1.16.16.4.1" style="font-size:90%;">42.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.16.16.5"><span class="ltx_text" id="S3.T3.12.1.16.16.5.1" style="font-size:90%;">54.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.16.16.6"><span class="ltx_text" id="S3.T3.12.1.16.16.6.1" style="font-size:90%;">44.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.16.16.7"><span class="ltx_text" id="S3.T3.12.1.16.16.7.1" style="font-size:90%;">43.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.17.17.1">
<span class="ltx_text" id="S3.T3.12.1.17.17.1.1" style="font-size:90%;">Qwen2-VL-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.17.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib90" title=""><span class="ltx_text" style="font-size:90%;">90</span></a><span class="ltx_text" id="S3.T3.12.1.17.17.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.17.17.2"><span class="ltx_text" id="S3.T3.12.1.17.17.2.1" style="font-size:90%;">72B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.17.17.3"><span class="ltx_text" id="S3.T3.12.1.17.17.3.1" style="font-size:90%;">38.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.17.17.4"><span class="ltx_text" id="S3.T3.12.1.17.17.4.1" style="font-size:90%;">32.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.17.17.5"><span class="ltx_text" id="S3.T3.12.1.17.17.5.1" style="font-size:90%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.17.17.6"><span class="ltx_text" id="S3.T3.12.1.17.17.6.1" style="font-size:90%;">39.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.17.17.7"><span class="ltx_text" id="S3.T3.12.1.17.17.7.1" style="font-size:90%;">43.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.18.18.1">
<span class="ltx_text" id="S3.T3.12.1.18.18.1.1" style="font-size:90%;">NVLM-D-72B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.18.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S3.T3.12.1.18.18.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.18.18.2"><span class="ltx_text" id="S3.T3.12.1.18.18.2.1" style="font-size:90%;">72B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.18.18.3"><span class="ltx_text" id="S3.T3.12.1.18.18.3.1" style="font-size:90%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.18.18.4"><span class="ltx_text" id="S3.T3.12.1.18.18.4.1" style="font-size:90%;">31.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.18.18.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.18.18.5.1" style="font-size:90%;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.18.18.6"><span class="ltx_text" id="S3.T3.12.1.18.18.6.1" style="font-size:90%;">40.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.18.18.7"><span class="ltx_text" id="S3.T3.12.1.18.18.7.1" style="font-size:90%;">44.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T3.12.1.19.19.1">
<span class="ltx_text" id="S3.T3.12.1.19.19.1.1" style="font-size:90%;">Llama-3.2-90B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T3.12.1.19.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a><span class="ltx_text" id="S3.T3.12.1.19.19.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T3.12.1.19.19.2"><span class="ltx_text" id="S3.T3.12.1.19.19.2.1" style="font-size:90%;">90B</span></th>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.19.19.3"><span class="ltx_text" id="S3.T3.12.1.19.19.3.1" style="font-size:90%;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.19.19.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.19.19.4.1" style="font-size:90%;">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.12.1.19.19.5"><span class="ltx_text" id="S3.T3.12.1.19.19.5.1" style="font-size:90%;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.12.1.19.19.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.19.19.6.1" style="font-size:90%;">56.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.12.1.19.19.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.12.1.19.19.7.1" style="font-size:90%;">53.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.12.1.20.20" style="background-color:#F2F3F5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T3.12.1.20.20.1"><span class="ltx_text" id="S3.T3.12.1.20.20.1.1" style="font-size:90%;background-color:#F2F3F5;">IXC-2.5-Reward (Ours)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.12.1.20.20.2"><span class="ltx_text" id="S3.T3.12.1.20.20.2.1" style="font-size:90%;background-color:#F2F3F5;">7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.12.1.20.20.3"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.20.20.3.1" style="font-size:90%;background-color:#F2F3F5;">84.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.12.1.20.20.4"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.20.20.4.1" style="font-size:90%;background-color:#F2F3F5;">62.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T3.12.1.20.20.5"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.20.20.5.1" style="font-size:90%;background-color:#F2F3F5;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.12.1.20.20.6"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.20.20.6.1" style="font-size:90%;background-color:#F2F3F5;">65.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.12.1.20.20.7"><span class="ltx_text ltx_font_bold" id="S3.T3.12.1.20.20.7.1" style="font-size:90%;background-color:#F2F3F5;">70.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various reward models on the RM-Bench benchmark [51].  Reward models are categorized into three types: sequence classifiers, generative models, and implicit DPO models. The evaluation considers four domains (Chat, Math, Code, Safety) and three difficulty levels (Easy, Normal, Hard) for each domain, providing a comprehensive assessment of the models' performance across various tasks and complexities.  The average score across all domains and difficulty levels is also provided for each model.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation results on RM-Bench [51]. We classify reward models into three types: sequence classifiers (Seq.), generative models, and implicit DPO models. Performance is reported across four domains (Chat, Math, Code, Safety) and three difficulty levels (Easy, Normal, Hard), along with average scores (Avg).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T4.6.1.1.1.1"><span class="ltx_text" id="S5.T4.6.1.1.1.1.1" style="font-size:90%;">Model Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T4.6.1.1.1.2"><span class="ltx_text" id="S5.T4.6.1.1.1.2.1" style="font-size:90%;">LLM</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.6.1.1.1.3"><span class="ltx_text" id="S5.T4.6.1.1.1.3.1" style="font-size:90%;">Chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.6.1.1.1.4"><span class="ltx_text" id="S5.T4.6.1.1.1.4.1" style="font-size:90%;">Chat Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.6.1.1.1.5"><span class="ltx_text" id="S5.T4.6.1.1.1.5.1" style="font-size:90%;">Safety</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T4.6.1.1.1.6"><span class="ltx_text" id="S5.T4.6.1.1.1.6.1" style="font-size:90%;">Reasoning</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T4.6.1.1.1.7"><span class="ltx_text" id="S5.T4.6.1.1.1.7.1" style="font-size:90%;">Avg Score</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S5.T4.6.1.2.2.1"><em class="ltx_emph ltx_font_italic" id="S5.T4.6.1.2.2.1.1" style="font-size:90%;">Language-Only Reward Models</em></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.6.1.3.3.1">
<span class="ltx_text" id="S5.T4.6.1.3.3.1.1" style="font-size:90%;">InternLM2-7B-Reward </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.6.1.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S5.T4.6.1.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.6.1.3.3.2"><span class="ltx_text" id="S5.T4.6.1.3.3.2.1" style="font-size:90%;">InternLM2-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.1.3.3.3"><span class="ltx_text" id="S5.T4.6.1.3.3.3.1" style="font-size:90%;">99.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.1.3.3.4"><span class="ltx_text" id="S5.T4.6.1.3.3.4.1" style="font-size:90%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.1.3.3.5"><span class="ltx_text" id="S5.T4.6.1.3.3.5.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.6.1.3.3.6"><span class="ltx_text" id="S5.T4.6.1.3.3.6.1" style="font-size:90%;">94.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.6.1.3.3.7"><span class="ltx_text" id="S5.T4.6.1.3.3.7.1" style="font-size:90%;">87.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.4.4.1">
<span class="ltx_text" id="S5.T4.6.1.4.4.1.1" style="font-size:90%;">InternLM2-20B-Reward </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.6.1.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S5.T4.6.1.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.4.4.2"><span class="ltx_text" id="S5.T4.6.1.4.4.2.1" style="font-size:90%;">InternLM2-20B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.4.4.3"><span class="ltx_text" id="S5.T4.6.1.4.4.3.1" style="font-size:90%;">98.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.4.4.4"><span class="ltx_text" id="S5.T4.6.1.4.4.4.1" style="font-size:90%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.4.4.5"><span class="ltx_text" id="S5.T4.6.1.4.4.5.1" style="font-size:90%;">89.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.4.4.6"><span class="ltx_text" id="S5.T4.6.1.4.4.6.1" style="font-size:90%;">95.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.6.1.4.4.7"><span class="ltx_text" id="S5.T4.6.1.4.4.7.1" style="font-size:90%;">90.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.5.5.1">
<span class="ltx_text" id="S5.T4.6.1.5.5.1.1" style="font-size:90%;">Skyword-Reward-Llama3.1-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.6.1.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S5.T4.6.1.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.5.5.2"><span class="ltx_text" id="S5.T4.6.1.5.5.2.1" style="font-size:90%;">Llama3.1-8B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.5.5.3"><span class="ltx_text" id="S5.T4.6.1.5.5.3.1" style="font-size:90%;">95.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.5.5.4"><span class="ltx_text" id="S5.T4.6.1.5.5.4.1" style="font-size:90%;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.5.5.5"><span class="ltx_text" id="S5.T4.6.1.5.5.5.1" style="font-size:90%;">90.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.5.5.6"><span class="ltx_text" id="S5.T4.6.1.5.5.6.1" style="font-size:90%;">96.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.6.1.5.5.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T4.6.1.5.5.7.1" style="font-size:90%;">92.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.6.6.1">
<span class="ltx_text" id="S5.T4.6.1.6.6.1.1" style="font-size:90%;">INF-ORM-Llama3.1-70B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.6.1.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib97" title=""><span class="ltx_text" style="font-size:90%;">97</span></a><span class="ltx_text" id="S5.T4.6.1.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.6.6.2"><span class="ltx_text" id="S5.T4.6.1.6.6.2.1" style="font-size:90%;">Llama3.1-70B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.6.6.3"><span class="ltx_text" id="S5.T4.6.1.6.6.3.1" style="font-size:90%;">96.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.6.6.4"><span class="ltx_text" id="S5.T4.6.1.6.6.4.1" style="font-size:90%;">91.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.6.6.5"><span class="ltx_text" id="S5.T4.6.1.6.6.5.1" style="font-size:90%;">93.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.6.6.6"><span class="ltx_text" id="S5.T4.6.1.6.6.6.1" style="font-size:90%;">99.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.6.1.6.6.7"><span class="ltx_text ltx_font_bold" id="S5.T4.6.1.6.6.7.1" style="font-size:90%;">95.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="7" id="S5.T4.6.1.7.7.1"><em class="ltx_emph ltx_font_italic" id="S5.T4.6.1.7.7.1.1" style="font-size:90%;">Multi-Modal Reward Models</em></th>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T4.6.1.8.8.1">
<span class="ltx_text" id="S5.T4.6.1.8.8.1.1" style="font-size:90%;">QWen2-VL-7B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.6.1.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib90" title=""><span class="ltx_text" style="font-size:90%;">90</span></a><span class="ltx_text" id="S5.T4.6.1.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T4.6.1.8.8.2"><span class="ltx_text" id="S5.T4.6.1.8.8.2.1" style="font-size:90%;">QWen2-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.1.8.8.3"><span class="ltx_text" id="S5.T4.6.1.8.8.3.1" style="font-size:90%;">96.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.1.8.8.4"><span class="ltx_text" id="S5.T4.6.1.8.8.4.1" style="font-size:90%;">57.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.6.1.8.8.5"><span class="ltx_text" id="S5.T4.6.1.8.8.5.1" style="font-size:90%;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T4.6.1.8.8.6"><span class="ltx_text" id="S5.T4.6.1.8.8.6.1" style="font-size:90%;">94.3</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T4.6.1.8.8.7"><span class="ltx_text" id="S5.T4.6.1.8.8.7.1" style="font-size:90%;">83.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T4.6.1.9.9.1">
<span class="ltx_text" id="S5.T4.6.1.9.9.1.1" style="font-size:90%;">LLaVA-Critic-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.6.1.9.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a><span class="ltx_text" id="S5.T4.6.1.9.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T4.6.1.9.9.2"><span class="ltx_text" id="S5.T4.6.1.9.9.2.1" style="font-size:90%;">LLaMA3-7B</span></th>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.9.9.3"><span class="ltx_text" id="S5.T4.6.1.9.9.3.1" style="font-size:90%;">96.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.9.9.4"><span class="ltx_text" id="S5.T4.6.1.9.9.4.1" style="font-size:90%;">52.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.6.1.9.9.5"><span class="ltx_text" id="S5.T4.6.1.9.9.5.1" style="font-size:90%;">81.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T4.6.1.9.9.6"><span class="ltx_text" id="S5.T4.6.1.9.9.6.1" style="font-size:90%;">83.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T4.6.1.9.9.7"><span class="ltx_text" id="S5.T4.6.1.9.9.7.1" style="font-size:90%;">80.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.6.1.10.10" style="background-color:#F2F3F5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T4.6.1.10.10.1"><span class="ltx_text" id="S5.T4.6.1.10.10.1.1" style="font-size:90%;background-color:#F2F3F5;">IXC-2.5-Reward (Ours)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.6.1.10.10.2"><span class="ltx_text" id="S5.T4.6.1.10.10.2.1" style="font-size:90%;background-color:#F2F3F5;">InternL2-7B</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.6.1.10.10.3"><span class="ltx_text" id="S5.T4.6.1.10.10.3.1" style="font-size:90%;background-color:#F2F3F5;">90.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.6.1.10.10.4"><span class="ltx_text" id="S5.T4.6.1.10.10.4.1" style="font-size:90%;background-color:#F2F3F5;">83.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.6.1.10.10.5"><span class="ltx_text" id="S5.T4.6.1.10.10.5.1" style="font-size:90%;background-color:#F2F3F5;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T4.6.1.10.10.6"><span class="ltx_text" id="S5.T4.6.1.10.10.6.1" style="font-size:90%;background-color:#F2F3F5;">90.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T4.6.1.10.10.7"><span class="ltx_text" id="S5.T4.6.1.10.10.7.1" style="font-size:90%;background-color:#F2F3F5;">88.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of the IXC-2.5-Chat model against state-of-the-art (SOTA) proprietary and open-source models with parameters less than or equal to 10 billion.  The results are sourced from the OpenVLM Leaderboard and the Open LMM Reasoning Leaderboard, accessed on January 1st, 2025.  The table presents a performance evaluation across multiple categories (Instruction Following & Chat, Knowledge, Reasoning, Text-Rich) and benchmarks within those categories.  Best and second-best results for each benchmark are highlighted to showcase the relative strengths and weaknesses of IXC-2.5-Chat.
> <details>
> <summary>read the caption</summary>
> Table 6: Evaluation results of our IXC-2.5-Chat model against previous SOTA proprietary and open-source models ≤\leq≤10B (results are copied from OpenVLM Leaderboard and Open LMM Reasoning Leaderboard, accessed 01-Jan-2025). Best and second best results are highlighted.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.6.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T5.6.1.1.1.1"><span class="ltx_text" id="S5.T5.6.1.1.1.1.1" style="font-size:90%;">Model Name</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T5.6.1.1.1.2"><span class="ltx_text" id="S5.T5.6.1.1.1.2.1" style="font-size:90%;">Type</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.1.3"><span class="ltx_text" id="S5.T5.6.1.1.1.3.1" style="font-size:90%;">Chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.1.4"><span class="ltx_text" id="S5.T5.6.1.1.1.4.1" style="font-size:90%;">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.1.5"><span class="ltx_text" id="S5.T5.6.1.1.1.5.1" style="font-size:90%;">Code</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.6.1.1.1.6"><span class="ltx_text" id="S5.T5.6.1.1.1.6.1" style="font-size:90%;">Safety</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.1.7"><span class="ltx_text" id="S5.T5.6.1.1.1.7.1" style="font-size:90%;">Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.1.8"><span class="ltx_text" id="S5.T5.6.1.1.1.8.1" style="font-size:90%;">Normal</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T5.6.1.1.1.9"><span class="ltx_text" id="S5.T5.6.1.1.1.9.1" style="font-size:90%;">Hard</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T5.6.1.1.1.10"><span class="ltx_text" id="S5.T5.6.1.1.1.10.1" style="font-size:90%;">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S5.T5.6.1.2.2.1"><em class="ltx_emph ltx_font_italic" id="S5.T5.6.1.2.2.1.1" style="font-size:90%;">Language-Only Reward Models</em></th>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T5.6.1.3.3.1">
<span class="ltx_text" id="S5.T5.6.1.3.3.1.1" style="font-size:90%;">Tulu-2-dpo-13b </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.6.1.3.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S5.T5.6.1.3.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T5.6.1.3.3.2"><span class="ltx_text" id="S5.T5.6.1.3.3.2.1" style="font-size:90%;">Implicit</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.3.3.3"><span class="ltx_text" id="S5.T5.6.1.3.3.3.1" style="font-size:90%;">66.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.3.3.4"><span class="ltx_text" id="S5.T5.6.1.3.3.4.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.3.3.5"><span class="ltx_text" id="S5.T5.6.1.3.3.5.1" style="font-size:90%;">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.6.1.3.3.6"><span class="ltx_text" id="S5.T5.6.1.3.3.6.1" style="font-size:90%;">85.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.3.3.7"><span class="ltx_text" id="S5.T5.6.1.3.3.7.1" style="font-size:90%;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.6.1.3.3.8"><span class="ltx_text" id="S5.T5.6.1.3.3.8.1" style="font-size:90%;">66.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T5.6.1.3.3.9"><span class="ltx_text" id="S5.T5.6.1.3.3.9.1" style="font-size:90%;">37.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T5.6.1.3.3.10"><span class="ltx_text" id="S5.T5.6.1.3.3.10.1" style="font-size:90%;">63.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.6.1.4.4.1">
<span class="ltx_text" id="S5.T5.6.1.4.4.1.1" style="font-size:90%;">InternLM2-7B-Reward </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.6.1.4.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S5.T5.6.1.4.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.4.4.2"><span class="ltx_text" id="S5.T5.6.1.4.4.2.1" style="font-size:90%;">Seq.</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.4.4.3"><span class="ltx_text" id="S5.T5.6.1.4.4.3.1" style="font-size:90%;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.4.4.4"><span class="ltx_text" id="S5.T5.6.1.4.4.4.1" style="font-size:90%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.4.4.5"><span class="ltx_text" id="S5.T5.6.1.4.4.5.1" style="font-size:90%;">49.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.4.4.6"><span class="ltx_text" id="S5.T5.6.1.4.4.6.1" style="font-size:90%;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.4.4.7"><span class="ltx_text" id="S5.T5.6.1.4.4.7.1" style="font-size:90%;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.4.4.8"><span class="ltx_text" id="S5.T5.6.1.4.4.8.1" style="font-size:90%;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.4.4.9"><span class="ltx_text" id="S5.T5.6.1.4.4.9.1" style="font-size:90%;">45.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.6.1.4.4.10"><span class="ltx_text" id="S5.T5.6.1.4.4.10.1" style="font-size:90%;">67.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.6.1.5.5.1">
<span class="ltx_text" id="S5.T5.6.1.5.5.1.1" style="font-size:90%;">InternLM2-20B-Reward </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.6.1.5.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S5.T5.6.1.5.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.5.5.2"><span class="ltx_text" id="S5.T5.6.1.5.5.2.1" style="font-size:90%;">Seq.</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.5.5.3"><span class="ltx_text" id="S5.T5.6.1.5.5.3.1" style="font-size:90%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.5.5.4"><span class="ltx_text" id="S5.T5.6.1.5.5.4.1" style="font-size:90%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.5.5.5"><span class="ltx_text" id="S5.T5.6.1.5.5.5.1" style="font-size:90%;">56.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.5.5.6"><span class="ltx_text" id="S5.T5.6.1.5.5.6.1" style="font-size:90%;">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.5.5.7"><span class="ltx_text" id="S5.T5.6.1.5.5.7.1" style="font-size:90%;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.5.5.8"><span class="ltx_text" id="S5.T5.6.1.5.5.8.1" style="font-size:90%;">71.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.5.5.9"><span class="ltx_text" id="S5.T5.6.1.5.5.9.1" style="font-size:90%;">50.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.6.1.5.5.10"><span class="ltx_text" id="S5.T5.6.1.5.5.10.1" style="font-size:90%;">68.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.6.1.6.6.1">
<span class="ltx_text" id="S5.T5.6.1.6.6.1.1" style="font-size:90%;">Nemotron-4-340B-Reward </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.6.1.6.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a><span class="ltx_text" id="S5.T5.6.1.6.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.6.6.2"><span class="ltx_text" id="S5.T5.6.1.6.6.2.1" style="font-size:90%;">Generative</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.6.6.3"><span class="ltx_text" id="S5.T5.6.1.6.6.3.1" style="font-size:90%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.6.6.4"><span class="ltx_text" id="S5.T5.6.1.6.6.4.1" style="font-size:90%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.6.6.5"><span class="ltx_text" id="S5.T5.6.1.6.6.5.1" style="font-size:90%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.6.6.6"><span class="ltx_text" id="S5.T5.6.1.6.6.6.1" style="font-size:90%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.6.6.7"><span class="ltx_text" id="S5.T5.6.1.6.6.7.1" style="font-size:90%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.6.6.8"><span class="ltx_text" id="S5.T5.6.1.6.6.8.1" style="font-size:90%;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.6.6.9"><span class="ltx_text" id="S5.T5.6.1.6.6.9.1" style="font-size:90%;">56.1</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.6.1.6.6.10"><span class="ltx_text" id="S5.T5.6.1.6.6.10.1" style="font-size:90%;">69.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.6.1.7.7.1">
<span class="ltx_text" id="S5.T5.6.1.7.7.1.1" style="font-size:90%;">URM-LLaMa-3.1-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.6.1.7.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S5.T5.6.1.7.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.7.7.2"><span class="ltx_text" id="S5.T5.6.1.7.7.2.1" style="font-size:90%;">Seq.</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.7.7.3"><span class="ltx_text" id="S5.T5.6.1.7.7.3.1" style="font-size:90%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.7.7.4"><span class="ltx_text" id="S5.T5.6.1.7.7.4.1" style="font-size:90%;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.7.7.5"><span class="ltx_text" id="S5.T5.6.1.7.7.5.1" style="font-size:90%;">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.7.7.6"><span class="ltx_text" id="S5.T5.6.1.7.7.6.1" style="font-size:90%;">93.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.7.7.7"><span class="ltx_text" id="S5.T5.6.1.7.7.7.1" style="font-size:90%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.7.7.8"><span class="ltx_text" id="S5.T5.6.1.7.7.8.1" style="font-size:90%;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.7.7.9"><span class="ltx_text" id="S5.T5.6.1.7.7.9.1" style="font-size:90%;">53.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.6.1.7.7.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T5.6.1.7.7.10.1" style="font-size:90%;">70.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T5.6.1.8.8.1">
<span class="ltx_text" id="S5.T5.6.1.8.8.1.1" style="font-size:90%;">Skyword-Reward-Llama3.1-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.6.1.8.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S5.T5.6.1.8.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T5.6.1.8.8.2"><span class="ltx_text" id="S5.T5.6.1.8.8.2.1" style="font-size:90%;">Seq.</span></th>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.8.8.3"><span class="ltx_text" id="S5.T5.6.1.8.8.3.1" style="font-size:90%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.8.8.4"><span class="ltx_text" id="S5.T5.6.1.8.8.4.1" style="font-size:90%;">60.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.8.8.5"><span class="ltx_text" id="S5.T5.6.1.8.8.5.1" style="font-size:90%;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.8.8.6"><span class="ltx_text" id="S5.T5.6.1.8.8.6.1" style="font-size:90%;">95.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.8.8.7"><span class="ltx_text" id="S5.T5.6.1.8.8.7.1" style="font-size:90%;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.6.1.8.8.8"><span class="ltx_text" id="S5.T5.6.1.8.8.8.1" style="font-size:90%;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T5.6.1.8.8.9"><span class="ltx_text" id="S5.T5.6.1.8.8.9.1" style="font-size:90%;">46.6</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T5.6.1.8.8.10"><span class="ltx_text ltx_font_bold" id="S5.T5.6.1.8.8.10.1" style="font-size:90%;">70.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="10" id="S5.T5.6.1.9.9.1"><em class="ltx_emph ltx_font_italic" id="S5.T5.6.1.9.9.1.1" style="font-size:90%;">Multi-Modal Reward Models</em></th>
</tr>
<tr class="ltx_tr" id="S5.T5.6.1.10.10" style="background-color:#F2F3F5;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T5.6.1.10.10.1"><span class="ltx_text" id="S5.T5.6.1.10.10.1.1" style="font-size:90%;background-color:#F2F3F5;">IXC-2.5-Reward (Ours)</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.6.1.10.10.2"><span class="ltx_text" id="S5.T5.6.1.10.10.2.1" style="font-size:90%;background-color:#F2F3F5;">Seq.</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.10.10.3"><span class="ltx_text" id="S5.T5.6.1.10.10.3.1" style="font-size:90%;background-color:#F2F3F5;">65.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.10.10.4"><span class="ltx_text" id="S5.T5.6.1.10.10.4.1" style="font-size:90%;background-color:#F2F3F5;">55.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.10.10.5"><span class="ltx_text" id="S5.T5.6.1.10.10.5.1" style="font-size:90%;background-color:#F2F3F5;">51.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.6.1.10.10.6"><span class="ltx_text" id="S5.T5.6.1.10.10.6.1" style="font-size:90%;background-color:#F2F3F5;">93.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.10.10.7"><span class="ltx_text" id="S5.T5.6.1.10.10.7.1" style="font-size:90%;background-color:#F2F3F5;">87.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.10.10.8"><span class="ltx_text" id="S5.T5.6.1.10.10.8.1" style="font-size:90%;background-color:#F2F3F5;">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S5.T5.6.1.10.10.9"><span class="ltx_text" id="S5.T5.6.1.10.10.9.1" style="font-size:90%;background-color:#F2F3F5;">47.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S5.T5.6.1.10.10.10"><span class="ltx_text" id="S5.T5.6.1.10.10.10.1" style="font-size:90%;background-color:#F2F3F5;">68.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies investigating the effect of response length constraints on the performance of the IXC-2.5-Chat model.  The study examined how different length constraints during training, specifically with and without constraints, affected the model's performance across several benchmarks.  These benchmarks assess various aspects of the model's capabilities, including instruction following, visual question answering, and overall performance. The metrics used likely include accuracy, token count, and other relevant measures of model quality. The purpose of this ablation study is to demonstrate how the length constraint in the reward model design impacts the overall quality and performance of the resulting chatbot.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation Studies of the impact of response length constraints of reward models that guided training IXC-2.5-Chat.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.18.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T6.7.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.7.1.1.2" rowspan="2"><span class="ltx_text" id="S5.T6.7.1.1.2.1" style="font-size:90%;">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T6.7.1.1.3" rowspan="2"><span class="ltx_text" id="S5.T6.7.1.1.3.1" style="font-size:90%;">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T6.7.1.1.4" rowspan="2"><span class="ltx_text" id="S5.T6.7.1.1.4.1" style="font-size:90%;">Evaluation</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T6.7.1.1.5"><span class="ltx_text" id="S5.T6.7.1.1.5.1" style="font-size:90%;">Proprietary API</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T6.7.1.1.1">
<span class="ltx_text" id="S5.T6.7.1.1.1.2" style="font-size:90%;">Open-Source Model </span><span class="ltx_text ltx_font_bold" id="S5.T6.7.1.1.1.1" style="font-size:90%;">(<math alttext="\leq" class="ltx_Math" display="inline" id="S5.T6.7.1.1.1.1.m1.1"><semantics id="S5.T6.7.1.1.1.1.m1.1a"><mo id="S5.T6.7.1.1.1.1.m1.1.1" xref="S5.T6.7.1.1.1.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="S5.T6.7.1.1.1.1.m1.1b"><leq id="S5.T6.7.1.1.1.1.m1.1.1.cmml" xref="S5.T6.7.1.1.1.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.7.1.1.1.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="S5.T6.7.1.1.1.1.m1.1d">≤</annotation></semantics></math>10B)</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.18.12.13.1">
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.18.12.13.1.1"><span class="ltx_text" id="S5.T6.18.12.13.1.1.1" style="font-size:90%;">Previous-SOTA</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.18.12.13.1.2"><span class="ltx_text" id="S5.T6.18.12.13.1.2.1" style="font-size:90%;">Previous-SOTA</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.18.12.13.1.3"><span class="ltx_text" id="S5.T6.18.12.13.1.3.1" style="font-size:90%;">IXC-2.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.18.12.13.1.4"><span class="ltx_text" id="S5.T6.18.12.13.1.4.1" style="font-size:90%;">IXC-2.5-Chat</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.8.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.8.2.2.2"><span class="ltx_text" id="S5.T6.8.2.2.2.1" style="font-size:90%;">Instruction</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.8.2.2.1">
<span class="ltx_text" id="S5.T6.8.2.2.1.1" style="font-size:90%;">WildVision</span><sub class="ltx_sub" id="S5.T6.8.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S5.T6.8.2.2.1.2.1" style="font-size:90%;">(0617)</span></sub><span class="ltx_text" id="S5.T6.8.2.2.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.8.2.2.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="S5.T6.8.2.2.1.5.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.8.2.2.3"><span class="ltx_text" id="S5.T6.8.2.2.3.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.8.2.2.4">
<span class="ltx_text" id="S5.T6.8.2.2.4.1" style="font-size:90%;">89.2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.8.2.2.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S5.T6.8.2.2.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.2.2.5">
<span class="ltx_text" id="S5.T6.8.2.2.5.1" style="font-size:90%;">67.3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.8.2.2.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a><span class="ltx_text" id="S5.T6.8.2.2.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.8.2.2.6"><span class="ltx_text" id="S5.T6.8.2.2.6.1" style="font-size:90%;">37.5</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T6.8.2.2.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.8.2.2.7.1" style="font-size:90%;background-color:#F2F3F5;">74.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.9.3.3">
<td class="ltx_td ltx_align_left" id="S5.T6.9.3.3.2"><span class="ltx_text" id="S5.T6.9.3.3.2.1" style="font-size:90%;">Following</span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.9.3.3.1">
<span class="ltx_text" id="S5.T6.9.3.3.1.1" style="font-size:90%;">MIA</span><math alttext="{}_{(\text{val})}" class="ltx_Math" display="inline" id="S5.T6.9.3.3.1.m1.1"><semantics id="S5.T6.9.3.3.1.m1.1a"><msub id="S5.T6.9.3.3.1.m1.1.1" xref="S5.T6.9.3.3.1.m1.1.1.cmml"><mi id="S5.T6.9.3.3.1.m1.1.1a" xref="S5.T6.9.3.3.1.m1.1.1.cmml"></mi><mrow id="S5.T6.9.3.3.1.m1.1.1.1.3" xref="S5.T6.9.3.3.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.9.3.3.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.9.3.3.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.9.3.3.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.9.3.3.1.m1.1.1.1.1.cmml">val</mtext><mo id="S5.T6.9.3.3.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.9.3.3.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.9.3.3.1.m1.1b"><apply id="S5.T6.9.3.3.1.m1.1.1.cmml" xref="S5.T6.9.3.3.1.m1.1.1"><ci id="S5.T6.9.3.3.1.m1.1.1.1.1a.cmml" xref="S5.T6.9.3.3.1.m1.1.1.1.3"><mtext id="S5.T6.9.3.3.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.9.3.3.1.m1.1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.9.3.3.1.m1.1c">{}_{(\text{val})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.9.3.3.1.m1.1d">start_FLOATSUBSCRIPT ( val ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.9.3.3.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.9.3.3.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a><span class="ltx_text" id="S5.T6.9.3.3.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.9.3.3.3"><span class="ltx_text" id="S5.T6.9.3.3.3.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.9.3.3.4">
<span class="ltx_text" id="S5.T6.9.3.3.4.1" style="font-size:90%;">88.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.9.3.3.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S5.T6.9.3.3.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.3.3.5">
<span class="ltx_text" id="S5.T6.9.3.3.5.1" style="font-size:90%;">80.7 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.9.3.3.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib90" title=""><span class="ltx_text" style="font-size:90%;">90</span></a><span class="ltx_text" id="S5.T6.9.3.3.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.9.3.3.6"><span class="ltx_text" id="S5.T6.9.3.3.6.1" style="font-size:90%;">80.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.9.3.3.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.9.3.3.7.1" style="font-size:90%;background-color:#F2F3F5;">84.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.10.4.4">
<td class="ltx_td ltx_align_left" id="S5.T6.10.4.4.2"><span class="ltx_text" id="S5.T6.10.4.4.2.1" style="font-size:90%;">&amp; Chat</span></td>
<td class="ltx_td ltx_align_left" id="S5.T6.10.4.4.1">
<span class="ltx_text" id="S5.T6.10.4.4.1.1" style="font-size:90%;">MM-MT</span><math alttext="{}_{(\text{val})}" class="ltx_Math" display="inline" id="S5.T6.10.4.4.1.m1.1"><semantics id="S5.T6.10.4.4.1.m1.1a"><msub id="S5.T6.10.4.4.1.m1.1.1" xref="S5.T6.10.4.4.1.m1.1.1.cmml"><mi id="S5.T6.10.4.4.1.m1.1.1a" xref="S5.T6.10.4.4.1.m1.1.1.cmml"></mi><mrow id="S5.T6.10.4.4.1.m1.1.1.1.3" xref="S5.T6.10.4.4.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.10.4.4.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.10.4.4.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.10.4.4.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.10.4.4.1.m1.1.1.1.1.cmml">val</mtext><mo id="S5.T6.10.4.4.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.10.4.4.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.10.4.4.1.m1.1b"><apply id="S5.T6.10.4.4.1.m1.1.1.cmml" xref="S5.T6.10.4.4.1.m1.1.1"><ci id="S5.T6.10.4.4.1.m1.1.1.1.1a.cmml" xref="S5.T6.10.4.4.1.m1.1.1.1.3"><mtext id="S5.T6.10.4.4.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.10.4.4.1.m1.1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.10.4.4.1.m1.1c">{}_{(\text{val})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.10.4.4.1.m1.1d">start_FLOATSUBSCRIPT ( val ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.10.4.4.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.10.4.4.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a><span class="ltx_text" id="S5.T6.10.4.4.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.10.4.4.3"><span class="ltx_text" id="S5.T6.10.4.4.3.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.10.4.4.4">
<span class="ltx_text" id="S5.T6.10.4.4.4.1" style="font-size:90%;">7.72 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.10.4.4.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S5.T6.10.4.4.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.4.4.5">
<span class="ltx_text" id="S5.T6.10.4.4.5.1" style="font-size:90%;">5.45 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.10.4.4.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib90" title=""><span class="ltx_text" style="font-size:90%;">90</span></a><span class="ltx_text" id="S5.T6.10.4.4.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.10.4.4.6"><span class="ltx_text" id="S5.T6.10.4.4.6.1" style="font-size:90%;">3.85</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.10.4.4.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.10.4.4.7.1" style="font-size:90%;background-color:#F2F3F5;">5.70</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.11.5.5">
<td class="ltx_td" id="S5.T6.11.5.5.2"></td>
<td class="ltx_td ltx_align_left" id="S5.T6.11.5.5.1">
<span class="ltx_text" id="S5.T6.11.5.5.1.1" style="font-size:90%;">MM-Vet v2</span><math alttext="{}_{(\text{0613})}" class="ltx_Math" display="inline" id="S5.T6.11.5.5.1.m1.1"><semantics id="S5.T6.11.5.5.1.m1.1a"><msub id="S5.T6.11.5.5.1.m1.1.1" xref="S5.T6.11.5.5.1.m1.1.1.cmml"><mi id="S5.T6.11.5.5.1.m1.1.1a" xref="S5.T6.11.5.5.1.m1.1.1.cmml"></mi><mrow id="S5.T6.11.5.5.1.m1.1.1.1.3" xref="S5.T6.11.5.5.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.11.5.5.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.11.5.5.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.11.5.5.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.11.5.5.1.m1.1.1.1.1.cmml">0613</mtext><mo id="S5.T6.11.5.5.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.11.5.5.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.11.5.5.1.m1.1b"><apply id="S5.T6.11.5.5.1.m1.1.1.cmml" xref="S5.T6.11.5.5.1.m1.1.1"><ci id="S5.T6.11.5.5.1.m1.1.1.1.1a.cmml" xref="S5.T6.11.5.5.1.m1.1.1.1.3"><mtext id="S5.T6.11.5.5.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.11.5.5.1.m1.1.1.1.1">0613</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.11.5.5.1.m1.1c">{}_{(\text{0613})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.11.5.5.1.m1.1d">start_FLOATSUBSCRIPT ( 0613 ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.11.5.5.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.11.5.5.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib103" title=""><span class="ltx_text" style="font-size:90%;">103</span></a><span class="ltx_text" id="S5.T6.11.5.5.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.11.5.5.3"><span class="ltx_text" id="S5.T6.11.5.5.3.1" style="font-size:90%;">Open</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.11.5.5.4">
<span class="ltx_text" id="S5.T6.11.5.5.4.1" style="font-size:90%;">71.8 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.11.5.5.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S5.T6.11.5.5.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.5.5.5">
<span class="ltx_text" id="S5.T6.11.5.5.5.1" style="font-size:90%;">58.1 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.11.5.5.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S5.T6.11.5.5.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.11.5.5.6"><span class="ltx_text" id="S5.T6.11.5.5.6.1" style="font-size:90%;">45.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.11.5.5.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.11.5.5.7.1" style="font-size:90%;background-color:#F2F3F5;">54.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.12.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.12.6.6.2"><span class="ltx_text" id="S5.T6.12.6.6.2.1" style="font-size:90%;">Knowledge</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.12.6.6.1">
<span class="ltx_text" id="S5.T6.12.6.6.1.1" style="font-size:90%;">MMBench</span><math alttext="{}_{(\text{v1.1})}" class="ltx_Math" display="inline" id="S5.T6.12.6.6.1.m1.1"><semantics id="S5.T6.12.6.6.1.m1.1a"><msub id="S5.T6.12.6.6.1.m1.1.1" xref="S5.T6.12.6.6.1.m1.1.1.cmml"><mi id="S5.T6.12.6.6.1.m1.1.1a" xref="S5.T6.12.6.6.1.m1.1.1.cmml"></mi><mrow id="S5.T6.12.6.6.1.m1.1.1.1.3" xref="S5.T6.12.6.6.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.12.6.6.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.12.6.6.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.12.6.6.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.12.6.6.1.m1.1.1.1.1.cmml">v1.1</mtext><mo id="S5.T6.12.6.6.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.12.6.6.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.12.6.6.1.m1.1b"><apply id="S5.T6.12.6.6.1.m1.1.1.cmml" xref="S5.T6.12.6.6.1.m1.1.1"><ci id="S5.T6.12.6.6.1.m1.1.1.1.1a.cmml" xref="S5.T6.12.6.6.1.m1.1.1.1.3"><mtext id="S5.T6.12.6.6.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.12.6.6.1.m1.1.1.1.1">v1.1</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.12.6.6.1.m1.1c">{}_{(\text{v1.1})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.12.6.6.1.m1.1d">start_FLOATSUBSCRIPT ( v1.1 ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.12.6.6.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.12.6.6.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="S5.T6.12.6.6.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.12.6.6.3"><span class="ltx_text" id="S5.T6.12.6.6.3.1" style="font-size:90%;">MCQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.12.6.6.4">
<span class="ltx_text" id="S5.T6.12.6.6.4.1" style="font-size:90%;">85.7 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.12.6.6.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S5.T6.12.6.6.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.12.6.6.5">
<span class="ltx_text" id="S5.T6.12.6.6.5.1" style="font-size:90%;">82.7 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.12.6.6.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S5.T6.12.6.6.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.12.6.6.6"><span class="ltx_text" id="S5.T6.12.6.6.6.1" style="font-size:90%;">79.4</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T6.12.6.6.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.12.6.6.7.1" style="font-size:90%;background-color:#F2F3F5;">79.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.13.7.7">
<td class="ltx_td" id="S5.T6.13.7.7.2"></td>
<td class="ltx_td ltx_align_left" id="S5.T6.13.7.7.1">
<span class="ltx_text" id="S5.T6.13.7.7.1.1" style="font-size:90%;">MMMU</span><math alttext="{}_{(\text{val})}" class="ltx_Math" display="inline" id="S5.T6.13.7.7.1.m1.1"><semantics id="S5.T6.13.7.7.1.m1.1a"><msub id="S5.T6.13.7.7.1.m1.1.1" xref="S5.T6.13.7.7.1.m1.1.1.cmml"><mi id="S5.T6.13.7.7.1.m1.1.1a" xref="S5.T6.13.7.7.1.m1.1.1.cmml"></mi><mrow id="S5.T6.13.7.7.1.m1.1.1.1.3" xref="S5.T6.13.7.7.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.13.7.7.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.13.7.7.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.13.7.7.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.13.7.7.1.m1.1.1.1.1.cmml">val</mtext><mo id="S5.T6.13.7.7.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.13.7.7.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.13.7.7.1.m1.1b"><apply id="S5.T6.13.7.7.1.m1.1.1.cmml" xref="S5.T6.13.7.7.1.m1.1.1"><ci id="S5.T6.13.7.7.1.m1.1.1.1.1a.cmml" xref="S5.T6.13.7.7.1.m1.1.1.1.3"><mtext id="S5.T6.13.7.7.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.13.7.7.1.m1.1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.13.7.7.1.m1.1c">{}_{(\text{val})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.13.7.7.1.m1.1d">start_FLOATSUBSCRIPT ( val ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.13.7.7.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.13.7.7.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib106" title=""><span class="ltx_text" style="font-size:90%;">106</span></a><span class="ltx_text" id="S5.T6.13.7.7.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.13.7.7.3"><span class="ltx_text" id="S5.T6.13.7.7.3.1" style="font-size:90%;">MCQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.13.7.7.4">
<span class="ltx_text" id="S5.T6.13.7.7.4.1" style="font-size:90%;">70.7 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.13.7.7.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="S5.T6.13.7.7.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.7.7.5">
<span class="ltx_text" id="S5.T6.13.7.7.5.1" style="font-size:90%;">56.2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.13.7.7.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S5.T6.13.7.7.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.13.7.7.6"><span class="ltx_text" id="S5.T6.13.7.7.6.1" style="font-size:90%;">42.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.13.7.7.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.13.7.7.7.1" style="font-size:90%;background-color:#F2F3F5;">44.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.18.12.14.2">
<td class="ltx_td" id="S5.T6.18.12.14.2.1"></td>
<td class="ltx_td ltx_align_left" id="S5.T6.18.12.14.2.2">
<span class="ltx_text" id="S5.T6.18.12.14.2.2.1" style="font-size:90%;">MMStar </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.14.2.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="S5.T6.18.12.14.2.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.18.12.14.2.3"><span class="ltx_text" id="S5.T6.18.12.14.2.3.1" style="font-size:90%;">MCQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.18.12.14.2.4">
<span class="ltx_text" id="S5.T6.18.12.14.2.4.1" style="font-size:90%;">72.7 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.14.2.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S5.T6.18.12.14.2.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.18.12.14.2.5">
<span class="ltx_text" id="S5.T6.18.12.14.2.5.1" style="font-size:90%;">63.2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.14.2.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S5.T6.18.12.14.2.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.18.12.14.2.6"><span class="ltx_text" id="S5.T6.18.12.14.2.6.1" style="font-size:90%;">59.9</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.18.12.14.2.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.18.12.14.2.7.1" style="font-size:90%;background-color:#F2F3F5;">59.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.14.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.14.8.8.2"><span class="ltx_text" id="S5.T6.14.8.8.2.1" style="font-size:90%;">Reasoning</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.14.8.8.1">
<span class="ltx_text" id="S5.T6.14.8.8.1.1" style="font-size:90%;">MathVista</span><math alttext="{}_{(\text{mini})}" class="ltx_Math" display="inline" id="S5.T6.14.8.8.1.m1.1"><semantics id="S5.T6.14.8.8.1.m1.1a"><msub id="S5.T6.14.8.8.1.m1.1.1" xref="S5.T6.14.8.8.1.m1.1.1.cmml"><mi id="S5.T6.14.8.8.1.m1.1.1a" xref="S5.T6.14.8.8.1.m1.1.1.cmml"></mi><mrow id="S5.T6.14.8.8.1.m1.1.1.1.3" xref="S5.T6.14.8.8.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.14.8.8.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.14.8.8.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.14.8.8.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.14.8.8.1.m1.1.1.1.1.cmml">mini</mtext><mo id="S5.T6.14.8.8.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.14.8.8.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.14.8.8.1.m1.1b"><apply id="S5.T6.14.8.8.1.m1.1.1.cmml" xref="S5.T6.14.8.8.1.m1.1.1"><ci id="S5.T6.14.8.8.1.m1.1.1.1.1a.cmml" xref="S5.T6.14.8.8.1.m1.1.1.1.3"><mtext id="S5.T6.14.8.8.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.14.8.8.1.m1.1.1.1.1">mini</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.14.8.8.1.m1.1c">{}_{(\text{mini})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.14.8.8.1.m1.1d">start_FLOATSUBSCRIPT ( mini ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.14.8.8.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.14.8.8.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="S5.T6.14.8.8.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.14.8.8.3"><span class="ltx_text" id="S5.T6.14.8.8.3.1" style="font-size:90%;">VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.14.8.8.4">
<span class="ltx_text" id="S5.T6.14.8.8.4.1" style="font-size:90%;">78.4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.14.8.8.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S5.T6.14.8.8.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.14.8.8.5">
<span class="ltx_text" id="S5.T6.14.8.8.5.1" style="font-size:90%;">66.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.14.8.8.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S5.T6.14.8.8.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.14.8.8.6"><span class="ltx_text" id="S5.T6.14.8.8.6.1" style="font-size:90%;">63.7</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T6.14.8.8.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.14.8.8.7.1" style="font-size:90%;background-color:#F2F3F5;">63.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.15.9.9">
<td class="ltx_td" id="S5.T6.15.9.9.2"></td>
<td class="ltx_td ltx_align_left" id="S5.T6.15.9.9.1">
<span class="ltx_text" id="S5.T6.15.9.9.1.1" style="font-size:90%;">MathVerse</span><math alttext="{}_{(\text{vision-only})}" class="ltx_Math" display="inline" id="S5.T6.15.9.9.1.m1.1"><semantics id="S5.T6.15.9.9.1.m1.1a"><msub id="S5.T6.15.9.9.1.m1.1.1" xref="S5.T6.15.9.9.1.m1.1.1.cmml"><mi id="S5.T6.15.9.9.1.m1.1.1a" xref="S5.T6.15.9.9.1.m1.1.1.cmml"></mi><mrow id="S5.T6.15.9.9.1.m1.1.1.1.3" xref="S5.T6.15.9.9.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.15.9.9.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.15.9.9.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.15.9.9.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.15.9.9.1.m1.1.1.1.1.cmml">vision-only</mtext><mo id="S5.T6.15.9.9.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.15.9.9.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.15.9.9.1.m1.1b"><apply id="S5.T6.15.9.9.1.m1.1.1.cmml" xref="S5.T6.15.9.9.1.m1.1.1"><ci id="S5.T6.15.9.9.1.m1.1.1.1.1a.cmml" xref="S5.T6.15.9.9.1.m1.1.1.1.3"><mtext id="S5.T6.15.9.9.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.15.9.9.1.m1.1.1.1.1">vision-only</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.15.9.9.1.m1.1c">{}_{(\text{vision-only})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.15.9.9.1.m1.1d">start_FLOATSUBSCRIPT ( vision-only ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.15.9.9.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.15.9.9.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib113" title=""><span class="ltx_text" style="font-size:90%;">113</span></a><span class="ltx_text" id="S5.T6.15.9.9.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.15.9.9.3"><span class="ltx_text" id="S5.T6.15.9.9.3.1" style="font-size:90%;">VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.15.9.9.4">
<span class="ltx_text" id="S5.T6.15.9.9.4.1" style="font-size:90%;">54.8 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.15.9.9.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S5.T6.15.9.9.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.15.9.9.5">
<span class="ltx_text" id="S5.T6.15.9.9.5.1" style="font-size:90%;">26.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.15.9.9.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T6.15.9.9.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.15.9.9.6"><span class="ltx_text" id="S5.T6.15.9.9.6.1" style="font-size:90%;">16.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.15.9.9.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.15.9.9.7.1" style="font-size:90%;background-color:#F2F3F5;">19.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.16.10.10">
<td class="ltx_td" id="S5.T6.16.10.10.2"></td>
<td class="ltx_td ltx_align_left" id="S5.T6.16.10.10.1">
<span class="ltx_text" id="S5.T6.16.10.10.1.1" style="font-size:90%;">MathVision</span><math alttext="{}_{(\text{full})}" class="ltx_Math" display="inline" id="S5.T6.16.10.10.1.m1.1"><semantics id="S5.T6.16.10.10.1.m1.1a"><msub id="S5.T6.16.10.10.1.m1.1.1" xref="S5.T6.16.10.10.1.m1.1.1.cmml"><mi id="S5.T6.16.10.10.1.m1.1.1a" xref="S5.T6.16.10.10.1.m1.1.1.cmml"></mi><mrow id="S5.T6.16.10.10.1.m1.1.1.1.3" xref="S5.T6.16.10.10.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.16.10.10.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.16.10.10.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.16.10.10.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.16.10.10.1.m1.1.1.1.1.cmml">full</mtext><mo id="S5.T6.16.10.10.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.16.10.10.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.16.10.10.1.m1.1b"><apply id="S5.T6.16.10.10.1.m1.1.1.cmml" xref="S5.T6.16.10.10.1.m1.1.1"><ci id="S5.T6.16.10.10.1.m1.1.1.1.1a.cmml" xref="S5.T6.16.10.10.1.m1.1.1.1.3"><mtext id="S5.T6.16.10.10.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.16.10.10.1.m1.1.1.1.1">full</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.16.10.10.1.m1.1c">{}_{(\text{full})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.16.10.10.1.m1.1d">start_FLOATSUBSCRIPT ( full ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.16.10.10.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.16.10.10.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="S5.T6.16.10.10.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.16.10.10.3"><span class="ltx_text" id="S5.T6.16.10.10.3.1" style="font-size:90%;">VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.16.10.10.4">
<span class="ltx_text" id="S5.T6.16.10.10.4.1" style="font-size:90%;">43.6 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.16.10.10.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S5.T6.16.10.10.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.10.10.5">
<span class="ltx_text" id="S5.T6.16.10.10.5.1" style="font-size:90%;">22.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.16.10.10.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="S5.T6.16.10.10.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.16.10.10.6"><span class="ltx_text" id="S5.T6.16.10.10.6.1" style="font-size:90%;">17.8</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.16.10.10.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.16.10.10.7.1" style="font-size:90%;background-color:#F2F3F5;">18.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.17.11.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.17.11.11.2"><span class="ltx_text" id="S5.T6.17.11.11.2.1" style="font-size:90%;">Text-Rich</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T6.17.11.11.1">
<span class="ltx_text" id="S5.T6.17.11.11.1.1" style="font-size:90%;">TextVQA</span><math alttext="{}_{(\text{val})}" class="ltx_Math" display="inline" id="S5.T6.17.11.11.1.m1.1"><semantics id="S5.T6.17.11.11.1.m1.1a"><msub id="S5.T6.17.11.11.1.m1.1.1" xref="S5.T6.17.11.11.1.m1.1.1.cmml"><mi id="S5.T6.17.11.11.1.m1.1.1a" xref="S5.T6.17.11.11.1.m1.1.1.cmml"></mi><mrow id="S5.T6.17.11.11.1.m1.1.1.1.3" xref="S5.T6.17.11.11.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.17.11.11.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.17.11.11.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.17.11.11.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.17.11.11.1.m1.1.1.1.1.cmml">val</mtext><mo id="S5.T6.17.11.11.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.17.11.11.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.17.11.11.1.m1.1b"><apply id="S5.T6.17.11.11.1.m1.1.1.cmml" xref="S5.T6.17.11.11.1.m1.1.1"><ci id="S5.T6.17.11.11.1.m1.1.1.1.1a.cmml" xref="S5.T6.17.11.11.1.m1.1.1.1.3"><mtext id="S5.T6.17.11.11.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.17.11.11.1.m1.1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.17.11.11.1.m1.1c">{}_{(\text{val})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.17.11.11.1.m1.1d">start_FLOATSUBSCRIPT ( val ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.17.11.11.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.17.11.11.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S5.T6.17.11.11.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.17.11.11.3"><span class="ltx_text" id="S5.T6.17.11.11.3.1" style="font-size:90%;">VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T6.17.11.11.4">
<span class="ltx_text" id="S5.T6.17.11.11.4.1" style="font-size:90%;">82.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.17.11.11.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S5.T6.17.11.11.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.17.11.11.5">
<span class="ltx_text" id="S5.T6.17.11.11.5.1" style="font-size:90%;">78.5 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.17.11.11.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S5.T6.17.11.11.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.17.11.11.6"><span class="ltx_text" id="S5.T6.17.11.11.6.1" style="font-size:90%;">78.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T6.17.11.11.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.17.11.11.7.1" style="font-size:90%;background-color:#F2F3F5;">81.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.18.12.12">
<td class="ltx_td" id="S5.T6.18.12.12.2"></td>
<td class="ltx_td ltx_align_left" id="S5.T6.18.12.12.1">
<span class="ltx_text" id="S5.T6.18.12.12.1.1" style="font-size:90%;">ChartQA</span><math alttext="{}_{(\text{test})}" class="ltx_Math" display="inline" id="S5.T6.18.12.12.1.m1.1"><semantics id="S5.T6.18.12.12.1.m1.1a"><msub id="S5.T6.18.12.12.1.m1.1.1" xref="S5.T6.18.12.12.1.m1.1.1.cmml"><mi id="S5.T6.18.12.12.1.m1.1.1a" xref="S5.T6.18.12.12.1.m1.1.1.cmml"></mi><mrow id="S5.T6.18.12.12.1.m1.1.1.1.3" xref="S5.T6.18.12.12.1.m1.1.1.1.1a.cmml"><mo id="S5.T6.18.12.12.1.m1.1.1.1.3.1" maxsize="90%" minsize="90%" xref="S5.T6.18.12.12.1.m1.1.1.1.1a.cmml">(</mo><mtext id="S5.T6.18.12.12.1.m1.1.1.1.1" mathsize="90%" xref="S5.T6.18.12.12.1.m1.1.1.1.1.cmml">test</mtext><mo id="S5.T6.18.12.12.1.m1.1.1.1.3.2" maxsize="90%" minsize="90%" xref="S5.T6.18.12.12.1.m1.1.1.1.1a.cmml">)</mo></mrow></msub><annotation-xml encoding="MathML-Content" id="S5.T6.18.12.12.1.m1.1b"><apply id="S5.T6.18.12.12.1.m1.1.1.cmml" xref="S5.T6.18.12.12.1.m1.1.1"><ci id="S5.T6.18.12.12.1.m1.1.1.1.1a.cmml" xref="S5.T6.18.12.12.1.m1.1.1.1.3"><mtext id="S5.T6.18.12.12.1.m1.1.1.1.1.cmml" mathsize="63%" xref="S5.T6.18.12.12.1.m1.1.1.1.1">test</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T6.18.12.12.1.m1.1c">{}_{(\text{test})}</annotation><annotation encoding="application/x-llamapun" id="S5.T6.18.12.12.1.m1.1d">start_FLOATSUBSCRIPT ( test ) end_FLOATSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="S5.T6.18.12.12.1.2" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.12.1.3.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S5.T6.18.12.12.1.4.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.18.12.12.3"><span class="ltx_text" id="S5.T6.18.12.12.3.1" style="font-size:90%;">VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T6.18.12.12.4">
<span class="ltx_text" id="S5.T6.18.12.12.4.1" style="font-size:90%;">81.2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.12.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S5.T6.18.12.12.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.18.12.12.5">
<span class="ltx_text" id="S5.T6.18.12.12.5.1" style="font-size:90%;">82.4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.12.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S5.T6.18.12.12.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.18.12.12.6"><span class="ltx_text" id="S5.T6.18.12.12.6.1" style="font-size:90%;">82.2</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.18.12.12.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.18.12.12.7.1" style="font-size:90%;background-color:#F2F3F5;">80.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.18.12.15.3">
<td class="ltx_td ltx_border_bb" id="S5.T6.18.12.15.3.1"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T6.18.12.15.3.2">
<span class="ltx_text" id="S5.T6.18.12.15.3.2.1" style="font-size:90%;">OCRBench </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.15.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S5.T6.18.12.15.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.18.12.15.3.3"><span class="ltx_text" id="S5.T6.18.12.15.3.3.1" style="font-size:90%;">VQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T6.18.12.15.3.4">
<span class="ltx_text" id="S5.T6.18.12.15.3.4.1" style="font-size:90%;">89.4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.15.3.4.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="S5.T6.18.12.15.3.4.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.18.12.15.3.5">
<span class="ltx_text" id="S5.T6.18.12.15.3.5.1" style="font-size:90%;">82.2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T6.18.12.15.3.5.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12368v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S5.T6.18.12.15.3.5.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.18.12.15.3.6"><span class="ltx_text" id="S5.T6.18.12.15.3.6.1" style="font-size:90%;">69.0</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T6.18.12.15.3.7" style="background-color:#F2F3F5;"><span class="ltx_text" id="S5.T6.18.12.15.3.7.1" style="font-size:90%;background-color:#F2F3F5;">70.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of using the Best-of-N (BoN) sampling technique to improve the test-time performance of the IXC-2.5-Chat model.  BoN involves generating multiple outputs for a given input and selecting the one with the highest score according to the IXC-2.5-Reward model.  The table shows the impact of BoN on various metrics, including average token length and performance scores across different benchmarks like WildVision, MIA, MM-MT, and MM-Vet.
> <details>
> <summary>read the caption</summary>
> Table 8: Results of Best-of-N𝑁Nitalic_N (BoN) sampling for test-time scaling with IXC-2.5-Reward.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.12368/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12368/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}