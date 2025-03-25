---
title: "ViSpeak: Visual Instruction Feedback in Streaming Videos"
summary: "ViSpeak: Enables visual instruction feedback in streaming videos, enhancing human-AI interaction."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Human-AI Interaction", "🏢 School of Computer Science and Engineering, Sun Yat-sen University, China",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12769 {{< /keyword >}}
{{< keyword icon="writer" >}} Shenghao Fu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12769" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12769" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12769/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current Large Multi-modal Models (LMMs) are primarily focused on offline video understanding. Streaming video poses challenges to recent models due to its time-sensitive and interactive characteristics. The paper aims to extend streaming video understanding and proposes Visual Instruction Feedback, in which models understand visual content and extract instructions. This greatly enhances user-agent interactions.



The study defines key subtasks and collects ViSpeak-Instruct dataset for training and ViSpeak-Bench for evaluation. The paper proposes the ViSpeak model, a SOTA streaming video understanding LMM with GPT-4o-level performance. After fine-tuning, ViSpeak gains basic visual instruction feedback ability, serving as a solid baseline.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Visual Instruction Feedback, a new task for streaming video understanding, requiring models to actively respond to visual cues. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Provides ViSpeak-Bench and ViSpeak-Instruct, benchmark and training dataset, to facilitate research in this area. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposes the ViSpeak model, a SOTA streaming video LMM with GPT-4o-level performance {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel task and benchmark that addresses the growing need for models that can understand and respond to visual instructions in streaming videos, mirroring real-time human interactions. By addressing the gap in current models that primarily focus on offline video understanding, this research opens up new possibilities for creating more interactive and responsive AI systems in various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12769/x1.png)

> 🔼 This figure showcases examples of human-computer interaction using body language as instructions in the Visual Instruction Feedback task.  It illustrates four key subtasks: Visual Wake-Up (initiating interaction), Visual Reference (indicating an object), Visual Interruption (stopping the agent), and Visual Termination (ending the interaction).  The image displays screen captures of a video stream at different time points, each showing a distinct body language cue.  The text in parentheses indicates the action performed via body language instead of verbal communication.
> <details>
> <summary>read the caption</summary>
> Figure 1: Examples of some actions in Visual Instruction Feedback task, which are Visual Wake-Up, Visual Reference, Visual Interruption, and Visual Termination in order. The content in parentheses is displayed by body language instead of text or speech.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.1.1">Benchmark</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.1.2">#Videos</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.1.3">#QA Pairs</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.1.4">Time</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.1.5">Streaming</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.1.6">PO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.1.7">Visual Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.1.8">Anno</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.1.2.1">ActivityNet-QA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.2">800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.3">8,000</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.4"><span class="ltx_text" id="S3.T1.2.1.2.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.5"><span class="ltx_text" id="S3.T1.2.1.2.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.6"><span class="ltx_text" id="S3.T1.2.1.2.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.7"><span class="ltx_text" id="S3.T1.2.1.2.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.2.8">Manual</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.3.1">NExT-QA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.2">1,000</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.3">8,564</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.4"><span class="ltx_text" id="S3.T1.2.1.3.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.5"><span class="ltx_text" id="S3.T1.2.1.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.6"><span class="ltx_text" id="S3.T1.2.1.3.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.7"><span class="ltx_text" id="S3.T1.2.1.3.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.3.8">Auto</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.4.1">MVBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.2">3,641</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3">4,000</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.4"><span class="ltx_text" id="S3.T1.2.1.4.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.5"><span class="ltx_text" id="S3.T1.2.1.4.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.6"><span class="ltx_text" id="S3.T1.2.1.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.7"><span class="ltx_text" id="S3.T1.2.1.4.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.8">Auto</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.5.1">Video-MME <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.2">900</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.3">2,700</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.4"><span class="ltx_text" id="S3.T1.2.1.5.4.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.5"><span class="ltx_text" id="S3.T1.2.1.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.6"><span class="ltx_text" id="S3.T1.2.1.5.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.7"><span class="ltx_text" id="S3.T1.2.1.5.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.5.8">Manual</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.6">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.6.1">ET-Bench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.2">7,002</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.3">7,289</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.4"><span class="ltx_text" id="S3.T1.2.1.6.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.5"><span class="ltx_text" id="S3.T1.2.1.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.6"><span class="ltx_text" id="S3.T1.2.1.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.7"><span class="ltx_text" id="S3.T1.2.1.6.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.6.8">Manual</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.7">
<td class="ltx_td ltx_align_left" id="S3.T1.2.1.7.1">StreamingBench <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.2">900</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.3">4,500</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.4"><span class="ltx_text" id="S3.T1.2.1.7.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.5"><span class="ltx_text" id="S3.T1.2.1.7.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.6"><span class="ltx_text" id="S3.T1.2.1.7.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.7"><span class="ltx_text" id="S3.T1.2.1.7.7.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.7.8">Mixed</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.8" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S3.T1.2.1.8.1"><span class="ltx_text" id="S3.T1.2.1.8.1.1" style="background-color:#F4EDFC;">ViSpeak-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.8.2"><span class="ltx_text" id="S3.T1.2.1.8.2.1" style="background-color:#F4EDFC;">1,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.8.3"><span class="ltx_text" id="S3.T1.2.1.8.3.1" style="background-color:#F4EDFC;">1,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.8.4"><span class="ltx_text" id="S3.T1.2.1.8.4.1" style="color:#008000;background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.8.5"><span class="ltx_text" id="S3.T1.2.1.8.5.1" style="color:#008000;background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.8.6"><span class="ltx_text" id="S3.T1.2.1.8.6.1" style="color:#008000;background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.8.7"><span class="ltx_text" id="S3.T1.2.1.8.7.1" style="color:#008000;background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.8.8"><span class="ltx_text" id="S3.T1.2.1.8.8.1" style="background-color:#F4EDFC;">Mixed</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares ViSpeak-Bench with other video benchmarks across several key features. It highlights whether each benchmark is time-sensitive (meaning the order of events matters) and whether it includes tasks to evaluate a model's ability to proactively provide output (i.e., generate responses without explicit user prompting).  The table also lists the number of videos and QA pairs (Question-Answer pairs) for each benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between ViSpeak-Bench and other video benchmarks. ‘Time’ means the dataset is time-sensitive. ‘PO’ denotes the dataset to evaluate the proactive output ability.
> </details>





### In-depth insights


#### Visual Feedback
Visual feedback in AI, especially for streaming videos, introduces a novel human-agent interaction. It requires agents to be aware of visual cues, like gestures, and react accordingly. **The core idea is to provide real-time assistance and responses based on visual input**, enhancing user experience. The task includes subtasks like wake-up via body language, anomaly warnings, gesture understanding, visual referencing, interruption handling, humor reactions, and ending conversations. Such a system uses visual input for conversational AI. **This interaction improves human-agent relationships** by allowing for in-time, effective exchanges and feedback. **Understanding visual cues greatly improves overall experience**.

#### Streaming LMMs
**Streaming Large Multimodal Models (LMMs)** present unique challenges compared to offline models, primarily due to their **time-sensitive, omni-modal and interactive nature**. Unlike offline processing where the entire video context is available, streaming LMMs must make decisions based on continually arriving data. This necessitates prompt responses to questions, and effective integration of streaming audio. The interactive characteristic further distinguishes streaming LMMs, encompassing **non-awakening interaction, interruption, and proactive output**. This interactive aspect is often overlooked, requiring models to respond to user actions at any time, handle interruptions smoothly, and express their mind proactively. These factors make streaming LMMs a complex but important area for enhancing human-agent interactions in real-time visual settings.

#### ViSpeak Model
The ViSpeak model is designed as an **omni-modal LMM** (Large Multi-modal Model) to tackle the Visual Instruction Feedback task. It uses an image encoder, an audio encoder, and a large language model to process visual and audio cues. A key innovation is the **two-stream chat template**, which allows the model to process user inputs and generate outputs concurrently, facilitating real-time interaction. To handle visual interruptions, the model can output a "↓ Stop!" token. The model also has an **informative head** to proactively generate visual outputs. This head helps predict when to speak, addressing a crucial aspect of streaming video processing. A weighted sum of the two streams is used to combine user input and system output, with a linear layer predicting weights. Finally, the streaming inputs from users are segmented into multiple fragments and organized in chronological order.

