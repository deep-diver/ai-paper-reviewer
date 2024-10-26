---
title: "Data Scaling Laws in Imitation Learning for Robotic Manipulation"
summary: "This paper explores data scaling laws in imitation learning for robotic manipulation.  It finds that diverse data from many environments and object types is key to good generalization, following appro....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

This paper explores data scaling laws in imitation learning for robotic manipulation.  It finds that diverse data from many environments and object types is key to good generalization, following approximate power laws.  Surprisingly, a small, efficiently collected dataset can yield highly generalizable robot policies, offering significant implications for future research and development.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18647" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper investigates data scaling laws for robotic manipulation using imitation learning.  It reveals power-law relationships between generalization performance and the number of training environments and objects, emphasizing diversity over sheer quantity of demonstrations.  An efficient data collection strategy is proposed and validated, suggesting that high generalization can be achieved with surprisingly little data.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Robotic manipulation policy generalization performance scales approximately as a power law with the number of training environments and objects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Diversity of environments and objects is more crucial than the absolute number of demonstrations for good generalization. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A surprisingly small amount of diverse data (collected efficiently) is sufficient for training high-performing, generalizable robot manipulation policies. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: Illustrations of all tasks. We derive the data scaling laws through extensive experiments on Pour Water and Mouse Arrangement, and further validate these findings on additional tasks, including Fold Towels and Unplug Charger.")





{{< table-caption caption="🔽 Table 1: Success rate across all tasks. We report the average success rate and standard deviation across 8 unseen environments. The performance in each environment is detailed in Table 12." >}}
|  | Pour Water | Mouse Arrangement | Fold Towels | Unplug Charger |
| --- | --- | --- | --- | --- |
| Score | 0.922 士 0.075 | 0.933 士 0.088 | 0.95 士 0.062 | 0.887 士 0.14 |
| Success Rate | 85.0 士 19.4% | 92.5 士 9.7% | 87.5 士 17.1% | 90.0 士 14.1% |
{{< /table-caption >}}


------



<details>
<summary>More on figures
</summary>


![](figures/figures_16_0.png "🔼 Figure 12: Testing environments. These 8 environments are not included in the training data and are used across all tasks.")

![](figures/figures_16_1.png "🔼 Figure 8: Training environments for Pour Water. We sample 12 environments from our collected training data. See Appendix D.1 for task details.")

![](figures/figures_17_0.png "🔼 Figure 8: Training environments for Pour Water. We sample 12 environments from our collected training data. See Appendix D.1 for task details.")

![](figures/figures_17_1.png "🔼 Figure 12: Testing environments. These 8 environments are not included in the training data and are used across all tasks.")

![](figures/figures_17_2.png "🔼 Figure 8: Training environments for Pour Water. We sample 12 environments from our collected training data. See Appendix D.1 for task details.")

![](figures/figures_18_0.png "🔼 Objects for Pour Water. All of our experiments include a total of 64 training bottles and mugs, as well as 16 unseen testing bottles and mugs.")

![](figures/figures_19_0.png "🔼 Objects for Mouse Arrangement. All of our experiments include a total of 64 training mice and mouse pads, as well as 16 unseen testing mice and mouse pads.")

![](figures/figures_20_0.png "🔼 Objects for Fold Towels. All of our experiments include a total of 32 training towels, as well as 16 unseen testing towels.")

![](figures/figures_21_0.png "🔼 Objects for Unplug Charger. All of our experiments include a total of 32 training chargers and power strips, as well as 16 unseen testing chargers and power strips.")

![](figures/figures_29_0.png "🔼 Figure 18: UMI hand-held grippers. We do not install side mirrors on the grippers.")

![](figures/figures_29_1.png "🔼 Figure 19: Deployment hardware setup.")


</details>

