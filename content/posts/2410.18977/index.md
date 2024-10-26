---
title: "MotionCLR: Motion Generation and Training-free Editing via Understanding Attention Mechanisms"
summary: "MotionCLR is a novel attention-based diffusion model for human motion generation and editing. It leverages self- and cross-attention mechanisms for fine-grained control, enabling various training-free....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

MotionCLR is a novel attention-based diffusion model for human motion generation and editing. It leverages self- and cross-attention mechanisms for fine-grained control, enabling various training-free editing operations like (de)emphasizing, replacement, and sequence shifting. The model's explainability via attention maps allows for action counting and addresses generation failures.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18977" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces MotionCLR, an attention-based diffusion model for human motion generation and editing.  It provides a clear understanding of how self- and cross-attention mechanisms work within the model to achieve fine-grained control over motion generation and editing, enabling various interactive editing operations without retraining.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MotionCLR achieves comparable generation performance with state-of-the-art methods while providing clear modeling of the text-aligned motion generation process. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MotionCLR clarifies the roles of self- and cross-attention mechanisms in a motion diffusion model, enabling interactive motion editing via attention map manipulation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MotionCLR demonstrates good explainability through attention maps, enabling tasks like action counting and grounded motion generation to address failure cases. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")





{{< table-caption caption="🔽 Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice." >}}
| Methods | R-Precision↑ | R-Precision↑ | R-Precision↑ | FID↓ | MM-Dist↓ | Multi-Modality↑ |
| --- | --- | --- | --- | --- | --- | --- |
| Methods | Top 1 | Top 2 | Top 3 | FID↓ | MM-Dist↓ | Multi-Modality↑ |
| TM2T [2022b] | 0.424±0.003 | 0.618±0.003 | 0.729±0.002 | 1.501 ±0.017 | 3.467±0.011 | 2.424±0.093 |
| T2M [2022a] | 0.455±0.003 | 0.636±0.003 | 0.736±0.002 | 1.087±0.021 | 3.347±0.008 | 2.219±0.074 |
| MDM [2022b] | - | - | 0.611 ±0.007 | 0.544±0.044 | 5.566±0.027 | 2.799±0.072 |
| MLD [2023b] | 0.481 ±0.003 | 0.673±0.003 | 0.772±0.002 | 0.473±0.013 | 3.196±0.010 | 2.413±0.079 |
| MotionDiffuse [2024b] | 0.491 ±0.001 | 0.681 ±0.001 | 0.782±0.001 | 0.630±0.001 | 3.113±0.001 | 1.553±0.042 |
| T2M-GPT [2023a] | 0.492±0.003 | 0.679±0.002 | 0.775±0.002 | 0.141 士0.005 | 3.121 ±0.009 | 1.831 ±0.048 |
| ReMoDiffuse [2023b] | 0.510±0.005 | 0.698±0.006 | 0.795±0.004 | 0.103±0.004 | 2.974±0.016 | 1.795±0.043 |
| MoMask [2024a] | 0.521 ±0.002 | 0.713±0.002 | 0.807±0.002 | 0.045 ±0.002 | 2.958±0.008 | 1.241 ±0.040 |
| MotionCLR | 0.542±0.001 | 0.733±0.002 | 0.827±0.003 | 0.099±0.003 | 2.981±0.011 | 2.145±0.043 |
| MotionCLR* | 0.544±0.001 | 0.732±0.001 | 0.831 士0.002 | 0.269±0.001 | 2.806±0.014 | 1.985±0.044 |
{{< /table-caption >}}


------



<details>
<summary>More on figures
</summary>


![](figures/figures_1_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_1_2.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_1_3.png "🔼 Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.")

![](figures/figures_1_4.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_1_5.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_1_6.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_1_7.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_1_8.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_4_0.png "🔼 Figure 2: System overview of MotionCLR architecture. (a) The basic CLR block includes four layers. (b) The sampling (a.k.a. Samp.) block includes two CLR blocks and one down/up-sampling operation. (c) MotionCLR is a U-Net-like architecture, composed of several Sampling blocks.")

![](figures/figures_5_0.png "🔼 Figure 3: Empirical study of attention mechanisms. We use 'a person jumps.' as an example. (a) Key frames of generated motion. (b) The root trajectory along the Y-axis (vertical height). The character jumps on ~15-40f, ~60-80f, and ~125-145f, respectively. (c) The cross-attention between timesteps and words. The 'jump' word is highly activated aligning with the 'jump' action. (d) The self-attention map visualization. It is obvious that the character jumps three times. Different jumps share similar local motion patterns.")

![](figures/figures_7_0.png "🔼 Figure 5: Motion (de-)emphasizing. Different weights of 'jump' (↑ or ↓) in 'a man jumps.'")

