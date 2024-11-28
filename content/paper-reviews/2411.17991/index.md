---
title: "VideoLLM Knows When to Speak: Enhancing Time-Sensitive Video Comprehension with Video-Text Duet Interaction Format"
summary: "VideoLLM's interaction format is revolutionized by the novel Video-Text Duet, enabling real-time, time-sensitive video comprehension with significantly improved performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2024-11-27
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.17991 {{< /keyword >}}
{{< keyword icon="writer" >}} Yueqian Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.17991" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.17991" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/videollm-knows-when-to-speak-enhancing-time" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.17991/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current VideoLLMs struggle with time-sensitive tasks and real-time interactions due to their reliance on processing the entire video before generating responses. This limits their use in dynamic situations like live video analysis.  Existing interaction formats also hinder performance on tasks requiring precise video segment localization. 

This research introduces a new interaction paradigm called the **Video-Text Duet**, where videos play continuously, and both the user and model insert text messages during playback. This design allows for **real-time responses** and addresses the limitations of existing methods. The paper also introduces a new dataset, **MMDuetIT**, for training VideoLLMs within this new format, leading to significant improvements in time-sensitive tasks, such as temporal video grounding and highlight detection.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A new video-text duet interaction format enhances real-time video comprehension. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The MMDuet model demonstrates significant performance gains on time-sensitive video tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The MMDuetIT dataset facilitates training VideoLLMs for the video-text duet interaction format. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses limitations of existing video large language models (VideoLLMs) in handling time-sensitive tasks and real-time interactions.  By introducing a novel **video-text duet interaction format** and a new dataset, it opens up new avenues for improving VideoLLM performance and expands their applicability to real-world scenarios like live-streaming comprehension and surveillance video analysis.

------
#### Visual Insights



