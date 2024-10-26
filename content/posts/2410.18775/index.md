---
title: "Robust Watermarking Using Generative Priors Against Image Editing: From Benchmarking to Advances"
summary: "Current image watermarking struggles against advanced image editing. This paper introduces W-Bench, a benchmark to evaluate watermarking methods against various editing techniques, and VINE, a new met....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

Current image watermarking struggles against advanced image editing. This paper introduces W-Bench, a benchmark to evaluate watermarking methods against various editing techniques, and VINE, a new method significantly improving robustness and image quality by using a pretrained diffusion model and analyzing image editing's frequency characteristics.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18775" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces W-Bench, a comprehensive benchmark for evaluating watermarking methods' robustness against various image editing techniques enabled by large-scale text-to-image models.  It also proposes VINE, a novel watermarking method that significantly enhances robustness while maintaining high image quality by leveraging a pretrained diffusion model and analyzing frequency characteristics of image editing.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} W-Bench, the first comprehensive benchmark for evaluating watermarking robustness against various image editing techniques, was introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VINE, a new watermarking method, significantly enhances robustness against image editing while maintaining high image quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Analysis of image editing's frequency characteristics reveals that blurring distortions can serve as surrogate attacks during training to improve watermark robustness. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png "🔼 Figure 1: (a) Flowchart of the W-Bench evaluation process. (b) Watermarking performance. Each method is illustrated with a diamond and four bars. The area of the diamond represents the method's encoding capacity. The y-coordinate of the diamond's center indicates normalized image quality, calculated by averaging the normalized PSNR, SSIM, LPIPS, and FID between watermarked and input images. The x-coordinate represents robustness, measured by the True Positive Rate at a 0.1% False Positive Rate (TPR@0.1%FPR) averaged across four types of image editing methods, encompassing a total of seven distinct models and algorithms. The four bars are oriented to signify different editing tasks: image regeneration (left), global editing (top), local editing (right), and image-to-video generation (bottom). The length of each bar reflects the method's normalized TPR@0.1%FPR after each type of image editing-the longer the bar, the better the performance.")





{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
| Config | Blurring Distortions | Watermark Encoder | Watermark Encoder | Watermark Encoder | Watermark Encoder | Watermark Encoder | PSNR ↑ | SSIM ↑ | LPIPS ↓ | FID ↓ | TPR@0.1%FPR ↑ (%) | TPR@0.1%FPR ↑ (%) | TPR@0.1%FPR ↑ (%) | TPR@0.1%FPR ↑ (%) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Config | Blurring Distortions | Backbone | Condition | Skip | Pretrained | Finetune | PSNR ↑ | SSIM ↑ | LPIPS ↓ | FID ↓ | Sto | Det | Pix2Pix | Ultra |
| Config A |  | Simple UNet | N.A. | N.A. | N.A. | x | 38.21 | 0.9828 | 0.0148 | 1.69 | 54.61 | 66.86 | 64.24 | 32.62 |
| Config B |  | Simple UNet | N.A. | N.A. | N.A. | 35.85 | 0.9766 | 0.0257 | 2.12 | 86.85 | 92.28 | 80.98 | 62.14 |  |
| Config C |  | Simple UNet | N.A. | N.A. | N.A. | 31.24 | 0.9501 | 0.0458 | 4.67 | 98.59 | 99.29 | 96.01 | 84.60 |  |
| Config D |  |  | ControlNet |  |  |  | 32.68 | 0.9640 | 0.0298 | 2.87 | 90.82 | 94.89 | 91.86 | 70.69 |
| Config E | SDXL-Turbo | Cond. Adaptor |  |  | 36.76 |  | 0.9856 | 0.0102 | 0.53 | 90.86 | 94.78 | 92.88 | 70.68 |  |
| Config F (VINE-B) |  | Cond. Adaptor |  |  |  | 40.51 | 0.9954 | 0.0029 | 0.08 | 91.03 | 99.25 | 96.30 | 80.90 |  |
| Config G (VINE-R) |  | Cond. Adaptor |  |  | 37.34 |  | 0.9934 | 0.0063 | 0.15 | 99.66 | 99.98 | 97.46 | 86.86 |  |
| Config H |  | Cond. Adaptor |  |  |  | 35.18 | 0.9812 | 0.0137 | 1.03 | 99.67 | 99.92 | 96.13 | 84.66 |  |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png "🔼 Figure 2: Process for analyzing the impact of image editing on an image's frequency spectrum. In this example, the editing model Instruct-Pix2Pix, denoted as ∈(·), is employed. The function F(·) represents the Fourier transform, and we visualize its magnitude on a logarithmic scale.")

