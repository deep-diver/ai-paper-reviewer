---
title: "Lightweight Neural App Control"
summary: "LiMAC, a novel mobile app control architecture, leverages a lightweight transformer and fine-tuned VLM to efficiently handle text-based instructions and app interactions on Android devices.  It signif....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-23", "🤗 2024-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

LiMAC, a novel mobile app control architecture, leverages a lightweight transformer and fine-tuned VLM to efficiently handle text-based instructions and app interactions on Android devices.  It significantly outperforms larger, slower models in accuracy and speed, achieving real-time performance thanks to its efficient design and modularity.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17883" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces LiMAC, a lightweight mobile app control architecture that uses a hybrid approach combining a small Action Transformer (AcT) with a fine-tuned vision-language model (VLM) to efficiently control Android apps using natural language instructions.  LiMAC significantly improves accuracy and speed compared to existing methods, addressing the limitations of large foundation models on resource-constrained mobile devices. The modular design enables flexible integration of different models for various tasks. The findings have implications for improving the efficiency and effectiveness of mobile AI agents.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LiMAC significantly outperforms existing methods in terms of both accuracy and speed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LiMAC's modular design allows for flexible integration of different models for various tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The hybrid approach of using a lightweight transformer network with a fine-tuned vision-language model (VLM) proves highly effective in addressing the limitations of using large foundation models on resource-constrained smartphones. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_4_0.png "🔼 Figure 1: Illustration of AcT. A separate encoding of each UI element into a vector  e<sub>t,i</sub> by using pretrained embedding models. The embeddings are then fed into the sequence of a transformer X<sub>t</sub> along with the previous timesteps in that episode. The prediction of the transformer is decoded to produce the next action which consists of a<sub>type</sub> and a<sub>spec</sub>")





{{< table-caption caption="🔽 Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets." >}}
| Model | Size ↓ | Avg Inf. (s)↓ Time | Overall ↑ | Overall ↑ |
| --- | --- | --- | --- | --- |
| Model | Size ↓ | Avg Inf. (s)↓ Time | AitW | AndCtrl |
| SeeActchoice | unk | 9.81 | 37.7 | 29.9 |
| SeeActann | unk | 9.76 | 42.5 | 35.5 |
| T3A | unk | 4.87 | 26.9 | 53.1 |
| M3A | unk | 10.64 | 35.6 | 57.5 |
| Florence2 | 820M | 0.50 | 70.8 | 57.0 |
| LiMAC with Florence2 (ours) | +520M | 0.34 | 72.2 | 63.1 |
| Qwen2-VL | 2B | 3.03 | 51.0 | 52.2 |
| LiMAC with Qwen2-VL (ours) | +520M | 0.63 | 70.9 | 62.5 |
{{< /table-caption >}}


------



<details>
<summary>More on figures
</summary>


![](figures/figures_5_0.png "🔼 Figure 2: The architecture of LiMAC. The history of observations-actions {ot, at-1, Ot-1..} and goal g are processed to vector x and passed to AcT. The image observation omg with the bounding boxes and the goal g are passed as inputs to the VLM. The VLM is only called if an action that requires text completion is selected, based on the action type output of AcT. The action is finally selected based on the protocol described in Section 3.")

![](figures/figures_16_0.png "🔼 The architecture of LiMAC. The history of observations-actions {ot, at−1, ot−1..} and goal g are processed to vector x and passed to AcT. The image observation omg with the bounding boxes and the goal g are passed as inputs to the VLM. The VLM is only called if an action that requires text completion is selected, based on the action type output of AcT. The action is finally selected based on the protocol described in Section 3.")