![](figures/figures_8_0.png "🔼 Figure 3: Empirical study of attention mechanisms. We use 'a person jumps.' as an example. (a) Key frames of generated motion. (b) The root trajectory along the Y-axis (vertical height). The character jumps on ~15-40f, ~60-80f, and ~125-145f, respectively. (c) The cross-attention between timesteps and words. The 'jump' word is highly activated aligning with the 'jump' action. (d) The self-attention map visualization. It is obvious that the character jumps three times. Different jumps share similar local motion patterns.")

![](figures/figures_8_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_8_2.png "🔼 Figure 3: Empirical study of attention mechanisms. We use 'a person jumps.' as an example. (a) Key frames of generated motion. (b) The root trajectory along the Y-axis (vertical height, in Fig. 3b). As can be seen in Fig. 3, the character jumps at ~ 15-40f, ~ 60-80f, and ~ 125-145f, respectively. (c) The cross-attention between timesteps and words. The 'jump' word is highly activated aligning with the 'jump' action. (d) The self-attention map visualization. It is obvious that the character jumps three times. Different jumps share similar local motion patterns.")

![](figures/figures_8_3.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_9_0.png "🔼 Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.")

![](figures/figures_9_1.png "🔼 Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.")

![](figures/figures_10_0.png "🔼 Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.")

![](figures/figures_10_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_10_2.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_10_3.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_10_4.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_10_5.png "🔼 Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.")

![](figures/figures_24_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_2.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_3.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_4.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_5.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_6.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_7.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_8.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_9.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_10.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_24_11.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_25_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_25_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_26_0.png "🔼 Figure 10: Diverse generated motions driven by the same example. Prompt: “a person steps sideways to the left and then sideways to the right.” (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.")

![](figures/figures_26_1.png "🔼 Figure 10: Diverse generated motions driven by the same example. Prompt: “a person steps sideways to the left and then sideways to the right.”. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.")

![](figures/figures_27_0.png "🔼 Figure 13: Comparison between w/ vs. w/o grounded motion generation settings. The root height and motion visualization of the textual prompt “a person jumps four times”.")

![](figures/figures_28_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_29_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_30_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_30_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_31_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_33_0.png "🔼 Figure 3: Empirical study of attention mechanisms. We use 'a person jumps.' as an example. (a) Key frames of generated motion. (b) The root trajectory along the Y-axis (vertical height). The character jumps on ~15-40f, ~60-80f, and ~125-145f, respectively. (c) The cross-attention between timesteps and words. The 'jump' word is highly activated aligning with the 'jump' action. (d) The self-attention map visualization. It is obvious that the character jumps three times. Different jumps share similar local motion patterns.")