![](https://arxiv.org/html/2411.17991/x1.png)

> 🔼 This figure illustrates the difference between the traditional 'Whole Video Interaction Format' and the novel 'Video-Text Duet Interaction Format' proposed in the paper.  In the Whole Video format, the user provides a text query and the entire video as input at once. The model processes this information and generates a single response after the input is complete.  This approach is unsuitable for time-sensitive video comprehension tasks, real-time scenarios (like live streams), and long videos. In contrast, the Video-Text Duet format involves the continuous playback of a video while both the user and the model can insert text messages at any point during playback. The video continues to play after each text response, mimicking a musical duet.  This interactive approach is designed to handle real-time responses, time-sensitive tasks, and lengthy video content.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example of the common Whole Video Interaction Format and our Video-Text Duet Interaction Format.
> </details>





{{< table-caption >}}
|                     | num examples | answers per video | words per ques./ans. | video seg. len (sec) |
| :------------------ | :------------ | :----------------- | :------------------ | :------------------ |
| Train                | 36834         | 2.96               | 7.75/12.17           | 4.22                 |
| Test                 | 2000          | 3.04               | 7.77/12.17           | 4.28                 |{{< /table-caption >}}

> 🔼 This table presents a statistical overview of the Shot2story-MAGQA-39k dataset, which is used for training and evaluating the Multi-Answer Grounded Video Question Answering (MAGQA) task.  The dataset is built upon the Shot2Story dataset. It shows the number of training and testing samples, the average number of answers per video, and the average length (in words and seconds) of the questions and answers, and video segments.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset statistics of Shot2story-MAGQA-39k.
> </details>





### In-depth insights


#### VideoLLM Interaction
The concept of 'VideoLLM Interaction' centers on **how users engage with video large language models (VideoLLMs)**.  The paper critiques the prevalent "whole video" interaction format, where the entire video and a query are input at once, hindering real-time responses and limiting application in time-sensitive contexts like live-streaming.  It proposes a novel **"video-text duet" interaction**, where the video plays continuously, and both user and model can insert text messages at any point. This iterative approach allows for **real-time feedback and context-aware responses**, improving the model's ability to handle time-sensitive tasks like temporal grounding or highlight detection. The effectiveness of this new format is demonstrated via a new dataset (MMDuetIT) and a benchmark task (MAGQA), highlighting significant performance gains over existing VideoLLM methods. The key innovation lies in its dynamic, turn-based interaction that mirrors human-like conversations, aligning the model's responses directly with specific video segments, rather than processing the entire video beforehand.

#### MMDuet Dataset
The hypothetical "MMDuet Dataset" would be **crucial** for training and evaluating the proposed VideoLLM.  Its effectiveness hinges on how well it reflects real-world video-text interactions.  The dataset needs to include diverse video types, lengths, and qualities and contain rich, detailed annotations that go beyond simple timestamps.  **Careful design** of the video-text pairings and the annotation scheme is crucial.  For example, ensuring that the text annotations correctly align with the visual events in time would be very important.   Furthermore, the dataset should incorporate **varied interaction styles** to mimic user behavior accurately.  **Sufficient size** is also critical for ensuring the model's robustness and generalizability.  A well-constructed MMDuet Dataset would be a significant contribution to the field of video-text interaction, providing researchers with a valuable resource for advancing VideoLLM technology.

#### Time-Sensitive Tasks
The concept of "Time-Sensitive Tasks" in the context of video large language models (VideoLLMs) highlights a critical limitation of traditional approaches.  Existing VideoLLMs often process the entire video before generating a response, rendering them unsuitable for scenarios demanding real-time analysis. **Time-sensitive tasks, such as live-streaming comprehension, require immediate responses to unfolding events**, making the traditional whole-video input method inadequate.  The paper addresses this by introducing a novel interaction format: the video-text duet. This approach allows for continuous video playback while enabling both user and model to insert text messages at any point, mirroring a real-time conversation.  This allows **VideoLLMs to generate time-stamped and localized responses** directly relevant to specific moments in the video, significantly improving performance on tasks requiring temporal grounding and highlight detection.  The effectiveness of this duet format is shown through benchmarking on several time-sensitive video understanding tasks, demonstrating the power of dynamically interacting with the model to enhance the quality and responsiveness of the AI for real-time video comprehension.

#### MMDuet Model
The MMDuet model is a novel VideoLLM designed for enhanced time-sensitive video comprehension.  Its core innovation lies in the **video-text duet interaction format**, allowing continuous video playback while both user and model interleave text messages. This approach contrasts with existing whole-video methods that process the entire video at once, limiting real-time responsiveness and hindering performance on time-sensitive tasks.  MMDuet leverages a **multi-modal architecture** that effectively integrates visual and textual information, enabling it to generate contextually relevant responses at precise moments during the video.  Further enhancing its capabilities are the **informative and relevance heads**, which dynamically determine when to generate a response based on the information content and relevance to the ongoing user query, respectively.  These features collectively equip MMDuet to excel in various tasks including temporal video grounding, highlight detection and dense video captioning, demonstrating significant improvements over existing VideoLLMs.

#### Future Research
Future research directions stemming from this work on VideoLLMs and video-text duet interaction could explore several avenues.  **Improving the efficiency of the model** is crucial, addressing the computational cost and inference time.  **Developing more robust methods for handling long videos** is key, potentially involving more sophisticated mechanisms for video segmentation and selective attention.  **Expanding the dataset** with more diverse video content and interaction scenarios is essential for enhancing generalizability and robustness.  A promising area would involve **investigating different response generation strategies**, potentially incorporating external knowledge bases or refining the criteria for determining when the model should generate a response.  Finally, **exploring the applications of this model in real-world settings**, such as live-streaming analysis or video surveillance, would provide valuable insights into its practical utility and limitations, ultimately shaping the future development of VideoLLMs.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2411.17991/x2.png)

> 🔼 This figure demonstrates how the annotation of a video segment is converted to the video-text duet interaction format used in the MMDuetIT dataset.  The original video segment has timestamps at the start, middle (50%), and end.  The caption/response is inserted at a random time between 50% and 75% of the segment duration.  Informative head labels are also generated to indicate whether each frame contains new information (1) or not (0) relative to the caption.  Specifically, frames from 50% to the insertion point are labeled '1', while all other frames are labeled '0'. This process ensures the model learns to respond at appropriate moments based on the temporal flow of information.
> <details>
> <summary>read the caption</summary>
> Figure 2: Example of reformatting the annotation of a video segment to video-text duet interaction format in MMDuetIT. Information from the original annotation is emphasized with underlines.
> </details>



