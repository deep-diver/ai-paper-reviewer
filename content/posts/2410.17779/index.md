---
title: "ADEM-VL: Adaptive and Embedded Fusion for Efficient Vision-Language Tuning"
summary: "ADEM-VL is a novel vision-language tuning framework that achieves high efficiency by using a parameter-free cross-attention mechanism, multiscale visual features, and adaptive fusion.  It outperforms ....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-25"]
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
| Method | #Param | #Param | Subject | Subject | Subject | Context Modality | Context Modality | Context Modality | Grade | Grade | Average |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Method | Trainable | LLM | NAT | SOC | LAN | TXT | IMG | NO | G1-6 G7-12 |  | Average |
| Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods | Zero-/few-shot methods |
| Human [68] | - | - | 90.23 | 84.97 | 87.48 | 89.60 | 87.50 | 88.10 | 91.59 | 82.42 | 88.40 |
| GPT-3.5 [68] | - | - | 74.64 | 69.74 | 76.00 | 74.44 | 67.28 | 77.42 | 76.80 | 68.89 | 73.97 |
| GPT-3.5 [68] | - | - | 75.44 | 70.87 | 78.09 | 74.68 | 67.43 | 79.93 | 78.23 | 69.68 | 75.17 |
| GPT-4 [] | - | - | 84.06 | 73.45 | 87.36 | 81.87 | 70.75 | 90.73 | 84.69 | 79.10 | 82.69 |
| Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods |
| UnifiedQA [68] | 223M | - | 71.00 | 76.04 | 78.91 | 66.42 | 66.53 | 81.81 | 77.06 | 68.82 | 74.11 |
| MM-CoTBase [69] | 223M | - | 87.52 | 77.17 | 85.82 | 87.88 | 82.90 | 86.83 | 84.65 | 85.37 | 84.91 |
| MM-CoTLarge [69] | 733M | - | 95.91 | 82.00 | 90.82 | 95.26 | 88.80 | 92.89 | 92.44 | 90.31 | 91.68 |
| LLaVA [] | 7B | 7B | - | - | - | - | - | - | - | - | 89.84 |
| LLaVA [] | 13B | 13B | 90.36 | 95.95 | 88.00 | 89.49 | 88.00 | 90.66 | 90.93 | 90.90 | 90.92 |
| PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA | PEFT methods with LLaMA |
| LLaMA-Adapter [] | 1.8M | 7B | 84.37 | 88.30 | 84.36 | 83.72 | 80.32 | 86.90 | 85.83 | 84.05 | 85.19 |
| LLaVA-LoRA [] | 4.4M | 7B | 91.70 | 94.60 | 86.09 | 91.25 | 90.28 | 88.64 | 91.52 | 89.65 | 90.85 |
| LaVIN [10] | 3.8M | 7B | 89.25 | 94.94 | 85.24 | 88.51 | 87.46 | 88.08 | 90.16 | 88.07 | 89.41 |
| LaVIN [10] | 5.4M | 13B | 90.32 | 94.38 | 87.73 | 89.44 | 87.65 | 90.31 | 91.19 | 89.26 | 90.50 |
| Mem VP [59] | 3.9M | 7B | 94.45 | 95.05 | 88.64 | 93.99 | 92.36 | 90.94 | 93.10 | 93.01 | 93.07 |
| Mem VP [59] | 5.5M | 13B | 95.07 | 95.15 | 90.00 | 94.43 | 92.86 | 92.47 | 93.61 | 94.07 | 93.78 |
| ADEM-VL | 4.5M | 7B | 95.52 | 95.39 | 89.18 | 95.36 | 93.95 | 90.94 | 93.87 | 93.80 | 93.85 |
| ADEM-VL | 5.5M | 13B | 96.00 | 94.94 | 91.27 | 95.45 | 93.95 | 93.03 | 94.46 | 94.73 | 94.55 |
| PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 | PEFT methods with LLaMA2 |
| Mem VP [59] | 3.9M | 7B | 93.12 | 94.60 | 89.27 | 92.86 | 91.13 | 91.15 | 92.51 | 92.29 | 92.43 |
| ADEM-VL | 4.5M | 7B | 95.74 | 94.83 | 90.00 | 95.50 | 93.75 | 91.78 | 94.16 | 93.87 | 94.06 |
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON COCO CAPTION USING THE KARPATHY TEST SPLIT WITH LLAMA-13B AS THE LANGUAGE MODEL. #T. = TRAINABLE PARAMETERS. *PEFT METHODS." >}}
| Method | #T. | BLEU-4 | CIDEr |
| --- | --- | --- | --- |
| ClipCap [77] | - | 33.5 | 113.1 |
| VisionLLM-H [78] | - | 32.1 | 114.2 |
| BLIP [60] | 583M | 40.4 | 136.7 |
| BLIP-2 [35] | 188M | 43.7 | 145.3 |
| *LLaMA-Adapter V2 [29] | 14M | 36.2 | 122.2 |
| *LaVIN [10] | 5.4M | 37.8 | 131.7 |
| * ADEM-VL | 5.5M | 38.5 | 133.2 |
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON THE MME BENCHMARK WITH LLAMA-13B AS THE LANGUAGE MODEL. MME-C AND MME-P MEASURE THE PERCEPTION AND COGNITION ABILITIES OF THE MODEL, RESPECTIVELY. EXTRA TOKENS REFER TO THE NUMBER OF ADDITIONAL TOKENS PROCESSED BY THE LLM BEYOND THE STANDARD TEXT TOKENS. #T. = TRAINABLE PARAMETERS. *PEFT METHODS." >}}
| Method | #Trainable param | #Extra tokens | MME-P | MME-C |
| --- | --- | --- | --- | --- |
| LLaVA [] | 13B | 256 | 502.8 | 214.6 |
| * Prompt-Aware Adapter [79] | - | 256 | 1375.0 | 289.3 |
| * MiniGPT-4 [36] | - | 256 | 866.5 | 292.1 |
| * LayerNorm [80] | 325M | 256 | 929.3 | 254.3 |
| LayerNorm-simp. [80] | 0.4M | 256 | 824.3 | 221.1 |
| * LLaMA-Adapter [9] | 14M | - | 972.6 | 248.9 |
| ** LaVIN [10] | 5.4M | 7 | 963.6 | 249.6 |
| ADEM-VL | 5.5M | 1 | 966.2 | 270.7 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison among different VL models on more image understanding tasks. * Baseline results evaluated through our implementation using the official checkpoint." >}}
| Method | #Param | #Param | Image QA | Image QA | Benchmark | Benchmark |
| --- | --- | --- | --- | --- | --- | --- |
| Method | Trainable | LLM | VQAv2 | GQA | MMB | MMMU |
| Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods | Full training methods |
| LLaVA [] | 13B | 13B | - | - | 34.1 | 32.3 |
| mPLUG-Owl2 [81] | 8.2B | 8.2B | 79.4 | 56.1 | 64.5 | - |
| InternLM-XComposer2 [32] | 7B | 7B | - | - | 79.6 | 42.0 |
| MoE-LLaVA-1.6Bx4-Top2 [82] | 6.4B | 6.4B | 76.7 | 60.3 | 60.2 | - |
| PEFT methods | PEFT methods | PEFT methods | PEFT methods | PEFT methods | PEFT methods | PEFT methods |
| MiniGPT-4 [36] | - | 13B | - | - | 23.0 | - |
| LaVIN [10] | 5.4M | 13B | 68.6* | 48.8* | 56.7* | 35.0* |
| ADEM-VL | 4.5M | 7B | 71.7 | 52.4 | 52.4 | 34.2 |
| ADEM-VL | 5.5M | 13B | 73.5 | 56.0 | 58.4 | 38.3 |
{{< /table-caption >}}