![](figures/figures_37_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_37_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_38_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_39_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_39_1.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_40_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")

![](figures/figures_41_0.png "🔼 Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice." >}}
| Ablation | R-Precision↑ | R-Precision↑ | R-Precision↑ | FID↓ |
| --- | --- | --- | --- | --- |
| Ablation | Top 1 | Top 2 | Top 3 | FID↓ |
| (1) | 0.512 | 0.705 | 0.792 | 0.544 |
| (2) | 0.509 | 0.703 | 0.788 | 0.550 |
| MotionCLR | 0.544 | 0.732 | 0.831 | 0.269 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice." >}}
| Rishabh Dabral, Muhammad Hamza Mughal, Vladislav Golyanik, and Christian Theobalt. Mofusion: A framework for denoising-diffusion-based motion synthesis. In CVPR, pages 9760-9770, 2023. |
| --- |
| Damai Dai, Li Dong, Yaru Hao, Zhifang Sui, Baobao Chang, and Furu Wei. Knowledge neurons in pretrained transformers. In ACL, pages 8493-8502, 2022. |
| Wenxun Dai, Ling-Hao Chen, Jingbo Wang, Jinpeng Liu, Bo Dai, and Yansong Tang. Motionlcm: Real-time controllable motion generation via latent consistency model. ECCV, 2024. |
| Christian Diller and Angela Dai. Cg-hoi: Contact-guided 3d human-object interaction generation. In CVPR, pages 19888-19901, 2024. |
| Markos Diomataris, Nikos Athanasiou, Omid Taheri, Xi Wang, Otmar Hilliges, and Michael J Black. Wandr: Intention-guided human motion generation. In CVPR, pages 927-936, 2024. |
| Ke Fan, Junshu Tang, Weijian Cao, Ran Yi, Moran Li, Jingyu Gong, Jiangning Zhang, Yabiao Wang, Chengjie Wang, and Lizhuang Ma. Freemotion: A unified framework for number-free text-to-motion synthesis. ECCV, 2024. |
| Bin Feng, Tenglong Ao, Zequn Liu, Wei Ju, Libin Liu, and Ming Zhang. Robust dancer: Long-term 3d dance synthesis using unpaired data. arXiv preprint arXiv:2303.16856, 2023. |
| Mor Geva, Roei Schuster, Jonathan Berant, and Omer Levy. Transformer feed-forward layers are key-value memories. In EMNLP, pages 5484-5495, 2021. |
| Anindita Ghosh, Rishabh Dabral, Vladislav Golyanik, Christian Theobalt, and Philipp Slusallek. Remos: Reactive 3d motion synthesis for two-person interactions. ECCV, 2023. |
| Purvi Goel, Kuan-Chieh Wang, C Karen Liu, and Kayvon Fatahalian. Iterative motion editing with natural language. In ACM SIGGRAPH, pages 1-9, 2024. |
| Kehong Gong, Dongze Lian, Heng Chang, Chuan Guo, Zihang Jiang, Xinxin Zuo, Michael Bi Mi, and Xinchao Wang. Tm2d: Bimodality driven 3d dance generation via music-text integration. In ICCV, pages 9942-9952, 2023. |
| Chuan Guo, Shihao Zou, Xinxin Zuo, Sen Wang, Wei Ji, Xingyu Li, and Li Cheng. Generating diverse and natural 3d human motions from text. In CVPR, pages 5152-5161, 2022a. |
| Chuan Guo, Xinxin Zuo, Sen Wang, and Li Cheng. Tm2t: Stochastic and tokenized modeling for the reciprocal generation of 3d human motions and texts. In ECCV, pages 580-597, 2022b. |
| Chuan Guo, Yuxuan Mu, Muhammad Gohar Javed, Sen Wang, and Li Cheng. Momask: Generative masked modeling of 3d human motions. In CVPR, pages 1900-1910, 2024a. |
| Chuan Guo, Yuxuan Mu, Xinxin Zuo, Peng Dai, Youliang Yan, Juwei Lu, and Li Cheng. Generative human motion stylization in latent space. ICLR, 2024b. |
| Xinying Guo, Mingyuan Zhang, Haozhe Xie, Chenyang Gu, and Ziwei Liu. Crowdmogen: Zero-shot text-driven collective motion generation. arXiv preprint arXiv:2407.06188, 2024c. |
| Bo Han, Hao Peng, Minjing Dong, Yi Ren, Yixuan Shen, and Chang Xu. Amd: Autoregressive motion diffusion. In AAAI, pages 2022-2030, 2024. |
| Ligong Han, Song Wen, Qi Chen, Zhixing Zhang, Kunpeng Song, Mengwei Ren, Ruijiang Gao, Yuxiao Chen, Di Liu 0003, Qilong Zhangli, et al. Improving tuning-free real image editing with proximal guidance. WACV, 2023. |
| Yaru Hao, Li Dong, Furu Wei, and Ke Xu. Self-attention attribution: Interpreting information interactions inside transformer. In AAAI, volume 35, pages 12963-12971, 2021. |
| Felix G Harvey, Mike Yurick, Derek Nowrouzezahrai, and Christopher Pal. Robust motion in- betweening. ACM TOG, 39(4):60-1, 2020. |
| Amir Hertz, Ron Mokady, Jay Tenenbaum, Kfir Aberman, Yael Pritch, and Daniel Cohen-Or. Prompt- to-prompt image editing with cross attention control. ICLR, 2023. |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice." >}}
| w | I | 1.5 | 2 | 2.5 | 3 | 3.5 |
| --- | --- | --- | --- | --- | --- | --- |
| FID | 0.801 | 0.408 | 0.318 | 0.217 | 0.317 | 0.396 |
| TMR-sim. | 51.987 | 52.351 | 53.512 | 53.956 | 54.300 | 54.529 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice." >}}
|  | FID ↓ | TMR-sim.→ |
| --- | --- | --- |
| direct (pseudo GT) | 0.315 | 0.543 |
| unreplaced | 0.325 | 0.567 |
| unreplaced (unpaired T-M) | 0.925 | 0.490 |
| ours replaced | 0.330 | 0.535 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice." >}}
| begin | end | FID↓ | TMR-sim.↑ |
| --- | --- | --- | --- |
| 8 | 11 | 0.339 | 0.472 |
| 5 | 14 | 0.325 | 0.498 |
| 1 | 18 | 0.330 | 0.535 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice." >}}
|  | FID ↓ | Div. ↑ |
| --- | --- | --- |
| Diff. manipulation | 0.718 | 1.502 |
| MotionCLR manipulation | 0.427 | 2.567 |
{{< /table-caption >}}


</details>

------