![](figures/figures_6_0.png "🔼 Figure 4: The overall framework of our method, VINE. We utilize the pretrained one-step text-to-image model SDXL-Turbo as the watermark encoder. A condition adaptor is incorporated to fuse the watermark with the image before passing the information to the VAE encoder. Zero-convolution layers (Zhang et al., 2023) and skip connections are added for better perceptual similarity. For decoding the watermark, we employ ConvNeXt-B (Liu et al., 2022b) as the decoder, with an additional fully connected layer to output a 100-bit watermark. Throughout the entire training process, the SDXL-Turbo text prompt is set to null prompt. Figure 9 shows the condition adaptor architecture.")

![](figures/figures_9_0.png "🔼 Figure 1: (a) Flowchart of the W-Bench evaluation process. (b) Watermarking performance. Each method is illustrated with a diamond and four bars. The area of the diamond represents the method's encoding capacity. The y-coordinate of the diamond's center indicates normalized image quality, calculated by averaging the normalized PSNR, SSIM, LPIPS, and FID between watermarked and input images. The x-coordinate represents robustness, measured by the True Positive Rate at a 0.1% False Positive Rate (TPR@0.1%FPR) averaged across four types of image editing methods, encompassing a total of seven distinct models and algorithms. The four bars are oriented to signify different editing tasks: image regeneration (left), global editing (top), local editing (right), and image-to-video generation (bottom). The length of each bar reflects the method's normalized TPR@0.1%FPR after each type of image editing-the longer the bar, the better the performance.")

![](figures/figures_25_0.png "🔼 Figure 11: The reconstruction quality of stochastic regeneration and deterministic regeneration. Please zoom in for a closer look.")

![](figures/figures_27_0.png "🔼 Figure 1: (a) Flowchart of the W-Bench evaluation process. (b) Watermarking performance. Each method is illustrated with a diamond and four bars. The area of the diamond represents the method's encoding capacity. The y-coordinate of the diamond's center indicates normalized image quality, calculated by averaging the normalized PSNR, SSIM, LPIPS, and FID between watermarked and input images. The x-coordinate represents robustness, measured by the True Positive Rate at a 0.1% False Positive Rate (TPR@0.1%FPR) averaged across four types of image editing methods, encompassing a total of seven distinct models and algorithms. The four bars are oriented to signify different editing tasks: image regeneration (left), global editing (top), local editing (right), and image-to-video generation (bottom). The length of each bar reflects the method's normalized TPR@0.1%FPR after each type of image editing-the longer the bar, the better the performance.")

![](figures/figures_28_0.png "🔼 Figure 1: (a) Flowchart of the W-Bench evaluation process. (b) Watermarking performance. Each method is illustrated with a diamond and four bars. The area of the diamond represents the method's encoding capacity. The y-coordinate of the diamond's center indicates normalized image quality, calculated by averaging the normalized PSNR, SSIM, LPIPS, and FID between watermarked and input images. The x-coordinate represents robustness, measured by the True Positive Rate at a 0.1% False Positive Rate (TPR@0.1%FPR) averaged across four types of image editing methods, encompassing a total of seven distinct models and algorithms. The four bars are oriented to signify different editing tasks: image regeneration (left), global editing (top), local editing (right), and image-to-video generation (bottom). The length of each bar reflects the method's normalized TPR@0.1%FPR after each type of image editing—the longer the bar, the better the performance.")

![](figures/figures_29_0.png "🔼 Figure 1: (a) Flowchart of the W-Bench evaluation process. (b) Watermarking performance. Each method is illustrated with a diamond and four bars. The area of the diamond represents the method's encoding capacity. The y-coordinate of the diamond's center indicates normalized image quality, calculated by averaging the normalized PSNR, SSIM, LPIPS, and FID between watermarked and input images. The x-coordinate represents robustness, measured by the True Positive Rate at a 0.1% False Positive Rate (TPR@0.1%FPR) averaged across four types of image editing methods, encompassing a total of seven distinct models and algorithms. The four bars are oriented to signify different editing tasks: image regeneration (left), global editing (top), local editing (right), and image-to-video generation (bottom). The length of each bar reflects the method's normalized TPR@0.1%FPR after each type of image editing-the longer the bar, the better the performance.")

