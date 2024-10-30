---
title: "LoLDU: Low-Rank Adaptation via Lower-Diag-Upper Decomposition for Parameter-Efficient Fine-Tuning"
summary: "LoLDU, a novel parameter-efficient fine-tuning method, drastically reduces trainable parameters in large language models using Lower-Diag-Upper decomposition, achieving comparable performance to full ..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13618 {{< /keyword >}}

### TL;DR


{{< lead >}}

Fine-tuning massive language models is computationally expensive.  Existing methods like LoRA try to reduce this cost, but have limitations.  This paper introduces LoLDU, a new method that uses a mathematical technique called Lower-Diag-Upper (LDU) decomposition to dramatically reduce the number of parameters that need to be trained.  This is achieved by focusing on updating only a small, crucial part of the model's weights.  Experiments across many different datasets and model types show LoLDU significantly reduces parameter count (by a factor of 2600 in some cases) with comparable performance to full fine-tuning.  LoLDU is shown to work well with various models, such as LLaMA2, RoBERTa, ViT, and Stable Diffusion, highlighting its versatility.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13618" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13618" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly important for researchers working on parameter-efficient fine-tuning (PEFT) of large language models.  It introduces a novel approach, LoLDU, that significantly reduces the number of trainable parameters compared to existing methods like LoRA, while maintaining comparable performance.  This advance directly addresses the high computational cost associated with fine-tuning massive models, opening up new avenues for research and practical application of large models in resource-constrained environments.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LoLDU significantly reduces the number of trainable parameters in large language models (up to 2600 times compared to other PEFT methods) while maintaining performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LoLDU utilizes Lower-Diag-Upper decomposition for efficient initialization and optimization of low-rank matrices, resulting in faster convergence and improved accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LoLDU demonstrates effectiveness and versatility across diverse model architectures, scales, and task types (instruction following, natural language understanding, image classification, and image generation). {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13618/figures_2_0.png)

> 🔼 Figure 2 compares the LoRA and LoLDU methods, highlighting LoLDU's optimization of a diagonal matrix for scale transformation to preserve original model knowledge and reduce trainable parameters.
> <details>
> <summary>read the caption</summary>
> Figure 2. Comparison of LoRA (left) and our LoLDU (right) method. In LoRA, tunable parameters are low-rank (r) matrices A and B, with AW = BA. For each weight W, there are r × (din + dout) trainable parameters. LoLDU, however, optimizes a diagonal matrix for scale transformation, preserving original model knowledge during tuning. The weight update in LoLDU is AW = σ ⋅ P ⋅ (Lr, diag(zr), Ur), involving r + 1 trainable parameters. The permutation matrix P, while omitted in this figure for simplicity, is included in Figure 3
> </details>





