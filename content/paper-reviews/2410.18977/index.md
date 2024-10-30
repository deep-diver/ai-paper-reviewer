---
title: "MotionCLR: Motion Generation and Training-free Editing via Understanding Attention Mechanisms"
summary: "MotionCLR: Training-free, interactive human motion editing via attention mechanism manipulation.  Versatile editing, good generation quality, and strong explainability achieved."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", ]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.18977 {{< /keyword >}}

### TL;DR


{{< lead >}}

MotionCLR is a new AI model for generating and editing human movements. Unlike older models, MotionCLR understands the link between words and movements, making it easy to precisely adjust animations. By tweaking the model's attention mechanisms, users can effortlessly modify elements like speed, intensity, or even swap actions without retraining the model. Experiments show MotionCLR generates realistic-looking movements and allows for detailed editing, which is very useful for creating animations and virtual characters.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18977" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18977" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel attention-based motion diffusion model, MotionCLR, that enables training-free interactive editing of human motion.  It addresses limitations of previous models by explicitly modeling text-motion correspondence and offering superior explainability.  The method's versatility and ease of use open up new avenues for research in human animation, AI-driven content creation, and beyond.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MotionCLR, a novel attention-based diffusion model, achieves comparable generation performance to state-of-the-art methods while offering superior explainability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} MotionCLR enables training-free interactive motion editing through simple manipulations of attention maps, including de-emphasizing, emphasizing, in-place replacement, and sequence shifting. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The paper clarifies the roles of self- and cross-attention in motion generation and demonstrates the potential for action counting and grounded motion generation via attention maps. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18977/figures_1_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing through various manipulation methods on attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>





![](https://ai-paper-reviewer.com/2410.18977/charts_6_0.png)

> 🔼 The figure illustrates three motion editing methods (motion (de-)emphasizing, in-place motion replacement, and motion sequence shifting) by manipulating attention maps.
> <details>
> <summary>read the caption</summary>
> Figure 4: Motion editing via manipulating attention maps.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td rowspan="2">Methods</td><td colspan="3">R-Precision↑</td><td rowspan="2">FID↓</td><td rowspan="2">MM-Dist↓</td><td rowspan="2">Multi-Modality↑</td></tr><tr><td>Top 1</td><td>Top 2</td><td>Top 3</td></tr><tr><td>TM2T [2022b]</td><td>0.424±0.003</td><td>0.618±0.003</td><td>0.729±0.002</td><td>1.501 ±0.017</td><td>3.467±0.011</td><td>2.424±0.093</td></tr><tr><td>T2M [2022a]</td><td>0.455±0.003</td><td>0.636±0.003</td><td>0.736±0.002</td><td>1.087±0.021</td><td>3.347±0.008</td><td>2.219±0.074</td></tr><tr><td>MDM [2022b]</td><td>-</td><td>-</td><td>0.611 ±0.007</td><td>0.544±0.044</td><td>5.566±0.027</td><td>2.799±0.072</td></tr><tr><td>MLD [2023b]</td><td>0.481 ±0.003</td><td>0.673±0.003</td><td>0.772±0.002</td><td>0.473±0.013</td><td>3.196±0.010</td><td>2.413±0.079</td></tr><tr><td>MotionDiffuse [2024b]</td><td>0.491 ±0.001</td><td>0.681 ±0.001</td><td>0.782±0.001</td><td>0.630±0.001</td><td>3.113±0.001</td><td>1.553±0.042</td></tr><tr><td>T2M-GPT [2023a]</td><td>0.492±0.003</td><td>0.679±0.002</td><td>0.775±0.002</td><td>0.141 士0.005</td><td>3.121 ±0.009</td><td>1.831 ±0.048</td></tr><tr><td>ReMoDiffuse [2023b]</td><td>0.510±0.005</td><td>0.698±0.006</td><td>0.795±0.004</td><td>0.103±0.004</td><td>2.974±0.016</td><td>1.795±0.043</td></tr><tr><td>MoMask [2024a]</td><td>0.521 ±0.002</td><td>0.713±0.002</td><td>0.807±0.002</td><td>0.045 ±0.002</td><td>2.958±0.008</td><td>1.241 ±0.040</td></tr><tr><td>MotionCLR</td><td>0.542±0.001</td><td>0.733±0.002</td><td>0.827±0.003</td><td>0.099±0.003</td><td>2.981±0.011</td><td>2.145±0.043</td></tr><tr><td>MotionCLR*</td><td>0.544±0.001</td><td>0.732±0.001</td><td>0.831 士0.002</td><td>0.269±0.001</td><td>2.806±0.014</td><td>1.985±0.044</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the performance of MotionCLR with other state-of-the-art methods on the HumanML3D dataset using various metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.18977/figures_1_1.png)

