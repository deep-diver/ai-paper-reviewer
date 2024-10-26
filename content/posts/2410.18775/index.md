---
title: "Robust Watermarking Using Generative Priors Against Image Editing: From Benchmarking to Advances"
summary: "Current image watermarking struggles against advanced image editing. This paper introduces W-Bench, a benchmark to evaluate watermarking methods against various editing techniques, and VINE, a new met....."
categories: ["AI Generated"]
tags: ["2024-10-24"]
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

------



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







------

<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
{{< /table-caption >}}

{{< table-caption caption="🔽 Comparison of watermarking performance in terms of watermarked image quality and detection accuracy across various image editing methods. Quality metrics are averaged over 10,000 images, and the TPR@0.1%FPR for each specific editing method is averaged over 5,000 images. The best value in each column is highlighted in bold, and the second best value is underlined. Abbreviations: Cap = Encoding Capacity; Sto = Stochastic Regeneration; Det = Deterministic Regeneration; Pix2Pix = Instruct-Pix2Pix; Ultra = UltraEdit; Magic = MagicBrush; CtrlN = ControlNet-Inpainting; SVD = Stable Video Diffusion." >}}
{{< /table-caption >}}


</details>

------