![](https://ai-paper-reviewer.com/2410.13618/charts_1_0.png)

> 🔼 The chart compares the performance (accuracy) of different parameter-efficient fine-tuning methods against the number of trainable parameters on FGVC and StanfordCars datasets using ViT Base.
> <details>
> <summary>read the caption</summary>
> Figure 1. Performance vs log-scaled trainable parameters for FGVC (left) and StanfordCars (right) on ViT Base. Our LoLDU methods with r = {1, 8, 16, 32, 64, 128, 256, 512,768} exhibit superior parameter efficiency and performance when contrasted with Linear Probing [13] (LP, fine tuning the classifier head only¹), FourierFT [14] (n = {3000, 10000}), LoRA [9] (r = 16), and Full Fine-Tuning. LoLDU r=768 outperforms LoRAr=16 with 96.837% fewer trainable parameters. Particularly noteworthy is that LoLDU with r 1 achieves competitive scores with just 24 trainable parameters, while LoLDU with r = 768 attains the highest accuracy: 42.15% for FGVC and 66.66% for StanfordCars, showcasing the scalability and effectiveness of our approach. Full Fine-Tuning (85.8M parameters) and Linear Probing represent the upper and lower performance bounds, respectively.
> </details>





{{< table-caption >}}
<table id='4' style='font-size:16px'><tr><td>Model</td><td>Method</td><td># Params</td><td>SST-2 acc</td><td>MRPC acc</td><td>CoLA cor</td><td>QNLI acc</td><td>RTE acc</td><td>STS-B cor</td><td>Avg.</td></tr><tr><td rowspan="7">RoBERTa-Base</td><td>FT</td><td>125M</td><td>94.8</td><td>90.2</td><td>63.6</td><td>92.8</td><td>78.7</td><td>91.2</td><td>85.2</td></tr><tr><td>BitFit</td><td>0.1M</td><td>93.7</td><td>92.7</td><td>62.0</td><td>91.8</td><td>81.5</td><td>90.8</td><td>85.4</td></tr><tr><td>LoRA</td><td>0.3M</td><td>95.1</td><td>89.7</td><td>63.4</td><td>93.3</td><td>78.4</td><td>91.5</td><td>85.2</td></tr><tr><td>PiSSA</td><td>0.707M</td><td>94.6</td><td>88.4</td><td>63.0</td><td>93.1</td><td>85.9</td><td>91.2</td><td>86.0</td></tr><tr><td>VeRA</td><td>0.043M</td><td>94.6</td><td>89.5</td><td>65.6</td><td>91.8</td><td>78.7</td><td>90.7</td><td>85.2</td></tr><tr><td>LoLDU</td><td>0.0184M</td><td>94.8</td><td>89.9</td><td>63.8</td><td>92.9</td><td>81.3</td><td>92.3</td><td>85.8</td></tr><tr><td>△baseline</td><td>6.13%</td><td>-0.3</td><td>+0.2</td><td>+0.4</td><td>-0.4</td><td>+2.9</td><td>+0.8</td><td>+0.6</td></tr></table>{{< /table-caption >}}

> 🔼 Table I presents a comparative analysis of various parameter-efficient fine-tuning methods on the GLUE benchmark, highlighting LoLDU's performance with significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13618/figures_3_0.png)

> 🔼 Figure 3 schematically illustrates the LoLDU method, showing the forward pass and the initialization process via LDU decomposition of pre-trained weights, highlighting the trainable diagonal matrix and fixed triangular matrices for efficient model adaptation.
> <details>
> <summary>read the caption</summary>
> Figure 3. Schematic representation of our LoLDU method. The left diagram illustrates the forward pass, demonstrating the transformation of the input x ∈ Rdin into the output h∈ Rdout via a residual subspace matrix L[r:]D[r:]U[r:] and a decomposed subspace matrix oLrDrUr. The right diagram shows the initialization process, where the residual matrix is obtained by performing LDU decomposition on the pre-trained weights, then subtracting the top-r submatrices (top-r rows and columns) from the permutation matrix (P), lower triangular (L), scaled diagonal (D), and upper triangular (U) matrices. Diagonal matrix is trainable (orange), while the other matrices remain fixed (blue). LoLDU enables efficient adaptation of pre-trained models via low-rank updates, reducing both computational cost and parameter count.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_7_0.png)

> 🔼 Figure 5 shows the image generation results of LoLDU, DreamBooth, and Textual Inversion across different training steps, demonstrating LoLDU's faster convergence and better image quality.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression In Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~ 100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_0.png)

> 🔼 Figure 5 shows a comparison of image generation results using LoLDU, DreamBooth, and Textual Inversion across different training steps, demonstrating LoLDU's faster convergence.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~ 100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_1.png)

> 🔼 The figure shows the performance of LoLDU compared to other parameter-efficient fine-tuning methods across different numbers of trainable parameters on image classification tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1. Performance vs log-scaled trainable parameters for FGVC (left) and StanfordCars (right) on ViT Base. Our LoLDU methods with r = {1, 8, 16, 32, 64, 128, 256, 512,768} exhibit superior parameter efficiency and performance when contrasted with Linear Probing [13] (LP, fine tuning the classifier head only¹), FourierFT [14] (n = {3000, 10000}), LoRA [9] (r = 16), and Full Fine-Tuning. LoLDU r=768 outperforms LoRAr=16 with 96.837% fewer trainable parameters. Particularly noteworthy is that LoLDU with r = 1 achieves competitive scores with just 24 trainable parameters, while LoLDU with r = 768 attains the highest accuracy: 42.15% for FGVC and 66.66% for StanfordCars, showcasing the scalability and effectiveness of our approach. Full Fine-Tuning (85.8M parameters) and Linear Probing represent the upper and lower performance bounds, respectively.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_2.png)

> 🔼 The figure shows the performance of LoLDU compared to other methods on image classification tasks, demonstrating its superior parameter efficiency and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 1. Performance vs log-scaled trainable parameters for FGVC (left) and StanfordCars (right) on ViT Base. Our LoLDU methods with r = {1, 8, 16, 32, 64, 128, 256, 512,768} exhibit superior parameter efficiency and performance when contrasted with Linear Probing [13] (LP, fine tuning the classifier head only¹), FourierFT [14] (n = {3000, 10000}), LoRA [9] (r = 16), and Full Fine-Tuning. LoLDU r=768 outperforms LoRAr=16 with 96.837% fewer trainable parameters. Particularly noteworthy is that LoLDU with r = 1 achieves competitive scores with just 24 trainable parameters, while LoLDU with r = 768 attains the highest accuracy: 42.15% for FGVC and 66.66% for StanfordCars, showcasing the scalability and effectiveness of our approach. Full Fine-Tuning (85.8M parameters) and Linear Probing represent the upper and lower performance bounds, respectively.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_3.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion across several concepts, demonstrating LoLDU's ability to generate diverse and high-quality images.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_4.png)