> 🔼 Figure 3 shows an empirical study of the attention mechanisms in MotionCLR, visualizing key frames, root trajectory, cross-attention between timesteps and words, and the self-attention map for the sentence 'a person jumps.'
> <details>
> <summary>read the caption</summary>
> Figure 3: Empirical study of attention mechanisms. We use 'a person jumps.' as an example. (a) Key frames of generated motion. (b) The root trajectory along the Y-axis (vertical height, in Fig. 3b). As can be seen in Fig. 3, the character jumps at ~ 15-40f, ~ 60-80f, and ~ 125-145f, respectively. (c) The cross-attention between timesteps and words. The 'jump' word is highly activated aligning with the 'jump' action. (d) The self-attention map visualization. It is obvious that the character jumps three times. Different jumps share similar local motion patterns.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_1_2.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulation, showcasing motion de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_1_3.png)

> 🔼 MotionCLR supports versatile motion generation and editing through various methods such as de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_1_4.png)

> 🔼 The figure shows three different motion editing methods (motion (de-)emphasizing, in-place motion replacement, and motion sequence shifting) by manipulating attention maps.
> <details>
> <summary>read the caption</summary>
> Figure 4: Motion editing via manipulating attention maps.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_1_5.png)

> 🔼 MotionCLR supports versatile motion generation and editing, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_1_6.png)

> 🔼 The figure shows various motion generation and editing capabilities of the MotionCLR model, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequence editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_1_7.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_1_8.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention mechanisms, showcasing motion de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_4_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_5_0.png)

> 🔼 The figure shows empirical studies of the attention mechanisms in MotionCLR, visualizing the root trajectory, cross-attention between timesteps and words, and the self-attention map for a generated motion of a person jumping.
> <details>
> <summary>read the caption</summary>
> Figure 3: Empirical study of attention mechanisms. We use “a person jumps.” as an example. (a) Key frames of generated motion. (b) The root trajectory along the Y -axis (vertical height). The character jumps on ∼ 15 − 40f, ∼ 60 − 80f, and ∼ 125 − 145f, respectively. (c) The cross-attention between timesteps and words. The “jump” word is highly activated aligning with the “jump” action. (d) The self-attention map visualization. It is obvious that the character jumps three times. Different jumps share similar local motion patterns.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_7_0.png)

> 🔼 The figure shows the results of motion (de-)emphasizing by manipulating the attention weights of the word 'jump', resulting in varied heights and frequencies of jumps.
> <details>
> <summary>read the caption</summary>
> Figure 5: Motion (de-)emphasizing. Different weights of 'jump' (↑ or ↓) in 'a man jumps.'
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_8_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_8_1.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_8_2.png)

> 🔼 The figure empirically studies the attention mechanisms of MotionCLR, visualizing the root trajectory, cross-attention between timesteps and words, and self-attention maps to demonstrate the model's ability to align text and motion and identify similar local motion patterns.
> <details>
> <summary>read the caption</summary>
> Figure 3: Empirical study of attention mechanisms. We use “a person jumps.” as an example. (a) Key frames of generated motion. (b) The root trajectory along the Y-axis (vertical height). The character jumps on ~15-40f, ~60-80f, and ~125-145f, respectively. (c) The cross-attention between timesteps and words. The “jump” word is highly activated aligning with the “jump” action. (d) The self-attention map visualization. It is obvious that the character jumps three times. Different jumps share similar local motion patterns.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_8_3.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_9_0.png)

> 🔼 Figure 10 shows diverse human motions generated from the same example prompt, demonstrating both similarities in overall movement and variations in specific details.
> <details>
> <summary>read the caption</summary>
> Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_9_1.png)

> 🔼 Figure 10 shows diverse generated motions from the same example prompt, demonstrating both similar movement content and diverse root trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_10_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention maps, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequence shifting.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_10_1.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_10_2.png)

