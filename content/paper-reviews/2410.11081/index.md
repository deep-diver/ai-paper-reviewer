---
title: "Simplifying, Stabilizing and Scaling Continuous-Time Consistency Models"
summary: "Researchers stabilize & scale continuous-time consistency models for faster, high-quality image generation, achieving state-of-the-art results on ImageNet."
categories: ["AI Generated"]
tags: ["🔖 24-10-14", ]
showSummary: true
date: 2024-10-14
draft: false
---

{{< keyword >}} 2410.11081 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research tackles the challenge of training unstable continuous-time consistency models (CMs) in generative AI. CMs are preferred for their speed, but previous continuous-time versions struggled. This work introduces a new framework simplifying CM math and suggests key improvements in model design and training.  These advancements allow for training much larger CMs, resulting in significant performance gains, closing the gap with leading diffusion models by 10% while using far less computational power.  The improved models generate images with higher quality and better diversity, particularly under various guidance levels.  The research highlights the benefits of continuous-time methods and provides practical techniques for wider adoption and further research in this promising area.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.11081" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.11081" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper significantly advances the field of generative AI by improving the training stability and scalability of continuous-time consistency models.  It offers a unified theoretical framework, practical training techniques, and compelling results that can accelerate progress in developing fast, high-quality generative models, impacting researchers across various AI subfields.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel theoretical framework simplifies and unifies previous parameterizations of diffusion and consistency models, addressing training instability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Improved training techniques enable scaling continuous-time consistency models to unprecedented sizes (1.5B parameters), achieving top-tier image generation results. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Continuous-time models demonstrate superior sample diversity and guidance compatibility compared to existing methods. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.11081/figures_2_0.png)

> 🔼 Figure 2 presents a selection of images generated using a continuous-time consistency model, showcasing the model's ability to produce high-quality samples in just two steps.
> <details>
> <summary>read the caption</summary>
> Figure 2: Selected 2-step samples from a continuous-time consistency model trained on ImageNet 512x512.
> </details>





![](https://ai-paper-reviewer.com/2410.11081/charts_1_0.png)

> 🔼 The chart compares the sample quality (measured by FID) of various generative models against their effective sampling compute (billion parameters times the number of function evaluations during sampling).
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td colspan="3">Unconditional CIFAR-10</td><td colspan="3">Class-Conditional ImageNet 64x64</td></tr><tr><td>METHOD</td><td>NFE (↓)</td><td>FID (↓)</td><td>METHOD</td><td>NFE (↓)</td><td>FID (↓)</td></tr><tr><td colspan="3">Diffusion models & Fast Samplers</td><td colspan="3">Diffusion models & Fast Samplers</td></tr><tr><td>Score SDE (deep) (Song et al., 2021b)</td><td>2000</td><td>2.20</td><td rowspan="6">ADM (Dhariwal & Nichol, 2021) RIN (Jabri et al., 2022) (Karras al., 2024)</td><td>250</td><td>2.07</td></tr><tr><td>EDM (Karras et al., 2022) EDM2 (Heun) et</td><td>35</td><td>2.01</td><td>1000</td><td>1.23</td></tr><tr><td>Flow Matching (Lipman et al., 2022)</td><td>142</td><td>6.35 DPM-Solver (Lu et al., 2022a)</td><td>20</td><td>3.42</td></tr><tr><td>DPM-Solver (Lu et al., 2022a)</td><td>10</td><td>4.70</td><td>79</td><td>2.44</td></tr><tr><td>DPM-Solver++ (Lu et al., 2022b)</td><td>10</td><td>2.91</td><td>63</td><td>1.33</td></tr><tr><td>DPM-Solver-v3 (Zheng et al., 2023c)</td><td>10</td><td>2.51</td><td></td><td></td></tr><tr><td colspan="3">Joint Training</td><td rowspan="9">Joint Training StyleGAN-XL (Sauer et al., 2022) Diff-Instruct (Luo et al., 2024) EMD (Xie et al., 2024b) DMD (Yin et al., 2024b) DMD2 (Yin et al., 2024a) SiD (Zhou et al., 2024) CTM (Kim et al., 2023)</td><td>1</td><td>EDM (Heun) (Karras et al., 2022) 1.52</td></tr><tr><td>Diffusion GAN (Xiao et al., 2022)</td><td>4</td><td>3.75</td><td>1</td><td>5.57</td></tr><tr><td>Diffusion StyleGAN (Wang et al., 2022)</td><td>1</td><td>3.19</td><td>1</td><td>2.20</td></tr><tr><td>StyleGAN-XL (Sauer et al., 2022)</td><td>1</td><td>1.52</td><td>1</td><td>2.62</td></tr><tr><td>CTM (Kim et al., 2023)</td><td>1</td><td>1.87</td><td>1</td><td>1.28</td></tr><tr><td>Diff-Instruct (Luo et al., 2024)</td><td>1</td><td>4.53</td><td>1</td><td>1.52</td></tr><tr><td>DMD (Yin et al., 2024b)</td><td>1</td><td>3.77</td><td>1</td><td>1.92</td></tr><tr><td>SiD (Zhou et al., 2024)</td><td>1</td><td>1.92</td><td>2 1</td><td>1.73 3.00</td></tr><tr><td colspan="3">Diffusion Distillation</td><td>2</td><td>3.86</td></tr><tr><td>DFNO (LPIPS) (Zheng et al., 2023b)</td><td>1</td><td>3.78</td><td colspan="3">Moment Matching (Salimans et al., 2024) Diffusion Distillation</td></tr><tr><td>2-Rectified Flow (Liu et al., 2022)</td><td>1</td><td>4.85</td><td rowspan="4">DFNO (LPIPS) (Zheng et al., 2023b) PID (LPIPS) (Tee et al., 2024) TRACT (Berthelot et al., 2023)</td><td>1</td><td>7.83</td></tr><tr><td>PID (LPIPS) (Tee et al., 2024)</td><td>1</td><td>3.92</td><td>1</td><td>9.49</td></tr><tr><td>BOOT (LPIPS) (Gu et al., 2023)</td><td>1</td><td>4.38</td><td>1</td><td>7.43</td></tr><tr><td>Consistency-FM (Yang et al., 2024)</td><td>2</td><td>5.34</td><td>2</td><td>4.97</td></tr><tr><td>PD (Salimans & Ho, 2022)</td><td>1</td><td>8.34</td><td rowspan="4">PD (Salimans & Ho, 2022) (reimpl. from Heek et al. (2024)) CD (LPIPS) (Song et al., 2023)</td><td>1</td><td>10.70</td></tr><tr><td></td><td>2</td><td>5.58</td><td>2</td><td>4.70</td></tr><tr><td>TRACT (Berthelot et al., 2023)</td><td>1</td><td>3.78</td><td>1</td><td>6.20</td></tr><tr><td></td><td>2</td><td>3.32</td><td>2</td><td>4.70</td></tr><tr><td>CD (LPIPS) (Song et al., 2023)</td><td>1</td><td>3.55</td><td rowspan="4">MultiStep-CD (Heek et al., 2024) sCD (ours)</td><td>1</td><td>3.20</td></tr><tr><td></td><td>2</td><td>2.93</td><td>2</td><td>1.90</td></tr><tr><td>sCD (ours)</td><td>1</td><td>3.66</td><td>1</td><td>2.44</td></tr><tr><td></td><td>2</td><td>2.52</td><td>2</td><td>1.66</td></tr><tr><td colspan="3">Consistency Training</td><td colspan="3">Consistency Training</td></tr><tr><td>iCT (Song & Dhariwal, 2023)</td><td>1</td><td>2.83</td><td rowspan="2">iCT (Song & Dhariwal, 2023)</td><td>1</td><td>4.02</td></tr><tr><td></td><td>2</td><td>2.46</td><td>2</td><td>3.20</td></tr><tr><td>iCT-deep (Song & Dhariwal, 2023)</td><td>1</td><td>2.51</td><td rowspan="2">iCT-deep (Song & Dhariwal, 2023)</td><td>1</td><td>3.25</td></tr><tr><td></td><td>2</td><td>2.24</td><td>2</td><td>2.77</td></tr><tr><td>ECT (Geng et al., 2024)</td><td>1</td><td>3.60</td><td rowspan="2">ECT (Geng et al., 2024)</td><td>1</td><td>2.49</td></tr><tr><td></td><td>2</td><td>2.11</td><td>2</td><td>1.67</td></tr><tr><td>sCT (ours)</td><td>1</td><td>2.97</td><td rowspan="2">sCT (ours)</td><td>1</td><td>2.04</td></tr><tr><td></td><td>2</td><td>2.06</td><td>2</td><td>1.48</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the FID scores and number of function evaluations (NFEs) for various generative models on unconditional CIFAR-10 and class-conditional ImageNet 64x64 datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: Sample quality on unconditional CIFAR-10 and class-conditional ImageNet 64×64.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.11081/figures_3_0.png)