> 🔼 The figure shows the performance of LoLDU compared to other methods (Linear Probing, FourierFT, LoRA, and Full Fine-Tuning) across two image classification datasets (FGVC and StanfordCars) in terms of accuracy and the number of trainable parameters.
> <details>
> <summary>read the caption</summary>
> Figure 1. Performance vs log-scaled trainable parameters for FGVC (left) and StanfordCars (right) on ViT Base. Our LoLDU methods with r = {1, 8, 16, 32, 64, 128, 256, 512,768} exhibit superior parameter efficiency and performance when contrasted with Linear Probing [13] (LP, fine tuning the classifier head only¹), FourierFT [14] (n = {3000, 10000}), LoRA [9] (r = 16), and Full Fine-Tuning. LoLDU r=768 outperforms LoRAr=16 with 96.837% fewer trainable parameters. Particularly noteworthy is that LoLDU with r 1 achieves competitive scores with just 24 trainable parameters, while LoLDU with r = 768 attains the highest accuracy: 42.15% for FGVC and 66.66% for StanfordCars, showcasing the scalability and effectiveness of our approach. Full Fine-Tuning (85.8M parameters) and Linear Probing represent the upper and lower performance bounds, respectively.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_5.png)

> 🔼 Figure 5 shows the image generation results from LoLDU, DreamBooth, and Textual Inversion at various training steps, demonstrating LoLDU's superior efficiency in concept learning.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_6.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion across various prompts.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_7.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion, demonstrating LoLDU's ability to generate diverse, high-quality images that match the given prompts.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_8.png)

> 🔼 Figure 5 shows the image generation results for LoLDU, DreamBooth, and Textual Inversion across different training steps, highlighting LoLDU's faster convergence.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_9.png)

> 🔼 Figure 5 shows the image generation results for different methods at various training steps, demonstrating LoLDU's faster convergence and superior efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_10.png)

> 🔼 Figure 6 shows a comparison of image generation results using LoLDU, DreamBooth, and Textual Inversion across several concepts, demonstrating LoLDU's ability to generate diverse, high-quality images that align with the given prompts.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_11.png)

> 🔼 Figure 5 shows the generated images of different methods (LoLDU, DreamBooth, and Textual Inversion) at various training steps for seven image generation tasks, demonstrating LoLDU's faster convergence.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_12.png)

> 🔼 Figure 5 shows the image generation results of LoLDU, DreamBooth, and Textual Inversion across different concepts at various training steps, highlighting LoLDU's faster convergence.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~ 100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_13.png)

> 🔼 Figure 5 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion across different training steps, demonstrating LoLDU's faster convergence and superior efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~ 100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_14.png)

> 🔼 Figure 5 shows the image generation results for LoLDU, DreamBooth, and Textual Inversion across various training steps, demonstrating LoLDU's faster convergence and superior efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_15.png)

> 🔼 Figure 5 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion across various training steps, highlighting LoLDU's faster convergence.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_16.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion, demonstrating LoLDU's ability to generate diverse, high-quality images that match the given prompts.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_17.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion across various prompts, highlighting LoLDU's ability to generate diverse and high-quality images.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_18.png)

> 🔼 Figure 5 shows the image generation results of LoLDU compared to DreamBooth and Textual Inversion across different training steps.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression In Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_19.png)

> 🔼 Figure 5 shows the comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion across different training steps for seven concepts.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_20.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion, demonstrating LoLDU's ability to generate diverse and high-quality images.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_21.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion, demonstrating LoLDU's ability to generate diverse, high-quality images that accurately reflect the given prompts.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_22.png)

> 🔼 Figure 5 shows the image generation results from LoLDU, DreamBooth, and Textual Inversion, demonstrating LoLDU's accelerated convergence and superior efficiency in concept learning.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_23.png)

