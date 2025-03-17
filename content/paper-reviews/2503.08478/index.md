---
title: "NullFace: Training-Free Localized Face Anonymization"
summary: "NullFace: A training-free face anonymization method preserving non-identity attributes with localized control using latent diffusion inversion."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Face Recognition", "🏢 University of Trento",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08478 {{< /keyword >}}
{{< keyword icon="writer" >}} Han-Wei Kung et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08478" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08478" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08478/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Privacy is a growing concern with increased camera usage, yet current anonymization methods often degrade image utility. This paper addresses these issues by introducing a novel, training-free approach to face anonymization. Traditional methods like blurring reduce image quality. Recent GAN-based methods and diffusion models have limitations in preserving attributes,adapting to diverse data, and may overwrite important facial features.



The paper presents a method leveraging latent diffusion inversion with an identity-conditioned model, named **NullFace**. It uses pre-trained diffusion models without extra training, inverting input images to recover initial noise, then denoises via an identity-conditioned diffusion process. Key benefits include preserving non-identity attributes,localized anonymization controlled by segmentation masks, and competitive anonymization, attribute preservation, and image quality compared to current state-of-the-art methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a training-free anonymization method using diffusion inversion and identity embeddings. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Enables localized anonymization with segmentation masks for balancing privacy and usability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves competitive performance in anonymization, attribute preservation, and image quality. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a **training-free face anonymization method**, balancing privacy and utility. Its flexibility and robustness can inspire new research into personalized privacy solutions and ethical AI applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08478/x1.png)

> 🔼 Figure 1 shows a comparison of face anonymization techniques. The leftmost column displays original images. The next three columns illustrate full facial anonymization using inpainting, the proposed method (NullFace), and localized anonymization using NullFace. NullFace preserves key attributes like gaze, expressions, and head pose while effectively obscuring identity, unlike the inpainting method which alters such attributes. The final three columns showcase NullFace's ability to selectively anonymize specific facial regions, such as keeping eyes, nose or mouth visible while anonymizing the rest of the face.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our method obscures identity while preserving attributes such as gaze, expressions, and head pose (in contrast to Stable Diffusion Inpainting [58]) and enables selective anonymization of specific facial regions.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="id9.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="id9.2.2.3.1">
<td class="ltx_td ltx_align_center ltx_align_middle" id="id9.2.2.3.1.1">Original</td>
</tr>
<tr class="ltx_tr" id="id8.1.1.1">
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_t" id="id8.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id8.1.1.1.1.g1" src="extracted/6271211/images/tzer/cele/15169-orig.jpg" width="96"/></td>
</tr>
<tr class="ltx_tr" id="id9.2.2.2">
<td class="ltx_td ltx_align_center ltx_align_middle" id="id9.2.2.2.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id9.2.2.2.1.g1" src="extracted/6271211/images/tzer/cele/27144-orig.jpg" width="96"/></td>
</tr>
<tr class="ltx_tr" id="id9.2.2.4.2">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="id9.2.2.4.2.1" style="width:57.3pt;"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different face anonymization methods on two benchmark datasets: CelebA-HQ and FFHQ.  For each method, it shows the re-identification rate (how often the anonymized face can be linked back to the original identity), and attribute preservation scores for expression, gaze, and pose. Additionally, it includes image quality metrics such as FID and MUSIQ distance to evaluate the realism and similarity to the original images. Best performance in each category is highlighted in bold, second best is underlined, and worst performance is shown in red, facilitating easy comparison of different methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results on face anonymization methods for CelebA-HQ [35] and FFHQ [36] datasets. Best results are in bold, second-best are underlined, and worst results are in red.
> </details>





### In-depth insights