------







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Model related experiments on Pour Water. The entries marked in gray are the same, which specify the default settings: the visual encoder is a fully fine-tuned ViT-L/14 model pretrained with DINOv2, while the action diffusion model employs a base-size 1D CNN U-Net." >}}
| Case | Score |  |  |
| --- | --- | --- | --- |
| DINOv2 ViT-L/14 | 0.90 | Case | Score |
| LfS ViT-L/14 | 0.03 | DINOv2 ViT-S/14 | 0.66 |
| frozen DINOv2 | 0.00 | DINOv2 ViT-B/14 | 0.81 |
| LoRA DINOv2 | 0.72 | DINOv2 ViT-L/14 | 0.90 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Model related experiments on Pour Water. The entries marked in gray are the same, which specify the default settings: the visual encoder is a fully fine-tuned ViT-L/14 model pre-trained with DINOv2, while the action diffusion model employs a base-size 1D CNN U-Net." >}}
| Case | Score |
| --- | --- |
| small U-Net | 0.88 |
| base U-Net | 0.90 |
| large U-Net | 0.83 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 3: A default set of hyper-parameters." >}}
| Config | Value |
| --- | --- |
| Image observation horizon | 3 (Pour Water, Unplug Charger), 2 (other tasks) |
| Proprioception observation horizon | 3 (Pour Water, Unplug Charger), 2 (other tasks) |
| Action horizon | 16 |
| Observation resolution | 224x224 |
| Environment frequency | 5 |
| Optimizer | AdamW |
| Optimizer momentum | B1, B2 = 0.95, 0.999 |
| Learning rate for action diffusion model | 3e-4 |
| Learning rate for visual encoder | 3e-5 |
| Learning rate schedule | cosine decay |
| Batch size | 256 |
| Inference denoising iterations | 16 |
| Temporal ensemble steps | 8 |
| Temporal ensemble adaptation rate | -0.01 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 4: Object generalization on Pour Water. Normalizing these scores by dividing them by 9 yields the results shown in Fig. 2." >}}
| Usage | 3.125% | 6.25% | 12.5% | 25% | 50% | 100% |
| --- | --- | --- | --- | --- | --- | --- |
| #Objs 1 |  |  |  |  |  | 1.2 |
| 2 |  |  |  |  | 3.175 | 4.725 |
| 4 |  |  |  | 4.55 | 4.8 | 6.425 |
| 8 |  |  | 4.575 | 6.075 | 6.325 | 7.275 |
| 16 |  | 3.6 | 6.65 | 7.425 | 7.9 | 7.625 |
| 32 | 2.45 | 6.575 | 8.25 | 7.925 | 8.075 | 8.45 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Environment generalization on Pour Water. Normalizing these scores by dividing them by 9 yields the results shown in Fig. 3." >}}
| Usage | 3.125% | 6.25% | 12.5% | 25% | 50% | 100% |
| --- | --- | --- | --- | --- | --- | --- |
| #Envs | 3.125% | 6.25% | 12.5% | 25% | 50% | 100% |
| 1 |  |  |  |  |  | 1.3 |
| 2 |  |  |  |  | 2.85 | 3.325 |
| 4 |  |  |  | 2.55 | 4.3 | 4.475 |
| 8 |  |  | 3.925 | 6.1 | 6.575 | 6.2 |
| 16 |  | 4.15 | 6.2 | 6.525 | 7.85 | 8 |
| 32 | 3.475 | 6.55 | 7.2 | 8.65 | 8.75 | 8.6 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Generlization across environments and objects on Pour Water. Normalizing these scores by dividing them by 9 yields the results shown in Fig. 4." >}}
| Usage | 3.125% | 6.25% | 12.5% | 25% | 50% | 100% |
| --- | --- | --- | --- | --- | --- | --- |
| #Pairs 1 |  |  |  |  |  | 0.45 |
| 2 |  |  |  |  | 1.65 | 1.425 |
| 4 |  |  |  | 2.725 | 5.3 | 5.325 |
| 8 |  |  | 4.95 | 6.175 | 5.775 | 5.625 |
| 16 |  | 4.8 | 5.8 | 6.9 | 6.95 | 6.875 |
| 32 | 3.95 | 5.225 | 6.95 | 7.575 | 8.3 | 7.875 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Number of demonstrations on Pour Water. Normalizing these scores by dividing them by 9 yields the results shown in Fig. 7." >}}
| #Demos | 64 | 100 | 200 | 400 | 800 | 1600 | 3200 | 6400 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Score | 4.35 | 6.15 | 6.875 | 7.025 | 6.975 | 7.2 | 7.125 | 6.525 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Object generalization on Mouse Arrangement. Normalizing these scores by dividing them by 6 yields the results shown in Fig. 2." >}}
| Usage | 3.125% | 6.25% | 12.5% | 25% | 50% | 100% |
| --- | --- | --- | --- | --- | --- | --- |
| #Objs 1 |  |  |  |  |  | 1.3 |
| 2 |  |  |  |  | 2.475 | 3.25 |
| 4 |  |  |  | 2.425 | 2.975 | 3.625 |
| 8 |  |  | 1.75 | 3.525 | 4.1 | 4.8 |
| 16 |  | 2.525 | 3.675 | 3.925 | 4.425 | 5.325 |
| 32 | 3.7 | 3.675 | 4.2 | 5.025 | 5.175 | 5.575 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Environment generalization on Mouse Arrangement. Normalizing these scores by dividing them by 6 yields the results shown in Fig. 3." >}}
| Usage | 3.125% | 6.25% | 12.5% | 25% | 50% | 100% |
| --- | --- | --- | --- | --- | --- | --- |
| #Envs 1 |  |  |  |  |  | 1.3 |
| 2 |  |  |  |  | 1.975 | 2.475 |
| 4 |  |  |  | 1.8 | 3.3 | 3.625 |
| 8 |  |  | 2.075 | 2.5 | 3.2 | 3.6 |
| 16 |  | 1.525 | 3.65 | 3.8 | 4.375 | 4.45 |
| 32 | 2.725 | 3.325 | 3.9 | 4.7 | 5.125 | 5.2 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Generlization across environments and objects. Each curve corresponds to a different fraction of demonstrations used, with normalized scores shown as a function of the number of training environment-object pairs." >}}
| Usage | 3.125% | 6.25% | 12.5% | 25% | 50% | 100% |
| --- | --- | --- | --- | --- | --- | --- |
| #Pairs 1 |  |  |  |  |  | 0.75 |
| 2 |  |  |  |  | 0.975 | 0.875 |
| 4 |  |  |  | 1.8 | 2.3 | 2.325 |
| 8 |  |  | 2.425 | 3.725 | 3.425 | 3.35 |
| 16 |  | 3.375 | 4.925 | 4.5 | 5.05 | 4.75 |
| 32 | 4.225 | 4.225 | 5.075 | 5.2 | 5.6 | 5.525 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Number of demonstrations on Mouse Arrangement. Normalizing these scores by dividing them by 6 yields the results shown in Fig. 7." >}}
| #Demos | 64 | 100 | 200 | 400 | 800 | 1600 | 3200 | 6400 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Score | 1.725 | 3.025 | 3.3 | 3.775 | 3.975 | 3.8 | 3.875 | 3.8 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Success rate across all tasks. For each task, we report the success rate in each evaluation environment." >}}
|  | Environment ID | Environment ID | Environment ID | Environment ID | Environment ID | Environment ID | Environment ID | Environment ID |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Task | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | Mean |
| Pour Water | 80% | 40% | 100% | 80% | 100% | 100% | 80% | 100% | 85% |
| Mouse Arrangement | 100% | 80% | 100% | 100% | 80% | 80% | 100% | 100% | 92.5% |
| Fold Towels | 100% | 100% | 60% | 100% | 100% | 60% | 100% | 80% | 87.5% |
| Unplug Charger | 80% | 60% | 100% | 100% | 100% | 80% | 100% | 100% | 90% |
{{< /table-caption >}}


</details>

------