> 🔼 Figure 5 shows a comparison of image generation results using LoLDU, DreamBooth, and Textual Inversion across different training steps for several concepts, demonstrating LoLDU's superior efficiency and faster convergence.
> <details>
> <summary>read the caption</summary>
> Figure 5. Concept Learning Progression in Text-to-Image Generation. Top row: target concept. Subsequent rows: generated images using LoLDU (our method), DreamBooth [6], and Textual Inversion [5], respectively, at training steps 0-600. LoLDU exhibits accelerated convergence, achieving concept acquisition within ~ 100 steps, surpassing baseline methods in efficiency.
> </details>



![](https://ai-paper-reviewer.com/2410.13618/figures_9_24.png)

> 🔼 Figure 6 shows a comparison of image generation results from LoLDU, DreamBooth, and Textual Inversion, demonstrating LoLDU's ability to generate diverse and high-quality images while preserving key attributes from the reference images.
> <details>
> <summary>read the caption</summary>
> Figure 6. Visualized Results of the Image Generation Task. From left to right: target reference images, outputs from LoLDU (ours), DreamBooth, and Textual Inversion. Each row represents a distinct category with a specified prompt (annotated under each row). LoLDU demonstrates efficacy in generating diverse, prompt-adherent images while preserving key attributes from the reference set.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.13618/charts_7_0.png)

> 🔼 Figure 4 shows the performance of the ViT-base model on six image classification datasets using LoLDU with varying ranks, demonstrating the impact of rank on accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4. Comprehensive Analysis of Rank Ablation Study Results. This figure presents the performance of the ViT-base model on various image classification tasks using the LoLDU method with different ranks. The x-axis shows ranks (1 to 768), and the y-axis indicates accuracy for datasets: FGVC, StanfordCars, CIFAR10, CIFAR100, EuroSAT, and Flowers.
> </details>