> 🔼 MotionCLR supports versatile motion generation and editing through various methods such as motion de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_10_3.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_10_4.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention mechanisms, as shown through examples of de-emphasizing, in-place replacement, diverse generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_10_5.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention maps, showcasing motion de-emphasizing, emphasizing, in-place replacement, style transfer, and sequence editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention maps, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequence shifting.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_1.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulations, showcasing motion de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_2.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_3.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_4.png)

> 🔼 MotionCLR supports versatile motion generation and editing, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_5.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulation, showcasing motion de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_6.png)

> 🔼 MotionCLR supports versatile motion generation and editing, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_7.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention mechanisms, including de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_8.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_9.png)

> 🔼 MotionCLR supports versatile motion generation and editing through various methods, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_10.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulation, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_24_11.png)

> 🔼 MotionCLR supports versatile motion generation and editing through various methods such as de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_25_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulation of attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_25_1.png)

> 🔼 MotionCLR supports versatile motion generation and editing through attention mechanism manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_26_0.png)

> 🔼 Figure 10 shows diverse generated motions from the same example prompt, demonstrating both similar movement content and diverse root trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 10: Diverse generated motions driven by the same example. Prompt: 'a person steps sideways to the left and then sideways to the right.'. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_26_1.png)

> 🔼 Figure 10 shows diverse generated motions from the same example motion prompt, highlighting both similar movement content and diverse root trajectories.
> <details>
> <summary>read the caption</summary>
> Figure 10: Diverse generated motions driven by the same example. Prompt: “a person steps sideways to the left and then sideways to the right.”. (a) The diverse generated motions driven by the same example motion share similar movement content. (b) The root trajectories of diverse motions are with similar global trajectories, but not the same.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_27_0.png)

> 🔼 The figure shows a comparison of motion generation results with and without temporal grounding, illustrating the impact of grounding on correcting hallucination in action counting.
> <details>
> <summary>read the caption</summary>
> Figure 13: Comparison between w/ vs. w/o grounded motion generation settings. The root height and motion visualization of the textual prompt “a person jumps four times”.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_28_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulations, showcasing motion de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_29_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing by manipulating attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_30_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via various methods including de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_30_1.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention maps, including motion (de-)emphasizing, in-place motion replacement, example-based motion generation, and motion sequence shifting.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_31_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_33_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing through various manipulation methods, including de-emphasizing, emphasizing, in-place replacement, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_37_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention maps.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_37_1.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention maps.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_38_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via attention mechanism manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_39_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_39_1.png)

> 🔼 MotionCLR supports versatile motion generation and editing via various methods, including de-emphasizing, in-place replacement, example-based generation, style transfer and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_40_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via manipulating attention maps, showing examples of de-emphasizing, in-place replacement, example-based generation, style transfer, and sequentiality editing.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