> 🔼 The figure compares discrete-time and continuous-time consistency models, highlighting the advantages of continuous-time models in avoiding discretization errors.
> <details>
> <summary>read the caption</summary>
> Figure 3: Discrete-time CMs (top & middle) vs. continuous-time CMs (bottom). Discrete-time CMs suffer from discretization errors from numerical ODE solvers, causing imprecise predictions during training. In contrast, continuous-time CMs stay on the ODE trajectory by following its tangent direction with infinitesimal steps.
> </details>



![](https://ai-paper-reviewer.com/2410.11081/figures_33_0.png)

> 🔼 The figure shows a comparison of different generative models on ImageNet 512x512, demonstrating that the proposed 2-step sCM achieves comparable sample quality to state-of-the-art models with significantly less computational cost.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>



![](https://ai-paper-reviewer.com/2410.11081/figures_34_0.png)

> 🔼 The figure shows a comparison of sample quality versus computational cost for various generative models on ImageNet 512x512, highlighting the efficiency of the proposed 2-step sCM.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>



![](https://ai-paper-reviewer.com/2410.11081/figures_35_0.png)

> 🔼 The figure compares the sample quality of different generative models on ImageNet 512x512, showing that the proposed 2-step sCM achieves comparable quality to state-of-the-art models with significantly less computational cost.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>



![](https://ai-paper-reviewer.com/2410.11081/figures_36_0.png)

> 🔼 The figure compares the sample quality of different generative models on ImageNet 512x512, showing that the proposed 2-step sCM achieves comparable quality to the best existing models while using significantly less computation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>



![](https://ai-paper-reviewer.com/2410.11081/figures_37_0.png)

> 🔼 The figure demonstrates that the proposed 2-step continuous-time consistency model (sCM) achieves sample quality comparable to state-of-the-art generative models while using significantly less computational resources.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>



![](https://ai-paper-reviewer.com/2410.11081/figures_38_0.png)

> 🔼 The figure shows a comparison of sample quality versus computational cost for various generative models on ImageNet 512x512, highlighting the superior efficiency of the proposed 2-step sCM.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.11081/charts_6_0.png)

> 🔼 The chart compares the stability of different formulations for diffusion models, showing that TrigFlow with positional embeddings offers more stable partial derivatives compared to EDM, especially near t=π/2.
> <details>
> <summary>read the caption</summary>
> Figure 4: Stability of different formulations. We show the norms of both terms in ∂ₜfθ and ∇ₓfθ⋅dx/dt for diffusion models trained with the EDM (Cnoise(t) = log(σatan(t))) and TrigFlow (Cnoise(t) = t) formulations using different time embeddings. We observe that large Fourier scales in Fourier embeddings cause instabilities. In addition, the EDM formulation suffers from numerical issues when t→π/2, while TrigFlow (using positional embeddings) has stable partial derivatives for both xt and t.
> </details>


![](https://ai-paper-reviewer.com/2410.11081/charts_6_1.png)

> 🔼 Figure 4 compares the stability of different formulations for calculating partial derivatives of diffusion models, showing TrigFlow with positional embeddings is more stable than EDM.
> <details>
> <summary>read the caption</summary>
> Figure 4: Stability of different formulations. We show the norms of both terms in  ∂ₜf₀⁻  and  ∇ₓf₀⁻ ⋅ dx/dt  for diffusion models trained with the EDM (Cnoise(t) = log(σₐ tan(t))) and TrigFlow (Cnoise(t) = t) formulations using different time embeddings. We observe that large Fourier scales in Fourier embeddings cause instabilities. In addition, the EDM formulation suffers from numerical issues when t→π/2, while TrigFlow (using positional embeddings) has stable partial derivatives for both xₜ and t.
> </details>


![](https://ai-paper-reviewer.com/2410.11081/charts_6_2.png)

> 🔼 The chart compares the stability of different formulations of diffusion models, showing that TrigFlow with positional embeddings is more stable than EDM, especially when t approaches π/2.
> <details>
> <summary>read the caption</summary>
> Figure 4: Stability of different formulations. We show the norms of both terms in dfo/dt = ∇xf · dx/dt + ∂xf/∂t for diffusion models trained with the EDM (Cnoise(t) = log(σatan(t))) and TrigFlow (Cnoise(t) = t) formulations using different time embeddings. We observe that large Fourier scales in Fourier embeddings cause instabilities. In addition, the EDM formulation suffers from numerical issues when t→π/2, while TrigFlow (using positional embeddings) has stable partial derivatives for both xt and t.
> </details>


![](https://ai-paper-reviewer.com/2410.11081/charts_6_3.png)

> 🔼 The chart compares different training objectives for consistency distillation, showing the FID scores for 1-step and 2-step sampling of continuous-time CMs trained with various techniques, and compares continuous-time and discrete-time CM training.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparing different training objectives for consistency distillation. The diffusion models are EDM2 (Karras et al., 2024) pretrained on ImageNet 512×512. (a) 1-step and 2-step sampling of continuous-time CMs trained by using raw tangents for, clipped tangents clip(-, -1, 1) and normalized tangents /(|| + 0.1). (b) Quality of 1-step and 2-step samples from continuous-time CMs trained w/ and w/o adaptive weighting, both are w/ tangent normalization. (c) Quality of 1-step samples from continuous-time CMs vs. discrete-time CMs using varying number of time steps (N), trained using all techniques in Sec. 4.
> </details>


![](https://ai-paper-reviewer.com/2410.11081/charts_8_0.png)

> 🔼 The chart compares the sample quality of different generative models on ImageNet 512x512 based on their effective sampling compute, showing that the proposed 2-step sCM achieves comparable quality with significantly less compute.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sample quality vs. effective sampling compute (billion parameters × number of function evaluations during sampling). We compare the sample quality of different models on ImageNet 512×512, measured by FID (↓). Our 2-step sCM achieves sample quality comparable to the best previous generative models while using less than 10% of the effective sampling compute.
> </details>


![](https://ai-paper-reviewer.com/2410.11081/charts_8_1.png)

> 🔼 The chart compares the sample quality (precision, recall, and FID) of different models (EDM2, VSD, sCD, and combinations) across varying guidance scales on ImageNet 512x512.
> <details>
> <summary>read the caption</summary>
> Figure 7: sCD has higher diversity compared to VSD: Sample quality comparison of the EDM2 (Karras et al., 2024) diffusion model, VSD (Wang et al., 2024; Yin et al., 2024b), sCD, and the combination of VSD and SCD, across varying guidance scales. All models are of EDM2-M size and trained on ImageNet 512x512.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>METHOD</td><td>NFE (↓)</td><td>FID (↓)</td><td>#Params</td><td>METHOD</td><td>NFE (↓)</td><td>FID (↓)</td><td>#Params</td></tr><tr><td>Diffusion models</td><td></td><td></td><td></td><td>†Teacher Diffusion Model</td><td></td><td></td><td></td></tr><tr><td>ADM-G (Dhariwal & Nichol, 2021)</td><td>250x2</td><td>7.72</td><td>559M</td><td>EDM2-S (Karras et al., 2024)</td><td>63x2</td><td>2.29</td><td>280M</td></tr><tr><td>RIN (Jabri et al., 2022)</td><td>1000</td><td>3.95</td><td>320M</td><td>EDM2-M (Karras et al., 2024)</td><td>63x2</td><td>2.00</td><td>498M</td></tr><tr><td>U-ViT-H/4 (Bao et al., 2023)</td><td>250x2</td><td>4.05</td><td>501M</td><td>EDM2-L (Karras et al., 2024)</td><td>63x2</td><td>1.87</td><td>778M</td></tr><tr><td>DiT-XL/2 (Peebles & Xie, 2023)</td><td>250x2</td><td>3.04</td><td>675M</td><td>EDM2-XL (Karras et al., 2024)</td><td>63x2</td><td>1.80</td><td>1.1B</td></tr><tr><td>SimDiff (Hoogeboom et al., 2023)</td><td>512x2</td><td>3.02</td><td>2B</td><td>EDM2-XXL (Karras et al., 2024)</td><td>63x2</td><td>1.73</td><td>1.5B</td></tr><tr><td>VDM++ (Kingma & Gao, 2024)</td><td>512x2</td><td>2.65</td><td>2B</td><td></td><td></td><td></td><td></td></tr><tr><td>DiffiT (Hatamizadeh et al., 2023)</td><td>250x2</td><td>2.67</td><td>561M</td><td>Consistency Training (sCT, ours)</td><td></td><td></td><td></td></tr><tr><td>DiMR-XL/3R (Liu et al., 2024)</td><td>250x2</td><td>2.89</td><td>525M</td><td>sCT-S (ours)</td><td>1</td><td>10.13</td><td>280M</td></tr><tr><td>DIFFUSSM-XL (Yan et al., 2024)</td><td>250x2</td><td>3.41</td><td>673M</td><td></td><td>2</td><td>9.86</td><td>280M</td></tr><tr><td>DiM-H (Teng et al., 2024)</td><td>250x2</td><td>3.78</td><td>860M</td><td>sCT-M (ours)</td><td>1</td><td>5.84</td><td>498M</td></tr><tr><td>U-DiT (Tian et al., 2024b)</td><td>250</td><td>15.39</td><td>204M</td><td></td><td>2</td><td>5.53</td><td>498M</td></tr><tr><td>SiT-XL (Ma et al., 2024)</td><td>250x2</td><td>2.62</td><td>675M</td><td>sCT-L (ours)</td><td>1</td><td>5.15</td><td>778M</td></tr><tr><td>Large-DiT (Alpha-VLLM, 2024)</td><td>250x2</td><td>2.52</td><td>3B</td><td></td><td>2</td><td>4.65</td><td>778M</td></tr><tr><td>MaskDiT (Zheng et al., 2023a)</td><td>79x2</td><td>2.50</td><td>736M</td><td>sCT-XL (ours)</td><td>1</td><td>4.33</td><td>1.1B</td></tr><tr><td>DiS-H/2 (Fei et al., 2024a)</td><td>250x2</td><td>2.88</td><td>900M</td><td></td><td>2</td><td>3.73</td><td>1.1B</td></tr><tr><td>DRWKV-H/2 (Fei et al., 2024b)</td><td>250x2</td><td>2.95</td><td>779M</td><td rowspan="2">sCT-XXL (ours)</td><td></td><td></td><td></td></tr><tr><td>EDM2-S (Karras et al., 2024)</td><td>63x2</td><td>2.23</td><td>280M</td><td>1</td><td>4.29</td><td>1.5B</td></tr><tr><td>EDM2-M (Karras et al., 2024)</td><td>63x2</td><td>2.01</td><td>498M</td><td></td><td>2</td><td>3.76</td><td>1.5B</td></tr><tr><td>EDM2-L (Karras et al., 2024)</td><td>63x2</td><td>1.88</td><td>778M</td><td>Consistency Distillation (sCD, ours)</td><td></td><td></td><td></td></tr><tr><td>EDM2-XL (Karras et al., 2024)</td><td>63x2</td><td>1.85</td><td>1.1B</td><td>sCD-S</td><td>1</td><td>3.07</td><td>280M</td></tr><tr><td>EDM2-XXL (Karras et al., 2024)</td><td>63x2</td><td>1.81</td><td>1.5B</td><td></td><td>2</td><td>2.50</td><td>280M</td></tr><tr><td>GANs & Masked Models</td><td></td><td></td><td></td><td>sCD-M</td><td>1</td><td>2.75</td><td>498M</td></tr><tr><td>BigGAN (Brock, 2018)</td><td>1</td><td>8.43</td><td>160M</td><td></td><td>2</td><td>2.26</td><td>498M</td></tr><tr><td>StyleGAN-XL (Sauer et al., 2022)</td><td>1x2</td><td>2.41</td><td>168M</td><td>sCD-L</td><td>1</td><td>2.55</td><td>778M</td></tr><tr><td>VQGAN (Esser et al., 2021)</td><td>1024</td><td>26.52</td><td>227M</td><td></td><td>2</td><td>2.04</td><td>778M</td></tr><tr><td>MaskGIT (Chang et al., 2022)</td><td>12</td><td>7.32</td><td>227M</td><td>sCD-XL</td><td>1</td><td>2.40</td><td>1.1B</td></tr><tr><td>MAGVIT-v2 (Yu et al., 2023)</td><td>64x2</td><td>1.91</td><td>307M</td><td></td><td>2</td><td>1.93</td><td>1.1B</td></tr><tr><td>MAR (Li et al., 2024)</td><td>64x2</td><td>1.73</td><td>481M</td><td>sCD-XXL</td><td>1</td><td>2.28</td><td>1.5B</td></tr><tr><td>VAR-d36-s (Tian et al⌀, 2024a)</td><td>10x2</td><td>2.63</td><td>2.3B</td><td></td><td>2</td><td>1.88</td><td>1.5B</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the sample quality results (FID scores and number of function evaluations (NFEs)) of different generative models, including diffusion models, GANs, masked models, and consistency models (both training and distillation), on the class-conditional ImageNet 512x512 dataset.
> <details>
> <summary>read the caption</summary>
> Table 2: Sample quality on class-conditional ImageNet 512×512. Our reimplemented teacher diffusion model based on EDM2 (Karras et al., 2024) but with modifications in Sec. 4.1.
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:18px'><tr><td>Input: dataset D with F⌀ , weighting w⌀, learning rate 7, proposal iteration H.</td><td>std. ⌀d, pretrained diffusion model Fpretrain with parameter Opretrain, model (Pmean, Pstd), constant c, warmup</td></tr><tr><td>Init: 0 ← Opretrain, Iters ← 0.</td><td></td></tr><tr><td>repeat X⌀ ~ D, z ~ N(0,0oJ), T ~ N(Pmean, Pstd), t arctan(�), cos(t)xo + sin (t)z</td><td>Xt ←</td></tr><tr><td>← dxt cos(t)z - sin(t)xo if consistency training else dxt ← dt</td><td>← ⌀d Fpretrain (ort , t) dt</td></tr><tr><td>r ← min(1, Iters/H)</td><td>▷ Tangent warmup )</td></tr><tr><td>g ← - cos2(t)(�dF�- - dact ) - r · cos(t) sin(t)(xt + ⌀d dFat rearrangement ← g/(llgll +</td><td>▷ JVP ▷</td></tr><tr><td>g c) Tangent normalization</td><td></td></tr><tr><td>L(�,⌀) ← ew⌀(t) IIFe(�,t) - Fe-(⌀,t) - gll2 - w⌀(t) Adaptive weighting (�, ⌀) ←</td><td>▷</td></tr><tr><td>(�, ⌀) - 700,⌀L(0, ⌀)</td><td></td></tr><tr><td>Iters Iters +1</td><td></td></tr><tr><td>← until convergence</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the sample quality of various generative models on CIFAR-10 and ImageNet 64x64 datasets, measured by FID and number of function evaluations.
> <details>
> <summary>read the caption</summary>
> Table 1: Sample quality on unconditional CIFAR-10 and class-conditional ImageNet 64×64.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td colspan="4">Model Size</td></tr><tr><td></td><td>s</td><td>M</td><td>L</td><td>XL</td></tr><tr><td colspan="5">Model details</td></tr><tr><td>Batch size</td><td>2048</td><td>2048</td><td>2048</td><td>2048</td></tr><tr><td>Channel multiplier</td><td>192</td><td>256</td><td>320</td><td>384</td></tr><tr><td>Time embedding layer</td><td>positional</td><td>positional</td><td>positional</td><td>positional</td></tr><tr><td>noise conditioning Cnoise (t)</td><td>t</td><td>t</td><td>t</td><td>t</td></tr><tr><td>adaptive double normalization</td><td>V</td><td>V</td><td>V</td><td>V</td></tr><tr><td>Learning rate decay (tref)</td><td>35000</td><td>35000</td><td>35000</td><td>35000</td></tr><tr><td>Adam B1</td><td>0.9</td><td>0.9</td><td>0.9</td><td>0.9</td></tr><tr><td>Adam B2</td><td>0.99</td><td>0.99</td><td>0.99</td><td>0.99</td></tr><tr><td>Adam 6</td><td>1.0e-11</td><td>1.0e-11</td><td>1.0e-11</td><td>1.0e-11</td></tr><tr><td>Model capacity (Mparams)</td><td>280.2</td><td>497.8</td><td>777.6</td><td>1119.4</td></tr><tr><td colspan="5">Training details of diffusion models (TrigFlow)</td></tr><tr><td>Training iterations</td><td>1048k</td><td>1486k</td><td>761k</td><td>540k</td></tr><tr><td>Learning rate max (�ref)</td><td>1.0e-2</td><td>9.0e-3</td><td>8.0e-3</td><td>7.0e-3</td></tr><tr><td>Dropout probability</td><td>0%</td><td>10%</td><td>10%</td><td>10%</td></tr><tr><td>Proposal Pmean</td><td>-0.8</td><td>-0.8</td><td>-0.8</td><td>-0.8</td></tr><tr><td>Proposal Pstd.</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td></tr><tr><td colspan="5">Shared details of consistency models</td></tr><tr><td>Learning rate max (�ref)</td><td>1.0e-4</td><td>9.0e-5</td><td>8.0e-5</td><td>7.0e-5</td></tr><tr><td>Proposal Pmean</td><td>-1.0</td><td>-1.0</td><td>-1.0</td><td>-1.0</td></tr><tr><td>Proposal Pstd.</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td></tr><tr><td>Tangent normalization constant (c)</td><td>0.1</td><td>0.1</td><td>0.1</td><td>0.1</td></tr><tr><td>Tangent warm up iterations</td><td>10k</td><td>10k</td><td>10k</td><td>10k</td></tr><tr><td>EMA length (�rel) of pretrained diffusion</td><td>0.075</td><td>0.06</td><td>0.04</td><td>0.04</td></tr><tr><td colspan="5">Training details of sCT</td></tr><tr><td>Training iterations</td><td>400k</td><td>400k</td><td>400k</td><td>400k</td></tr><tr><td>Dropout probability for resolution < 16</td><td>45%</td><td>45%</td><td>45%</td><td>45%</td></tr><tr><td colspan="5">Training details of sCD</td></tr><tr><td>Training iterations</td><td>400k</td><td>400k</td><td>400k</td><td>400k</td></tr><tr><td>Dropout probability for resolution ≤ 16</td><td>0%</td><td>0%</td><td>0%</td><td>0%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the training hyperparameters and settings for diffusion models, consistency models (both training and distillation), and variational score distillation models on ImageNet 64x64.
> <details>
> <summary>read the caption</summary>
> Table 3: Training settings of all models and training algorithms on ImageNet 64×64 dataset.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td colspan="5">Model Size</td></tr><tr><td></td><td>s</td><td>M</td><td>L</td><td>XL</td><td>XXL</td></tr><tr><td colspan="6">Model details</td></tr><tr><td>Batch size</td><td>2048</td><td>2048</td><td>2048</td><td>2048</td><td>2048</td></tr><tr><td>Channel multiplier</td><td>192</td><td>256</td><td>320</td><td>384</td><td>448</td></tr><tr><td>Time embedding layer</td><td>positional</td><td>positional</td><td>positional</td><td>positional</td><td>positional</td></tr><tr><td>noise conditioning Cnoise (t)</td><td>t</td><td>t</td><td>t</td><td>t</td><td>t</td></tr><tr><td>adaptive double normalization</td><td>V</td><td>V</td><td>V</td><td>V</td><td>V</td></tr><tr><td>Learning rate decay (tref)</td><td>70000</td><td>70000</td><td>70000</td><td>70000</td><td>70000</td></tr><tr><td>Adam B1</td><td>0.9</td><td>0.9</td><td>0.9</td><td>0.9</td><td>0.9</td></tr><tr><td>Adam B2</td><td>0.99</td><td>0.99</td><td>0.99</td><td>0.99</td><td>0.99</td></tr><tr><td>Adam 6</td><td>1.0e-11</td><td>1.0e-11</td><td>1.0e-11</td><td>1.0e-11</td><td>1.0e-11</td></tr><tr><td>Model capacity (Mparams)</td><td>280.2</td><td>497.8</td><td>777.6</td><td>1119.4</td><td>1523.4</td></tr><tr><td colspan="6">Training details of diffusion models (TrigFlow)</td></tr><tr><td>Training iterations</td><td>1048k</td><td>1048k</td><td>696k</td><td>598k</td><td>376k</td></tr><tr><td>Learning rate max (�ref)</td><td>1.0e-2</td><td>9.0e-3</td><td>8.0e-3</td><td>7.0e-3</td><td>6.5e-3</td></tr><tr><td>Dropout probability</td><td>0%</td><td>10%</td><td>10%</td><td>10%</td><td>10%</td></tr><tr><td>Proposal Pmean</td><td>-0.4</td><td>-0.4</td><td>-0.4</td><td>-0.4</td><td>-0.4</td></tr><tr><td>Proposal Pstd.</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td></tr><tr><td colspan="6">Shared details of consistency models</td></tr><tr><td>Learning rate max (�ref)</td><td>1.0e-4</td><td>9.0e-5</td><td>8.0e-5</td><td>7.0e-5</td><td>6.5e-5</td></tr><tr><td>Proposal Pmean</td><td>-0.8</td><td>-0.8</td><td>-0.8</td><td>-0.8</td><td>-0.8</td></tr><tr><td>Proposal Pstd.</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td></tr><tr><td>Tangent normalization constant (c)</td><td>0.1</td><td>0.1</td><td>0.1</td><td>0.1</td><td>0.1</td></tr><tr><td>Tangent warm up iterations</td><td>10k</td><td>10k</td><td>10k</td><td>10k</td><td>10k</td></tr><tr><td>EMA length (⌀rel) of pretrained diffusion</td><td>0.025</td><td>0.03</td><td>0.015</td><td>0.02</td><td>0.015</td></tr><tr><td colspan="6">Training details of sCT</td></tr><tr><td>Training iterations</td><td>100k</td><td>100k</td><td>100k</td><td>100k</td><td>100k</td></tr><tr><td>Dropout probability for resolution ≤ 16</td><td>25%</td><td>35%</td><td>35%</td><td>35%</td><td>35%</td></tr><tr><td colspan="6">Training details of sCD</td></tr><tr><td>Training iterations</td><td>200k</td><td>200k</td><td>200k</td><td>200k</td><td>200k</td></tr><tr><td>Dropout probability for resolution ≤ 16</td><td>0%</td><td>10%</td><td>10%</td><td>10%</td><td>10%</td></tr><tr><td>Maximum of CFG scale</td><td>2.0</td><td>2.0</td><td>2.0</td><td>2.0</td><td>2.0</td></tr><tr><td colspan="6">Training details of sCD with adaptive VSD</td></tr><tr><td>Training iterations</td><td>20k</td><td>20k</td><td>20k</td><td>20k</td><td>20k</td></tr><tr><td>Learning rate max (�ref) for F⌀</td><td>1.0e-4</td><td>9.0e-5</td><td>8.0e-5</td><td>7.0e-5</td><td>6.5e-5</td></tr><tr><td>Dropout probability for F⌀</td><td>0%</td><td>10%</td><td>10%</td><td>10%</td><td>10%</td></tr><tr><td>Proposal Pmean for LDiff (⌀)</td><td>-0.8</td><td>-0.8</td><td>-0.8</td><td>-0.8</td><td>-0.8</td></tr><tr><td>Proposal Pstd. for LDiff (⌀)</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td><td>1.6</td></tr><tr><td>Number of updating of ⌀ per updating of 0</td><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr><tr><td>One-step sampling starting time tmax</td><td>arctan( ⌀6 )</td><td>arctan( 800)</td><td>arctan( 800)</td><td>arctan( 816 )</td><td>arctan( 80 )</td></tr><tr><td>Proposal Pmean for LVSD(�)</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td><td>0.4</td></tr><tr><td>Proposal Pstd. for LVSD(�)</td><td>2.0</td><td>2.0</td><td>2.0</td><td>2.0</td><td>2.0</td></tr><tr><td>Loss weighting 入VSD for LVSD</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the training settings of all models and training algorithms used in the experiments on the ImageNet 512x512 dataset, detailing various hyperparameters and training configurations for different model sizes.
> <details>
> <summary>read the caption</summary>
> Table 4: Training settings of all models and training algorithms on ImageNet 512x512 dataset.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td colspan="5">Model Size</td></tr><tr><td></td><td>s</td><td>M</td><td>L</td><td>XL</td><td>XXL</td></tr><tr><td colspan="6">Sampling by diffusion models (NFE = 126)</td></tr><tr><td>EMA length (Jrel)</td><td>0.025</td><td>0.030</td><td>0.015</td><td>0.020</td><td>0.015</td></tr><tr><td>Guidance scale for FID</td><td>1.4</td><td>1.2</td><td>1.2</td><td>1.2</td><td>1.2</td></tr><tr><td>+ Guidance scale for FDDINOv2</td><td>2.0</td><td>1.8</td><td>1.8</td><td>1.8</td><td>1.8</td></tr><tr><td>FID (TrigFlow)</td><td>2.29</td><td>2.00</td><td>1.87</td><td>1.80</td><td>1.73</td></tr><tr><td>FID (EDM2)</td><td>2.23</td><td>2.01</td><td>1.88</td><td>1.85</td><td>1.81</td></tr><tr><td>FDDINOv2(TrigFlow)</td><td>52.08</td><td>43.33</td><td>39.23</td><td>36.73</td><td>35.93</td></tr><tr><td>†FDDINOv2(EDM2) with ⌀rel for FDDINOv2</td><td>52.32</td><td>41.98</td><td>38.20</td><td>35.67</td><td>33.09</td></tr><tr><td colspan="6">Sampling by consistency models trained with sCT</td></tr><tr><td>Intermediate time tmid in 2-step sampling</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td></tr><tr><td>1-step FID</td><td>10.13</td><td>5.84</td><td>5.15</td><td>4.33</td><td>4.29</td></tr><tr><td>2-step FID</td><td>9.86</td><td>5.53</td><td>4.65</td><td>3.73</td><td>3.76</td></tr><tr><td>1-step FDDINOv2</td><td>278.35</td><td>192.13</td><td>169.98</td><td>147.06</td><td>146.31</td></tr><tr><td>2-step FDDINOv2</td><td>244.41</td><td>160.66</td><td>135.80</td><td>114.65</td><td>112.69</td></tr><tr><td colspan="6">Sampling by consistency models trained with sCD</td></tr><tr><td>Intermediate time tmid in 2-step sampling</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td></tr><tr><td>Guidance scale for FID, 1-step sampling</td><td>1.5</td><td>1.3</td><td>1.3</td><td>1.3</td><td>1.3</td></tr><tr><td>Guidance scale for FID, 2-step sampling</td><td>1.4</td><td>1.2</td><td>1.2</td><td>1.2</td><td>1.2</td></tr><tr><td>Guidance scale for FDDINOv2, 1-step sampling</td><td>2.0</td><td>2.0</td><td>2.0</td><td>2.0</td><td>2.0</td></tr><tr><td>Guidance scale for FDDINOv2, 2-step sampling</td><td>2.0</td><td>2.0</td><td>1.9</td><td>1.9</td><td>1.9</td></tr><tr><td>1-step FID</td><td>3.07</td><td>2.75</td><td>2.55</td><td>2.40</td><td>2.28</td></tr><tr><td>2-step FID</td><td>2.50</td><td>2.26</td><td>2.04</td><td>1.93</td><td>1.88</td></tr><tr><td>1-step FDDINOv2</td><td>104.22</td><td>83.78</td><td>76.10</td><td>70.30</td><td>67.80</td></tr><tr><td>2-step FDDINOv2</td><td>71.15</td><td>55.70</td><td>50.63</td><td>46.66</td><td>44.97</td></tr><tr><td colspan="6">Sampling by consistency models trained with multistep sCD</td></tr><tr><td>Guidance scale for FID</td><td>1.4</td><td>1.2</td><td>1.2</td><td>1.15</td><td>1.15</td></tr><tr><td>Guidance scale for FDDINOv2</td><td>2.0</td><td>2.0</td><td>2.0</td><td>1.9</td><td>1.9</td></tr><tr><td>FID, M = 2</td><td>2.79</td><td>2.51</td><td>2.32</td><td>2.29</td><td>2.16</td></tr><tr><td>FID, M = 4</td><td>2.78</td><td>2.46</td><td>2.28</td><td>2.22</td><td>2.10</td></tr><tr><td>FID, M = 8</td><td>2.49</td><td>2.24</td><td>2.04</td><td>2.02</td><td>1.90</td></tr><tr><td>FID, M = 16</td><td>2.34</td><td>2.18</td><td>1.99</td><td>1.90</td><td>1.82</td></tr><tr><td>FDDINOv2, M = 2</td><td>76.29</td><td>60.47</td><td>54.91</td><td>51.91</td><td>50.70</td></tr><tr><td>FDDINOv2, M = 4</td><td>72.01</td><td>56.38</td><td>50.99</td><td>47.61</td><td>46.78</td></tr><tr><td>FDDINOv2, M = 8</td><td>60.13</td><td>49.46</td><td>44.87</td><td>41.26</td><td>40.56</td></tr><tr><td>FDDINOv2, M = 16</td><td>55.89</td><td>46.94</td><td>42.55</td><td>39.30</td><td>38.55</td></tr><tr><td colspan="6">Sampling by consistency models trained with sCD + adaptive VSD</td></tr><tr><td>Intermediate time tmid in 2-step sampling</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td></tr><tr><td>Guidance scale for FID, 1-step sampling</td><td>1.2</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td></tr><tr><td>Guidance scale for FID, 2-step sampling</td><td>1.2</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td></tr><tr><td>Guidance scale for FDDINOv2, 1-step sampling</td><td>1.7</td><td>1.5</td><td>1.6</td><td>1.5</td><td>1.5</td></tr><tr><td>Guidance scale for FDDINOv2, 2-step sampling</td><td>1.7</td><td>1.5</td><td>1.6</td><td>1.5</td><td>1.5</td></tr><tr><td>1-step FID</td><td>3.37</td><td>2.67</td><td>2.26</td><td>2.39</td><td>2.16</td></tr><tr><td>2-step FID</td><td>2.70</td><td>2.29</td><td>1.99</td><td>2.01</td><td>1.89</td></tr><tr><td>1-step FDDINOv2</td><td>72.12</td><td>54.81</td><td>50.46</td><td>48.11</td><td>45.54</td></tr><tr><td>2-step FDDINOv2</td><td>69.00</td><td>53.53</td><td>48.54</td><td>46.61</td><td>43.93</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of the sample quality, measured by FID and FDDINOv2, of various models (diffusion models, consistency models trained with SCT and sCD, and consistency models trained with sCD and adaptive VSD) on the ImageNet 512x512 dataset, showing the impact of model size and sampling techniques.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation of sample quality of different models on ImageNet 512x512 dataset. Results of EDM2 (Karras et al., 2024) are with EDM parameterization and the original AdaGN layer. The FDDINOv2 in EDM2 are obtained by tuned EMA rate, which is different from our EMA rates that are tuned for FID scores.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td></td><td colspan="3">Method</td></tr><tr><td></td><td>VSD</td><td>sCD</td><td>sCD + VSD</td></tr><tr><td>EMA length (Jrel)</td><td>0.05</td><td>0.05</td><td>0.05</td></tr><tr><td>Guidance scale for FID, 1-step sampling</td><td>1.1</td><td>1.3</td><td>1.0</td></tr><tr><td>Guidance scale for FID, 2-step sampling</td><td>\</td><td>1.2</td><td>1.0</td></tr><tr><td>Guidance scale for FDDINOv2, 1-step sampling</td><td>1.4</td><td>2.0</td><td>1.5</td></tr><tr><td>Guidance scale for FDDINOv2, 2-step sampling</td><td></td><td>2.0</td><td>1.5</td></tr><tr><td>1-step FID</td><td>3.02</td><td>2.75</td><td>2.67</td></tr><tr><td>2-step FID</td><td></td><td>2.26</td><td>2.29</td></tr><tr><td>1-step FDDINOv2</td><td>57.19</td><td>83.78</td><td>54.81</td></tr><tr><td>2-step FDDINOv2</td><td></td><td>55.70</td><td>53.53</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 shows the ablation study comparing the performance of VSD, sCD, and a combination of both methods on ImageNet 512x512 dataset using model size M, evaluating FID and FDDINOV2 scores for both 1-step and 2-step sampling.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation of adaptive VSD and sCD on ImageNet 512×512 dataset with model size M.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td rowspan="2"></td><td colspan="4">Model Size</td></tr><tr><td>S</td><td>M</td><td>L</td><td>XL</td></tr><tr><td colspan="5">Sampling by diffusion models (NFE=63)</td></tr><tr><td>EMA length (Grel)</td><td>0.075</td><td>0.06</td><td>0.04</td><td>0.04</td></tr><tr><td>FID (TrigFlow)</td><td>1.70</td><td>1.55</td><td>1.44</td><td>1.38</td></tr><tr><td colspan="5">Sampling by consistency models trained with sCT</td></tr><tr><td>Intermediate time tmid in 2-step sampling</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td></tr><tr><td>1-step FID</td><td>3.23</td><td>2.25</td><td>2.08</td><td>2.04</td></tr><tr><td>2-step FID</td><td>2.93</td><td>1.81</td><td>1.57</td><td>1.48</td></tr><tr><td colspan="5">Sampling by consistency models trained with sCD</td></tr><tr><td>Intermediate time tmid in 2-step sampling</td><td>1.1</td><td>1.1</td><td>1.1</td><td>1.1</td></tr><tr><td>1-step FID</td><td>2.97</td><td>2.79</td><td>2.43</td><td>2.44</td></tr><tr><td>2-step FID</td><td>2.07</td><td>1.89</td><td>1.70</td><td>1.66</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents a comparison of sample quality, measured by FID scores, for various models (diffusion models and consistency models trained with both sCT and sCD) on the ImageNet 64x64 dataset, showcasing the impact of different training methods and model sizes on sample quality.
> <details>
> <summary>read the caption</summary>
> Table 7: Evaluation of sample quality of different models on ImageNet 64x64 dataset.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.11081/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/36.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/37.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11081/38.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}