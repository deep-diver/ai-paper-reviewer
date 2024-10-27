---
title: "Mini-Omni2: Towards Open-source GPT-4o with Vision, Speech and Duplex Capabilities"
summary: "Mini-Omni2: Open-source multimodal model rivaling GPT-40's vision, speech, text, and duplex interaction capabilities."
categories: ["AI Generated"]
tags: ["🔖 24-10-15", "🤗 24-10-21"]
showSummary: true
date: 2024-10-15
draft: false
---

### TL;DR


{{< lead >}}

Mini-Omni2 is a new open-source multimodal language model designed to mimic the capabilities of GPT-40, a powerful, yet closed-source model.  Unlike many open-source alternatives which focus on individual aspects (like vision or speech), Mini-Omni2 integrates vision, audio, and text processing into a unified system capable of real-time, end-to-end responses.  The model uses pre-trained encoders for vision (CLIP) and audio (Whisper), combining these with a language model (Qwen2) to achieve comprehensive understanding.  A key innovation is a three-stage training process. First, the model learns to process different data modalities, effectively teaching it to 'understand' images and audio. Second, it learns to correlate this understanding with text, and lastly, it learns to produce text and speech responses. To improve interaction, a command-based interruption mechanism is implemented, allowing users to interrupt the model's response in a natural way, unlike simpler voice-activation methods. While not yet perfect, this approach represents a significant step toward creating more natural interactions with AI. The model's performance is evaluated on various multi-modal tasks, demonstrating its ability to handle various input types and produce both text and speech outputs.  Overall, Mini-Omni2 is a notable contribution, providing a closer open-source alternative to GPT-40 and paving the way for further research and development in multimodal AI.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.11190" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does it matter?
Mini-Omni2 is an open-source multimodal language model that closely replicates GPT-40's capabilities, including vision, speech, text processing, and real-time duplex interaction.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mini-Omni2 is an open-source multimodal model achieving near GPT-40 functionality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A three-stage training process efficiently aligns and integrates multiple modalities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Command-based interruption enhances flexible, real-time interaction {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png "🔼 Figure 1: The Mini-Omni2 model architecture.")

> The figure illustrates the architecture of Mini-Omni2, showing how visual, audio, and text modalities are processed and integrated to produce real-time speech and text responses.





![](charts/charts_5_0.png "🔼 Figure 3: Schematic diagram of multi-layer tokens for input and output of the main task model of Mini-Omni2.")

> The chart illustrates the input and output token configurations for various multimodal tasks handled by the Mini-Omni2 model, showing the arrangement of audio, visual, and text tokens in different scenarios.





{{< table-caption caption="🔽 Table 1: The datasets and their usage for training Mini-Omni2." >}}
<table id='1' style='font-size:14px'><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>vocabsize</td></tr><tr><td>0</td><td>152000</td><td>156160</td><td>160320</td><td>164480</td><td>168640</td><td>172800</td><td>176960</td><td>181120</td></tr></table>{{< /table-caption >}}

> The table lists the datasets used for training the Mini-Omni2 model, categorized by task, stage, modality, and number of items.



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_3_0.png "🔼 Figure 2: Mini-Omni2 now supports streaming speech responses for image, audio and text inputs.")

> The figure shows a screenshot of the Mini-Omni2 model interacting with a user, providing streaming speech responses to both image and audio inputs.


![](figures/figures_7_0.png "🔼 Figure 5: Mini-Omni2's three-stage training phases")

> The figure illustrates the three-stage training process of the Mini-Omni2 model, showing how the model is progressively trained to handle multimodal inputs and outputs.


![](figures/figures_10_0.png "🔼 Figure 1: The Mini-Omni2 model architecture.")

> The figure shows the architecture of Mini-Omni2, illustrating how visual, audio, and text inputs are processed by their respective encoders and adapters before being integrated into a language model to generate text and audio outputs.


</details>




<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: The datasets and their usage for training Mini-Omni2." >}}
<table id='0' style='font-size:20px'><tr><td>Task</td><td>Stages</td><td>Dataset</td><td>Modality</td><td>items</td></tr><tr><td rowspan="3">ASR</td><td rowspan="3">1,2,3</td><td>Libritts [Zen et al., 2019]</td><td>A1|T1</td><td>586 h</td></tr><tr><td>VCTK [datashare, 2024]</td><td>A1|T1</td><td>44 h</td></tr><tr><td>Multilingual LibriSpeech [Pratap et al., 2020]</td><td>A1|T1</td><td>8000h</td></tr><tr><td>Text QA</td><td>2,3</td><td>Open-Orca [OpenOrca]</td><td>T1|T2</td><td>2000K</td></tr><tr><td>Audio QA</td><td>2,3</td><td>Moss-002-sft-data [Sun et al., 2024]</td><td>A1|T1|A2|T2</td><td>1500K</td></tr><tr><td>Visual QA</td><td>2,3</td><td>ALLaVA-4V [Sun et al., 2024]</td><td>VIA1|T1|A2|T2</td><td>800K</td></tr><tr><td rowspan="7">voice QA</td><td rowspan="7">final</td><td>Alpaca-GPT4 [vicgalle, 2024]</td><td>A1|T1|A2|T2</td><td>55k</td></tr><tr><td>Identity finetune [sayan1101, 2024]</td><td>A1|T1|A2|T2</td><td>2k</td></tr><tr><td>QAassistant [Mihaiii, 2024a]</td><td>A1|T1|A2|T2</td><td>27k</td></tr><tr><td>Rlhf [Anthropic, 2024]</td><td>A1|T1|A2|T2</td><td>367k</td></tr><tr><td>Trivia-singlechoice [Mihaiii, 2024c]</td><td>A1|T1|A2IT2</td><td>17k</td></tr><tr><td>Trivia-Multichoice [Mihaiii, 2024b]</td><td>A1|T1|A2|T2</td><td>20k</td></tr><tr><td>OpenAssistant [OpenAssistan, 2024]</td><td>A1|T1|A2|T2</td><td>2k</td></tr></table>{{< /table-caption >}}

> The table lists the datasets used for training Mini-Omni2, categorized by task (ASR, Text QA, Audio QA, Visual QA, voice QA), training stage, dataset name, modality, and number of items.


{{< table-caption caption="🔽 Table 2: Comparison of the model's ASR with the base model used. (* our reproduced evaluation result.)" >}}
<table id='8' style='font-size:14px'><tr><td>Method</td><td>test-clean</td><td>test-other</td><td>dev-clean</td><td>dev-other</td></tr><tr><td>Wav2vec2-base [Baevski et al., 2020]</td><td>6.0</td><td>13.4</td><td>-</td><td>-</td></tr><tr><td>VITA [Fu et al., 2024]</td><td>8.14</td><td>18.41</td><td>7.57</td><td>16.57</td></tr><tr><td>Whisper-small*</td><td>4.4</td><td>10.1</td><td>4.6</td><td>10.3</td></tr><tr><td>Mini-Omni</td><td>4.5</td><td>9.7</td><td>4.6</td><td>9.2</td></tr><tr><td>Mini-Omni2</td><td>4.8</td><td>9.8</td><td>4.7</td><td>9.4</td></tr></table>{{< /table-caption >}}

> Table 2 compares the accuracy of Mini-Omni2's Automatic Speech Recognition (ASR) with Wav2vec2-base, VITA, and Whisper-small, showing a slight performance improvement over Whisper-small.


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