![](figures/figures_32_0.png "🔼 Figure 1: (a) Flowchart of the W-Bench evaluation process. (b) Watermarking performance. Each method is illustrated with a diamond and four bars. The area of the diamond represents the method’s encoding capacity. The y-coordinate of the diamond’s center indicates normalized image quality, calculated by averaging the normalized PSNR, SSIM, LPIPS, and FID between watermarked and input images. The x-coordinate represents robustness, measured by the True Positive Rate at a 0.1% False Positive Rate (TPR@0.1%FPR) averaged across four types of image editing methods, encompassing a total of seven distinct models and algorithms. The four bars are oriented to signify different editing tasks: image regeneration (left), global editing (top), local editing (right), and image-to-video generation (bottom). The length of each bar reflects the method’s normalized TPR@0.1%FPR after each type of image editing—the longer the bar, the better the performance.")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
| Algorithm 1 Resolution scaling |
| --- |
| 1: Input: Input image Xo, binary watermark w 2: Output: Watermarked image Xw 3: Model: Watermark Encoder E(.) trained on the resolution of u x v |
| 4: h, w ← Size(x。) 5: x⌀ ← x。/127.5 - 1 // normalize to range [-1, 1] 6: X⌀ ← interpolate(xo, (u, v)) 7: r ← E(x'。) - x' // resi dual image 8: r ← interpolate(r', (h, w)) 9: Xw ← clamp(x。 + r, -1, 1) 10: Xw ← Xw X 127.5 + 127.5 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
| Method | Resolution | Capacity ↑ | PSNR ↑ | SSIM ↑ | LPIPS ↓ | FID ↓ | TPR@0.1%FPR ↑ (%) |
| --- | --- | --- | --- | --- | --- | --- | --- |
| MBRS (Jia et al., 2021) | 128 x 128 | 30 | 25.14 | 0.8348 | 0.0821 | 13.51 | 100.0 |
| CIN (Ma et al., 2022) | 128 X 128 | 30 | 41.70 | 0.9812 | 0.0011 | 2.20 | 100.0 |
| PIM⌀G (Fang et al., 2022) | 128 X 128 | 30 | 37.54 | 0.9814 | 0.0140 | 2.97 | 100.0 |
| SepMark (Wu et al., 2023) | 128 X 128 | 30 | 35.50 | 0.9648 | 0.0116 | 2.95 | 100.0 |
| StegaStamp (Tancik et al., 2020) | 400 X 400 | 100 | 29.33 | 0.8992 | 0.1018 | 8.29 | 100.0 |
| TrustMark (Bui et al., 2023) | 256 x 256 | 100 | 40.94 | 0.9819 | 0.0015 | 1.04 | 100.0 |
| VINE-Base | 256 X 256 | 100 | 40.22 | 0.9961 | 0.0022 | 0.10 | 100.0 |
| VINE-Robust | 256 X 256 | 100 | 37.07 | 0.9942 | 0.0048 | 0.19 | 100.0 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
| Method | Instruct-Pix2Pix | Instruct-Pix2Pix | Instruct-Pix2Pix | UltraEdit | UltraEdit | UltraEdit | MagicBrush | MagicBrush | MagicBrush |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Method | CLIPdir ↑ | CLIPimg ↑ | CLIPout ↑ | CLIPdir ↑ | CLIPimg ↑ | CLIP, out ↑ | CLIPdir ↑ | CLIPimg ↑ | CLIPout ↑ |
| Unwatermarked Image | 0.2693 | 0.7283 | 0.2732 | 0.3230 | 0.7268 | 0.3008 | 0.3025 | 0.7913 | 0.2930 |
| MBRS (Jia et al., 2021) | 0.2494 | 0.7385 | 0.2733 | 0.2919 | 0.6654 | 0.2891 | 0.2857 | 0.7816 | 0.2929 |
| CIN (Ma et al., 2022) | 0.2625 | 0.7232 | 0.2729 | 0.3152 | 0.7111 | 0.3010 | 0.2949 | 0.7841 | 0.2928 |
| PIM⌀G (Fang et al., 2022) | 0.2518 | 0.7021 | 0.2746 | 0.3010 | 0.6940 | 0.3024 | 0.2815 | 0.7662 | 0.2962 |
| RivaGAN (Zhang et al., 2019) | 0.2647 | 0.7317 | 0.2721 | 0.3168 | 0.7133 | 0.3003 | 0.3020 | 0.7948 | 0.2930 |
| SepMark (Wu et al., 2023) | 0.2659 | 0.7292 | 0.2743 | 0.3145 | 0.7181 | 0.3002 | 0.2975 | 0.7891 | 0.2936 |
| DWTDCT (Al-Haj, 2007) | 0.2644 | 0.7317 | 0.2734 | 0.3189 | 0.7250 | 0.3009 | 0.2959 | 0.7942 | 0.2934 |
| DWTDCTSVD (Navas et al., 2008) | 0.2581 | 0.7220 | 0.2751 | 0.3115 | 0.7118 | 0.3004 | 0.2869 | 0.7793 | 0.2939 |
| SSL (Fernandez et al., 2022) | 0.2583 | 0.7218 | 0.2752 | 0.3093 | 0.7065 | 0.3019 | 0.2896 | 0.7780 | 0.2944 |
| StegaStamp (Tancik et al., 2020) | 0.2436 | 0.6826 | 0.2697 | 0.2904 | 0.6886 | 0.3007 | 0.2663 | 0.7512 | 0.2944 |
| TrustMark (Bui et al., 2023) | 0.2634 | 0.7181 | 0.2729 | 0.3172 | 0.7146 | 0.2994 | 0.2943 | 0.7853 | 0.2936 |
| EditGuard (Zhang et al., 2024d) | 0.2722 | 0.7045 | 0.2722 | 0.3155 | 0.7170 | 0.3021 | 0.2882 | 0.7708 | 0.2940 |
| VINE-Base | 0.2743 | 0.7260 | 0.2743 | 0.3186 | 0.7189 | 0.2996 | 0.2977 | 0.7889 | 0.2931 |
| VINE-Robust | 0.2624 | 0.7248 | 0.2715 | 0.3176 | 0.7183 | 0.3001 | 0.2981 | 0.7953 | 0.2940 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
| Method | ControlNet-Inpainting | ControlNet-Inpainting | ControlNet-Inpainting | UltraEdit | UltraEdit | UltraEdit |
| --- | --- | --- | --- | --- | --- | --- |
| Method | CLIPdir ↑ | CLIPimg ↑ | CLIPout ↑ | CLIPdir ↑ | CLIPimg ↑ | CLIPout ↑ |
| Unwatermarked Image | 0.1983 | 0.7076 | 0.2589 | 0.2778 | 0.7519 | 0.2917 |
| MBRS (Jia et al., 2021) | 0.1846 | 0.7058 | 0.2588 | 0.2657 | 0.7175 | 0.2913 |
| CIN (Ma et al., 2022) | 0.1966 | 0.7042 | 0.2613 | 0.2745 | 0.7389 | 0.2922 |
| PIM⌀G (Fang et al., 2022) | 0.1828 | 0.6909 | 0.2600 | 0.2578 | 0.7371 | 0.2920 |
| RivaGAN (Zhang et al., 2019) | 0.1975 | 0.7117 | 0.2612 | 0.2748 | 0.7469 | 0.2937 |
| SepMark (Wu et al., 2023) | 0.1932 | 0.7126 | 0.2582 | 0.2716 | 0.7588 | 0.2921 |
| DWTDCT (Al-Haj, 2007) | 0.1982 | 0.7197 | 0.2602 | 0.2776 | 0.7558 | 0.2924 |
| DWTDCTSVD (Navas et al., 2008) | 0.1922 | 0.6995 | 0.2608 | 0.2705 | 0.7469 | 0.2940 |
| SSL (Fernandez et al., 2022) | 0.1911 | 0.6995 | 0.2604 | 0.2677 | 0.7380 | 0.2940 |
| StegaStamp (Tancik et al., 2020) | 0.1752 | 0.6684 | 0.2606 | 0.2439 | 0.7246 | 0.2919 |
| TrustMark (Bui et al., 2023) | 0.1959 | 0.7001 | 0.2594 | 0.2728 | 0.7451 | 0.2919 |
| EditGuard (Zhang et al., 2024d) | 0.1921 | 0.6944 | 0.2606 | 0.2696 | 0.7392 | 0.2923 |
| VINE-Base | 0.1953 | 0.7023 | 0.2591 | 0.2726 | 0.7494 | 0.2906 |
| VINE-Robust | 0.1951 | 0.7030 | 0.2591 | 0.2710 | 0.7475 | 0.2909 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
| Method | Running Time per Image (s) | GPU Memory Usage (MB) |
| --- | --- | --- |
| MBRS (Jia et al., 2021) | 0.0053 | 938 |
| CIN (Ma et al., 2022) | 0.0741 | 2944 |
| PIMoG (Fang et al., 2022) | 0.0212 | 878 |
| RivaGAN (Zhang et al., 2019) | - | - |
| SepMark (Wu et al., 2023) | 0.0109 | 928 |
| DWTDCT (Al-Haj, 2007) | - | - |
| DWTDCTSVD (Navas et al., 2008) | - | - |
| SSL (Fernandez et al., 2022) | 2.1938 | 1072 |
| StegaStamp (Tancik et al., 2020) | 0.0672 | 1984 |
| TrustMark (Bui et al., 2023) | 0.0705 | 648 |
| EditGuard (Zhang et al., 2024d) | 0.2423 | 1638 |
| VINE | 0.0795 | 4982 |
{{< /table-caption >}}


</details>

------



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

  <img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

{{< /gallery >}}