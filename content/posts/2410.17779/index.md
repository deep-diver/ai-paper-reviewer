---
title: "ADEM-VL: Adaptive and Embedded Fusion for Efficient Vision-Language Tuning"
summary: "ADEM-VL is a novel vision-language tuning framework that achieves high efficiency by using a parameter-free cross-attention mechanism, multiscale visual features, and adaptive fusion.  It outperforms ....."
categories: ["AI Generated"]
tags: ["2024-10-23"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

ADEM-VL is a novel vision-language tuning framework that achieves high efficiency by using a parameter-free cross-attention mechanism, multiscale visual features, and adaptive fusion.  It outperforms existing methods on various vision-language tasks while requiring substantially fewer parameters and less computation.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17779" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper proposes ADEM-VL, an efficient vision-language tuning framework that uses a parameter-free cross-attention mechanism for multimodal fusion.  It significantly reduces the number of trainable parameters and computational complexity compared to existing methods.  The framework also employs multiscale visual feature generation and an adaptive fusion scheme, improving efficiency and performance on various vision-language tasks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ADEM-VL significantly reduces the number of trainable parameters and computational cost compared to existing vision-language models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ADEM-VL incorporates multiscale visual feature generation and adaptive fusion to enhance representation learning and prioritize relevant information. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ADEM-VL outperforms existing approaches on several benchmark datasets, including ScienceQA, with improved accuracy and reduced training/inference latency. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights

![](figures/figures_4_0.png "🔼 Fig. 1. Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
| Input: text Xt, image Xi, low-rank projection matrix W', | Input: text Xt, image Xi, low-rank projection matrix W', |
| --- | --- |
| Output: | scales S E Zn, drop ratio 2 fused feature XI |
|  |  |
|  | 1: Xl ← Tokenizer(xt) |
| 2: | X v , Xv,cls ← CLIP(xi) |
|  | 3: X ← concat( [X. v,cls, Xi]) 1 |
| 4: | X v ← Xv W' |
| 5: | X' ← X v v |
| 6: | for S in S do |
| 7: | さ ← pooling(Xv, s) v,s |
| 8: | ← concat( [X'⌀, |
|  | X'o s]) v |
| 9: | end for ▷ Multiscale visual prompt (Sec. III-C) |
| 10: | for layer in LLM do |
| 11: | Xl ← layer(Xi) |
| 12: 13: | attention A ← silu(Xt)silu(X.)T ▷ Parameter-free cross- attention (Sec. III-B) |
| 14: | Asorted ← torch.sort(A, dim=1) |
| 15: | Index 2 ← int(y x A.size(dim=1)) |
| 16: | threshold T ← Asorted [:,2] |
| 17: | mask M ← torch.ones. _like(A) |
| 18: 19: | M [torch.where(A < T)] ← 0 Adaptine fusion (Sec. III-D) |
|  | A ← A · M▷ |
| 20: | X1 ← Xl + AX⌀T |
| 21: | end for |
{{< /table-caption >}}

------



<details>
<summary>More on figures
</summary>


![](figures/figures_11_0.png "🔼 Fig. 3. Visualization of image captioning results with LLaMA-7B. In each row, the left figure is the original image, while the middle and right figures demonstrate the dropping decisions for features at two different scales.")

![](figures/figures_11_1.png "🔼 Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")

![](figures/figures_11_2.png "🔼 Fig. 1. Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")

![](figures/figures_11_3.png "🔼 Fig. 3. Visualization of image captioning results with LLaMA-7B. In each row, the left figure is the original image, while the middle and right figures demonstrate the dropping decisions for features at two different scales.")

![](figures/figures_11_4.png "🔼 Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")

![](figures/figures_11_5.png "🔼 Fig. 3. Visualization of image captioning results with LLaMA-7B. In each row, the left figure is the original image, while the middle and right figures demonstrate the dropping decisions for features at two different scales.")

![](figures/figures_11_6.png "🔼 Fig. 3. Visualization of image captioning results with LLaMA-7B. In each row, the left figure is the original image, while the middle and right figures demonstrate the dropping decisions for features at two different scales.")

![](figures/figures_12_0.png "🔼 Fig. 1. Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")

![](figures/figures_12_1.png "🔼 Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")

![](figures/figures_12_2.png "🔼 Fig. 1. Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")

![](figures/figures_12_3.png "🔼 Fig. 1. Comparison of different vision-language tuning frameworks: (a) Methods that directly extend the input space of the language model with extracted vision features. (b) Methods that fuse vision information into the language model via cross-attention. (c) Our proposed ADEM-VL framework, which incorporates parameter-free cross-attention, multiscale visual prompting, and adaptive multimodal fusion designs. This approach ensures both parameter and computational efficiency while delivering promising performance.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON COCO CAPTION USING THE KARPATHY TEST SPLIT WITH LLAMA-13B AS THE LANGUAGE MODEL. #T. = TRAINABLE PARAMETERS. *PEFT METHODS." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON THE MME BENCHMARK WITH LLAMA-13B AS THE LANGUAGE MODEL. MME-C AND MME-P MEASURE THE PERCEPTION AND COGNITION ABILITIES OF THE MODEL, RESPECTIVELY. EXTRA TOKENS REFER TO THE NUMBER OF ADDITIONAL TOKENS PROCESSED BY THE LLM BEYOND THE STANDARD TEXT TOKENS. #T. = TRAINABLE PARAMETERS. *PEFT METHODS." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison among different VL models on more image understanding tasks. * Baseline results evaluated through our implementation using the official checkpoint." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 TABLE V TRAINING AND INFERENCE SPEED OF DIFFERENT APPROACHES. MEMORY-SAVING OR SPEED-UP APPROACHES SUCH AS CHECKPOINTING AND FLA SHATTENTION ARE NOT ADOPTED. FLOPS ARE ESTIMATED FOR GENERATING A SINGLE NEW TOKEN WITH A TEXT SEQUENCE LENGTH OF 256. EXPERIMENTS ON COCO CAPTIONING AND INSTRUCTION-FOLLOWING WERE NOT IMPLEMENTED IN THE ORIGINAL PAPERS OF LLAVA-LORA AND MEMVP, SO THE OVERALL TRAINING TIME FOR THESE TASKS IS UNAVAILABLE." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
{{< /table-caption >}}


</details>

------