![](https://ai-paper-reviewer.com/2410.18977/figures_41_0.png)

> 🔼 MotionCLR supports versatile motion generation and editing via several methods including motion de-emphasizing, in-place motion replacement, example-based motion generation, motion style transfer, and motion sequence shifting.
> <details>
> <summary>read the caption</summary>
> Figure 1: MotionCLR (/'moυ∫n klır/) supports versatile motion generation and editing. The blue and red figures represent original and edited motions. (a) Motion deemphasizing and emphasizing via adjusting the weight of 'jump'. (b) In-place replacing the action of 'walks' with 'jumps' and 'dances'. (c) Generating diverse motion with the same example motion. (d) Transferring motion style referring to two motions (style and content reference). (e) Editing the sequentiality of a motion.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.18977/charts_6_1.png)

> 🔼 The figure shows three different motion editing methods (motion (de-)emphasizing, in-place motion replacement, and motion sequence shifting) by manipulating attention maps.
> <details>
> <summary>read the caption</summary>
> Figure 4: Motion editing via manipulating attention maps.
> </details>


![](https://ai-paper-reviewer.com/2410.18977/charts_7_0.png)

> 🔼 The chart visualizes how manipulating the weight of the word 'jump' in the prompt affects the height and frequency of jumps in the generated motion.
> <details>
> <summary>read the caption</summary>
> Figure 5: Motion (de-)emphasizing. Different weights of 'jump' (↑ or ↓) in 'a man jumps.'
> </details>


![](https://ai-paper-reviewer.com/2410.18977/charts_9_0.png)

> 🔼 t-SNE plot visualizes the similarity of diverse generated motion results driven by different example motions, showing that similar examples cluster together.
> <details>
> <summary>read the caption</summary>
> Figure 8: t-SNE visualization of different example-based generated results. Different colors imply different driven examples.
> </details>


![](https://ai-paper-reviewer.com/2410.18977/charts_10_0.png)

> 🔼 The chart compares the error rates of action counting using root trajectory and self-attention map in MotionCLR, showing the superiority of the self-attention map approach.
> <details>
> <summary>read the caption</summary>
> Figure 12: Action counting error rate comparison. Root trajectory (Traj.) vs. attention map (Ours). “σ” is the smoothing parameter.
> </details>


![](https://ai-paper-reviewer.com/2410.18977/charts_20_0.png)

> 🔼 The self-attention maps visualize how changing the weights affects the emphasis of motion during (de-)emphasizing.
> <details>
> <summary>read the caption</summary>
> Figure 14: Additional visualization results for different (de-)emphasizing weights. The self-attention maps show how varying the different weights (e.g., ↓ 0.05, ↓ 0.10, ↑ 0.33, and ↑ 1.00) affect the emphasis on motion.
> </details>


![](https://ai-paper-reviewer.com/2410.18977/charts_21_0.png)

> 🔼 The chart shows the effect of varying classifier-free guidance weights (w) on the height of generated jumps, demonstrating that while changing w influences the general alignment, it does not provide precise control over finer details.
> <details>
> <summary>read the caption</summary>
> Figure 15: The effect of varying w in classifier-free guidance on generated motions. While changing w influences the general alignment between the text 'a man jumps.' and the generated motion, it does not provide precise control over finer details like jump height and frequency.
> </details>


![](https://ai-paper-reviewer.com/2410.18977/charts_27_0.png)

> 🔼 The chart visualizes the impact of modifying the weight of the word 'jump' on the height of a generated jumping motion, comparing vanilla, de-emphasized, and emphasized results.
> <details>
> <summary>read the caption</summary>
> Figure 5: Motion (de-)emphasizing. Different weights of 'jump' (↑ or ↓) in 'a man jumps.'.
> </details>


![](https://ai-paper-reviewer.com/2410.18977/charts_34_0.png)

> 🔼 Figure 26 shows an empirical study of attention mechanisms, visualizing how self- and cross-attention respond to a sequence with walking and jumping actions, highlighting the alignment of attention with the actions and the identification of repeated motion patterns.
> <details>
> <summary>read the caption</summary>
> Figure 26: Empirical study of attention patterns. We use the example “a person walks stop and then jumps.” (a) Horizontal distance traveled by the person over time, highlighting distinct walking and jumping phases. (b) The vertical height changes of the person, indicating variations during walking and jumping actions. (c) The cross-attention map between timesteps and the described actions. Notice that “walk” and “jump” receive a stronger attention signal corresponding to the walk and jump segments. (d) The self-attention map, which clearly identifies repeated walking and jumping cycles, shows similar patterns in the sub-actions. (e) Visualization of the motion sequences, demonstrating the walking and jumping actions.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='16' style='font-size:18px'><tr><td rowspan="2">Ablation</td><td colspan="3">R-Precision↑</td><td rowspan="2">FID↓</td></tr><tr><td>Top 1</td><td>Top 2</td><td>Top 3</td></tr><tr><td>(1)</td><td>0.512</td><td>0.705</td><td>0.792</td><td>0.544</td></tr><tr><td>(2)</td><td>0.509</td><td>0.703</td><td>0.788</td><td>0.550</td></tr><tr><td>MotionCLR</td><td>0.544</td><td>0.732</td><td>0.831</td><td>0.269</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of MotionCLR with other state-of-the-art methods on the HumanML3D dataset using metrics such as R-Precision, FID, and MM-Dist.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Rishabh Dabral, Muhammad Hamza Mughal, Vladislav Golyanik, and Christian Theobalt. Mofusion: A framework for denoising-diffusion-based motion synthesis. In CVPR, pages 9760-9770, 2023.</td></tr><tr><td>Damai Dai, Li Dong, Yaru Hao, Zhifang Sui, Baobao Chang, and Furu Wei. Knowledge neurons in pretrained transformers. In ACL, pages 8493-8502, 2022.</td></tr><tr><td>Wenxun Dai, Ling-Hao Chen, Jingbo Wang, Jinpeng Liu, Bo Dai, and Yansong Tang. Motionlcm: Real-time controllable motion generation via latent consistency model. ECCV, 2024.</td></tr><tr><td>Christian Diller and Angela Dai. Cg-hoi: Contact-guided 3d human-object interaction generation. In CVPR, pages 19888-19901, 2024.</td></tr><tr><td>Markos Diomataris, Nikos Athanasiou, Omid Taheri, Xi Wang, Otmar Hilliges, and Michael J Black. Wandr: Intention-guided human motion generation. In CVPR, pages 927-936, 2024.</td></tr><tr><td>Ke Fan, Junshu Tang, Weijian Cao, Ran Yi, Moran Li, Jingyu Gong, Jiangning Zhang, Yabiao Wang, Chengjie Wang, and Lizhuang Ma. Freemotion: A unified framework for number-free text-to-motion synthesis. ECCV, 2024.</td></tr><tr><td>Bin Feng, Tenglong Ao, Zequn Liu, Wei Ju, Libin Liu, and Ming Zhang. Robust dancer: Long-term 3d dance synthesis using unpaired data. arXiv preprint arXiv:2303.16856, 2023.</td></tr><tr><td>Mor Geva, Roei Schuster, Jonathan Berant, and Omer Levy. Transformer feed-forward layers are key-value memories. In EMNLP, pages 5484-5495, 2021.</td></tr><tr><td>Anindita Ghosh, Rishabh Dabral, Vladislav Golyanik, Christian Theobalt, and Philipp Slusallek. Remos: Reactive 3d motion synthesis for two-person interactions. ECCV, 2023.</td></tr><tr><td>Purvi Goel, Kuan-Chieh Wang, C Karen Liu, and Kayvon Fatahalian. Iterative motion editing with natural language. In ACM SIGGRAPH, pages 1-9, 2024.</td></tr><tr><td>Kehong Gong, Dongze Lian, Heng Chang, Chuan Guo, Zihang Jiang, Xinxin Zuo, Michael Bi Mi, and Xinchao Wang. Tm2d: Bimodality driven 3d dance generation via music-text integration. In ICCV, pages 9942-9952, 2023.</td></tr><tr><td>Chuan Guo, Shihao Zou, Xinxin Zuo, Sen Wang, Wei Ji, Xingyu Li, and Li Cheng. Generating diverse and natural 3d human motions from text. In CVPR, pages 5152-5161, 2022a.</td></tr><tr><td>Chuan Guo, Xinxin Zuo, Sen Wang, and Li Cheng. Tm2t: Stochastic and tokenized modeling for the reciprocal generation of 3d human motions and texts. In ECCV, pages 580-597, 2022b.</td></tr><tr><td>Chuan Guo, Yuxuan Mu, Muhammad Gohar Javed, Sen Wang, and Li Cheng. Momask: Generative masked modeling of 3d human motions. In CVPR, pages 1900-1910, 2024a.</td></tr><tr><td>Chuan Guo, Yuxuan Mu, Xinxin Zuo, Peng Dai, Youliang Yan, Juwei Lu, and Li Cheng. Generative human motion stylization in latent space. ICLR, 2024b.</td></tr><tr><td>Xinying Guo, Mingyuan Zhang, Haozhe Xie, Chenyang Gu, and Ziwei Liu. Crowdmogen: Zero-shot text-driven collective motion generation. arXiv preprint arXiv:2407.06188, 2024c.</td></tr><tr><td>Bo Han, Hao Peng, Minjing Dong, Yi Ren, Yixuan Shen, and Chang Xu. Amd: Autoregressive motion diffusion. In AAAI, pages 2022-2030, 2024.</td></tr><tr><td>Ligong Han, Song Wen, Qi Chen, Zhixing Zhang, Kunpeng Song, Mengwei Ren, Ruijiang Gao, Yuxiao Chen, Di Liu 0003, Qilong Zhangli, et al. Improving tuning-free real image editing with proximal guidance. WACV, 2023.</td></tr><tr><td>Yaru Hao, Li Dong, Furu Wei, and Ke Xu. Self-attention attribution: Interpreting information interactions inside transformer. In AAAI, volume 35, pages 12963-12971, 2021.</td></tr><tr><td>Felix G Harvey, Mike Yurick, Derek Nowrouzezahrai, and Christopher Pal. Robust motion in- betweening. ACM TOG, 39(4):60-1, 2020.</td></tr><tr><td>Amir Hertz, Ron Mokady, Jay Tenenbaum, Kfir Aberman, Yael Pritch, and Daniel Cohen-Or. Prompt- to-prompt image editing with cross attention control. ICLR, 2023.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares MotionCLR's performance against other state-of-the-art methods on the HumanML3D dataset using metrics such as R-Precision, FID, and MM-Dist.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Libin Liu, KangKang Yin, Michiel Van de Panne, Tianjia Shao, and Weiwei Xu. Sampling-based contact-rich motion control. In ACM SIGGRAPH, pages 1-10, 2010.</td></tr><tr><td>Yunze Liu, Changxi Chen, and Li Yi. Interactive humanoid: Online full-body motion reaction synthesis with social affordance canonicalization and forecasting. arXiv preprint arXiv:2312.08983, 2023.</td></tr><tr><td>Cheng Lu, Yuhao Zhou, Fan Bao, Jianfei Chen, Chongxuan Li, and Jun Zhu. Dpm-solver: A fast ode solver for diffusion probabilistic model sampling in around 10 steps. NeurIPS, pages 5775-5787, 2022.</td></tr><tr><td>Shunlin Lu, Ling-Hao Chen, Ailing Zeng, Jing Lin, Ruimao Zhang, Lei Zhang, and Heung- Yeung Shum. Humantomato: Text-aligned whole-body motion generation. ICML, 2024.</td></tr><tr><td>Jie Ma, Yalong Bai, Bineng Zhong, Wei Zhang, Ting Yao, and Tao Mei. Visualizing and understanding patch interactions in vision transformer. IEEE TNNLS, 2023.</td></tr><tr><td>Chong Mou, Xintao Wang, Jiechong Song, Ying Shan, and Jian Zhang. Dragondiffusion: Enabling drag-style manipulation on diffusion models. ICLR, 2024.</td></tr><tr><td>Gaurav Parmar, Krishna Kumar Singh, Richard Zhang, Yijun Li, Jingwan Lu, and Jun- Yan Zhu. Zero-shot image-to-image translation. In ACM SIGGRAPH, pages 1-11, 2023.</td></tr><tr><td>Adam Paszke, Sam Gross, Francisco Massa, Adam Lerer, James Bradbury, Gregory Chanan, Trevor Killeen, Zeming Lin, Natalia Gimelshein, Luca Antiga, et al. Pytorch: An imperative style, high-performance deep learning library. NeurIPS, 2019.</td></tr><tr><td>Fabian Pedregosa, Gael Varoquaux, Alexandre Gramfort, Vincent Michel, Bertrand Thirion, Olivier Grisel, Mathieu Blondel, Peter Prettenhofer, Ron Weiss, Vincent Dubourg, et al. Scikit-learn: Machine learning in python. IMLR, 12:2825-2830, 2011.</td></tr><tr><td>Xiaogang Peng, Yiming Xie, Zizhao Wu, Varun Jampani, Deqing Sun, and Huaizu Jiang. Hoi-diff: Text-driven synthesis of 3d human-object interactions using diffusion models. arXiv preprint arXiv:2312.06553, 2023.</td></tr><tr><td>Mathis Petrovich, Michael J Black, and Gul Varol. Temos: Generating diverse human motions from textual descriptions. In ECCV, pages 480-497, 2022.</td></tr><tr><td>Mathis Petrovich, Michael J Black, and Gul Varol. Tmr: Text-to-motion retrieval using contrastive 3d human motion synthesis. In ICCV, pages 9488-9497, 2023.</td></tr><tr><td>Mathis Petrovich, Or Litany, Umar Iqbal, Michael J Black, Gul Varol, Xue Bin Peng, and Davis Rempe. Multi-track timeline control for text-driven 3d human motion generation. In CVPRW, pages 1911-1921, 2024.</td></tr><tr><td>Ekkasit Pinyoanuntapong, Pu Wang, Minwoo Lee, and Chen Chen. Mmm: Generative masked motion model. In CVPR, pages 1546-1555, 2024.</td></tr><tr><td>Matthias Plappert, Christian Mandery, and Tamim Asfour. Learning a bidirectional mapping between human whole-body motion and natural language using deep recurrent neural networks. RAS, 109: 13-26, 2018.</td></tr><tr><td>Sigal Raab, Inbal Leibovitch, Peizhuo Li, Kfir Aberman, Olga Sorkine-Hornung, and Daniel Cohen- Or. Modi: Unconditional motion synthesis from diverse data. In CVPR, pages 13873-13883, 2023.</td></tr><tr><td>Sigal Raab, Inbar Gat, Nathan Sala, Guy Tevet, Rotem Shalev-Arkushin, Ohad Fried, Amit H Bermano, and Daniel Cohen-Or. Monkey see, monkey do: Harnessing self-attention in motion diffusion for zero-shot motion transfer. ACM SIGGRAPH Asia, 2024a.</td></tr><tr><td>Sigal Raab, Inbal Leibovitch, Guy Tevet, Moab Arar, Amit Haim Bermano, and Daniel Cohen-Or. Single motion diffusion. In ICLR, 2024b.</td></tr><tr><td>Olaf Ronneberger, Philipp Fischer, and Thomas Brox. U-net: Convolutional networks for biomedical image segmentation. In MICCAI, pages 234-241. Springer, 2015.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of MotionCLR with other state-of-the-art methods on the HumanML3D dataset, using metrics such as R-Precision, FID, and MM-Dist.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Yonatan Shafir, Guy Tevet, Roy Kapon, and Amit H Bermano. Human motion diffusion as a generative prior. In ICLR, 2024.</td></tr><tr><td>Jiaming Song, Chenlin Meng, and Stefano Ermon. Denoising diffusion implicit models. In ICLR, 2021.</td></tr><tr><td>Xiangjun Tang, He Wang, Bo Hu, Xu Gong, Ruifan Yi, Qilong Kou, and Xiaogang Jin. Real-time controllable motion transition for characters. ACM TOG, 41(4):1-10, 2022.</td></tr><tr><td>Chen Tessler, Yunrong Guo, Ofir Nabati, Gal Chechik, and Xue Bin Peng. Maskedmimic: Unified physics-based character control through masked motion inpainting. ACM SIGGRAPH ASIA, 2024.</td></tr><tr><td>Guy Tevet, Brian Gordon, Amir Hertz, Amit H Bermano, and Daniel Cohen-Or. Motionclip: Exposing human motion generation to clip space. In ECCV, pages 358-374, 2022a.</td></tr><tr><td>Guy Tevet, Sigal Raab, Brian Gordon, Yonatan Shafir, Daniel Cohen-Or, and Amit H Bermano. Human motion diffusion model. In ICLR, 2022b.</td></tr><tr><td>Narek Tumanyan, Michal Geyer, Shai Bagon, and Tali Dekel. Plug-and-play diffusion features for text-driven image-to-image translation. In CVPR, pages 1921-1930, 2023.</td></tr><tr><td>Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N Gomez, Lukasz Kaiser, and Illia Polosukhin. Attention is all you need. NeurIPS, 2017.</td></tr><tr><td>Weilin Wan, Zhiyang Dou, Taku Komura, Wenping Wang, Dinesh Jayaraman, and Lingjie Liu. Tlcontrol: Trajectory and language control for human motion synthesis. ECCV, 2024.</td></tr><tr><td>Zan Wang, Yixin Chen, Tengyu Liu, Yixin Zhu, Wei Liang, and Siyuan Huang. Humanise: Language- conditioned human motion generation in 3d scenes. NeurIPS, pages 14959-14971, 2022.</td></tr><tr><td>Zan Wang, Yixin Chen, Baoxiong Jia, Puhao Li, Jinlu Zhang, Jingze Zhang, Tengyu Liu, Yixin Zhu, Wei Liang, and Siyuan Huang. Move as you say interact as you can: Language-guided human motion generation with scene affordance. In CVPR, pages 433-444, 2024.</td></tr><tr><td>Qianyang Wu, Ye Shi, Xiaoshui Huang, Jingyi Yu, Lan Xu, and Jingya Wang. Thor: Text to human-object interaction diffusion via relation intervention. arXiv preprint arXiv:2403.11208, 2024.</td></tr><tr><td>Zeqi Xiao, Tai Wang, Jingbo Wang, Jinkun Cao, Wenwei Zhang, Bo Dai, Dahua Lin, and Jiangmiao Pang. Unified human-scene interaction via prompted chain-of-contacts. In ICLR, 2024.</td></tr><tr><td>Yiming Xie, Varun Jampani, Lei Zhong, Deqing Sun, and Huaizu Jiang. Omnicontrol: Control any joint at any time for human motion generation. In ICLR, 2024a.</td></tr><tr><td>Zhenyu Xie, Yang Wu, Xuehao Gao, Zhongqian Sun, Wei Yang, and Xiaodan Liang. Towards detailed text-to-motion synthesis via basic-to-advanced hierarchical diffusion model. In AAAI, pages 6252-6260, 2024b.</td></tr><tr><td>Kelvin Xu, Jimmy Ba, Ryan Kiros, Kyunghyun Cho, Aaron Courville, Ruslan Salakhudinov, Rich Zemel, and Yoshua Bengio. Show, attend and tell: Neural image caption generation with visual attention. In ICML, pages 2048-2057. PMLR, 2015.</td></tr><tr><td>Sirui Xu, Zhengyuan Li, Yu-Xiong Wang, and Liang- Yan Gui. Interdiff: Generating 3d human-object interactions with physics-informed diffusion. In ICCV, pages 14928-14940, 2023a.</td></tr><tr><td>Sirui Xu, Yu-Xiong Wang, and Liangyan Gui. Stochastic multi-person 3d motion forecasting. In ICLR, 2023b.</td></tr><tr><td>Sirui Xu, Ziyin Wang, Yu-Xiong Wang, and Liang-Yan Gui. Interdreamer: Zero-shot text to 3d dynamic human-object interaction. arXiv preprint arXiv:2403.19652, 2024.</td></tr><tr><td>Heyuan Yao, Zhenhua Song, Baoquan Chen, and Libin Liu. Controlvae: Model-based learning of</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of MotionCLR against other state-of-the-art methods on the HumanML3D dataset using metrics such as R-Precision, FID, and MM-Dist.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:18px'><tr><td>w</td><td>I</td><td>1.5</td><td>2</td><td>2.5</td><td>3</td><td>3.5</td></tr><tr><td>FID</td><td>0.801</td><td>0.408</td><td>0.318</td><td>0.217</td><td>0.317</td><td>0.396</td></tr><tr><td>TMR-sim.</td><td>51.987</td><td>52.351</td><td>53.512</td><td>53.956</td><td>54.300</td><td>54.529</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of MotionCLR with other state-of-the-art methods on the HumanML3D dataset using various metrics such as R-Precision, FID, and MM-Dist.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:20px'><tr><td></td><td>FID ↓</td><td>TMR-sim.→</td></tr><tr><td>direct (pseudo GT)</td><td>0.315</td><td>0.543</td></tr><tr><td>unreplaced</td><td>0.325</td><td>0.567</td></tr><tr><td>unreplaced (unpaired T-M)</td><td>0.925</td><td>0.490</td></tr><tr><td>ours replaced</td><td>0.330</td><td>0.535</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of MotionCLR with other state-of-the-art methods on the HumanML3D dataset, using metrics such as R-Precision, FID, and MM-Dist.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:16px'><tr><td>begin</td><td>end</td><td>FID↓</td><td>TMR-sim.↑</td></tr><tr><td>8</td><td>11</td><td>0.339</td><td>0.472</td></tr><tr><td>5</td><td>14</td><td>0.325</td><td>0.498</td></tr><tr><td>1</td><td>18</td><td>0.330</td><td>0.535</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares MotionCLR's performance against other state-of-the-art methods using metrics such as FID, R-Precision, and MultiModality on the HumanML3D dataset.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:20px'><tr><td></td><td>FID ↓</td><td>Div. ↑</td></tr><tr><td>Diff. manipulation</td><td>0.718</td><td>1.502</td></tr><tr><td>MotionCLR manipulation</td><td>0.427</td><td>2.567</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of MotionCLR against other state-of-the-art methods on the HumanML3D dataset, using metrics such as R-Precision, FID, and MM-Dist.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison with different methods on the HumanML3D dataset. The '*' notation denotes the DDIM sampling inference design choice and the other is the DPM-solver sampling choice.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18977/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/36.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/37.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/38.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/39.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/40.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18977/41.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}