![](https://arxiv.org/html/2411.17991/x3.png)

> 🔼 This figure shows the distribution of data samples across different tasks within the MMDuetIT dataset.  It visually represents the number of samples used for each task, namely dense captioning, multi-answer grounded video question answering, and temporal video grounding, along with their respective sub-datasets.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data Distribution of MMDuetIT.
> </details>



![](https://arxiv.org/html/2411.17991/x6.png)

> 🔼 This figure shows the impact of the smoothing window size (w) on the performance of temporal video grounding and highlight detection tasks.  Different values of w were tested, each representing the number of preceding and following frames considered when calculating a smoothed relevance score. The results illustrate how varying w affects the model's ability to accurately localize relevant video segments for these two tasks. It demonstrates the sensitivity of the performance to the choice of w and potentially indicates an optimal range for achieving best results.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance on temporal video grounding and highlight detection with different w𝑤witalic_w.
> </details>



![](https://arxiv.org/html/2411.17991/x7.png)

> 🔼 This figure displays the performance of the model on the dense video captioning task using different threshold values (represented by 's'). It shows how changing the threshold for determining when the model should generate a response affects the overall performance of the task.  The x-axis likely represents different threshold values, while the y-axis likely shows a performance metric, such as CIDEr score or BLEU score, which are commonly used to evaluate the quality of generated captions.  The plot likely compares the model's performance against various baseline methods, allowing a visual assessment of how well the model performs dense captioning under different thresholds.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance on dense video captioning with different s𝑠sitalic_s.
> </details>



![](https://arxiv.org/html/2411.17991/x8.png)

> 🔼 This figure showcases a comparison of dense video captioning results across three different models: MMDuet, LLaVA-OV-TC, and LLaVA-OV-VT.  It visually demonstrates the different approaches each model takes to captioning a cooking video, highlighting differences in the granularity, timing, and overall accuracy of the generated captions. The video frames are displayed alongside the corresponding captions generated by each model, allowing for a direct visual comparison of their performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: An example of dense video captioning with MMDuet, LLaVA-OV-TC and LLaVA-OV-VT.
> </details>



![](https://arxiv.org/html/2411.17991/x9.png)

> 🔼 Figure 7 presents a comparative analysis of dense video captioning across three different models: MMDuet, LLaVA-OV-TC, and LLaVA-OV-VT.  It showcases the generated captions for a cooking video, highlighting the differences in the accuracy, detail, and timeliness of the captions produced by each model. The figure visually displays the video frames alongside the corresponding captions, allowing for a direct comparison of the models' performance on this time-sensitive task.  The results show how MMDuet's video-text duet interaction format allows for more precise and detailed descriptions by focusing on smaller video segments, unlike the other two methods.
> <details>
> <summary>read the caption</summary>
> Figure 7: An example of dense video captioning with MMDuet, LLaVA-OV-TC and LLaVA-OV-VT.
> </details>



![](https://arxiv.org/html/2411.17991/x10.png)

> 🔼 This figure shows a comparison of dense video captioning results between three different models: MMDuet, LLaVA-OV-TC, and LLaVA-OV-VT.  The figure displays a sequence of video frames from a cooking video along with the corresponding captions generated by each model. It visually demonstrates the differences in captioning accuracy, detail, and temporal alignment achieved by the three models, highlighting the strengths of MMDuet in generating more comprehensive and temporally precise descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 8: An example of dense video captioning with MMDuet, LLaVA-OV-TC and LLaVA-OV-VT.
> </details>



![](https://arxiv.org/html/2411.17991/x11.png)

> 🔼 Figure 9 presents a comparative analysis of three different video question-answering models: MMDuet, LLaVA-OV-TC, and LLaVA-OV-VT.  A video depicting a man driving a car with a child is used as input. The models are tasked with answering the question: 'What are the people doing in the car?'  The figure showcases the differences in the models' capabilities regarding the generation of multiple, temporally grounded answers in response to a single question.  MMDuet shows its ability to provide multiple answers accurately placed relative to the video timeline, highlighting its effectiveness in the multi-answer grounded video question answering task.
> <details>
> <summary>read the caption</summary>
> Figure 9: An example of multi-answer grounded video question answering with MMDuet, LLaVA-OV-TC and LLaVA-OV-VT.
> </details>



![](https://arxiv.org/html/2411.17991/x12.png)

> 🔼 This figure showcases a qualitative comparison of three different video-language models: MMDuet, LLaVA-OV-TC, and LLaVA-OV-VT, on a multi-answer grounded video question answering task.  A video clip is shown with timestamps indicating when each model generates an answer.  The question posed is: 'What happens to the rabbit and the duck?' Each model’s responses are listed below the video.  The responses highlight the differences in the models' abilities to provide temporally grounded answers accurately and completely, and the varying degrees to which they can handle complex events. The comparison demonstrates that MMDuet excels in providing more temporally specific and detailed answers.
> <details>
> <summary>read the caption</summary>
> Figure 10: An example of multi-answer grounded video question answering with MMDuet, LLaVA-OV-TC and LLaVA-OV-VT.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Method | QVHighlights mAP/HIT@1 | Charades-STA R@0.5/0.7 |
|---|---|---|
| TimeChat | 14.5/23.9 | 32.2/13.4 |
| VTimeLLM | - | 31.2/11.4 |
| HawkEye | - | 31.4/14.5 |
| VTG-LLM | 16.5/33.5 | 33.8/15.7 |
| LLaVA-OV-TC | 17.6/32.9 | 33.1/12.4 |
| LLaVA-OV-VT | 19.0/40.0 | 36.5/12.3 |
| MMDuet (Ours) | **31.3/49.6** | **42.4/18.0** |{{< /table-caption >}}
> 🔼 This table presents a comparison of the zero-shot performance of different video large language models (VideoLLMs) on two time-sensitive video tasks: highlight detection and temporal video grounding.  It shows the performance metrics (mAP and HIT@1 for highlight detection, R@0.5 and R@0.7 for temporal video grounding) achieved by each model.  The models include several baselines (TimeChat, VTimeLLM, HawkEye, and VTG-LLM) and two controlled experiments (LLaVA-OV-TC and LLaVA-OV-VT) using the same initialization model and training data but different interaction formats, as well as the proposed model, MMDuet.  The table highlights the superior performance of MMDuet, which demonstrates significant improvements in both tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot performance on highlight detection and temporal video grounding.
> </details>

{{< table-caption >}}
| Dataset | SODAc/CIDEr/F1 |
|---|---| 
| YouCook2 |  |
| TimeChat | 1.2/3.4/12.6 |
| VTG-LLM | 1.5/5.0/17.5 |
| LLaVA-OV-TC | 1.9/3.3/**21.8** |
| LLaVA-OV-VT | 2.5/6.7/14.0 |
| MMDuet (Ours) | 2.4/5.7/19.2 |
| + rm. prev. resp. | **2.9/8.8**/21.7 |{{< /table-caption >}}
> 🔼 This table presents the results of a zero-shot evaluation on the dense video captioning task. It compares the performance of the proposed MMDuet model against several baseline models, including TimeChat, VTimeLLM, LLaVA-OV-TC, and LLaVA-OV-VT.  The performance is measured using three metrics: SODAC, CIDEr, and F1 score.  These metrics assess different aspects of the generated captions, reflecting the model's ability to accurately describe the video content and its temporal structure.
> <details>
> <summary>read the caption</summary>
> Table 3: Zero-shot performance on dense video captioning.
> </details>

{{< table-caption >}}
| Model | Real-Time? | In-Span Score
LLaMA/GPT | # turns (w/o./ w/. dedup) | time per
example |
|---|---|---|---|---|
| *Baselines* |  |  |  |  |
| LLaVA-OV-TC | 2718 | 2.92/2.79 | 3.4/1.9 | **0.76** |
| LLaVA-OV-VT | 2718 | 2.94/2.78 | 5.4/2.2 | 1.00 |
| *MMDuet (Ours)* |  |  |  |  |
| *t*=0.6 | 2714 | 2.46/2.33 | 13.7/4.0 | 1.80 |
| *t*=0.5 | 2714 | 2.77/2.61 | 18.4/5.3 | 2.23 |
| *t*=0.4 | 2714 | 3.00/2.81 | 23.0/6.6 | 2.59 |
| *t*=0.3 | 2714 | **3.13/2.93** | 27.0/7.6 | 2.73 |{{< /table-caption >}}
> 🔼 This table presents the results of the Multi-Answer Grounded Video Question Answering (MAGQA) task on the Shot2Story-MAGQA-39k test set.  The 'rm. ass. turns' method, which removes previously generated assistant turns from the context, was employed. The 'In-Span Score' metric is used to evaluate the model's performance, considering both the accuracy of the text response and the timeliness of the answer relative to the video's content.  The time taken for each example is reported, normalized to the time taken by the LLaVA-OV-VT baseline model (set to 1).  Other models' times are represented as multiples of the baseline time.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on the test set of Shot2Story-MAGQA-39k with the rm. ass. turns method used. For the “time per example” column, the time used by “LLaVA-OV-VT” is set to 1, and the times for other rows are set as multiples of the time used by “LLaVA-OV-VT”.
> </details>

{{< table-caption >}}
| Model | YouCook2 |
|---|---| 
| MMDuet | 2.9/8.8/21.7 |
| w/o rand. resp. pos. | 2.1/7.3/19.0 |
| w/o multi informative | 2.9/8.0/16.5 |{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different training methodologies on the performance of the MMDuet model, specifically focusing on the YouCook2 dense video captioning task. It investigates the effects of removing previous responses during training, disabling the random response position selection, and disabling the multi-informative labeling strategy.  The results quantify the contribution of each training method to the model's overall performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on training methods.
> </details>

{{< table-caption >}}
| Hyper-parameter | value |
|---|---| 
| `batch_size` | 1 |
| `gradient_acc_steps` | 8 |
| `learning_rate` | 2e-5 |
| `warmup_ratio` | 0.05 |
| `lora_r` | 16 |
| `lora_alpha` | 32 |
| `attn_implementation` | sdpa |{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used during the training of the MMDuet model.  It shows the values assigned to each hyperparameter, including batch size, gradient accumulation steps, learning rate, warmup ratio, LoRA rank, LoRA alpha, attention implementation, and the number of epochs.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyper-parameters used for training MMDuet.
> </details>

{{< table-caption >}}
| Task | Description |
|---|---| 
| Dense Video Captioning | <https://arxiv.org/html/2411.17991/system.png>system<br> A multimodal AI assistant is helping users with some activities. Below is their conversation, interleaved with the list of video frames received by the assistant. <https://arxiv.org/html/2411.17991/user.png>user<br>(A Dense Video Captioning Query)<br> <https://arxiv.org/html/2411.17991/stream.png>stream<br><frame><frame><frame> … <https://arxiv.org/html/2411.17991/assistant.png>assistant<br>A person pulls a knife from a black bag.<br><https://arxiv.org/html/2411.17991/stream.png>stream<br><frame><frame><frame> … <https://arxiv.org/html/2411.17991/assistant.png>assistant<br>A man in a hat and red clothes speaks with a dagger, and a tree behind him.<br><https://arxiv.org/html/2411.17991/stream.png>stream<br><frame><frame><frame> … (More stream and assistant turns) |
| MAGQA | <https://arxiv.org/html/2411.17991/system.png>system<br>A multimodal AI assistant is helping users with some activities. Below is their conversation, interleaved with the list of video frames received by the assistant. <https://arxiv.org/html/2411.17991/stream.png>stream<br><frame><frame><frame> … <https://arxiv.org/html/2411.17991/user.png>user<br>What happens during the basketball game?<br><https://arxiv.org/html/2411.17991/stream.png>stream<br><frame><frame><frame> … <https://arxiv.org/html/2411.17991/assistant.png>assistant<br>Several players in white jerseys are celebrating by high-fiving each other.<br><https://arxiv.org/html/2411.17991/stream.png>stream<br><frame><frame><frame> … (More stream and assistant turns) |
| Temporal Video Grounding | <https://arxiv.org/html/2411.17991/system.png>system<br>A multimodal AI assistant is helping users with some activities. Below is their conversation, interleaved with the list of video frames received by the assistant. <https://arxiv.org/html/2411.17991/user.png>user<br>(A Temporal Video Grounding Query)<br><https://arxiv.org/html/2411.17991/stream.png>stream<br><frame><frame><frame> … |{{< /table-caption >}}
> 🔼 This table showcases example inputs for three different tasks used in training and evaluating the MMDuet model: dense video captioning, multi-answer grounded video question answering (MAGQA), and temporal video grounding.  Each task example shows the system prompt, user input, video frame sequence, and model's response, illustrating the video-text duet interaction format.
> <details>
> <summary>read the caption</summary>
> Table 7: Input examples of different tasks during the training and evaluation phase of MMDuet.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.17991/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.17991/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}