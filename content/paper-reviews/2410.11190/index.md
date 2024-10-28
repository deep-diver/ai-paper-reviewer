---
title: "Mini-Omni2: Towards Open-source GPT-4o with Vision, Speech and Duplex Capabilities"
summary: "Mini-Omni2 is an open-source, multi-modal language model closely replicating GPT-40's vision, speech, and duplex capabilities, trained efficiently on a limited dataset."
categories: ["AI Generated"]
tags: ["🔖 24-10-15", "🤗 24-10-21"]
showSummary: true
date: 2024-10-15
draft: false
---

### TL;DR


{{< lead >}}

Mini-Omni2 is a new open-source project aiming to reproduce the impressive multi-modal capabilities of GPT-40, a leading large language model.  Unlike GPT-40, Mini-Omni2 is freely available to the research community.  The researchers trained Mini-Omni2 using a three-stage process. Initially, they focused on adapting existing pre-trained models for vision and audio to work well with a language model.  Next, they aligned the model's understanding of different input modalities (visual, audio, text) so that it could answer questions accurately regardless of the input type. Finally, they added the capability to generate audio responses in real time, as well as to incorporate interruption commands. The authors tested their model extensively, confirming the model's ability to perform real-time audio responses to visual and audio queries.  Mini-Omni2 represents a significant contribution to open-source AI research because it provides a powerful multi-modal model without requiring extensive data or resources. Its design and training methods offer valuable insights for others developing similar models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.11190" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.11190" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces Mini-Omni2, a significant step towards open-source GPT-40-like capabilities.  Its novel training approach using limited data and focus on multimodal interaction are highly relevant to current research trends. The open-sourcing of the model and data encourages further development and benchmarking, accelerating progress in the field.  The command-based interruption mechanism also offers valuable insights for improving human-computer interaction in AI systems.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mini-Omni2 achieves near GPT-40 functionality with vision, speech, and text, using a single model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel three-stage training process enables efficient multimodal learning with limited data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A command-based interruption mechanism facilitates more natural and flexible human-computer interaction. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure illustrates the architecture of Mini-Omni2, showing how visual, audio, and text inputs are processed by separate encoders before being integrated into a language model to generate text and speech outputs.
> <details>
> <summary>read the caption</summary>
> Figure 1: The Mini-Omni2 model architecture.
> </details>





![](charts/charts_5_0.png)

> 🔼 The chart shows the schematic diagram of multi-layer tokens for input and output of the main task model of Mini-Omni2, illustrating the model's handling of various combinations of visual, audio, and text inputs and outputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Schematic diagram of multi-layer tokens for input and output of the main task model of Mini-Omni2.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>vocabsize</td></tr><tr><td>0</td><td>152000</td><td>156160</td><td>160320</td><td>164480</td><td>168640</td><td>172800</td><td>176960</td><td>181120</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the datasets used for training the Mini-Omni2 model, categorized by task, stages, modality, and number of items.
> <details>
> <summary>read the caption</summary>
> Table 1: The datasets and their usage for training Mini-Omni2.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png)

> 🔼 Mini-Omni2 is shown to provide streaming speech responses for image, audio, and text inputs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Mini-Omni2 now supports streaming speech responses for image, audio and text inputs.
> </details>



![](figures/figures_7_0.png)

> 🔼 The figure illustrates the architecture of Mini-Omni2, showing how visual, audio, and text modalities are integrated into a single language model for end-to-end voice responses.
> <details>
> <summary>read the caption</summary>
> Figure 1: The Mini-Omni2 model architecture.
> </details>



![](figures/figures_10_0.png)

> 🔼 The figure shows the architecture of Mini-Omni2, illustrating how visual, audio, and text modalities are integrated through pretrained encoders and a language model.
> <details>
> <summary>read the caption</summary>
> Figure 1: The Mini-Omni2 model architecture.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='0' style='font-size:20px'><tr><td>Task</td><td>Stages</td><td>Dataset</td><td>Modality</td><td>items</td></tr><tr><td rowspan="3">ASR</td><td rowspan="3">1,2,3</td><td>Libritts [Zen et al., 2019]</td><td>A1|T1</td><td>586 h</td></tr><tr><td>VCTK [datashare, 2024]</td><td>A1|T1</td><td>44 h</td></tr><tr><td>Multilingual LibriSpeech [Pratap et al., 2020]</td><td>A1|T1</td><td>8000h</td></tr><tr><td>Text QA</td><td>2,3</td><td>Open-Orca [OpenOrca]</td><td>T1|T2</td><td>2000K</td></tr><tr><td>Audio QA</td><td>2,3</td><td>Moss-002-sft-data [Sun et al., 2024]</td><td>A1|T1|A2|T2</td><td>1500K</td></tr><tr><td>Visual QA</td><td>2,3</td><td>ALLaVA-4V [Sun et al., 2024]</td><td>VIA1|T1|A2|T2</td><td>800K</td></tr><tr><td rowspan="7">voice QA</td><td rowspan="7">final</td><td>Alpaca-GPT4 [vicgalle, 2024]</td><td>A1|T1|A2|T2</td><td>55k</td></tr><tr><td>Identity finetune [sayan1101, 2024]</td><td>A1|T1|A2|T2</td><td>2k</td></tr><tr><td>QAassistant [Mihaiii, 2024a]</td><td>A1|T1|A2|T2</td><td>27k</td></tr><tr><td>Rlhf [Anthropic, 2024]</td><td>A1|T1|A2|T2</td><td>367k</td></tr><tr><td>Trivia-singlechoice [Mihaiii, 2024c]</td><td>A1|T1|A2IT2</td><td>17k</td></tr><tr><td>Trivia-Multichoice [Mihaiii, 2024b]</td><td>A1|T1|A2|T2</td><td>20k</td></tr><tr><td>OpenAssistant [OpenAssistan, 2024]</td><td>A1|T1|A2|T2</td><td>2k</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table lists the datasets used for training Mini-Omni2, specifying the task, stages of training, dataset name, modality and number of items.


{{< table-caption >}}
<table id='8' style='font-size:14px'><tr><td>Method</td><td>test-clean</td><td>test-other</td><td>dev-clean</td><td>dev-other</td></tr><tr><td>Wav2vec2-base [Baevski et al., 2020]</td><td>6.0</td><td>13.4</td><td>-</td><td>-</td></tr><tr><td>VITA [Fu et al., 2024]</td><td>8.14</td><td>18.41</td><td>7.57</td><td>16.57</td></tr><tr><td>Whisper-small*</td><td>4.4</td><td>10.1</td><td>4.6</td><td>10.3</td></tr><tr><td>Mini-Omni</td><td>4.5</td><td>9.7</td><td>4.6</td><td>9.2</td></tr><tr><td>Mini-Omni2</td><td>4.8</td><td>9.8</td><td>4.7</td><td>9.4</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares the accuracy of speech recognition results for different models, including Mini-Omni2, against baseline models on various test sets.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}