![](figures/figures_16_1.png "🔼 Figure 5: Relaxed input-text in yellow (timestep 4) and overall successful episode. Timestep 4 is considered correct under our relaxed input-text textual component because it is simply the singular form of the correct text, leading to a Jaccard index greater than 0.5 and presumably the same search results. The episode terminates successfully, with all timesteps being considered correct under our evaluation metrics.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets." >}}
| Framework | Modules Used | Modules Used | Modules Used | Avg Inf. ⓢ+ Time | Overall↑ | Overall↑ |
| --- | --- | --- | --- | --- | --- | --- |
| Framework | Type | Click | Text | Avg Inf. ⓢ+ Time | AitW | AndCtrl |
| T3A only | T3A | T3A | T3A | 4.87 | 26.9 | 53.1 |
| LiMAC (ours) | AcT | T3A | T3A | 4.03 | 42.7 | 65.4 |
| LiMAC (ours) | AcT | AcT | T3A | 1.04 | 69.8 | 63.2 |
| M3A only | M3A | M3A | M3A | 10.64 | 35.6 | 57.5 |
| LiMAC (ours) | AcT | M3A | M3A | 8.40 | 52.6 | 66.8 |
| LiMAC (ours) | AcT | AcT | M3A | 1.87 | 70.0 | 62.5 |
| Florence only | Florence2 | Florence2 | Florence2 | 0.50 | 70.8 | 57.0 |
| LiMAC (ours) | AcT | Florence2 | Florence2 | 0.72 | 71.6 | 61.1 |
| LiMAC (ours) | AcT | AcT | Florence2 | 0.34 | 72.2 | 63.1 |
| Qwen only | Qwen2-VL | Qwen2-VL | Qwen2-VL | 3.03 | 51.0 | 52.2 |
| LiMAC (ours) | AcT | Qwen2-VL | Qwen2-VL | 2.64 | 55.7 | 59.1 |
| LiMAC (ours) | AcT | AcT | Qwen2-VL | 0.63 | 70.9 | 62.5 |
| LiMAC (ours) | AcT | M3A | T3A | 7.57 | 52.4 | 67.4 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets." >}}
| Framework | Modules Used | Modules Used | Modules Used | Action Type | Action Type | Click Target | Click Target | Text | Text |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Framework | Type | Click | Text | AitW | AndCtrl | AitW | AndCtrl | AitW | AndCtrl |
| SeeAct only | SeeActchoice | SeeActchoice | SeeActchoice | 67.1 | 66.8 | 36.9 | 48.5 | 69.4 | 67.1 |
| SeeAct only | SeeActann | SeeActann | SeeActann | 68.2 | 66.8 | 44.7 | 55.7 | 66.0 | 61.8 |
| T3A only | T3A | T3A | T3A | 56.2 | 67.7 | 33.5 | 71.1 | 66.5 | 78.4 |
| M3A only | M3A | M3A | M3A | 63.8 | 69.8 | 48.3 | 77.1 | 67.3 | 74.3 |
| Qwen only | Qwen2-VL | Qwen2-VL | Qwen2-VL | 81.7 | 70.7 | 53.2 | 55.2 | 70.5 | 75.7 |
| LiMAC (ours) | AcT | Qwen2-VL | Qwen2-VL | 86.9 | 82.3 | 53.2 | 55.2 | 70.5 | 75.7 |
| LiMAC (ours) | AcT | AcT | Qwen2-VL | 86.9 | 82.3 | 77.4 | 65.4 | 70.5 | 75.7 |
| Florence only | Florence2 | Florence2 | Florence2 | 86.4 | 79.6 | 76.2 | 62.0 | 84.2 | 77.5 |
| LiMAC (ours) | AcT | Florence2 | Florence2 | 86.9 | 82.3 | 76.2 | 62.0 | 84.2 | 77.5 |
| LiMAC (ours) | AcT | AcT | Florence2 | 86.9 | 82.3 | 77.4 | 65.4 | 84.2 | 77.5 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets." >}}
|  | Size | Action Type | Click Target | Overall |
| --- | --- | --- | --- | --- |
| LiMAC | 520M | 82.3 | 65.4 | 63.1 |
| LiMAC (no CLIP FT) | 520M | 81.9 | 62.3 | 60.0 |
| LiMAC (no img) | 433M | 82.4 | 54.9 | 56.0 |
| LiMAC (no txt) | 410M | 83.2 | 65.7 | 63.0 |
{{< /table-caption >}}


</details>

------