#### No-Train Privacy
**Training-free privacy** is a compelling paradigm for protecting sensitive data. Instead of training models to directly anonymize or redact information, it involves techniques applied without model-specific training. This offers significant advantages: **enhanced generalization** (as it's not tied to a specific dataset), **reduced risk of overfitting** (since there's no training on potentially biased data), and **improved robustness** against adversarial attacks (as attackers can't exploit model-specific vulnerabilities). Methods might include pre-trained models or transformations. The key is that privacy is achieved without iterative model updates, making it adaptable and easier to implement, yet potentially requiring careful design of the **core anonymization algorithm** to ensure both privacy and utility.

#### Latent Control
Latent control in face anonymization leverages the latent space of pre-trained generative models to manipulate facial features while preserving essential attributes. This approach offers precise control over the anonymization process by allowing modifications in the latent space that correspond to specific facial characteristics. **By navigating the latent space, one can selectively alter identifying features** such as skin tone or facial structure, ensuring that the anonymized face is distinct from the original while maintaining realism and utility. **Latent control also allows for attribute preservation, ensuring that non-identifying features** like expression, pose, and lighting conditions remain consistent. Further, the approach allows for reversible anonymization, where the original face can be reconstructed from the anonymized version if needed, adding a layer of security. **It also enables fine-grained control over the degree of anonymization**, allowing adjustments to the level of identity obfuscation. By manipulating latent variables, the method prevents unintended alterations to other attributes and generates realistic anonymized faces by focusing on identity-related features.

#### Invert & Anonym
The term "Invert & Anonym" suggests a process where an image's characteristics are inverted before anonymization. This could mean inverting color schemes or transforming textural details to obfuscate original identifying features, making the face unrecognizable. By inverting certain features, the subsequent anonymization process is likely more effective because the model will have difficulty linking the altered image to its original form. The inversion step acts as a crucial preprocessing phase to **strengthen the privacy protections**, making **re-identification more challenging** and boosting overall security and anonymization efficacy.

#### Masked Faces
**Masking faces** involves obscuring facial features to protect identity. This can range from simple pixelation to sophisticated GAN-based anonymization, balancing privacy and utility. **Localized masking** offers nuanced control, preserving crucial non-identity attributes such as expressions or gaze direction, valuable in fields like medical imaging or behavioral studies. Methods must address challenges like maintaining image quality and preventing re-identification, alongside ethical considerations around potential misuse, such as deepfakes, requiring robust defense mechanisms. The advent of AI necessitates a proactive approach to masking faces, combining technical advancement with ethical awareness, to promote responsible use and protect individual privacy.

#### Beyond FaceID
**Beyond FaceID** implies moving beyond simple facial recognition for security and access control. It suggests incorporating richer biometric data or contextual information. This could include gait analysis, voice recognition, or even behavioral biometrics based on how a user interacts with a device. Such multimodal approaches enhance security and reduce vulnerabilities associated with relying solely on facial features, which can be spoofed.  Furthermore, it suggests considering factors such as expression and head pose when recognizing faces. In other words, it implies preserving non-identity-related facial features. This enhances the utility of anonymized data in applications like behavior studies, emotion analysis, and medical measurements.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08478/x4.png)

> 🔼 This figure illustrates the process of face anonymization using a diffusion model.  First, DDPM inversion is used on an input facial image to obtain the initial noise map (xT) and a sequence of noise maps (zt).  Then, face embeddings are extracted and negated using a hyperparameter (λid) to create 'negative identity guides.' These guides prevent the model from reconstructing the original identity. The denoising process involves two paths: a conditional path using the negated embeddings to obscure identifying features and an unconditional path using null embeddings (∅) to preserve non-identifying attributes. The outputs of these paths are merged using a guidance scale parameter (λcfg), defined in Equation 3. Finally, optional masks allow for selective anonymization of specific facial regions, achieving localized anonymization.
> <details>
> <summary>read the caption</summary>
> Figure 2: Face anonymization pipeline using diffusion model inversion. Starting with an input facial image, we perform DDPM inversion [30] to retrieve the initial noise map xTsubscript𝑥𝑇x_{T}italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT and a sequence of noise maps {zt}subscript𝑧𝑡\{z_{t}\}{ italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT } from the diffusion process. Face embeddings are extracted using a face recognition model [15] and negated with a hyperparameter λi⁢dsubscript𝜆𝑖𝑑\lambda_{id}italic_λ start_POSTSUBSCRIPT italic_i italic_d end_POSTSUBSCRIPT, creating negative identity guides. These guides steer the model away from reconstructing the original identity during denoising. The denoising process begins with xTsubscript𝑥𝑇x_{T}italic_x start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT, combining conditional and unconditional paths. The conditional path utilizes negated identity embeddings to obscure identifiable features, while the unconditional path uses null embeddings (∅\varnothing∅) to preserve non-identifying attributes. Outputs from both paths are merged using a guidance scale parameter λc⁢f⁢gsubscript𝜆𝑐𝑓𝑔\lambda_{cfg}italic_λ start_POSTSUBSCRIPT italic_c italic_f italic_g end_POSTSUBSCRIPT through Eq. 3. Lastly, optional masks can be applied at each iteration to control which facial features are anonymized or retained, enabling localized anonymization.
> </details>