#### Three-Stage Tune
**Three-stage tuning is vital for refining large models.** Initially, aligning the model's template ensures it adapts to specific input formats while retaining core understanding. Subsequent tuning focuses on enhancing task-specific abilities, like question answering, using relevant datasets. Finally, fine-tuning on a targeted dataset optimizes performance for the desired task. This layered approach allows for both broad adaptation and specialized expertise, improving model efficiency.

#### ViSpeak-Bench
The paper introduces **ViSpeak-Bench**, a benchmark to evaluate models on Visual Instruction Feedback in streaming videos. It seems designed to test how well models understand and respond to visual cues, gestures, and actions without explicit text instructions. **The benchmark includes diverse subtasks** which address important aspects of human-agent interaction. This task aims to facilitate in-time interaction and assistance effectively. By restricting the feedback in the conversational scenarios, **ViSpeak-Bench becomes a valuable resource** for developing more intuitive and responsive video understanding systems, specifically concerning the integration of visual cues into interactive dialogues. **The benchmark appears to be comprehensive**, which requires the model to respond actively to visual contents. As a result, it can enhance human-agent interactions and advance research in this domain.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12769/x2.png)

> 🔼 The ViSpeak model architecture is shown.  It's a large multimodal model (LMM) designed for streaming video understanding.  It uses separate encoders for audio, video, and text inputs. Notably, it accepts two input streams: one for user inputs (e.g., questions, commands) and another for the model's own previously generated outputs. These two streams are combined before being fed into a large language model (LLM). A key feature is the inclusion of an 'informative head', which enables the model to proactively generate visual outputs, such as initiating conversation based on observed actions in the video stream.
> <details>
> <summary>read the caption</summary>
> Figure 2: ViSpeak is an omni-modality LMM with multiple encoders and a LLM. To support streaming video analysis, ViSpeak takes two input streams as inputs, one for user inputs and one for self-generated outputs. Two streams will be combined into a single one before sending to LLM. An informative head is trained for visual proactive output.
> </details>



