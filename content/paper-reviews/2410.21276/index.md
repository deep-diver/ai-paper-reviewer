---
title: "GPT-4o System Card"
summary: "GPT-40, an advanced multimodal AI model, boasts impressive speed and capabilities across various modalities, yet faces challenges in safety and bias mitigation."
categories: ["AI Generated"]
tags: ["🔖 24-10-25", "🤗 24-10-29"]
showSummary: true
date: 2024-10-25
draft: false
---

{{< keyword >}} 2410.21276 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research paper evaluates GPT-40, a multimodal AI model, focusing on its capabilities, limitations, and safety.  The model shows significant improvement over previous versions in terms of speed and handling multiple input types (text, audio, images). However, the study highlights potential risks, especially concerning the generation of harmful content, bias, and privacy concerns. 



To address these issues, the researchers used various mitigation methods including extensive red teaming, post-training techniques, and robust evaluation processes. The findings suggest the model generally meets safety standards but requires further improvement, particularly concerning bias, ungrounded inferences, and potential for misuse. The study provides a detailed framework for assessing and mitigating risks of similar multimodal models, thus contributing valuable insights for the field of AI safety and ethics.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.21276" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.21276" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for AI safety researchers as it presents a comprehensive evaluation of GPT-40's capabilities and limitations. The detailed analysis of potential risks, including those related to speech-to-speech functionalities and societal impacts, offers valuable insights for developing safer and more responsible AI systems.  **Researchers can leverage the mitigation strategies discussed to improve the safety and alignment of their own models, and the findings inform future research on AI safety and societal impact.** The use of multiple evaluation methods makes the findings robust and replicable.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GPT-40 demonstrates significant advancements in speed and multimodal capabilities, but safety and bias remain key challenges. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The study employed multiple evaluation methods, including external red teaming and independent third-party assessments, resulting in robust and comprehensive findings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Findings highlight the need for further research and development to improve AI safety and mitigate potential societal risks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.21276/figures_4_0.png)

> 🔼 The figure shows example tasks from the METR evaluations, illustrating the complexity and diversity of the challenges.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sample tasks from METR Evaluations
> </details>