![](https://arxiv.org/html/2503.08478/x5.png)

> 🔼 This figure demonstrates the effect of the Tskip parameter on the image alignment during the anonymization process.  As the value of Tskip increases from 0, the generated image gradually becomes more similar to the original input image. This is because a higher Tskip value means that the identity-changing process is applied later in the diffusion process, resulting in less alteration of the original image details.  At the highest value of Tskip shown, the generated image is nearly identical to the input image, demonstrating near-perfect reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 3: As Tskipsubscript𝑇skipT_{\text{skip}}italic_T start_POSTSUBSCRIPT skip end_POSTSUBSCRIPT increases from 0 to higher values, the generated image progressively aligns more closely with the input, ultimately achieving near-perfect reconstruction.
> </details>



![](https://arxiv.org/html/2503.08478/x6.png)

> 🔼 This figure demonstrates the effect of the anonymization parameter (λid) on the generated faces.  As λid increases, the generated faces become progressively less similar to the original face.  The figure shows four anonymized faces for each original face, corresponding to λid values of 0.0, 0.33, 0.67, and 1.0.  For each original and anonymized face pair, the FaceNet [65] identity distance is provided, quantifying the dissimilarity between the original and the anonymized face. The larger the identity distance, the more different the anonymized face is from the original.
> <details>
> <summary>read the caption</summary>
> Figure 4: Increasing λi⁢dsubscript𝜆𝑖𝑑\lambda_{id}italic_λ start_POSTSUBSCRIPT italic_i italic_d end_POSTSUBSCRIPT generates faces that are less similar to the original, with FaceNet [65] identity distance values shown for each example.
> </details>



![](https://arxiv.org/html/2503.08478/x7.png)

> 🔼 This figure visualizes the effect of the guidance scale parameter (Acfg) on the anonymization process.  Four anonymized versions of two original faces are shown, each generated with increasing Acfg values (5, 10, 15, and 20).  The identity distance, calculated using FaceNet, increases with Acfg, indicating a stronger anonymization effect. However, the figure also highlights that an excessively high Acfg (20) negatively impacts the photorealism of the generated images, making them less realistic despite the improved identity obfuscation.
> <details>
> <summary>read the caption</summary>
> Figure 5: As the guidance scale increases, the anonymized identities become increasingly distinct from the originals, as confirmed by identity distance measurements using FaceNet [65]. However, the version generated with a guidance scale of 20 reveals that excessively high guidance scales, while widening identity distance, compromise the photorealism of the resulting images.
> </details>



![](https://arxiv.org/html/2503.08478/x8.png)

> 🔼 This figure demonstrates the capability of the NullFace model to perform localized facial anonymization.  It showcases various anonymization results using different segmentation masks applied to input facial images. The masks control which facial regions are anonymized or retained. The top row shows the original image and several variations of anonymized images with different masks including a full-face mask (fully anonymizing the face), a mask that reveals only the eyes, a mask that reveals only the nose, and a mask that reveals only the mouth.  Each row demonstrates the ability to selectively anonymize or reveal different facial features while preserving the other non-identity attributes.
> <details>
> <summary>read the caption</summary>
> Figure 6: Localized anonymization using segmentation masks. The full-face mask fully anonymizes the face, while individual masks reveal specific facial regions (eyes, nose, mouth).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="id13.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="id13.6.6.5.1">
<td class="ltx_td ltx_align_center ltx_align_middle" colspan="2" id="id13.6.6.5.1.1">Full facial anonymization</td>
</tr>
<tr class="ltx_tr" id="id11.4.4.2">
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_t" id="id10.3.3.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id10.3.3.1.1.g1" src="extracted/6271211/images/tzer/cele/15169-ipnt.jpg" width="96"/></td>
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_t" id="id11.4.4.2.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id11.4.4.2.2.g1" src="extracted/6271211/images/tzer/cele/15169-anon.jpg" width="96"/></td>
</tr>
<tr class="ltx_tr" id="id13.6.6.4">
<td class="ltx_td ltx_align_center ltx_align_middle" id="id12.5.5.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id12.5.5.3.1.g1" src="extracted/6271211/images/tzer/cele/27144-ipnt.jpg" width="96"/></td>
<td class="ltx_td ltx_align_center ltx_align_middle" id="id13.6.6.4.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id13.6.6.4.2.g1" src="extracted/6271211/images/tzer/cele/27144-anon.jpg" width="96"/></td>
</tr>
<tr class="ltx_tr" id="id13.6.6.6.2">
<td class="ltx_td ltx_align_center ltx_align_middle" id="id13.6.6.6.2.1">Inpainting <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08478v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_align_middle" id="id13.6.6.6.2.2">Ours</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the performance of the proposed face anonymization method by comparing it against a baseline method.  The study evaluates several key metrics using the CelebA-HQ and FFHQ datasets.  These metrics include the re-identification rate (how often the anonymized faces can be correctly matched to the original identities), various attribute distances (measuring the differences between the original and anonymized faces in terms of expressions, gaze, and pose), and image quality using MUSIQ and FID scores. By comparing the results for both methods across these metrics, the study highlights the contributions and effectiveness of different components of the proposed anonymization approach.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study of face anonymization implementations for CelebA-HQ [35] and FFHQ [36] datasets. Best results are in bold.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="id19.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="id19.12.12.7.1">
<td class="ltx_td ltx_align_center ltx_align_middle" colspan="3" id="id19.12.12.7.1.1">Localized facial anonymization</td>
</tr>
<tr class="ltx_tr" id="id16.9.9.3">
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_t" id="id14.7.7.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id14.7.7.1.1.g1" src="extracted/6271211/images/tzer/cele/15169-eyes.jpg" width="96"/></td>
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_t" id="id15.8.8.2.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id15.8.8.2.2.g1" src="extracted/6271211/images/tzer/cele/15169-nose.jpg" width="96"/></td>
<td class="ltx_td ltx_align_center ltx_align_middle ltx_border_t" id="id16.9.9.3.3"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id16.9.9.3.3.g1" src="extracted/6271211/images/tzer/cele/15169-lips.jpg" width="96"/></td>
</tr>
<tr class="ltx_tr" id="id19.12.12.6">
<td class="ltx_td ltx_align_center ltx_align_middle" id="id17.10.10.4.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id17.10.10.4.1.g1" src="extracted/6271211/images/tzer/cele/27144-eyes.jpg" width="96"/></td>
<td class="ltx_td ltx_align_center ltx_align_middle" id="id18.11.11.5.2"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id18.11.11.5.2.g1" src="extracted/6271211/images/tzer/cele/27144-nose.jpg" width="96"/></td>
<td class="ltx_td ltx_align_center ltx_align_middle" id="id19.12.12.6.3"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="96" id="id19.12.12.6.3.g1" src="extracted/6271211/images/tzer/cele/27144-lips.jpg" width="96"/></td>
</tr>
<tr class="ltx_tr" id="id19.12.12.8.2">
<td class="ltx_td ltx_align_center ltx_align_middle" id="id19.12.12.8.2.1">Keep eyes</td>
<td class="ltx_td ltx_align_center ltx_align_middle" id="id19.12.12.8.2.2">Keep nose</td>
<td class="ltx_td ltx_align_center ltx_align_middle" id="id19.12.12.8.2.3">Keep mouth</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the impact of revealing different facial regions on the success rate of re-identifying individuals.  It shows re-identification rates (percentage) using the AdaFace model for various mask configurations: completely masking the face, revealing only the eyes, nose, mouth, or combinations thereof.  Lower re-identification rates indicate better anonymization.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of facial region visibility on identity retrieval rates.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08478/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08478/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}