![](https://ai-paper-reviewer.com/2410.13618/charts_7_1.png)

> 🔼 Figure 4 shows the performance of the ViT-base model on six image classification datasets using the LoLDU method with varying ranks, demonstrating the impact of rank on model accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4. Comprehensive Analysis of Rank Ablation Study Results. This figure presents the performance of the ViT-base model on various image classification tasks using the LoLDU method with different ranks. The x-axis shows ranks (1 to 768), and the y-axis indicates accuracy for datasets: FGVC, StanfordCars, CIFAR10, CIFAR100, EuroSAT, and Flowers.
> </details>


![](https://ai-paper-reviewer.com/2410.13618/charts_7_2.png)

> 🔼 Figure 4 shows the performance of the ViT-base model on six image classification datasets using the LoLDU method with varying ranks, demonstrating the impact of rank on accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4. Comprehensive Analysis of Rank Ablation Study Results. This figure presents the performance of the ViT-base model on various image classification tasks using the LoLDU method with different ranks. The x-axis shows ranks (1 to 768), and the y-axis indicates accuracy for datasets: FGVC, StanfordCars, CIFAR10, CIFAR100, EuroSAT, and Flowers.
> </details>


![](https://ai-paper-reviewer.com/2410.13618/charts_7_3.png)

> 🔼 The chart displays the performance of the ViT-base model on six image classification datasets using the LoLDU method with varying ranks, showing the relationship between rank and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4. Comprehensive Analysis of Rank Ablation Study Results. This figure presents the performance of the ViT-base model on various image classification tasks using the LoLDU method with different ranks. The x-axis shows ranks (1 to 768), and the y-axis indicates accuracy for datasets: FGVC, StanfordCars, CIFAR10, CIFAR100, EuroSAT, and Flowers.
> </details>


![](https://ai-paper-reviewer.com/2410.13618/charts_7_4.png)

> 🔼 The chart displays the performance of the ViT-base model on six image classification datasets using the LoLDU method with varying ranks, showing the relationship between rank and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4. Comprehensive Analysis of Rank Ablation Study Results. This figure presents the performance of the ViT-base model on various image classification tasks using the LoLDU method with different ranks. The x-axis shows ranks (1 to 768), and the y-axis indicates accuracy for datasets: FGVC, StanfordCars, CIFAR10, CIFAR100, EuroSAT, and Flowers.
> </details>


![](https://ai-paper-reviewer.com/2410.13618/charts_7_5.png)

> 🔼 The chart displays the performance of the ViT-base model on six image classification datasets using the LoLDU method with varying ranks, showing the relationship between rank and accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 4. Comprehensive Analysis of Rank Ablation Study Results. This figure presents the performance of the ViT-base model on various image classification tasks using the LoLDU method with different ranks. The x-axis shows ranks (1 to 768), and the y-axis indicates accuracy for datasets: FGVC, StanfordCars, CIFAR10, CIFAR100, EuroSAT, and Flowers.
> </details>


![](https://ai-paper-reviewer.com/2410.13618/charts_13_0.png)

> 🔼 Figure 7 shows the impact of varying learning rates on the accuracy of different datasets using the ViT-base model.
> <details>
> <summary>read the caption</summary>
> Figure 7. Learning Rate Ablation Study. The figure demonstrates the effect of different learning rates on ViT-base model accuracy across FGVC, StanfordCars, CIFAR10, CIFAR100, EuroSAT, and Flowers datasets.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='15' style='font-size:14px'><tr><td>Method</td><td>Mean Acc.</td><td>Params (%)</td><td>Keep Orthogonal</td><td>No random Init.</td><td>No extra Infer. cost</td><td>Faster convergence</td></tr><tr><td>FullFT</td><td>88.20</td><td>100</td><td>X</td><td>V</td><td></td><td>V</td></tr><tr><td>LP</td><td>68.38</td><td>-</td><td>X</td><td>X</td><td>V</td><td>X</td></tr><tr><td>LoRA</td><td>76.22</td><td>6.77</td><td>X</td><td>X</td><td></td><td>X</td></tr><tr><td>FourierFT</td><td>79.29</td><td>2.79</td><td>X</td><td>X</td><td>V</td><td>X</td></tr><tr><td>LoLDU</td><td>|82.79</td><td>0.21</td><td>V</td><td>V</td><td>V</td><td>V</td></tr></table>{{< /table-caption >}}
> 🔼 Table I presents a comparison of different parameter-efficient fine-tuning methods on the GLUE benchmark, showing that LoLDU achieves comparable performance to LoRA with significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:14px'><tr><td>Model</td><td>Method</td><td># Params</td><td>MMLU</td><td>DROP</td><td>HEval</td><td>BBH</td></tr><tr><td rowspan="6">LLaMA2-7B</td><td>w/o FT</td><td>-</td><td>45.96</td><td>31.55</td><td>12.20</td><td>32.04</td></tr><tr><td>LoRA</td><td>33.6M</td><td>45.64</td><td>32.46</td><td>15.09</td><td>32.40</td></tr><tr><td>AdaLoRA</td><td>33.6M</td><td>45.96</td><td>31.94</td><td>14.02</td><td>32.85</td></tr><tr><td>MELoRA</td><td>0.5M</td><td>46.46</td><td>32.65</td><td>16.16</td><td>33.01</td></tr><tr><td>LoLDU</td><td>0.016M</td><td>46.21</td><td>32.71</td><td>15.11</td><td>33.12</td></tr><tr><td>△baseline</td><td>0.05%</td><td>+0.57</td><td>+0.25</td><td>+0.02</td><td>+0.72</td></tr></table>{{< /table-caption >}}
> 🔼 Table I presents a comparative analysis of various parameter-efficient fine-tuning methods on the GLUE benchmark, highlighting LoLDU's competitive performance with significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Model</td><td>Method</td><td># Params</td><td>FGVC acc</td><td>StanfordCars acc</td><td>CIFAR10 acc</td><td>CIFAR100 acc</td><td>EuroSAT acc</td><td>Flowers acc</td><td>Avg.</td></tr><tr><td rowspan="8">ViT-Base</td><td>LP</td><td>-</td><td>17.44</td><td>25.76</td><td>96.41</td><td>84.28</td><td>88.72</td><td>97.64</td><td>68.38</td></tr><tr><td>FT</td><td>85.8M</td><td>54.84</td><td>79.78</td><td>98.92</td><td>92.38</td><td>99.05</td><td>98.43</td><td>87.23</td></tr><tr><td>LoRA(r16)</td><td>581K</td><td>25.16</td><td>45.38</td><td>98.78</td><td>92.02</td><td>98.44</td><td>97.55</td><td>76.22</td></tr><tr><td>FourierFT(�)</td><td>72K</td><td>27.51</td><td>46.11</td><td>98.58</td><td>91.20</td><td>98.29</td><td>98.14</td><td>76.64</td></tr><tr><td>FourierFT(t)</td><td>239K</td><td>32.44</td><td>56.36</td><td>98.69</td><td>91.45</td><td>98.78</td><td>98.04</td><td>79.29</td></tr><tr><td>LoLDU(r64)</td><td>1.5k</td><td>32.31</td><td>50.99</td><td>97.96</td><td>89.60</td><td>97.60</td><td>98.53</td><td>77.83</td></tr><tr><td>LoLDU(r768)</td><td>18k</td><td>42.15</td><td>66.66</td><td>98.59</td><td>91.21</td><td>99.21</td><td>98.92</td><td>82.79</td></tr><tr><td>△ baseline</td><td>3.173%</td><td>+16.99</td><td>+21.28</td><td>-0.19</td><td>-0.81</td><td>+0.77</td><td>+1.37</td><td>+6.57</td></tr></table>{{< /table-caption >}}
> 🔼 Table I presents a comparative analysis of various parameter-efficient fine-tuning methods on the GLUE benchmark, highlighting LoLDU's comparable performance with significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE △baseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:18px'><tr><td>Initialization Method</td><td>FGVC acc</td><td>StanfordCars acc</td><td>CIFAR10 acc</td><td>CIFAR100 acc</td><td>EuroSAT acc</td><td>Flowers acc</td><td>Avg.</td></tr><tr><td colspan="8">ViT-Base Initialization Ablation Study</td></tr><tr><td>Uniform(t)</td><td>2.37 / 2.37</td><td>1.17 / 1.38</td><td>35.92 / 28.93</td><td>14.22 / 9.71</td><td>57.81 / 52.95</td><td>4.51 / 4.41</td><td>19.33 / 16.63</td></tr><tr><td>Normal(+)</td><td>39.60 / 39.12</td><td>65.17 / 65.00</td><td>98.02 / 98.33</td><td>90.27 / 90.54</td><td>99.00 / 99.03</td><td>98.63 / 98.63</td><td>81.78 / 81.78</td></tr><tr><td>Normal(★)</td><td>2.10 / 2.13</td><td>1.34 / 1.12</td><td>29.17 / 26.54</td><td>10.11 / 7.91</td><td>52.98 / 48.49</td><td>4.61 / 4.41</td><td>16.72 / 15.10</td></tr><tr><td>Constant(z.mean)</td><td>42.21 / 41.16</td><td>65.41 / 63.86</td><td>98.38 / 98.21</td><td>90.77 / 90.21</td><td>99.16 / 98.99</td><td>98.63 / 98.43</td><td>82.43 / 81.81</td></tr><tr><td>Zeros</td><td>9.30 / 9.24</td><td>8.27 / 9.09</td><td>72.43 / 72.13</td><td>46.00 / 43.27</td><td>96.44 / 96.05</td><td>41.08 / 40.49</td><td>45.59 / 45.05</td></tr><tr><td>Ones</td><td>2.01 / 1.95</td><td>1.16 / 1.16</td><td>30.89 / 26.26</td><td>10.29 / 8.60</td><td>50.95 / 46.61</td><td>3.73 / 4.41</td><td>16.51 / 14.83</td></tr><tr><td>Regular LDU</td><td>40.50 / 40.44</td><td>65.12 / 62.37</td><td>98.28 / 98.20</td><td>90.61 / 90.61</td><td>99.04 / 98.95</td><td>98.92 / 98.92</td><td>82.08 / 81.58</td></tr><tr><td>Uniform(�)</td><td>42.15 / 39.72</td><td>66.66 / 64.54</td><td>98.59 / 98.28</td><td>91.21 / 90.48</td><td>99.21 / 98.97</td><td>98.63 / 98.82</td><td>82.74 / 81.80</td></tr></table>{{< /table-caption >}}
> 🔼 Table I presents a comparison of different parameter-efficient fine-tuning methods on the GLUE benchmark, showing LoLDU's performance and parameter efficiency relative to other methods.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:14px'><tr><td>Model</td><td>Method</td><td>DINO ↑</td><td>CLIP-T ↑</td><td>CLIP-I ↑</td><td>Avg.</td></tr><tr><td rowspan="3">SD-v1.4</td><td>DreamBooth</td><td>0.679</td><td>0.323</td><td>0.801</td><td>0.601</td></tr><tr><td>Textual Inversion</td><td>0.649</td><td>0.313</td><td>0.801</td><td>0.588</td></tr><tr><td>LoLDU</td><td>0.723</td><td>0.319</td><td>0.830</td><td>0.750</td></tr></table>{{< /table-caption >}}
> 🔼 Table IV presents a comparison of different parameter-efficient fine-tuning methods on the GLUE benchmark, showing LoLDU's comparable performance with significantly fewer parameters than other methods.
> <details>
> <summary>read the caption</summary>
> Table IV RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:16px'><tr><td>Task</td><td>LR</td><td>Epochs</td><td>Max Length</td></tr><tr><td>MNLI</td><td>3e-4</td><td>10</td><td>128</td></tr><tr><td>SST-2</td><td>4e-4</td><td>10</td><td>128</td></tr><tr><td>MRPC</td><td>3e-4</td><td>20</td><td>512</td></tr><tr><td>CoLA</td><td>2e-4</td><td>20</td><td>128</td></tr><tr><td>QNLI</td><td>2e-4</td><td>10</td><td>512</td></tr><tr><td>QQP</td><td>3e-4</td><td>20</td><td>512</td></tr><tr><td>RTE</td><td>4e-4</td><td>20</td><td>512</td></tr><tr><td>STS-B</td><td>2e-4</td><td>30</td><td>512</td></tr></table>{{< /table-caption >}}
> 🔼 Table I presents the results of different parameter-efficient fine-tuning methods on the GLUE benchmark, showing LoLDU's comparable performance with significantly fewer parameters compared to other methods.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='16' style='font-size:16px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Base Model</td><td>LLaMA2-7B</td></tr><tr><td>Precision</td><td>BF16</td></tr><tr><td>Batch Size</td><td>128</td></tr><tr><td>Micro Batch Size</td><td>1</td></tr><tr><td>Learning Rate</td><td>1e-3</td></tr><tr><td>Number of Epochs</td><td>3</td></tr><tr><td>Rank</td><td>1024</td></tr><tr><td>Alpha</td><td>1024</td></tr><tr><td>Target Modules</td><td>q_proj, v_proj</td></tr><tr><td>Cutoff Length</td><td>256</td></tr><tr><td>Seed</td><td>42</td></tr></table>{{< /table-caption >}}
> 🔼 Table I presents a comparison of various parameter-efficient fine-tuning methods on the GLUE benchmark, showing LoLDU's performance relative to others while using significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:20px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Model</td><td>vit-b16-224-in21k</td></tr><tr><td>Learning Rate</td><td>3e-3</td></tr><tr><td>Batch Size</td><td>128</td></tr><tr><td>Max Epochs</td><td>10</td></tr><tr><td>Precision</td><td>bf16</td></tr><tr><td>Optimizer</td><td>AdamW</td></tr><tr><td>LR Scheduler</td><td>Linear</td></tr><tr><td>Warmup Steps</td><td>30</td></tr><tr><td>Target Modules</td><td>query, value</td></tr><tr><td>Rank</td><td>768</td></tr><tr><td>Alpha</td><td>768</td></tr><tr><td>Seed</td><td>42</td></tr></table>{{< /table-caption >}}
> 🔼 Table I compares the performance of different parameter-efficient fine-tuning methods on the GLUE benchmark, showing LoLDU's comparable performance with significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table I RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:20px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Base Model</td><td>stable-diffusion-v1-5</td></tr><tr><td>VAE</td><td>sd-vae-ft-mse</td></tr><tr><td>Learning Rate</td><td>5e-4</td></tr><tr><td>Precision</td><td>fp16</td></tr><tr><td>Resolution</td><td>512</td></tr><tr><td>Train Batch Size</td><td>1</td></tr><tr><td>Optimizer</td><td>AdamW</td></tr><tr><td>LR Scheduler</td><td>constant</td></tr><tr><td>LR Warmup Steps</td><td>15</td></tr><tr><td>Max Train Steps</td><td>1000</td></tr><tr><td>Rank</td><td>32</td></tr><tr><td>Alpha</td><td>32</td></tr><tr><td>Seed</td><td>42</td></tr><tr><td>Adam Weight Decay</td><td>0.01</td></tr><tr><td>Target Modules</td><td>to_k, to_v, to_q, to_out</td></tr></table>{{< /table-caption >}}
> 🔼 Table IV presents a comparison of various parameter-efficient fine-tuning methods on the GLUE benchmark, highlighting LoLDU's comparable performance with significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table IV RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='11' style='font-size:14px'><tr><td>LR</td><td>FGVC acc</td><td>StanfordCars acc</td><td>CIFAR10 acc</td><td>CIFAR100 acc</td><td>EuroSAT acc</td><td>Flowers acc</td><td>Avg.</td></tr><tr><td colspan="8">ViT-Base LR Ablation</td></tr><tr><td>1e-1</td><td>6.54</td><td>0.85</td><td>26.21</td><td>6.71</td><td>48.70</td><td>48.31</td><td>22.89</td></tr><tr><td>5e-2</td><td>9.69</td><td>3.69</td><td>32.96</td><td>18.28</td><td>61.06</td><td>95.49</td><td>36.86</td></tr><tr><td>8e-3</td><td>38.37</td><td>63.38</td><td>96.86</td><td>89.30</td><td>97.69</td><td>97.75</td><td>80.56</td></tr><tr><td>5e-3</td><td>41.13</td><td>65.25</td><td>97.84</td><td>89.89</td><td>98.50</td><td>98.53</td><td>81.86</td></tr><tr><td>3e-3</td><td>40.44</td><td>62.37</td><td>98.20</td><td>90.61</td><td>98.95</td><td>98.92</td><td>81.58</td></tr><tr><td>6e-4</td><td>27.51</td><td>41.57</td><td>98.28</td><td>90.05</td><td>98.73</td><td>97.65</td><td>75.63</td></tr><tr><td>3e-4</td><td>21.42</td><td>31.55</td><td>98.20</td><td>89.56</td><td>98.23</td><td>94.51</td><td>72.25</td></tr><tr><td>1e-5</td><td>2.25</td><td>2.10</td><td>96.05</td><td>73.53</td><td>72.53</td><td>0.88</td><td>41.22</td></tr></table>{{< /table-caption >}}
> 🔼 Table IV presents the comparison of different parameter-efficient fine-tuning methods on the GLUE benchmark, showing LoLDU's comparable performance with significantly fewer parameters.
> <details>
> <summary>read the caption</summary>
> Table IV RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

{{< table-caption >}}
<table id='14' style='font-size:16px'><tr><td>Rank</td><td>Params</td><td>FGVC</td><td>StanfordCars</td><td>CIFAR10</td><td>CIFAR100</td><td>EuroSAT</td><td>Flowers</td></tr><tr><td colspan="8">ViT-Base Rank Ablation</td></tr><tr><td>1</td><td>24</td><td>27.59</td><td>43.95</td><td>96.81</td><td>86.67</td><td>95.25</td><td>98.33</td></tr><tr><td>8</td><td>192</td><td>28.28</td><td>48.40</td><td>97.47</td><td>89.84</td><td>96.14</td><td>98.53</td></tr><tr><td>16</td><td>384</td><td>31.13</td><td>50.87</td><td>97.76</td><td>88.48</td><td>96.74</td><td>98.53</td></tr><tr><td>32</td><td>768</td><td>32.75</td><td>53.00</td><td>97.82</td><td>88.76</td><td>97.28</td><td>98.63</td></tr><tr><td>64</td><td>1536</td><td>34.01</td><td>55.09</td><td>97.96</td><td>89.60</td><td>97.60</td><td>98.53</td></tr><tr><td>128</td><td>3072</td><td>34.91</td><td>58.20</td><td>98.07</td><td>89.89</td><td>98.20</td><td>98.53</td></tr><tr><td>256</td><td>6144</td><td>36.38</td><td>61.44</td><td>98.06</td><td>90.18</td><td>98.62</td><td>98.63</td></tr><tr><td>512</td><td>12288</td><td>38.48</td><td>63.68</td><td>98.17</td><td>90.30</td><td>98.83</td><td>98.63</td></tr><tr><td>768</td><td>18456</td><td>42.15</td><td>66.66</td><td>98.59</td><td>91.21</td><td>99.21</td><td>98.63</td></tr><tr><td>FT</td><td>85.8</td><td>54.84</td><td>79.78</td><td>98.92</td><td>92.38</td><td>99.05</td><td>98.43</td></tr><tr><td>LoRA</td><td>581</td><td>25.16</td><td>45.38</td><td>98.78</td><td>92.02</td><td>98.44</td><td>97.55</td></tr></table>{{< /table-caption >}}
> 🔼 Table IV presents a comparison of different parameter-efficient fine-tuning methods on the GLUE benchmark, highlighting LoLDU's performance with significantly fewer parameters compared to other methods.
> <details>
> <summary>read the caption</summary>
> Table IV RESULTS FOR DIFFERENT ADAPTATION METHODS ON THE GLUE BENCHMARK. THE TERM 'PARAMS' REFERS TO THE NUMBER OF PARAMETERS UPDATED DURING FINE-TUNING. WE REPORT MATTHEW’S CORRELATION FOR COLA, PEARSON CORRELATION FOR STS-B, AND ACCURACY FOR THE REMAINING TASKS. HIGHER VALUES INDICATE BETTER PERFORMANCE. EXCEPT LOLDU, ALL RESULTS ARE FROM PRIOR WORK. LOLDU PERFORMS ON PAR WITH LORA WHILE USING SIGNIFICANTLY FEWER PARAMETERS. THE Abaseline ROW SHOWS THE PERCENTAGE INCREASE OR DECREASE IN PERFORMANCE COMPARED TO OUR METHOD.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13618/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13618/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}