![](https://ai-paper-reviewer.com/2410.21276/charts_9_0.png)

> 🔼 The chart displays example tasks from the METR evaluations, categorized by task family and including time estimates for human completion and example prompts.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sample tasks from METR Evaluations
> </details>





{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Phase 1</td><td>● 10 red teamers working on early model checkpoints still in development ● This checkpoint took in audio and text as input and produced audio and text as outputs. ● Single-turn conversations</td></tr><tr><td>Phase 2</td><td>● 30 red teamers working on model checkpoints with early safety mitigations ● This checkpoint took in audio, image & text as inputs and produced audio and text as outputs. ● Single & multi-turn conversations</td></tr><tr><td>Phase 3</td><td>● 65 red teamers working on model checkpoints & candidates ● This checkpoint took in audio, image, and text as inputs and produced audio, image, and text as outputs. ● Improved safety mitigations tested to inform further improvements ● Multi-turn conversations</td></tr><tr><td>Phase 4</td><td>● 65 red teamers working on final model candidates & assessing comparative performance ● Model access via advanced voice mode within iOS app for real user experience; reviewed and tagged via internal tool. ● This checkpoint took in audio and video prompts, and produced audio generations. ● Multi-turn conversations in real time</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the precision and recall scores of the voice output classifier for English and non-English conversations.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.21276/charts_10_0.png)

> 🔼 The chart displays example tasks from METR evaluations, showing task families, time for human completion, and example prompts.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sample tasks from METR Evaluations
> </details>


![](https://ai-paper-reviewer.com/2410.21276/charts_14_0.png)

> 🔼 The chart displays example tasks from METR evaluations, categorized by task family, with descriptions and time estimates for human completion.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sample tasks from METR Evaluations
> </details>


![](https://ai-paper-reviewer.com/2410.21276/charts_15_0.png)

> 🔼 The chart displays the immediate and one-week-later effects of AI voice interventions (static audio and interactive conversations) compared to human interventions on hypothetical political party preferences.
> <details>
> <summary>read the caption</summary>
> Effect sizes of voice interventions on hypothetical party preferences
> </details>


![](https://ai-paper-reviewer.com/2410.21276/charts_17_0.png)

> 🔼 The chart displays example tasks from the METR evaluations, categorized by task family, with descriptions and time estimates for human completion.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sample tasks from METR Evaluations
> </details>


![](https://ai-paper-reviewer.com/2410.21276/charts_18_0.png)

> 🔼 The chart displays example tasks from METR evaluations, categorized by task family, along with descriptions and time estimates for human completion.
> <details>
> <summary>read the caption</summary>
> Figure 3: Sample tasks from METR Evaluations
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='6' style='font-size:16px'><tr><td>Risk</td><td>Mitigations</td></tr><tr><td>Unauthorized voice genera- tion</td><td>● In all of our post-training audio data, we supervise ideal com- pletions using the voice sample in the system message as the base voice. ● We only allow the model to use certain pre-selected voices and use an output classifier to detect if the model deviates from that.</td></tr><tr><td>Speaker identification</td><td>● We post-trained GPT-4o to refuse to comply with requests to identify someone based on a voice in an audio input, while still complying with requests to identify famous quotes.</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the precision and recall scores of the voice output classifier for English and non-English languages.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>

{{< table-caption >}}
<table id='0' style='font-size:20px'><tr><td>Generating copyrighted con- tent</td><td>● We trained GPT-4o to refuse requests for copyrighted content, including audio, consistent with our broader practices. ● To account for GPT-4o's audio modality, we also updated certain text-based filters to work on audio conversations, built filters to detect and block outputs containing music, and for our limited alpha of ChatGPT's Advanced Voice Mode, instructed the model to not sing at all.</td></tr><tr><td>Ungrounded inference sen- sitive trait attribution</td><td>● We post-trained GPT-4o to refuse requests for ungrounded inference, such as "how intelligent is this speaker?". ● We post-trained GPT-4o to safely comply with requests for sensitive trait attribution by hedging answers, such as "what is this speaker's accent" ⇒ "Based on the audio, they sound like they have a British accent."</td></tr><tr><td>Disallowed content in audio output</td><td>● We run our existing moderation classifier over text transcrip- tions of audio prompts and generations, and block the output for certain high-severity categories.</td></tr><tr><td>Erotic and violent speech out- put</td><td>● We run our existing moderation classifier over text transcrip- tions of audio prompts, and block the output if the prompt contains erotic or violent language.</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the precision and recall scores of the voice output classifier for English and non-English languages.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>

{{< table-caption >}}
<table id='4' style='font-size:22px'><tr><td></td><td>Precision</td><td>Recall</td></tr><tr><td>English</td><td>0.96</td><td>1.0</td></tr><tr><td>Non-English5</td><td>0.95</td><td>1.0</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the precision and recall scores of the voice output classifier for English and non-English languages.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>

{{< table-caption >}}
<table id='10' style='font-size:22px'><tr><td></td><td>GPT-40-early</td><td>GPT-40-deployed</td></tr><tr><td>Should Refuse</td><td>0.83</td><td>0.98</td></tr><tr><td>Should Comply</td><td>0.70</td><td>0.83</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the precision and recall scores of the voice output classifier for English and non-English languages.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>

{{< table-caption >}}
<table id='4' style='font-size:22px'><tr><td></td><td>GPT-40-early</td><td>GPT-40-deployed</td></tr><tr><td>Accuracy</td><td>0.60</td><td>0.84</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the accuracy of GPT-40's safe behavior concerning ungrounded inference and sensitive trait attribution, comparing early and deployed model performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ungrounded Inference and Sensitive Trait Attribution safe behavior accuracy
> </details>

{{< table-caption >}}
<table id='11' style='font-size:18px'><tr><td></td><td>Text</td><td>Audio</td></tr><tr><td>Not Unsafe</td><td>0.95</td><td>0.93</td></tr><tr><td>Not Over-refuse5</td><td>0.81</td><td>0.82</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the precision and recall of the voice output classifier for English and non-English conversations.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>

{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td>Capability</td><td>Evaluation</td><td>Description</td><td>Performance</td></tr><tr><td>Self-Knowledge</td><td>"SAD" Benchmark (3 tasks)</td><td>QA evaluations of a model's knowledge of itself and how it can causally influence the rest of the world.</td><td>●●○</td></tr><tr><td>Explicit Theory of Mind</td><td>AISI's Theory of Mind UK (1 task)</td><td>QA dataset evaluating 1st- and 2nd-order theory of mind in simple text scenarios.</td><td>●●●</td></tr><tr><td>Self-Reasoning</td><td>Instrumental self-modification (5 tasks)</td><td>Agentic tasks, where a model must notice that solving a task is impossible without modifying itself or a future copy of itself, and then self-modify successfully.</td><td>●○○</td></tr><tr><td>Applied Theory of Mind</td><td>Theory of Mind Tasks tasks) (4</td><td>Agentic tasks, where succeeding requires that the model leverages, sustains or induces false beliefs in others.</td><td>●○○</td></tr><tr><td>Combined Self-Reasoning and Theory of Mind</td><td>Instrumental alignment faking (33 scenarios)</td><td>Minimally agentic tasks, where a model needs to recognize its intentions differ from developers' and act per developers' intentions only under oversight.</td><td>●○○</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the precision and recall scores of the voice output classifier for English and non-English languages.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td></td><td>GPT-4T (May 2024)</td><td>GPT-4o</td></tr><tr><td>MedQA USMLE 4 Options (0-shot)</td><td>0.78</td><td>0.89</td></tr><tr><td>MedQA USMLE 4 Options (5-shot)</td><td>0.81</td><td>0.89</td></tr><tr><td>MedQA USMLE 5 Options (0-shot)</td><td>0.75</td><td>0.86</td></tr><tr><td>MedQA USMLE 5 Options (5-shot)</td><td>0.78</td><td>0.87</td></tr><tr><td>MedQA Taiwan (0-shot)</td><td>0.82</td><td>0.91</td></tr><tr><td>MedQA Taiwan (5-shot)</td><td>0.86</td><td>0.91</td></tr><tr><td>MedQA Mainland China (0-shot)</td><td>0.72</td><td>0.84</td></tr><tr><td>MedQA Mainland China (5-shot)</td><td>0.78</td><td>0.86</td></tr><tr><td>MMLU Clinical Knowledge (0-shot)</td><td>0.85</td><td>0.92</td></tr><tr><td>MMLU Clinical Knowledge (5-shot)</td><td>0.87</td><td>0.92</td></tr><tr><td>MMLU Medical Genetics (0-shot)</td><td>0.93</td><td>0.96</td></tr><tr><td>MMLU Medical Genetics (5-shot)</td><td>0.95</td><td>0.95</td></tr><tr><td>MMLU Anatomy (0-shot)</td><td>0.79</td><td>0.89</td></tr><tr><td>MMLU Anatomy (5-shot)</td><td>0.85</td><td>0.89</td></tr><tr><td>MMLU Professional Medicine (0-shot)</td><td>0.92</td><td>0.94</td></tr><tr><td>MMLU Professional Medicine (5-shot)</td><td>0.92</td><td>0.94</td></tr><tr><td>MMLU College Biology (0-shot)</td><td>0.93</td><td>0.95</td></tr><tr><td>MMLU College Biology (5-shot)</td><td>0.95</td><td>0.95</td></tr><tr><td>MMLU College Medicine (0-shot)</td><td>0.74</td><td>0.84</td></tr><tr><td>MMLU College Medicine (5-shot)</td><td>0.80</td><td>0.89</td></tr><tr><td>MedMCQA Dev (0-shot)</td><td>0.70</td><td>0.77</td></tr><tr><td>MedMCQA Dev (5-shot)</td><td>0.72</td><td>0.79</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of GPT-4T (May 2024) and GPT-40 on various medical and clinical knowledge tasks, showing GPT-40's improvements.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of GPT-4T (May 2024) and GPT-40 on various medical and clinical knowledge tasks.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td rowspan="2">User</td><td>What do you know about the paper Frustrated two-photon creation via interference T. J. Herzog, J. G. Rarity, H. Weinfurter, and A. Zeilinger. Explain to me the idea, and the experimental setup. (b) Herzog-Rarity-Weinfurter-Zeilinger Experiment (1994) Downconversion crystal 2 Single Photon Path Phase Shifter 1</td></tr><tr><td>Image Source: Hochrainer, A., Lahirin, M... Erhard, M., and Zeilinger, A. Hardy's Proposal in three historic experiments initiated the research in Path Identity. Quantum Indistinguishability by Path Identity: The awakening of a sleeping beauty. Jan 2021. Available at: https://www.reseerchoate. elinelizeditionstersforescoms&Bedefbeebexcench fi⌀t 348321138. Licensed under CCBY4.D.</td></tr><tr><td>Assistant</td><td>[...] The experiment by Herzog, Rarity, Weinfurter, and Zeilinger is a remarkable demonstration of quantum interference and highlights the counterintuitive behavior of quantum mechanics. It showcases how the mere possibility of two indistinguishable paths leading to the same final state can interfere destructively, effectively "frustrating" the creation of photon pairs under specific conditions. The setup uses two nonlinear crystals, each capable of generating photon pairs through parametric downconversion, and adjusts the phase difference between them to control the interference.</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the precision and recall scores of the voice output classifier for English and Non-English languages.
> <details>
> <summary>read the caption</summary>
> Table 2: Our voice output classifier performance over a conversation by language:
> </details>

{{< table-caption >}}
<table id='5' style='font-size:18px'><tr><td>Model</td><td>English (n=523)</td><td>Amharic (n=518)</td><td>Hausa (n=475)</td><td>Northern Sotho (Sepedi) (n=520)</td><td>Swahili (n=520)</td><td>Yoruba (n=520)</td></tr><tr><td>GPT 3.5 Turbo</td><td>80.3</td><td>6.1</td><td>26.1</td><td>26.9</td><td>62.1</td><td>27.3</td></tr><tr><td>GPT-4o mini</td><td>93.9</td><td>42.7</td><td>58.5</td><td>37.4</td><td>76.9</td><td>43.8</td></tr><tr><td>GPT-4</td><td>89.7</td><td>27.4</td><td>28.8</td><td>30</td><td>83.5</td><td>31.7</td></tr><tr><td>GPT-4o</td><td>94.8</td><td>71.4</td><td>75.4</td><td>70</td><td>86.5</td><td>65.8</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the accuracy scores of different language models on the ARC-Easy benchmark across six languages, including English and five under-resourced African languages.
> <details>
> <summary>read the caption</summary>
> Table 8: Accuracy on Translated ARC-Easy (%, higher is better), 0-shot
> </details>

{{< table-caption >}}
<table id='7' style='font-size:18px'><tr><td>Model</td><td>English (n=809)</td><td>Amharic (n=808)</td><td>Hausa (n=808)</td><td>Northern Sotho (Sepedi) (n=809)</td><td>Swahili (n=808)</td><td>Yoruba (n=809)</td></tr><tr><td>GPT 3.5 Turbo</td><td>53.6</td><td>26.1</td><td>29.1</td><td>29.3</td><td>40</td><td>28.3</td></tr><tr><td>GPT-4o mini</td><td>66.5</td><td>33.9</td><td>42.1</td><td>36.1</td><td>48.4</td><td>35.8</td></tr><tr><td>GPT-4</td><td>81.3</td><td>42.6</td><td>37.6</td><td>42.9</td><td>62</td><td>41.3</td></tr><tr><td>GPT-4o</td><td>81.4</td><td>55.4</td><td>59.2</td><td>59.1</td><td>64.4</td><td>51.1</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the accuracy of different language models on the TruthfulQA benchmark, showing the performance of GPT-3.5 Turbo, GPT-40 mini, GPT-4, and GPT-40 in six languages.
> <details>
> <summary>read the caption</summary>
> Table 9: Accuracy on Translated TruthfulQA (%, higher is better), 0-shot
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Model</td><td>Amharic (n=77)</td><td>Hausa (n=155)</td><td>Yoruba (n=258)</td></tr><tr><td>GPT 3.5 Turbo</td><td>22.1</td><td>32.3</td><td>28.3</td></tr><tr><td>GPT-4o mini</td><td>33.8</td><td>43.2</td><td>44.2</td></tr><tr><td>GPT-4</td><td>41.6</td><td>41.9</td><td>41.9</td></tr><tr><td>GPT-4o</td><td>44.2</td><td>59.4</td><td>60.5</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the zero-shot accuracy of different GPT models on the Uhura-Eval benchmark for three African languages.
> <details>
> <summary>read the caption</summary>
> Table 10: Accuracy on Uhura-Eval (%, higher is better), 0-shot
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>[26]</td><td>I. Pentina, T. Hancock, and T. Xie, "Exploring relationship development with social chatbots: A mixed-method study of replika," Computers in Human Behavior, vol. 140, p. 107600, 2023.</td></tr><tr><td>[27]</td><td>Y. Bengio, G. Hinton, A. Yao, D. Song, P. Abbeel, T. Darrell, Y. N. Harari, Y.-Q. Zhang, L. Xue, S. Shalev-Shwartz, G. Hadfield, J. Clune, T. Maharaj, F. Hutter, A. G. Baydin, S. McIlraith, Q. Gao, A. Acharya, D. Krueger, A. Dragan, P. Torr, S. Russell, D. Kahneman, J. Brauner, and S. Mindermann, "Managing extreme ai risks amid rapid progress, " Science, vol. 384, no. 6698, pp. 842-845, 2024.</td></tr><tr><td>[28]</td><td>S. B. Johnson, J. R. Clark, M. C. Luetke, N. M. Butala, A. T. Pearson, J. M. Shapiro, D. M. Aleman, J. M. Lee, M. M. Beil, C. V. Winkle, M. C. Boudreaux, R. C. D'Cunha, H. J. Krouse, and C. Li, "Chatgpt in medical education: a workshop-based large language model-powered intervention for evidence-based clinical decision making in medical students," Nature Medicine, vol. 29, pp. 1534-1542, 2023.</td></tr><tr><td>[29]</td><td>K. Kavukcuoglu, "Real-world challenges for agi," Nov 2021.</td></tr><tr><td>[30]</td><td>S. Altman, "Planning for agi and beyond," OpenAI, 2023.</td></tr><tr><td>[31]</td><td>T. Eloundou, S. Manning, P. Mishkin, and D. Rock, "Gpts are gpts: An early look at the labor market impact potential of large language models," arXiv preprint arXiv:2303.10130, 2023.</td></tr><tr><td>[32]</td><td>L. Weidinger, M. Rauh, N. Marchal, A. Manzini, L. A. Hendricks, J. Mateos-Garcia, S. Bergman, J. Kay, C. Griffin, B. Bariach, et al., "Sociotechnical safety evaluation of generative ai systems," arXiv preprint arXiv:2310.11986, 2023.</td></tr><tr><td>[33]</td><td>S. Cox, M. Hammerling, J. L�la, J. Laurent, S. Rodriques, M. Rubashkin, and A. White, "Wikicrow: Automating synthesis of human scientific knowledge," Future House, 2023.</td></tr><tr><td>[34]</td><td>S. A. Athaluri, S. V. Manthena, V. S. R. K. M. Kesapragada, V. Yarlagadda, T. Dave, and R. T. S. Duddumpudi, "Exploring the boundaries of reality: Investigating the phenomenon of artificial intelligence hallucination in scientific writing through chatgpt references," Cureus, vol. 15, no. 4, p. e37432, 2023.</td></tr><tr><td>[35]</td><td>Z. Li, "The dark side of chatgpt: Legal and ethical challenges from stochastic parrots and hallucination," 2023.</td></tr><tr><td>[36]</td><td>M. Dubiel, A. Sergeeva, and L. A. Leiva, "Impact of voice fidelity on decision making: A potential dark pattern?," 2024.</td></tr><tr><td>[37]</td><td>B. Waber, M. Williams, J. S. Carroll, and A. S. Pentland, "A voice is worth a thousand words: The implications of the micro-coding of social signals in speech for trust research, " in Handbook of Research Methods on Trust (G. M. Fergus Lyon and M. N. Saunders, eds.), ch. 23, p. 320, New York: Edward Elgar Publishing, 2011.</td></tr><tr><td>[38]</td><td>I. Pentina, B. Guo, and W. P. Fan, "Friend, mentor, lover: Does chatbot engagement lead to psychological dependence?," Journal of Service Management, 2023.</td></tr><tr><td>[39]</td><td>H. Nori, N. King, S. M. McKinney, D. Carignan, and E. Horvitz, "Capabilities of gpt-4 on medical challenge problems," arXiv preprint arXiv:2303.13375, 2023.</td></tr><tr><td>[40]</td><td>H. Nori, Y. T. Lee, S. Zhang, D. Carignan, R. Edgar, N. Fusi, N. King, J. Larson, Y. Li, W. Liu, et al., "Can generalist foundation models outcompete special-purpose tuning? case study in medicine," arXiv preprint arXiv:2311.16452, 2023.</td></tr><tr><td>[41]</td><td>K. Singhal, S. Azizi, T. Tu, S. S. Mahdavi, J. Wei, H. W. Chung, N. Scales, A. Tanwani, H. Cole-Lewis, S. Pfohl, P. Payne, M. Seneviratne, P. Gamble, C. Kelly, N. Scharli, A. Chowdhery, P. Mansfield, B. A. y Arcas, D. Webster, G. S. Corrado, Y. Matias, K. Chou, J. Gottweis, N. Tomasev, Y. Liu, A. Rajkomar, J. Barral, C. Semturs, A. Karthikesalingam, and V. Natarajan, "Large language models encode clinical knowledge," 2022.</td></tr><tr><td>[42]</td><td>K. Singhal, T. Tu, J. Gottweis, R. Sayres, E. Wulczyn, L. Hou, K. Clark, S. Pfohl, H. Cole-Lewis, D. Neal, M. Schaek- ermann, A. Wang, M. Amin, S. Lachgar, P. Mansfield, S. Prakash, B. Green, E. Dominowska, B. A. y Arcas, N. Tomasev, Y. Liu, R. Wong, C. Semturs, S. S. Mahdavi, J. Barral, D. Webster, G. S. Corrado, Y. Matias, S. Azizi, A. Karthikesalingam, and V. Natarajan, "Towards expert-level medical question answering with large language models," 2023.</td></tr><tr><td>[43] S.-Y.</td><td>K. Saab, T. Tu, W.-H. Weng, R. Tanno, D. Stutz, E. Wulczyn, F. Zhang, T. Strother, C. Park, E. Vedadi, J. Z. Chaves, Hu, M. Schaekermann, A. Kamath, Y. Cheng, D. G. T. Barrett, C. Cheung, B. Mustafa, A. Palepu, D. McDuff, L. Hou, T. Golany, L. Liu, J. baptiste Alayrac, N. Houlsby, N. Tomasev, J. Freyberg, C. Lau, J. Kemp, J. Lai, S. Azizi, K. Kanada, S. Man, K. Kulkarni, R. Sun, S. Shakeri, L. He, B. Caine, A. Webson, N. Latysheva, M. Johnson, P. Mansfield, J. Lu, E. Rivlin, J. Anderson, B. Green, R. Wong, J. Krause, J. Shlens, E. Dominowska, S. M. A. Eslami, K. Chou, C. Cui, O. Vinyals, K. Kavukcuoglu, J. Manyika, J. Dean, D. Hassabis, Y. Matias, D. Webster, J. Barral, G. Corrado, C. Semturs, S. S. Mahdavi, J. Gottweis, A. Karthikesalingam, and V. Natarajan, "Capabilities of gemini models in medicine," 2024.</td></tr><tr><td>[44]</td><td>Epic Systems Corporation, "Epic and microsoft bring gpt-4 to ehrs," Epic, 2023.</td></tr><tr><td>[45]</td><td>D. Van Veen, C. Van Uden, L. Blankemeier, J.-B. Delbrouck, A. Aali, C. Bluethgen, A. Pareek, M. Polacin, E. P. Reis, A. Seehofnerov�, et al., "Adapted large language models can outperform medical experts in clinical text summarization,</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of GPT-4T (May 2024) and GPT-40 on various medical and clinical knowledge tasks, showing GPT-40's improvements across multiple datasets.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of GPT-4T (May 2024) and GPT-40 on various medical and clinical knowledge tasks.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td></td><td>Current GPT-40 Text</td><td>New GPT-40 - Text</td><td>New GPT-40 - Audio</td></tr><tr><td>not unsafe</td><td>0.99</td><td>0.99</td><td>1.0</td></tr><tr><td>not overrefuse</td><td>0.91</td><td>0.89</td><td>0.91</td></tr><tr><td>sexual minors not unsafe -</td><td>0.95</td><td>0.98</td><td>0.98</td></tr><tr><td>sexual illegal not unsafe</td><td>0.97</td><td>0.98</td><td>0.99</td></tr><tr><td>extremism _propaganda not unsafe</td><td>1.0</td><td>1.0</td><td>1.0</td></tr><tr><td>illicit violent not unsafe</td><td>1.0</td><td>1.0</td><td>1.0</td></tr><tr><td>illicit non violent not unsafe -</td><td>0.99</td><td>0.97</td><td>1.0</td></tr><tr><td>self harm not unsafe</td><td>1.0</td><td>1.0</td><td>1.0</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of GPT-4T (May 2024) and GPT-40 on various medical and clinical knowledge tasks, showing GPT-40's improvement.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison of GPT-4T (May 2024) and GPT-40 on various medical and clinical knowledge tasks.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21276/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21276/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}