{{< table-caption caption="🔽 TABLE V TRAINING AND INFERENCE SPEED OF DIFFERENT APPROACHES. MEMORY-SAVING OR SPEED-UP APPROACHES SUCH AS CHECKPOINTING AND FLA SHATTENTION ARE NOT ADOPTED. FLOPS ARE ESTIMATED FOR GENERATING A SINGLE NEW TOKEN WITH A TEXT SEQUENCE LENGTH OF 256. EXPERIMENTS ON COCO CAPTIONING AND INSTRUCTION-FOLLOWING WERE NOT IMPLEMENTED IN THE ORIGINAL PAPERS OF LLAVA-LORA AND MEMVP, SO THE OVERALL TRAINING TIME FOR THESE TASKS IS UNAVAILABLE." >}}
| Method | #Param | #Param | FLOPs | #Time (s/batch) | #Time (s/batch) | #Overall training time (GPU Hours) | #Overall training time (GPU Hours) | #Overall training time (GPU Hours) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Method | T. | LLM | FLOPs | Training | Inference | ScienceQA | COCO caption | Instruction |
| LLaVA-LoRA [59] | 4.4M | 7B | 110.44T | 0.49 | 3.42 | 8.8 | - | - |
| LaVIN [10] | 3.8M | 7B | 56.19T | 0.39 | 2.06 | 6.8 | 12.7 | 211.4 |
| MemVP [59] | 3.9M | 7B | 54.81T | 0.28 | 1.88 | 5.1 | - | - |
| MemVP [59] | 5.5M | 13B | 132.76T | 0.46 | 3.07 | 8.1 | - | - |
| ADEM-VL | 4.5M | 7B | 54.93T | 0.25 | 1.86 | 4.3 | 8.0 | 134.8 |
| ADEM-VL | 5.5M | 13B | 133.26T | 0.39 | 2.97 | 6.9 | 12.5 | 212.9 |
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
| Setting | #Trainable | Subject | Subject | Subject | Context Modality | Context Modality | Context Modality | Grade | Grade | Average |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Setting | #Trainable | NAT | SOC | LAN | TXT | IMG | NO | G1-6 | G7-12 | Average |
| Baseline | 3.4M | 93.49 | 95.05 | 88.21 | 92.85 | 91.28 | 90.92 | 92.50 | 92.35 | 92.45 |
| + [cls] token | 4.0M | 93.70 | 95.00 | 88.46 | 93.19 | 91.85 | 90.63 | 92.37 | 93.05 | 92.61 |
| + Parameter-free xattn | 4.0M | 94.60 | 95.65 | 89.00 | 94.56 | 93.19 | 90.89 | 93.42 | 93.27 | 93.37 |
| + Multiscale VP | 4.5M | 95.10 | 95.50 | 88.50 | 94.87 | 93.48 | 90.66 | 93.61 | 93.21 | 93.47 |
| + Adaptive fusion | 4.5M | 95.52 | 95.39 | 89.18 | 95.36 | 93.95 | 90.94 | 93.87 | 93.80 | 93.85 |
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
| Query from | Add to | Average |
| --- | --- | --- |
| MHSA (in) | MHSA (in) | 92.19 |
| MHSA (in) | MHSA (out) | 93.18 |
| MHSA (out) | MHSA (out) | 92.00 |
| MLP (in) | MLP (in) | 91.77 |
| MLP (in) | MLP (out) | 93.85 |
| MLP (out) | MLP (out) | 92.27 |
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
| Projection | formula | Average |
| --- | --- | --- |
| None | x → x | 92.16 |
| Softmax | x → softmax(x) | 79.42 |
| ReLU | x → relu(x) | 91.99 |
| ELU | x → elu(x) | 92.45 |
| SiLU | x → silu(x) | 93.85 |
| SiLU (positive) | x → silu(x) - min(x) | 38.58 |
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
| Down sample | Size | Average |
| --- | --- | --- |
| None | 256 | 93.70 |
| Avg. pooling | 64 | 92.82 |
| Avg. pooling | 16 | 91.65 |
| Avg. pooling | concat(64,16) | 93.24 |
| Avg. pooling | concat(256,16) | 93.65 |
| Avg. pooling | concat(256,64) | 93.85 |
| Avg. pooling | concat(256,64,16) | 93.59 |
| Max pooling | concat(256,64) | 93.55 |
{{< /table-caption >}}

{{< table-caption caption="🔽 EVALUATION RESULTS ON SCIENCEQA TEST SET. NAT = NATURAL SCIENCE, SOC = SOCIAL SCIENCE, LAN = LANGUAGE SCIENCE, TXT = TEXT CONTEXT, IMG = IMAGE CONTEXT, NO = NO CONTEXT, G1-6 = GRADES 1-6, G7-12 = GRADES 7-12." >}}
| Visual input | Visual input | Average |
| --- | --- | --- |
| #Visual tokens | [cls] token | Average |
| 0 | X | 92.97 |
| 0 | V | 93.85 |
| 64 | X | 92.47 |
| 64 | V | 92.86 |
| 256 | X | 89.86 |
| 256 | V | 90.17 |
{{< /table-caption >}}


</details>

------