![](https://arxiv.org/html/2503.12769/extracted/6284660/images/personnel_information.jpg)

> 🔼 The figure shows a breakdown of the demographics of the participants involved in recording videos for the ViSpeak-Bench and ViSpeak-Instruct datasets.  The data is presented as two charts: a pie chart displaying the gender distribution (approximately equal numbers of males and females), and a bar chart illustrating the age distribution, ranging from 10 to 70 years old.
> <details>
> <summary>read the caption</summary>
> Figure 3: Statistics on participants who recorded videos. The participants comprised nearly equal numbers of males and females, with ages ranging from 10 to 70 years.
> </details>



![](https://arxiv.org/html/2503.12769/x3.png)

> 🔼 This figure shows a sequence of images from the ViSpeak-Bench dataset that depicts a person performing a visual wake-up gesture.  The person is making a sequence of hand gestures, and the figure displays timestamps for each gesture.  Below the images, there are annotations showing the corresponding text prompt and the ViSpeak model’s response to that visual input. The response demonstrates the model's ability to recognize the visual wake-up cue and start a conversation accordingly.  This example illustrates the type of data used for the Visual Instruction Feedback task.
> <details>
> <summary>read the caption</summary>
> Figure 4: Examples of Visual Wake-Up in ViSpeak-Bench and the corresponding output by ViSpeak.
> </details>



![](https://arxiv.org/html/2503.12769/x4.png)

> 🔼 This figure showcases an example from the ViSpeak-Bench dataset illustrating the 'Visual Termination' subtask.  It displays a video sequence where a user signals the end of a conversation using a nonverbal cue (body language).  The annotation details the conversation's timing and the user's action.  It also shows the corresponding output generated by the ViSpeak model, demonstrating its ability to understand the visual signal and appropriately terminate the interaction. The first round of conversation is included as context for the model's response.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of Visual Termination in ViSpeak-Bench and the corresponding output by ViSpeak. The first round conversation is used as context.
> </details>



![](https://arxiv.org/html/2503.12769/x5.png)

> 🔼 This figure showcases examples from the ViSpeak-Bench dataset where a visual interruption occurs.  The top panel displays a sequence of video frames depicting the interruption, showing the user visually signaling a halt in the conversation. The bottom panel presents the original conversation prompt from the dataset, the model's initial response before interruption, the user's visual interruption signal (denoted as '(Stop)'), and finally, the model's concise response to the interruption.  This illustrates the model's ability to recognize and respond appropriately to this non-verbal form of user feedback in real-time.
> <details>
> <summary>read the caption</summary>
> Figure 6: Examples of Visual Interruption in ViSpeak-Bench and the corresponding output by ViSpeak. The first round conversation is used as context.
> </details>



![](https://arxiv.org/html/2503.12769/x6.png)

> 🔼 This figure showcases examples from the ViSpeak-Bench dataset demonstrating the Gesture Understanding subtask.  It visually presents a sequence of frames from a video showing a person making a gesture (a finger heart).  Accompanying the video frames is a transcript of the human-agent conversation.  The first part of the conversation serves as context for the gesture.  The figure then shows the model's (ViSpeak) response to the gesture, highlighting the model's ability to understand and interpret the visual cue within the conversational context.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples of Gesture Understanding in ViSpeak-Bench and the corresponding output by ViSpeak. The first round conversation is used as context.
> </details>



![](https://arxiv.org/html/2503.12769/x7.png)

> 🔼 This figure showcases two examples from the ViSpeak-Bench dataset demonstrating the 'Anomaly Warning' subtask. Each example shows a short video clip depicting an anomalous event (a person falling on a trampoline). The figure displays the corresponding ground truth caption of the video, the response generated by the GPT-4 model, and finally the response generated by the ViSpeak model.  The comparison highlights the different abilities of GPT-4 and ViSpeak in handling anomaly detection and generating appropriate warnings.
> <details>
> <summary>read the caption</summary>
> Figure 8: Examples of Anomaly Warning in ViSpeak-Bench and the corresponding output by ViSpeak.
> </details>



![](https://arxiv.org/html/2503.12769/x8.png)

> 🔼 Figure 9 shows two examples of the Humor Reaction subtask from the ViSpeak-Bench dataset. Each example displays a short video clip with a humorous scene, followed by the ground truth annotation and ViSpeak's generated response.  The annotations provide context and describe the humorous aspects of the video. ViSpeak's response attempts to capture the humor in a conversational and engaging way, demonstrating its ability to understand and generate appropriate responses to humorous visual content.
> <details>
> <summary>read the caption</summary>
> Figure 9: Examples of Humor Reaction in ViSpeak-Bench and the corresponding output by ViSpeak.
> </details>



![](https://arxiv.org/html/2503.12769/x9.png)

> 🔼 This figure showcases examples from the ViSpeak-Bench dataset, specifically focusing on the Visual Reference subtask. It presents several short video clips where a user points to an object, and the corresponding response from the ViSpeak model.  The goal of the subtask is to test the model's capability to understand visual references within videos. The figure highlights the accuracy of ViSpeak in correctly identifying the referenced object based on the user's visual cue, demonstrating its ability to process visual information and respond accordingly within the context of the video.
> <details>
> <summary>read the caption</summary>
> Figure 10: Examples of Visual Reference in ViSpeak-Bench and the corresponding output by ViSpeak.
> </details>



![](https://arxiv.org/html/2503.12769/x10.png)

> 🔼 This figure showcases examples from the self-annotated dataset used for gesture understanding.  It displays video segments with annotations showing both the gesture itself and the intended meaning or context of that gesture within a conversation. The annotations help train the model to accurately interpret and respond appropriately to various gestures.  These examples illustrate the diversity of gestures and their accompanying explanations present in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 11: Examples of our self-annotated data for gesture understanding.
> </details>



![](https://arxiv.org/html/2503.12769/x11.png)

> 🔼 Figure 12 showcases three instances where the ViSpeak model's responses were inaccurate.  The first example, 'Time Mistake,' illustrates a situation where the model generates a response at an inappropriate moment in the video, unrelated to the on-screen activity. The second example, 'Content Mistake,' demonstrates a failure to correctly understand the visual content of the video.  The model's response misinterprets what is happening in the video.  The third example, 'Context Mistake,' highlights the model's inability to grasp the context of the conversation, leading to an irrelevant and inaccurate response.
> <details>
> <summary>read the caption</summary>
> Figure 12: Examples of failure cases. The ‘Time Mistake’ denotes the model responds at an improper time. The ‘Content Mistake’ denotes the model fails to understand the visual content in the video. The ‘Context Mistake’ means the model is unaware of the context of the conversation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.2.1">
<tr class="ltx_tr" id="S3.T2.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.1.1.1">Subtask</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.1.2">#Videos</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.1.3">#QA Pairs</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.1.4">QA Type</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.2.1.2.1">Visual Wake-Up</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.2">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.3">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.1.2.4">Open-Ended</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.3">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.3.1">Anomaly Warning</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.3.2">200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.3.3">200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.3.4">Open-Ended</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.4.1">Gesture Understanding</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.2">200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.3">200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.4.4">Open-Ended</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.5">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.5.1">Visual Reference</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.2">200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.3">200</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.5.4">Multi-Choice</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.6">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.6.1">Visual Interruption</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.2">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.3">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.6.4">Open-Ended</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.7">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.7.1">Humor Reaction</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.2">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.3">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.7.4">Open-Ended</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.8">
<td class="ltx_td ltx_align_left" id="S3.T2.2.1.8.1">Visual Termination</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.2">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.3">100</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.1.8.4">Open-Ended</td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.1.9" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T2.2.1.9.1"><span class="ltx_text" id="S3.T2.2.1.9.1.1" style="background-color:#F4EDFC;">ViSpeak-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.2.1.9.2"><span class="ltx_text" id="S3.T2.2.1.9.2.1" style="background-color:#F4EDFC;">1,000</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T2.2.1.9.3"><span class="ltx_text" id="S3.T2.2.1.9.3.1" style="background-color:#F4EDFC;">1,000</span></td>
<td class="ltx_td ltx_border_b ltx_border_t" id="S3.T2.2.1.9.4"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 ViSpeak-Bench is a benchmark dataset designed for evaluating models' ability to perform Visual Instruction Feedback. It contains 1000 videos and 1000 question-answer pairs across seven subtasks: Visual Wake-Up, Anomaly Warning, Gesture Understanding, Visual Reference, Visual Interruption, Humor Reaction, and Visual Termination.  Each subtask focuses on a specific aspect of visual instruction understanding in streaming video, encompassing various interactive scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2: ViSpeak-Bench benchmark statistics. ViSpeak-Bench contains 7 subtasks with 1,000 videos and 1,000 QA pairs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.2.1">
<tr class="ltx_tr" id="S3.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.1.1">Subtask</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.1.2">Data Source</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.1.3">Data Type</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.1.4">#Samples</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.1.5">Ratio</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.2.1">Visual Wake-Up</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.2">self-collected data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.3">online</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.4">1k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.2.5">0.03</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.3.1" rowspan="2"><span class="ltx_text" id="S3.T3.2.1.3.1.1">Anomaly Warning</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.2">OOPS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.3">online</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.4">3k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.3.5">0.09</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.4">
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.1">HIVAU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.2">online</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.3">3k</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.4.4">0.09</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.5.1" rowspan="6"><span class="ltx_text" id="S3.T3.2.1.5.1.1">Gesture Understanding</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.5.2">Jester <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.5.3">online</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.5.4">4k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.5.5">0.12</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.6">
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.1">self-collected data</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.2">online</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.3">4k</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.6.4">0.12</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.7">
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.1">Social-IQ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.2">offline</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.3">2k</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.7.4">0.06</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.8">
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.8.1">IntentQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.8.2">offline</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.8.3">5k</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.8.4">0.15</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.9">
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.9.1">SocialIQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.9.2">offline</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.9.3">0.5k</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.9.4">0.02</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.10">
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.10.1">self-collected data</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.10.2">offline</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.10.3">1k</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.10.4">0.03</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.11.1">Visual Reference</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.11.2">self-collected data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.11.3">online</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.11.4">5k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.11.5">0.15</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.12.1">Visual Interruption</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.12.2">self-collected data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.12.3">online</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.12.4">1k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.12.5">0.03</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.13.1" rowspan="2"><span class="ltx_text" id="S3.T3.2.1.13.1.1">Humor Reaction</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.13.2">FunQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.13.3">online</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.13.4">2k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.13.5">0.06</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.14">
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.14.1">SMILE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.14.2">offline</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.14.3">1k</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.1.14.4">0.03</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.2.1.15.1">Visual Termination</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.15.2">self-collected data</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.15.3">online</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.15.4">1k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.1.15.5">0.03</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.1.16" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T3.2.1.16.1"><span class="ltx_text" id="S3.T3.2.1.16.1.1" style="background-color:#F4EDFC;">ViSpeak-Instruct</span></td>
<td class="ltx_td ltx_border_b ltx_border_t" id="S3.T3.2.1.16.2"></td>
<td class="ltx_td ltx_border_b ltx_border_t" id="S3.T3.2.1.16.3"></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T3.2.1.16.4"><span class="ltx_text" id="S3.T3.2.1.16.4.1" style="background-color:#F4EDFC;">34k</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S3.T3.2.1.16.5"><span class="ltx_text" id="S3.T3.2.1.16.5.1" style="background-color:#F4EDFC;">1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the distribution of samples across different subtasks within the ViSpeak-Instruct dataset.  It shows how many samples are dedicated to each of the seven subtasks (Visual Wake-Up, Anomaly Warning, Gesture Understanding, Visual Reference, Visual Interruption, Humor Reaction, and Visual Termination) and indicates whether the data source is self-collected or from other online/offline datasets. The ratio of samples for each subtask relative to the overall dataset is also provided. This information is crucial for understanding the composition and balance of the dataset used to train and evaluate the ViSpeak model.
> <details>
> <summary>read the caption</summary>
> Table 3: Task and sample distribution in ViSpeak-Instruct.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.2.1">
<tr class="ltx_tr" id="S4.T4.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T4.2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T4.2.1.1.2.1">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.3" rowspan="2"><span class="ltx_text" id="S4.T4.2.1.1.3.1">Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.1.4" rowspan="2"><span class="ltx_text" id="S4.T4.2.1.1.4.1">Omni</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="11" id="S4.T4.2.1.1.5">Real-Time Visual Understanding</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="5" id="S4.T4.2.1.1.6">Omni-Source Understanding</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="5" id="S4.T4.2.1.1.7">Contextual Understanding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.1.8" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.1.8.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.2">
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.1">OP</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.2">CR</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.3">CS</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.4">ATP</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.5">EU</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.6">TR</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.7">PR</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.8">SU</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.9">ACP</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.10">CT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.2.11"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.11.1">All</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.12">ER</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.13">SCU</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.14">SD</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.15">MA</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.2.16"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.16.1">All</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.17">ACU</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.18">MCU</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.19">SQA</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.2.20">PO</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.2.21"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.2.21.1">All</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="26" id="S4.T4.2.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.3.1.1" style="background-color:#E6E6E6;">Proprietary MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.1.4.1">Gemini 1.5 pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.4.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.5">83.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.6">77.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.7">89.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.8">81.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.9">79.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.10">83.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.11">83.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.12">60.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.13">74.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.14">49.22</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.4.15">77.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.16">52.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.17">50.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.18">80.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.19">87.60</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.4.20">67.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.21">52.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.22">42.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.23">59.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.24">45.10</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.4.25">51.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.4.26">70.26</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.5.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.5.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.5">80.66</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.6">76.98</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.7">86.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.8">73.81</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.9">75.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.10">85.48</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.11">75.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.12">70.66</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.13">65.99</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.14">43.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.5.15">74.54</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.16">53.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.17">32.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.18">49.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.19">68.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.5.20">50.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.21">50.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.22">42.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.23">52.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.24">56.86</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.5.25">49.06</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.5.26">64.31</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.6">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.6.1">Claude-3.5-sonnet</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.6.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.5">82.45</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.6">73.77</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.7">82.43</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.8">82.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.9">76.39</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.10">85.56</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.11">61.68</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.12">60.73</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.13">67.88</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.14">47.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.6.15">74.04</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.16">39.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.17">35.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.18">34.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.19">56.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.6.20">41.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.21">36.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.22">43.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.23">34.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.24">64.71</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.6.25">39.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.6.26">60.06</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.7" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="26" id="S4.T4.2.1.7.1"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.7.1.1" style="background-color:#E6E6E6;">Open-Source Video MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.2.1.8.1">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.3">32</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.8.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.5">82.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.6">77.34</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.7">83.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.8">83.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.9">72.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.10">74.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.11">73.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.12">68.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.13">71.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.14">41.97</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.8.15">74.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.16">41.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.17">26.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.18">43.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.19">52.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.8.20">40.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.21">35.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.22">30.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.23">30.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.24">29.55</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.2.1.8.25">31.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.2.1.8.26">58.56</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.9">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.9.1">MiniCPM-V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.3">32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.9.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.5">78.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.6">71.88</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.7">84.18</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.8">83.99</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.9">75.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.10">75.39</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.11">72.22</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.12">56.50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.13">67.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.14">47.15</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.9.15">72.43</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.16">42.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.17">27.71</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.18">40.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.19">50.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.9.20">40.23</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.21">37.50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.22">27.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.23">40.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.24">22.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.9.25">34.09</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.9.26">57.80</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.10">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.10.1">InternVL-V2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.3">16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.10.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.5">73.84</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.6">65.63</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.7">78.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.8">82.03</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.9">71.43</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.10">72.90</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.11">73.15</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.12">63.01</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.13">65.44</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.14">42.49</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.10.15">70.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.16">44.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.17">28.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.18">47.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.19">50.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.10.20">42.73</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.21">35.08</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.22">27.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.23">42.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.24">40.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.10.25">35.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.10.26">57.28</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.11">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.11.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.3">1 fps</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.11.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.5">75.75</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.6">79.69</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.7">76.58</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.8">79.08</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.9">74.53</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.10">75.08</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.11">74.07</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.12">65.85</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.13">65.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.14">41.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.11.15">71.15</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.16">40.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.17">25.30</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.18">41.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.19">55.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.11.20">40.73</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.21">34.27</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.22">26.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.23">44.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.24">22.73</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.11.25">34.24</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.11.26">57.20</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.12">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.12.1">LLaVA-Next-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.2">32B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.3">64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.12.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.5">80.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.6">71.09</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.7">80.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.8">80.72</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.9">71.43</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.10">73.21</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.11">62.96</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.12">59.35</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.13">63.17</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.14">36.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.12.15">69.83</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.16">41.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.17">24.50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.18">44.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.19">56.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.12.20">41.73</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.21">34.27</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.22">28.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.23">44.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.24">18.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.12.25">34.58</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.12.26">56.73</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.13">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.13.1">Video-LLaMA2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.3">32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.13.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.5">59.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.6">60.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.7">62.97</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.8">60.46</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.9">54.66</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.10">46.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.11">41.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.12">46.75</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.13">48.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.14">34.72</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.13.15">52.58</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.16">43.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.17">23.29</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.18">35.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.19">41.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.13.20">35.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.21">28.23</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.22">26.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.23">21.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.24">0.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.13.25">23.54</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.13.26">43.30</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.14">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.14.1">Ola <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.3">64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.14.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.5">61.58</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.6">71.09</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.7">67.19</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.8">62.09</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.9">62.73</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.10">51.71</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.11">60.19</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.12">52.03</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.13">53.82</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.14">17.62</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.14.15">56.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.16">40.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.17">27.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.18">23.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.19">43.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.14.20">33.70</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.21">30.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.22">22.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.23">31.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.24">11.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.14.25">23.90</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.14.26">44.00</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.15">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.15.1">VITA 1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.3">16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.15.4">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.5">74.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.6">78.13</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.7">80.76</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.8">77.12</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.9">73.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.10">64.17</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.11">66.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.12">58.54</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.13">66.57</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.14">33.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.15.15">68.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.16">44.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.17">26.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.18">42.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.19">56.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.15.20">42.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.21">31.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.22">32.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.23">36.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.24">23.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.15.25">31.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.15.26">54.27</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.16" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="26" id="S4.T4.2.1.16.1"><span class="ltx_text ltx_font_bold" id="S4.T4.2.1.16.1.1" style="background-color:#E6E6E6;">Open-Source Streaming MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.17">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.17.1">Flash-VStream <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.17.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.5">25.89</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.6">43.57</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.7">24.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.8">23.87</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.9">27.33</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.10">13.08</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.11">18.52</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.12">25.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.13">23.87</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.14">48.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.17.15">23.23</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.16">25.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.17">24.90</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.18">25.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.19">28.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.17.20">26.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.21">24.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.22">25.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.23">26.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.24">1.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.17.25">24.12</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.17.26">24.04</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.18">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.18.1">VideoLLM-online <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.3">2 fps</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.18.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.5">39.07</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.6">40.06</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.7">34.49</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.8">31.05</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.9">45.96</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.10">32.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.11">31.48</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.12">34.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.13">42.49</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.14">27.89</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.18.15">35.99</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.16">31.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.17">26.51</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.18">24.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.19">32.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.18.20">28.45</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.21">24.19</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.22">29.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.23">30.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.24">3.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.18.25">26.55</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.18.26">32.48</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.19">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.19.1">IXC2.5-OL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.3">64</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.19.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.5">82.83</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.6">73.77</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.7">78.66</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.8">82.95</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.9">72.50</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.10">76.01</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.11">61.11</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.12">60.67</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.13">71.59</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.14">58.85</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.19.15">73.79</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.16">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.17">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.18">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.19">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.19.20">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.21">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.22">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.23">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.24">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.19.25">-</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.19.26">-</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.20">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.20.1">Dispider <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.3">1 fps</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.20.4">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.5">74.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.6">75.53</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.7">74.10</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.8">73.08</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.9">74.44</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.10">59.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.11">76.14</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.12">62.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.13">62.16</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.14">45.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.20.15">67.63</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.16">35.46</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.17">25.26</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.18">38.57</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.19">43.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.20.20">35.66</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.21">39.62</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.22">27.65</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.23">34.80</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.24">25.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.20.25">33.61</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.20.26">53.12</td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.21" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left" id="S4.T4.2.1.21.1"><span class="ltx_text" id="S4.T4.2.1.21.1.1" style="background-color:#F4EDFC;">ViSpeak (Ours, s2)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.2"><span class="ltx_text" id="S4.T4.2.1.21.2.1" style="background-color:#F4EDFC;">7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.3"><span class="ltx_text" id="S4.T4.2.1.21.3.1" style="background-color:#F4EDFC;">1 fps</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.21.4"><span class="ltx_text" id="S4.T4.2.1.21.4.1" style="background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.5"><span class="ltx_text" id="S4.T4.2.1.21.5.1" style="background-color:#F4EDFC;">79.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.6"><span class="ltx_text" id="S4.T4.2.1.21.6.1" style="background-color:#F4EDFC;">88.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.7"><span class="ltx_text" id="S4.T4.2.1.21.7.1" style="background-color:#F4EDFC;">83.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.8"><span class="ltx_text" id="S4.T4.2.1.21.8.1" style="background-color:#F4EDFC;">81.05</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.9"><span class="ltx_text" id="S4.T4.2.1.21.9.1" style="background-color:#F4EDFC;">76.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.10"><span class="ltx_text" id="S4.T4.2.1.21.10.1" style="background-color:#F4EDFC;">75.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.11"><span class="ltx_text" id="S4.T4.2.1.21.11.1" style="background-color:#F4EDFC;">70.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.12"><span class="ltx_text" id="S4.T4.2.1.21.12.1" style="background-color:#F4EDFC;">65.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.13"><span class="ltx_text" id="S4.T4.2.1.21.13.1" style="background-color:#F4EDFC;">77.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.14"><span class="ltx_text" id="S4.T4.2.1.21.14.1" style="background-color:#F4EDFC;">34.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.21.15"><span class="ltx_text" id="S4.T4.2.1.21.15.1" style="background-color:#F4EDFC;">74.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.16"><span class="ltx_text" id="S4.T4.2.1.21.16.1" style="background-color:#F4EDFC;">42.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.17"><span class="ltx_text" id="S4.T4.2.1.21.17.1" style="background-color:#F4EDFC;">35.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.18"><span class="ltx_text" id="S4.T4.2.1.21.18.1" style="background-color:#F4EDFC;">61.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.19"><span class="ltx_text" id="S4.T4.2.1.21.19.1" style="background-color:#F4EDFC;">74.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.21.20"><span class="ltx_text" id="S4.T4.2.1.21.20.1" style="background-color:#F4EDFC;">53.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.21"><span class="ltx_text" id="S4.T4.2.1.21.21.1" style="background-color:#F4EDFC;">38.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.22"><span class="ltx_text" id="S4.T4.2.1.21.22.1" style="background-color:#F4EDFC;">36.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.23"><span class="ltx_text" id="S4.T4.2.1.21.23.1" style="background-color:#F4EDFC;">44.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.24"><span class="ltx_text" id="S4.T4.2.1.21.24.1" style="background-color:#F4EDFC;">38.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.2.1.21.25"><span class="ltx_text" id="S4.T4.2.1.21.25.1" style="background-color:#F4EDFC;">39.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.1.21.26"><span class="ltx_text" id="S4.T4.2.1.21.26.1" style="background-color:#F4EDFC;">62.00</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.2.1.22" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T4.2.1.22.1"><span class="ltx_text" id="S4.T4.2.1.22.1.1" style="background-color:#F4EDFC;">ViSpeak (Ours, s3)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.2"><span class="ltx_text" id="S4.T4.2.1.22.2.1" style="background-color:#F4EDFC;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.3"><span class="ltx_text" id="S4.T4.2.1.22.3.1" style="background-color:#F4EDFC;">1 fps</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.2.1.22.4"><span class="ltx_text" id="S4.T4.2.1.22.4.1" style="background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.5"><span class="ltx_text" id="S4.T4.2.1.22.5.1" style="background-color:#F4EDFC;">79.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.6"><span class="ltx_text" id="S4.T4.2.1.22.6.1" style="background-color:#F4EDFC;">71.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.7"><span class="ltx_text" id="S4.T4.2.1.22.7.1" style="background-color:#F4EDFC;">81.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.8"><span class="ltx_text" id="S4.T4.2.1.22.8.1" style="background-color:#F4EDFC;">78.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.9"><span class="ltx_text" id="S4.T4.2.1.22.9.1" style="background-color:#F4EDFC;">74.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.10"><span class="ltx_text" id="S4.T4.2.1.22.10.1" style="background-color:#F4EDFC;">70.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.11"><span class="ltx_text" id="S4.T4.2.1.22.11.1" style="background-color:#F4EDFC;">63.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.12"><span class="ltx_text" id="S4.T4.2.1.22.12.1" style="background-color:#F4EDFC;">64.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.13"><span class="ltx_text" id="S4.T4.2.1.22.13.1" style="background-color:#F4EDFC;">71.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.14"><span class="ltx_text" id="S4.T4.2.1.22.14.1" style="background-color:#F4EDFC;">27.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.2.1.22.15"><span class="ltx_text" id="S4.T4.2.1.22.15.1" style="background-color:#F4EDFC;">70.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.16"><span class="ltx_text" id="S4.T4.2.1.22.16.1" style="background-color:#F4EDFC;">47.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.17"><span class="ltx_text" id="S4.T4.2.1.22.17.1" style="background-color:#F4EDFC;">56.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.18"><span class="ltx_text" id="S4.T4.2.1.22.18.1" style="background-color:#F4EDFC;">61.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.19"><span class="ltx_text" id="S4.T4.2.1.22.19.1" style="background-color:#F4EDFC;">81.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.2.1.22.20"><span class="ltx_text" id="S4.T4.2.1.22.20.1" style="background-color:#F4EDFC;">61.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.21"><span class="ltx_text" id="S4.T4.2.1.22.21.1" style="background-color:#F4EDFC;">49.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.22"><span class="ltx_text" id="S4.T4.2.1.22.22.1" style="background-color:#F4EDFC;">36.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.23"><span class="ltx_text" id="S4.T4.2.1.22.23.1" style="background-color:#F4EDFC;">39.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.24"><span class="ltx_text" id="S4.T4.2.1.22.24.1" style="background-color:#F4EDFC;">50.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T4.2.1.22.25"><span class="ltx_text" id="S4.T4.2.1.22.25.1" style="background-color:#F4EDFC;">43.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.2.1.22.26"><span class="ltx_text" id="S4.T4.2.1.22.26.1" style="background-color:#F4EDFC;">62.58</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the ViSpeak model on the StreamingBench benchmark [29], a widely used evaluation set for assessing real-time visual understanding capabilities. The results shown are specifically for the ViSpeak model after undergoing both the second and third stages of fine-tuning.  This allows for a comparison of the model's performance at different stages of training and highlights improvements gained through subsequent training phases.  The table enables an assessment of ViSpeak's performance relative to other models on various subtasks within the StreamingBench, including aspects of omni-source understanding and contextual understanding.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance on StreamingBench [29]. Results for ViSpeak trained after the second and third stage are reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.2.1">
<tr class="ltx_tr" id="S4.T5.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T5.2.1.1.2.1">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.1.3" rowspan="2"><span class="ltx_text" id="S4.T5.2.1.1.3.1">Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="7" id="S4.T5.2.1.1.4">Real-Time Visual Perception</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S4.T5.2.1.1.5">Backward Tracing</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S4.T5.2.1.1.6">Forward Active Responding</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.1.7" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.1.7.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.2">
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.1">OCR</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.2">ACR</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.3">ATR</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.4">STU</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.5">FPD</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.6">OJR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.2.7.1">Avg.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.8">EPM</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.9">ASI</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.10">HLD</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.2.11"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.2.11.1">Avg.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.12">REC</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.13">SSR</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.2.14">CRR</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.2.15"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.2.15.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="19" id="S4.T5.2.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.3.1.1" style="background-color:#E6E6E6;">Proprietary MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.1.4.1">Gemini 1.5 pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.4.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.4">87.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.5">66.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.6">80.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.7">54.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.8">68.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.9">67.39</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.4.10">70.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.11">68.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.12">75.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.13">52.69</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.4.14">62.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.15">35.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.16">74.24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.17">61.67</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.4.18">57.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.4.19">65.25</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.5">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.5.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.5.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.4">69.13</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.5">65.14</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.6">65.52</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.7">50.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.8">68.32</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.9">63.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.5.10">63.63</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.11">49.83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.12">70.95</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.13">55.38</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.5.14">58.72</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.15">27.58</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.16">73.21</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.17">59.40</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.5.18">53.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.5.19">58.58</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="19" id="S4.T5.2.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.6.1.1" style="background-color:#E6E6E6;">Open-Source Video MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.1.7.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.2">72B</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.7.3">64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.4">72.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.5">56.88</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.6">77.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.7">52.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.8">74.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.9">61.41</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.7.10">65.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.11">51.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.12">73.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.13">63.44</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.7.14">62.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.15">37.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.16">60.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.17">45.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.1.7.18">47.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.1.7.19">58.76</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.8">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.8.1">Qwen2-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.8.3">64</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.4">69.13</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.5">53.21</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.6">63.79</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.7">50.56</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.8">66.34</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.9">60.87</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.8.10">60.65</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.11">44.44</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.12">66.89</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.13">34.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.8.14">48.58</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.15">30.09</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.16">65.66</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.17">50.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.8.18">48.86</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.8.19">52.70</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.9">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.9.1">LLaVA-Next-Video <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.9.3">64</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.4">69.80</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.5">59.63</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.6">66.38</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.7">50.56</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.8">72.28</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.9">61.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.9.10">63.34</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.11">51.18</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.12">64.19</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.13">9.68</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.9.14">41.68</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.15">34.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.16">67.57</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.17">60.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.9.18">54.17</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.9.19">53.06</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.10">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.10.1">LLaVA-OneVision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.10.3">64</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.4">67.11</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.5">58.72</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.6">69.83</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.7">49.44</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.8">71.29</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.9">60.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.10.10">62.79</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.11">52.53</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.12">58.78</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.13">23.66</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.10.14">44.99</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.15">24.79</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.16">66.93</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.17">60.83</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.10.18">50.85</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.10.19">52.88</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.11">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.11.1">InternVL-V2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.11.3">16</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.4">68.46</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.5">58.72</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.6">68.97</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.7">44.94</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.8">67.33</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.9">55.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.11.10">60.73</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.11">43.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.12">61.49</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.13">27.41</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.11.14">44.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.15">25.79</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.16">57.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.17">52.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.11.18">45.42</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.11.19">50.05</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.12">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.12.1">LongVU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.12.3">1 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.4">55.70</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.5">49.54</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.6">59.48</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.7">48.31</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.8">68.32</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.9">63.04</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.12.10">57.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.11">43.10</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.12">66.22</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.13">9.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.12.14">39.49</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.15">16.62</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.16">69.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.17">60.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.12.18">48.54</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.12.19">48.48</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.13">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.13.1">VITA 1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.13.3">16</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.4">74.50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.5">60.55</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.6">70.69</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.7">53.37</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.8">63.37</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.9">58.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.13.10">63.53</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.11">46.13</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.12">54.05</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.13">24.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.13.14">41.46</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.15">37.54</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.16">60.73</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.17">62.08</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.13.18">53.45</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.13.19">55.49</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.14" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="19" id="S4.T5.2.1.14.1"><span class="ltx_text ltx_font_bold" id="S4.T5.2.1.14.1.1" style="background-color:#E6E6E6;">Open-Source Streaming MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.15">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.15.1">Flash-VStream <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.2">7B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.15.3">1 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.4">25.50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.5">32.11</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.6">29.31</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.7">33.71</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.8">29.70</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.9">28.80</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.15.10">29.86</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.11">36.36</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.12">33.78</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.13">5.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.15.14">25.35</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.15">5.44</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.16">67.25</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.17">60.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.15.18">44.23</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.15.19">33.15</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.16">
<td class="ltx_td ltx_align_left" id="S4.T5.2.1.16.1">VideoLLM-online <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.16.3">2 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.4">8.05</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.5">23.85</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.6">12.07</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.7">14.04</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.8">45.54</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.9">21.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.16.10">20.79</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.11">22.22</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.12">18.80</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.13">12.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.16.14">17.73</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.15">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.16">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.17">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.1.16.18">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.1.16.19">-</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.1.17" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T5.2.1.17.1"><span class="ltx_text" id="S4.T5.2.1.17.1.1" style="background-color:#F4EDFC;">ViSpeak (Ours, s2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.2"><span class="ltx_text" id="S4.T5.2.1.17.2.1" style="background-color:#F4EDFC;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.2.1.17.3"><span class="ltx_text" id="S4.T5.2.1.17.3.1" style="background-color:#F4EDFC;">1 fps</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.4"><span class="ltx_text" id="S4.T5.2.1.17.4.1" style="background-color:#F4EDFC;">75.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.5"><span class="ltx_text" id="S4.T5.2.1.17.5.1" style="background-color:#F4EDFC;">58.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.6"><span class="ltx_text" id="S4.T5.2.1.17.6.1" style="background-color:#F4EDFC;">71.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.7"><span class="ltx_text" id="S4.T5.2.1.17.7.1" style="background-color:#F4EDFC;">51.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.8"><span class="ltx_text" id="S4.T5.2.1.17.8.1" style="background-color:#F4EDFC;">74.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.9"><span class="ltx_text" id="S4.T5.2.1.17.9.1" style="background-color:#F4EDFC;">66.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.2.1.17.10"><span class="ltx_text" id="S4.T5.2.1.17.10.1" style="background-color:#F4EDFC;">66.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.11"><span class="ltx_text" id="S4.T5.2.1.17.11.1" style="background-color:#F4EDFC;">59.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.12"><span class="ltx_text" id="S4.T5.2.1.17.12.1" style="background-color:#F4EDFC;">48.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.13"><span class="ltx_text" id="S4.T5.2.1.17.13.1" style="background-color:#F4EDFC;">63.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.2.1.17.14"><span class="ltx_text" id="S4.T5.2.1.17.14.1" style="background-color:#F4EDFC;">57.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.15"><span class="ltx_text" id="S4.T5.2.1.17.15.1" style="background-color:#F4EDFC;">33.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.16"><span class="ltx_text" id="S4.T5.2.1.17.16.1" style="background-color:#F4EDFC;">68.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.17"><span class="ltx_text" id="S4.T5.2.1.17.17.1" style="background-color:#F4EDFC;">60.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.2.1.17.18"><span class="ltx_text" id="S4.T5.2.1.17.18.1" style="background-color:#F4EDFC;">54.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.2.1.17.19"><span class="ltx_text" id="S4.T5.2.1.17.19.1" style="background-color:#F4EDFC;">61.08</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various large multi-modal language models (MLLMs) on the OVO-Bench benchmark [27].  OVO-Bench assesses streaming video understanding capabilities focusing on backward tracing, real-time visual perception, and forward active responding. The table highlights key performance metrics for each model, with a focus on ViSpeak's results after the second stage of its three-stage fine-tuning process. This allows for evaluation of ViSpeak's performance compared to other state-of-the-art models in terms of its streaming video understanding capabilities.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance of various MLLMs on OVO-Bench [27]. Results for ViSpeak trained after the second stage are reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.2.1">
<tr class="ltx_tr" id="S4.T6.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.2.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.1.2" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.2.1">Params</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.1.3" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.3.1">Frames</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.1.4" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.4.1">Omni</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.1.5" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.5.1">Streaming</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="7" id="S4.T6.2.1.1.6">Time Accuracy (%)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="8" id="S4.T6.2.1.1.7">Text Score</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.1.8" rowspan="2"><span class="ltx_text" id="S4.T6.2.1.1.8.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.2">
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.1">AW</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.2">VI</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.3">HR</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.4">VW</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.5">VT</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.6">GU</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T6.2.1.2.7.1">All</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.8">VR</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.9">AW</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.10">VI</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.11">HR</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.12">VW</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.13">VT</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.2.14">GU</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.2.15"><span class="ltx_text ltx_font_bold" id="S4.T6.2.1.2.15.1">All</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T6.2.1.3.1">Human (Avg)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.3.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.6">70.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.7">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.8">90.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.9">92.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.10">96.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.11">98.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.3.12">91.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.13">4.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.14">2.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.15">4.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.16">3.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.17">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.18">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.19">2.85</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.2.1.3.20">3.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.1.3.21">3.69</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.4">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.4.1">Human (Max)</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.4.5">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.6">70.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.7">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.8">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.9">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.10">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.11">100.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.4.12">95.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.13">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.14">2.71</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.15">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.16">3.62</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.17">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.18">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.19">3.19</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.4.20">4.22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.4.21">4.01</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.5" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="21" id="S4.T6.2.1.5.1"><span class="ltx_text ltx_font_bold" id="S4.T6.2.1.5.1.1" style="background-color:#E6E6E6;">Proprietary MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.6">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.6.1">Gemini 1.5 pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.6.5">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.6">46.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.7">60.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.8">85.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.9">84.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.10">48.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.11">97.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.6.12">70.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.13">3.03</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.14">2.34</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.15">2.93</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.16">1.36</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.17">4.66</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.18">4.68</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.19">2.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.6.20">3.01</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.6.21">2.19</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.7">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.7.1">GPT-4o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.2">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.3">-</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.7.5">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.6">48.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.7">82.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.8">96.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.9">99.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.10">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.11">99.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.7.12">87.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.13">3.18</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.14">2.27</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.15">3.53</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.16">1.71</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.17">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.18">4.98</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.19">2.22</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.7.20">3.27</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.7.21">2.99</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.8" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="21" id="S4.T6.2.1.8.1"><span class="ltx_text ltx_font_bold" id="S4.T6.2.1.8.1.1" style="background-color:#E6E6E6;">Open-Source Video MLLMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.9">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.9.1">InternVL-2.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.2">8B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.3">16</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.9.5">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.6">41.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.7">55.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.8">46.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.9">96.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.10">72.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.11">99.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.9.12">68.42</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.13">2.93</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.14">2.16</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.15">3.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.16">0.74</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.17">3.05</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.18">4.81</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.19">1.26</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.9.20">2.66</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.9.21">1.98</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.10">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.10.1">Qwen2.5-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.3">1 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.10.5">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.6">42.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.7">78.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.8">31.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.9">95.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.10">85.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.11">98.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.10.12">71.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.13">2.34</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.14">2.31</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.15">2.31</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.16">1.32</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.17">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.18">3.91</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.19">1.02</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.10.20">2.60</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.10.21">2.25</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.11">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.11.1">Qwen2.5-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.2">72B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.3">1 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.11.5">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.6">44.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.7">81.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.8">77.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.9">91.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.10">91.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.11">93.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.11.12">79.58</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.13">3.15</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.14">2.64</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.15">3.36</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.16">1.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.17">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.18">5.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.19">1.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.11.20">3.09</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.11.21">2.62</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.12">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.12.1">VITA 1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.3">1 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.12.5">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.6">18.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.7">46.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.8">40.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.9">88.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.10">49.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.11">97.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.12.12">56.42</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.13">2.40</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.14">2.08</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.15">0.57</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.16">0.85</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.17">4.57</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.18">4.49</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.19">1.18</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.12.20">2.31</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.12.21">1.54</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.13">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.13.1">Ola <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.3">1 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.13.5">✗</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.6">27.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.7">67.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.8">44.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.9">89.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.10">69.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.11">98.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.13.12">65.75</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.13">2.95</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.14">1.81</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.15">2.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.16">0.55</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.17">4.71</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.18">3.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.19">1.52</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.13.20">2.55</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.13.21">1.86</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.14">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.14.1">FlashVstream <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.3">1 fps</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.14.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.6">34.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.7">16.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.8">48.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.9">75.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.10">33.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.11">99.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.14.12">50.92</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.13">1.75</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.14">1.63</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.15">1.31</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.16">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.17">4.88</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.18">4.61</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.19">0.70</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.14.20">2.22</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.14.21">1.24</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.15">
<td class="ltx_td ltx_align_left" id="S4.T6.2.1.15.1">Dispider <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.2">7B</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.3">16</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.4">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.15.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.6">38.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.7">70.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.8">44.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.9">69.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.10">100.00</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.11">99.50</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.15.12">70.17</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.13">2.50</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.14">1.75</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.15">4.06</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.16">0.91</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.17">0.61</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.18">2.49</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.19">2.07</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T6.2.1.15.20">2.06</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.1.15.21">1.63</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.1.16" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T6.2.1.16.1"><span class="ltx_text" id="S4.T6.2.1.16.1.1" style="background-color:#F4EDFC;">ViSpeak (Ours, s3)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.2"><span class="ltx_text" id="S4.T6.2.1.16.2.1" style="background-color:#F4EDFC;">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.3"><span class="ltx_text" id="S4.T6.2.1.16.3.1" style="background-color:#F4EDFC;">1 fps</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.4"><span class="ltx_text" id="S4.T6.2.1.16.4.1" style="background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T6.2.1.16.5"><span class="ltx_text" id="S4.T6.2.1.16.5.1" style="background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.6"><span class="ltx_text" id="S4.T6.2.1.16.6.1" style="background-color:#F4EDFC;">56.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.7"><span class="ltx_text" id="S4.T6.2.1.16.7.1" style="background-color:#F4EDFC;">72.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.8"><span class="ltx_text" id="S4.T6.2.1.16.8.1" style="background-color:#F4EDFC;">83.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.9"><span class="ltx_text" id="S4.T6.2.1.16.9.1" style="background-color:#F4EDFC;">93.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.10"><span class="ltx_text" id="S4.T6.2.1.16.10.1" style="background-color:#F4EDFC;">79.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.11"><span class="ltx_text" id="S4.T6.2.1.16.11.1" style="background-color:#F4EDFC;">99.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T6.2.1.16.12"><span class="ltx_text" id="S4.T6.2.1.16.12.1" style="background-color:#F4EDFC;">80.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.13"><span class="ltx_text" id="S4.T6.2.1.16.13.1" style="background-color:#F4EDFC;">3.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.14"><span class="ltx_text" id="S4.T6.2.1.16.14.1" style="background-color:#F4EDFC;">2.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.15"><span class="ltx_text" id="S4.T6.2.1.16.15.1" style="background-color:#F4EDFC;">3.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.16"><span class="ltx_text" id="S4.T6.2.1.16.16.1" style="background-color:#F4EDFC;">1.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.17"><span class="ltx_text" id="S4.T6.2.1.16.17.1" style="background-color:#F4EDFC;">4.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.18"><span class="ltx_text" id="S4.T6.2.1.16.18.1" style="background-color:#F4EDFC;">3.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.19"><span class="ltx_text" id="S4.T6.2.1.16.19.1" style="background-color:#F4EDFC;">3.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T6.2.1.16.20"><span class="ltx_text" id="S4.T6.2.1.16.20.1" style="background-color:#F4EDFC;">3.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T6.2.1.16.21"><span class="ltx_text" id="S4.T6.2.1.16.21.1" style="background-color:#F4EDFC;">2.76</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comprehensive comparison of various large multimodal language models (MLLMs) on the ViSpeak-Bench benchmark.  The table showcases the performance of different models across seven distinct subtasks of the Visual Instruction Feedback task, including Visual Wake-up, Anomaly Warning, Gesture Understanding, Visual Reference, Visual Interruption, Humor Reaction, and Visual Termination.  The results displayed are for the ViSpeak model after completing its third and final fine-tuning stage, representing a state-of-the-art (SOTA) performance on the benchmark. To establish a baseline for comparison, human evaluation is also included. Five participants, without prior training on the dataset, answered 20% of the questions randomly selected from ViSpeak-Bench.  Both the average and maximum scores from these human evaluators are reported for each subtask, providing a direct comparison to the MLLM results and highlighting the challenges inherent in the visual instruction feedback task.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance of various MLLMs on ViSpeak-Bench. Results for ViSpeak trained after the third stage are reported. For human evaluation, we invite 5 participants which are not received relevant training to answer 20% randomly selected questions and we report their average scores and the maximum scores on each subtask.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T7.2.1">
<tr class="ltx_tr" id="S5.T7.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.2.1.1.1">Method</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.1.2">MME</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.1.3">MVBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.1.4">Video-MME</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.2.1.2.1">VITA 1.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.2">2353.5 (1728.9/624.6)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.3">53.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.4">58</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.3" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T7.2.1.3.1"><span class="ltx_text" id="S5.T7.2.1.3.1.1" style="background-color:#F4EDFC;">Adaptive Sum</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.3.2"><span class="ltx_text" id="S5.T7.2.1.3.2.1" style="background-color:#F4EDFC;">2237.0 (1636.3/600.7)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.3.3"><span class="ltx_text" id="S5.T7.2.1.3.3.1" style="background-color:#F4EDFC;">54.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.3.4"><span class="ltx_text" id="S5.T7.2.1.3.4.1" style="background-color:#F4EDFC;">55</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.4">
<td class="ltx_td ltx_align_left" id="S5.T7.2.1.4.1">Linear</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.4.2">2283.4 (1685.5/597.9)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.4.3">52.95</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.4.4">56</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T7.2.1.5.1">Add</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T7.2.1.5.2">2292.8 (1691.4/601.4)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T7.2.1.5.3">54.27</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T7.2.1.5.4">55</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different methods for combining user input and model-generated output streams in a streaming video understanding model.  It compares three approaches: Adaptive Sum (weighted averaging), Linear (concatenation followed by linear transformation), and Add (direct addition). The results, measured by metrics such as MME (Multi-Modal Evaluation) and scores on MVBench and Video-MME benchmarks, help determine the optimal strategy for integrating dual streams effectively to enhance model performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation studies on input stream combination methods
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T8.4.4">
<tr class="ltx_tr" id="S5.T8.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.5.1">Exp</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.5.2">Head</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.5.3">Joint</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.4.4.5.4">Token</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.5.5">Real</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.5.6">Omni</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.5.7">Context</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.4.4.5.8">All</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.4.4.5.9">PO</td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.3">(a)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.4">LM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.2.2.2.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T8.1.1.1.1.m1.1"><semantics id="S5.T8.1.1.1.1.m1.1a"><mo id="S5.T8.1.1.1.1.m1.1.1" xref="S5.T8.1.1.1.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T8.1.1.1.1.m1.1b"><lt id="S5.T8.1.1.1.1.m1.1.1.cmml" xref="S5.T8.1.1.1.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.1.1.1.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T8.1.1.1.1.m1.1d">&lt;</annotation></semantics></math>seg<math alttext="&gt;" class="ltx_Math" display="inline" id="S5.T8.2.2.2.2.m2.1"><semantics id="S5.T8.2.2.2.2.m2.1a"><mo id="S5.T8.2.2.2.2.m2.1.1" xref="S5.T8.2.2.2.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S5.T8.2.2.2.2.m2.1b"><gt id="S5.T8.2.2.2.2.m2.1.1.cmml" xref="S5.T8.2.2.2.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.2.2.2.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S5.T8.2.2.2.2.m2.1d">&gt;</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.6" rowspan="3"><span class="ltx_text" id="S5.T8.2.2.2.6.1">73.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.7" rowspan="3"><span class="ltx_text" id="S5.T8.2.2.2.7.1">51.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.8" rowspan="3"><span class="ltx_text" id="S5.T8.2.2.2.8.1">37.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T8.2.2.2.9" rowspan="3"><span class="ltx_text" id="S5.T8.2.2.2.9.1">60.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.2.2.10">30.00</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.4">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.3">(b)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.4">inform</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.5">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.4.4.4.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T8.3.3.3.1.m1.1"><semantics id="S5.T8.3.3.3.1.m1.1a"><mo id="S5.T8.3.3.3.1.m1.1.1" xref="S5.T8.3.3.3.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T8.3.3.3.1.m1.1b"><lt id="S5.T8.3.3.3.1.m1.1.1.cmml" xref="S5.T8.3.3.3.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.3.3.3.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T8.3.3.3.1.m1.1d">&lt;</annotation></semantics></math>seg<math alttext="&gt;" class="ltx_Math" display="inline" id="S5.T8.4.4.4.2.m2.1"><semantics id="S5.T8.4.4.4.2.m2.1a"><mo id="S5.T8.4.4.4.2.m2.1.1" xref="S5.T8.4.4.4.2.m2.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S5.T8.4.4.4.2.m2.1b"><gt id="S5.T8.4.4.4.2.m2.1.1.cmml" xref="S5.T8.4.4.4.2.m2.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S5.T8.4.4.4.2.m2.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S5.T8.4.4.4.2.m2.1d">&gt;</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.4.6">34.80</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.6">
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.6.1">(c)</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.6.2">inform</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.6.3">✗</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T8.4.4.6.4">Visual</td>
<td class="ltx_td ltx_align_center" id="S5.T8.4.4.6.5">36.00</td>
</tr>
<tr class="ltx_tr" id="S5.T8.4.4.7" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T8.4.4.7.1"><span class="ltx_text" id="S5.T8.4.4.7.1.1" style="background-color:#F4EDFC;">(d)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T8.4.4.7.2"><span class="ltx_text" id="S5.T8.4.4.7.2.1" style="background-color:#F4EDFC;">inform</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T8.4.4.7.3"><span class="ltx_text" id="S5.T8.4.4.7.3.1" style="background-color:#F4EDFC;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T8.4.4.7.4"><span class="ltx_text" id="S5.T8.4.4.7.4.1" style="background-color:#F4EDFC;">Visual</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T8.4.4.7.5"><span class="ltx_text" id="S5.T8.4.4.7.5.1" style="background-color:#F4EDFC;">74.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T8.4.4.7.6"><span class="ltx_text" id="S5.T8.4.4.7.6.1" style="background-color:#F4EDFC;">53.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T8.4.4.7.7"><span class="ltx_text" id="S5.T8.4.4.7.7.1" style="background-color:#F4EDFC;">39.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S5.T8.4.4.7.8"><span class="ltx_text" id="S5.T8.4.4.7.8.1" style="background-color:#F4EDFC;">62.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S5.T8.4.4.7.9"><span class="ltx_text" id="S5.T8.4.4.7.9.1" style="background-color:#F4EDFC;">38.80</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the design of visual proactive speaking control within a streaming video understanding model.  The table presents results from experiments on the StreamingBench benchmark, comparing different approaches to controlling when the model speaks based on visual cues.  Specifically, it analyzes the impact of using a language modeling head versus an informative head for prediction, whether the head is jointly fine-tuned with the large language model (LLM), and which token (e.g., visual segment token, end-of-segment token) serves as input for the prediction mechanism. The metrics reported likely include performance scores across various sub-tasks within the StreamingBench.
> <details>
> <summary>read the caption</summary>
> Table 8: Ablation studies on the design of visual proactive speaking control. Performances on StreamingBench are reported. ‘Head’ denotes using language modeling head or informative head for prediction. ‘Joint’ denotes whether the head is finetuned with LLM. ‘Token’ means which token is used for prediction.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T9.2.1">
<tr class="ltx_tr" id="S5.T9.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T9.2.1.1.1">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.1.2">HR (Text Score)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.1.3">GU (Text Score)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.1.4">Overall</td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.2" style="background-color:#F4EDFC;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T9.2.1.2.1"><span class="ltx_text" id="S5.T9.2.1.2.1.1" style="background-color:#F4EDFC;">ViSpeak-Instruct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.2"><span class="ltx_text" id="S5.T9.2.1.2.2.1" style="background-color:#F4EDFC;">1.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.3"><span class="ltx_text" id="S5.T9.2.1.2.3.1" style="background-color:#F4EDFC;">3.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.4"><span class="ltx_text" id="S5.T9.2.1.2.4.1" style="background-color:#F4EDFC;">2.76</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_b" id="S5.T9.2.1.3.1">w/o offline data</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2">1.02</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.3">3.17</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.4">2.70</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of offline data on the ViSpeak-Instruct dataset.  Specifically, it shows how the performance of the ViSpeak model changes on the ViSpeak-Bench benchmark when trained with and without offline data. The metrics reported likely include scores for various subtasks within the ViSpeak-Bench (such as gesture understanding, anomaly warning, etc.). Comparing these scores reveals the contribution of offline data to the model's overall performance, particularly highlighting any improvement or decline in specific areas.
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation studies on the offline data in ViSpeak-Instruct. Performance on ViSpeak-Bench are reported.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T10.2.1">
<tr class="ltx_tr" id="S5.T10.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T10.2.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.1.2">MME</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.1.3">MVBench</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T10.2.1.1.4">Video-MME</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T10.2.1.1.5">StreamingBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.1.6">ViSpeak-Bench</td>
</tr>
<tr class="ltx_tr" id="S5.T10.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T10.2.1.2.1">ViSpeak (s1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.2" style="background-color:#F4EDFC;"><span class="ltx_text" id="S5.T10.2.1.2.2.1" style="background-color:#F4EDFC;">2237.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.3" style="background-color:#F4EDFC;"><span class="ltx_text" id="S5.T10.2.1.2.3.1" style="background-color:#F4EDFC;">54.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T10.2.1.2.4" style="background-color:#F4EDFC;"><span class="ltx_text" id="S5.T10.2.1.2.4.1" style="background-color:#F4EDFC;">55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T10.2.1.2.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T10.2.1.2.6">-</td>
</tr>
<tr class="ltx_tr" id="S5.T10.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T10.2.1.3.1">ViSpeak (s2)</td>
<td class="ltx_td ltx_align_center" id="S5.T10.2.1.3.2">2051.1</td>
<td class="ltx_td ltx_align_center" id="S5.T10.2.1.3.3">49.53</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T10.2.1.3.4">58</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T10.2.1.3.5" style="background-color:#F4EDFC;"><span class="ltx_text" id="S5.T10.2.1.3.5.1" style="background-color:#F4EDFC;">62.00</span></td>
<td class="ltx_td ltx_align_center" id="S5.T10.2.1.3.6">-</td>
</tr>
<tr class="ltx_tr" id="S5.T10.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S5.T10.2.1.4.1">ViSpeak (s3)</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T10.2.1.4.2">2181.8</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T10.2.1.4.3">53.97</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T10.2.1.4.4">60</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S5.T10.2.1.4.5" style="background-color:#F4EDFC;"><span class="ltx_text" id="S5.T10.2.1.4.5.1" style="background-color:#F4EDFC;">62.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T10.2.1.4.6" style="background-color:#F4EDFC;"><span class="ltx_text" id="S5.T10.2.1.4.6.1" style="background-color:#F4EDFC;">2.76</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the ViSpeak model's performance across three training stages on various benchmarks.  It shows the model's performance on StreamingBench, MVBench, Video-MME, and ViSpeak-Bench, highlighting how performance improves with each subsequent training stage. The results for ViSpeak in the second and third training stages are directly compared to the performance of the model in the first training stage as well as other models mentioned in the paper.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance on different benchmarks across different training stages. Results in purple are reported in above tables.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S7.T11.2">
<tr class="ltx_tr" id="S7.T11.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T11.2.1.1">Datasets</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T11.2.1.2">License</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S7.T11.2.2.1">OOPS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S7.T11.2.2.2">CC BY-NC-SA 4.0</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T11.2.3.1">FunQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S7.T11.2.3.2">CC BY-NC-SA 4.0</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T11.2.4.1">SocialIQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S7.T11.2.4.2">MIT</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T11.2.5.1">HIVAU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S7.T11.2.5.2">MIT</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T11.2.6.1">Social-IQ <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S7.T11.2.6.2">MIT</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T11.2.7.1">IntentQA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S7.T11.2.7.2">N/A</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S7.T11.2.8.1">Jester <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="S7.T11.2.8.2">N/A</td>
</tr>
<tr class="ltx_tr" id="S7.T11.2.9">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S7.T11.2.9.1">SMILE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12769v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S7.T11.2.9.2">N/A</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the licenses associated with the source datasets used in the creation of the ViSpeak-Bench and ViSpeak-Instruct datasets.  It clarifies the usage rights for each dataset, indicating whether they are licensed under Creative Commons (CC BY-NC-SA 4.0), MIT License, or have no specified license (N/A). This information is crucial for understanding the permissible uses and restrictions of the data included in the ViSpeak project.
> <details>
> <summary>read the caption</summary>
> Table 11: License of source datasets in ViSpeak-Bench and ViSpeak-Instruct.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12769/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12769/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}