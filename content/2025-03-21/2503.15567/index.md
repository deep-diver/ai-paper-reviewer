---
title: "Towards Unified Latent Space for 3D Molecular Latent Diffusion Modeling"
summary: "UAE-3D: A unified latent space approach for efficient & high-quality 3D molecular generation, outperforming existing methods in accuracy and speed."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 University of Science and Technology of China",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.15567 {{< /keyword >}}
{{< keyword icon="writer" >}} Yanchen Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.15567" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.15567" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.15567/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Generating 3D molecules is vital for drug discovery, yet it's challenging due to the need to manage atom types, bonds, and 3D coordinates while maintaining SE(3) equivariance. Existing methods use separate latent spaces, reducing efficiency. They often rely on intricate networks to ensure the geometric and rotational invariance that is required. Moreover, prior works overlooked the reconstruction error, leading to stability issues in generated molecules. This leads to models being complex while at the same time not very accurate.



To solve these challenges, the authors propose **Unified Variational Auto-Encoder for 3D Molecular Latent Diffusion Modeling (UAE-3D)**. UAE-3D compresses 3D molecules into a unified latent space, ensuring near-zero reconstruction error and employing SE(3) augmentations to ensure equivariance without complex baked-in designs. The model integrates modalities through a Relational Transformer and uses a Diffusion Transformer (DiT) for latent generation. This unified approach allows the model to outperform previous methods. The experiments done in GEOM-Drugs and QM9 datasets demonstrates that UAE-3D sets new benchmarks in efficiency and quality for both de novo and conditional generation of 3D molecules.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UAE-3D achieves state-of-the-art results in de novo and conditional 3D molecule generation by compressing multi-modal data into a unified latent space. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The unified latent space in UAE-3D significantly improves geometric accuracy in 3D molecular modeling, crucial for generating stable and valid structures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} UDM-3D demonstrates improved training and sampling efficiency compared to existing methods, making it a practical choice for large-scale molecular design tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research introduces UAE-3D for unified molecular representation, significantly improving 3D molecule generation. It offers enhanced efficiency and geometric accuracy, setting new benchmarks and opening avenues for advanced molecular design and drug discovery research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.15567/x1.png)

> 🔼 Figure 1 illustrates the different approaches to 3D molecular representation. (a) shows the three distinct modalities of a 3D molecule: atom types, chemical bonds, and 3D coordinates. (b) depicts conventional methods that use separate latent spaces for each modality, resulting in fragmented representations.  This separation is often done because the 3D coordinates require SE(3) equivariance while the others do not. (c) introduces the proposed UAE-3D model, which uses a unified latent space to jointly encode all three modalities, maintaining SE(3) equivariance for the 3D coordinates.
> <details>
> <summary>read the caption</summary>
> Figure 1:  (a) A 3D molecule is characterized by features of distinct modalities. (b) Conventional approaches use separate latent spaces for equivariant (3D coordinates) and invariant (2D features) components, leading to fragmented molecular representations. (c) Our UAE-3D establishes a unified SE(3)-equivariant latent space that jointly encodes both modalities
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.1.1">
<tr class="ltx_tr" id="S1.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.1.1">Metric</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.2">
<span class="ltx_text" id="S1.T1.1.1.1.2.1"></span> <span class="ltx_text" id="S1.T1.1.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.1.2.2.1">
<span class="ltx_tr" id="S1.T1.1.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.2.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.2.2.1.1.1.1">GeoLDM</span></span></span>
<span class="ltx_tr" id="S1.T1.1.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.2.2.1.2.1"><cite class="ltx_cite ltx_citemacro_cite">Xu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.15567v1#bib.bib48" title="">2023</a>)</cite></span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.1.1.1.3">
<span class="ltx_text" id="S1.T1.1.1.1.3.1"></span> <span class="ltx_text" id="S1.T1.1.1.1.3.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.1.1.1.3.2.1">
<span class="ltx_tr" id="S1.T1.1.1.1.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.1.3.2.1.1.1.1">UAE-3D</span></span></span>
<span class="ltx_tr" id="S1.T1.1.1.1.3.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.1.1.1.3.2.1.2.1">(Ours)</span></span>
</span></span><span class="ltx_text" id="S1.T1.1.1.1.3.3"></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.1.1.2.1">Atom Accuracy (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.2">98.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.2.3.1">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S1.T1.1.1.3.1">Bond Accuracy (%)</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.2">96.2</td>
<td class="ltx_td ltx_align_center" id="S1.T1.1.1.3.3"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.3.3.1">100.0</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T1.1.1.4.1">Coordinate RMSD (Å)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.4.2">0.1830</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.1.1.4.3"><span class="ltx_text ltx_font_bold" id="S1.T1.1.1.4.3.1">0.0002</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of UAE-3D and GeoLDM's VAEs in reconstructing 3D molecular structures.  It shows the reconstruction accuracy for atom types (Atom Accuracy), bond types (Bond Accuracy), and the geometric deviation between the reconstructed and ground truth 3D coordinates (Coordinate RMSD).  Lower RMSD values indicate better geometric accuracy. The metrics provide a detailed assessment of the models' ability to accurately capture the structural information of 3D molecules.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparing the reconstruction error between UAE-3D and GeoLDM’s VAE. Atom/Bond accuracy measures correct atom/bond type predictions. Coordinate RMSD quantifies geometric deviation from the ground truth 3D coordinates.
> </details>





### In-depth insights


#### Unified Latents
The concept of unified latents in molecular representation learning signifies a shift towards more integrated and efficient models. Instead of maintaining separate latent spaces for different modalities like atom types, bond information, and 3D coordinates, a unified latent space aims to encode all these aspects into a single, compressed representation. This approach has several potential benefits. First, it can lead to more compact models with fewer parameters, reducing computational costs during training and inference. Second, it may facilitate better capture of the complex relationships between different molecular properties. For example, the 3D geometry of a molecule is often closely related to its chemical properties and reactivity. By encoding all of these aspects into a single latent space, the model can more easily learn these relationships and generate molecules with desired properties.  However, creating an effective unified latent space is challenging. It requires carefully designing the model architecture and loss function to ensure that all the important information is encoded and that the resulting latent space is smooth and well-behaved. Furthermore, it is important to maintain SE(3) equivariance, which means that the model's predictions should be invariant to rotations and translations of the input molecule. Despite these challenges, the potential benefits of unified latents make it an important area of research in molecular representation learning.

#### SE(3) Equivariance
**SE(3) equivariance** is crucial for molecular modeling because it ensures that the model's predictions are invariant to rotations and translations of the input molecule. In essence, if you rotate or translate a molecule, the model should still predict the same properties or generate a structurally equivalent molecule. Failing to account for this can lead to inaccurate results and physically unrealistic structures. Many approaches bake in 3D equivariance into the neural network, while UAE-3D trains a neural network to “learn” 3D equivariance through tailor-made SE(3) augmentations, encouraging the transformation on the input coordinates are reflected equivariantly on the output coordinates.

#### Diffusion Models
Diffusion models progressively **add noise** to data until it becomes pure noise, then learn to reverse this process to generate new samples. This offers a flexible generative framework, operating by **iteratively refining** an initial random sample. In molecular generation, diffusion models have shown promise by offering a way to produce complex 3D structures, but challenges remain in ensuring chemical validity. By starting with noise and gradually building structure, they avoid some limitations of other generative methods. They often work in conjunction with **variational autoencoders (VAEs)**, which compress data into a latent space where the diffusion process takes place, improving efficiency and stability.

#### Geometric Accuracy
Geometric accuracy in molecular generation is crucial for producing realistic and stable 3D structures. Achieving high geometric accuracy means the generated molecules closely adhere to known chemical principles and spatial constraints. **This involves precisely predicting bond lengths, bond angles, and dihedral angles, ensuring that the molecule's conformation is energetically favorable and chemically valid.** Models with poor geometric accuracy may produce molecules with strained bonds or unfavorable conformations, leading to instability or non-existence. **Advancements in geometric accuracy directly impact the usefulness of generated molecules in downstream applications like drug discovery and material design, where precise 3D structure is essential for accurate binding predictions and property estimations.** The breakthrough lies in using unified latent spaces which are highly effective for 3D geometric modeling for accurate 3D molecule generation. 

#### Efficient Models
The pursuit of efficient models is central to modern machine learning, especially when dealing with resource-intensive tasks like 3D molecular generation. **Efficiency** can refer to several aspects: training time, sampling speed, and computational cost. For 3D molecules, managing the complexity of multi-modal data (atom types, bonds, coordinates) while maintaining equivariance is a significant challenge. Efficient models might involve **decoupling the training process**, as seen in the paper, where a VAE is trained separately before the diffusion model. This allows for targeted optimization and can significantly reduce overall training time. **Simplified architectures** and **unified latent spaces** contribute to efficient sampling by reducing the computational overhead during inference. Techniques like adaptive layer normalization can further enhance diffusion model efficiency by dynamically adjusting to varying noise scales.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.15567/extracted/6292753/figures/framework.png)

> 🔼 The figure illustrates the architecture of the UDM-3D model, which consists of two main components: UAE-3D and DiT.  UAE-3D acts as a Variational Autoencoder (VAE), taking as input a 3D molecule represented by its multi-modal features (atom types, chemical bonds, and 3D coordinates).  It encodes these features into a unified latent space. This latent representation is then fed into the DiT (Diffusion Transformer), a diffusion model that performs generative modeling in the latent space. The DiT outputs denoised latent representations, which are subsequently decoded by the UAE-3D's decoder to generate a new 3D molecule.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of the UDM-3D and UAE-3D models. The UAE-3D encodes 3D molecules from molecular space into a unified latent space, integrating multi-modal features such as atom types, chemical bonds, and 3D coordinates. This unified latent space is then utilized by the UDM-3D, which employs a DiT to perform generative modeling. Then the denoised latents are decoded back into 3D molecules.
> </details>



![](https://arxiv.org/html/2503.15567/x2.png)

> 🔼 The bar chart compares the training time of four different models: EDM, GeoLDM, JODO, and the proposed UDM-3D model.  UDM-3D demonstrates a significantly shorter training time compared to the other three models, highlighting its efficiency. The total training time for UDM-3D is broken down into the time spent training the Variational Autoencoder (VAE, UAE-3D) and the Diffusion Transformer (DiT, UDM-3D) separately.
> <details>
> <summary>read the caption</summary>
> (a) Training time comparison.
> </details>



![](https://arxiv.org/html/2503.15567/x3.png)

> 🔼 The bar chart compares the sampling speed of different models for generating 3D molecules.  UDM-3D is significantly faster than other models such as EDM, GeoLDM, and JODO, demonstrating its enhanced efficiency in generating 3D molecules.
> <details>
> <summary>read the caption</summary>
> (b) Sampling speed comparison.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.6">
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.1.1.2">2D-Metric</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.3">AtomStable</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.4">V&amp;C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.5">V&amp;U</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.6">V&amp;U&amp;N</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.7">SNN</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.8">Frag</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.9">Scaf</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.6.7.1"><span class="ltx_text" id="S3.T2.6.7.1.1" style="color:#808080;">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.2"><span class="ltx_text" id="S3.T2.6.7.2.1" style="color:#808080;">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.3"><span class="ltx_text" id="S3.T2.6.7.3.1" style="color:#808080;">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.4"><span class="ltx_text" id="S3.T2.6.7.4.1" style="color:#808080;">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.5"><span class="ltx_text" id="S3.T2.6.7.5.1" style="color:#808080;">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.6"><span class="ltx_text" id="S3.T2.6.7.6.1" style="color:#808080;">0.585</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.7"><span class="ltx_text" id="S3.T2.6.7.7.1" style="color:#808080;">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.8"><span class="ltx_text" id="S3.T2.6.7.8.1" style="color:#808080;">0.584</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.7.9">
<span class="ltx_text ltx_phantom" id="S3.T2.6.7.9.1" style="color:#808080;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S3.T2.6.7.9.2" style="color:#808080;">0.251</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.8">
<td class="ltx_td ltx_align_left" id="S3.T2.6.8.1">CDGS</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.2">0.991</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.3">0.285</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.4">0.285</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.5">0.285</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.6">0.262</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.7">0.789</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.8">0.022</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.8.9">22.051</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.9">
<td class="ltx_td ltx_align_left" id="S3.T2.6.9.1">JODO</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.2"><span class="ltx_text ltx_font_bold" id="S3.T2.6.9.2.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.3">0.874</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.4">0.905</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.5">0.902</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.6">0.417</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.7">0.993</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.8">0.483</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.9.9">
<span class="ltx_text ltx_phantom" id="S3.T2.6.9.9.1"><span style="visibility:hidden">0</span></span>2.523</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.10">
<td class="ltx_td ltx_align_left" id="S3.T2.6.10.1">MiDi*</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.2">0.968</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.3">0.633</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.4">0.654</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.5">0.652</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.6">0.392</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.7">0.951</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.8">0.196</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.10.9">
<span class="ltx_text ltx_phantom" id="S3.T2.6.10.9.1"><span style="visibility:hidden">0</span></span>7.054</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.11">
<td class="ltx_td ltx_align_left" id="S3.T2.6.11.1">UDM-3D, ours</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.2"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.2.1">1.000</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.3"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.3.1">0.879</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.4.1">0.913</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.5.1">0.958</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.6"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.6.1">0.525</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.7"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.7.1">0.989</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.8"><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.8.1">0.540</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.11.9">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T2.6.11.9.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S3.T2.6.11.9.2">0.692</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.6.6.6">3D-Metric</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.7">AtomStable</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.2">FCD<math alttext="{}_{\text{3D}}" class="ltx_Math" display="inline" id="S3.T2.2.2.1.m1.1"><semantics id="S3.T2.2.2.1.m1.1a"><msub id="S3.T2.2.2.1.m1.1.1" xref="S3.T2.2.2.1.m1.1.1.cmml"><mi id="S3.T2.2.2.1.m1.1.1a" xref="S3.T2.2.2.1.m1.1.1.cmml"></mi><mtext id="S3.T2.2.2.1.m1.1.1.1" xref="S3.T2.2.2.1.m1.1.1.1a.cmml">3D</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.1.m1.1b"><apply id="S3.T2.2.2.1.m1.1.1.cmml" xref="S3.T2.2.2.1.m1.1.1"><ci id="S3.T2.2.2.1.m1.1.1.1a.cmml" xref="S3.T2.2.2.1.m1.1.1.1"><mtext id="S3.T2.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T2.2.2.1.m1.1.1.1">3D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.1.m1.1c">{}_{\text{3D}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.1.m1.1d">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.3.3.2.m2.1"><semantics id="S3.T2.3.3.2.m2.1a"><mo id="S3.T2.3.3.2.m2.1.1" stretchy="false" xref="S3.T2.3.3.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.2.m2.1b"><ci id="S3.T2.3.3.2.m2.1.1.cmml" xref="S3.T2.3.3.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.2.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.4.4.3">Bond length<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.3.m1.1"><semantics id="S3.T2.4.4.3.m1.1a"><mo id="S3.T2.4.4.3.m1.1.1" stretchy="false" xref="S3.T2.4.4.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.3.m1.1b"><ci id="S3.T2.4.4.3.m1.1.1.cmml" xref="S3.T2.4.4.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.5.5.4">Bond angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.5.5.4.m1.1"><semantics id="S3.T2.5.5.4.m1.1a"><mo id="S3.T2.5.5.4.m1.1.1" stretchy="false" xref="S3.T2.5.5.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.4.m1.1b"><ci id="S3.T2.5.5.4.m1.1.1.cmml" xref="S3.T2.5.5.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.6.6.5">Dihedral angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.6.6.5.m1.1"><semantics id="S3.T2.6.6.5.m1.1a"><mo id="S3.T2.6.6.5.m1.1.1" stretchy="false" xref="S3.T2.6.6.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.5.m1.1b"><ci id="S3.T2.6.6.5.m1.1.1.cmml" xref="S3.T2.6.6.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.5.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.6.12.1"><span class="ltx_text" id="S3.T2.6.12.1.1" style="color:#808080;">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.12.2"><span class="ltx_text" id="S3.T2.6.12.2.1" style="color:#808080;">0.861</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.12.3"><span class="ltx_text" id="S3.T2.6.12.3.1" style="color:#808080;">13.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.6.12.4"><span class="ltx_text" id="S3.T2.6.12.4.1" style="color:#808080;">1.56E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.6.12.5"><span class="ltx_text" id="S3.T2.6.12.5.1" style="color:#808080;">1.81E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T2.6.12.6"><span class="ltx_text" id="S3.T2.6.12.6.1" style="color:#808080;">1.56E-04</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.13">
<td class="ltx_td ltx_align_left" id="S3.T2.6.13.1">EDM</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.13.2">0.831</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.13.3">31.29</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.13.4">4.29E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.13.5">4.96E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.13.6">1.46E-02</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.14">
<td class="ltx_td ltx_align_left" id="S3.T2.6.14.1">JODO</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.14.2">0.845</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.14.3">19.99</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.14.4">8.49E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.14.5">1.15E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.14.6">6.68E-04</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.15">
<td class="ltx_td ltx_align_left" id="S3.T2.6.15.1">MiDi*</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.15.2">0.750</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.15.3">23.14</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.15.4">1.17E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.15.5">9.57E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.15.6">4.46E-03</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.16">
<td class="ltx_td ltx_align_left" id="S3.T2.6.16.1">GeoLDM</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.16.2">0.843</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.16.3">30.68</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.16.4">3.91E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.16.5">4.22E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T2.6.16.6">1.69E-02</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.17">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.6.17.1">UDM-3D, ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.17.2"><span class="ltx_text ltx_font_bold" id="S3.T2.6.17.2.1">0.852</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.6.17.3"><span class="ltx_text ltx_font_bold" id="S3.T2.6.17.3.1">17.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T2.6.17.4"><span class="ltx_text ltx_font_bold" id="S3.T2.6.17.4.1">9.89E-03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T2.6.17.5"><span class="ltx_text ltx_font_bold" id="S3.T2.6.17.5.1">5.11E-03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T2.6.17.6"><span class="ltx_text ltx_font_bold" id="S3.T2.6.17.6.1">1.74E-04</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comprehensive comparison of various de novo 3D molecular generation models on the GEOM-Drugs dataset.  The table evaluates the performance of different models using a range of 2D and 3D metrics.  2D metrics assess aspects such as the chemical validity, uniqueness, and novelty of the generated molecules.  3D metrics focus on the accuracy of the generated 3D structures. The results highlight the performance of the proposed UDM-3D model against existing state-of-the-art methods.  The asterisk (*) indicates that the results for certain baselines were reproduced using the original source codes, ensuring a fair comparison.  Other baseline results were obtained from Huang et al. (2023b).
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of de novo 3D molecule generation on GEOM-Drugs. * indicates results reproduced using official source codes, while other baseline results are taken from Huang et al. (2023b).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.6">
<tr class="ltx_tr" id="S3.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.2">2D-Metric</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.3">AtomStable</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.4">V&amp;C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.5">V&amp;U</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.6">V&amp;U&amp;N</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.7">SNN</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.8">Frag</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.9">Scaf</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1">FCD<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.m1.1.1" stretchy="false" xref="S3.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.7.1"><span class="ltx_text" id="S3.T3.6.7.1.1" style="color:#808080;">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.2"><span class="ltx_text" id="S3.T3.6.7.2.1" style="color:#808080;">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.3"><span class="ltx_text" id="S3.T3.6.7.3.1" style="color:#808080;">0.989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.4"><span class="ltx_text" id="S3.T3.6.7.4.1" style="color:#808080;">0.989</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.5"><span class="ltx_text" id="S3.T3.6.7.5.1" style="color:#808080;">0.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.6"><span class="ltx_text" id="S3.T3.6.7.6.1" style="color:#808080;">0.490</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.7"><span class="ltx_text" id="S3.T3.6.7.7.1" style="color:#808080;">0.992</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.8"><span class="ltx_text" id="S3.T3.6.7.8.1" style="color:#808080;">0.946</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.7.9"><span class="ltx_text" id="S3.T3.6.7.9.1" style="color:#808080;">0.063</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.8">
<td class="ltx_td ltx_align_left" id="S3.T3.6.8.1">CDGS</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.2">0.997</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.3">0.951</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.4">0.936</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.5">0.860*</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.6">0.493</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.7">0.973</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.8">0.784</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.8.9">0.798</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.9">
<td class="ltx_td ltx_align_left" id="S3.T3.6.9.1">JODO</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.2"><span class="ltx_text ltx_font_bold" id="S3.T3.6.9.2.1">0.999</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.3"><span class="ltx_text ltx_font_bold" id="S3.T3.6.9.3.1">0.990</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.4">0.960</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.5">0.780*</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.6"><span class="ltx_text ltx_font_bold" id="S3.T3.6.9.6.1">0.522</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.7">0.986</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.8"><span class="ltx_text ltx_font_bold" id="S3.T3.6.9.8.1">0.934</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.9.9"><span class="ltx_text ltx_font_bold" id="S3.T3.6.9.9.1">0.138</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.10">
<td class="ltx_td ltx_align_left" id="S3.T3.6.10.1">MiDi*</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.2">0.998</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.3">0.980</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.4">0.954</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.5">0.769</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.6">0.501</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.7">0.979</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.8">0.882</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.10.9">0.187</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.11">
<td class="ltx_td ltx_align_left" id="S3.T3.6.11.1">UDM-3D, ours</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.2"><span class="ltx_text ltx_font_bold" id="S3.T3.6.11.2.1">0.999</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.3">0.983</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.4"><span class="ltx_text ltx_font_bold" id="S3.T3.6.11.4.1">0.972</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.5"><span class="ltx_text ltx_font_bold" id="S3.T3.6.11.5.1">0.948</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.6">0.508</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.7"><span class="ltx_text ltx_font_bold" id="S3.T3.6.11.7.1">0.987</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.8">0.897</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.11.9">0.161</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.6.6">3D-Metric</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.6.7">AtomStable</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.3.3.2">FCD<math alttext="{}_{\text{3D}}" class="ltx_Math" display="inline" id="S3.T3.2.2.1.m1.1"><semantics id="S3.T3.2.2.1.m1.1a"><msub id="S3.T3.2.2.1.m1.1.1" xref="S3.T3.2.2.1.m1.1.1.cmml"><mi id="S3.T3.2.2.1.m1.1.1a" xref="S3.T3.2.2.1.m1.1.1.cmml"></mi><mtext id="S3.T3.2.2.1.m1.1.1.1" xref="S3.T3.2.2.1.m1.1.1.1a.cmml">3D</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.1.m1.1b"><apply id="S3.T3.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.1.m1.1.1"><ci id="S3.T3.2.2.1.m1.1.1.1a.cmml" xref="S3.T3.2.2.1.m1.1.1.1"><mtext id="S3.T3.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.2.2.1.m1.1.1.1">3D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.1.m1.1c">{}_{\text{3D}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.1.m1.1d">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.3.3.2.m2.1"><semantics id="S3.T3.3.3.2.m2.1a"><mo id="S3.T3.3.3.2.m2.1.1" stretchy="false" xref="S3.T3.3.3.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.2.m2.1b"><ci id="S3.T3.3.3.2.m2.1.1.cmml" xref="S3.T3.3.3.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.2.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.4.4.3">Bond length<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.4.4.3.m1.1"><semantics id="S3.T3.4.4.3.m1.1a"><mo id="S3.T3.4.4.3.m1.1.1" stretchy="false" xref="S3.T3.4.4.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.3.m1.1b"><ci id="S3.T3.4.4.3.m1.1.1.cmml" xref="S3.T3.4.4.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.5.5.4">Bond angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.5.5.4.m1.1"><semantics id="S3.T3.5.5.4.m1.1a"><mo id="S3.T3.5.5.4.m1.1.1" stretchy="false" xref="S3.T3.5.5.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.4.m1.1b"><ci id="S3.T3.5.5.4.m1.1.1.cmml" xref="S3.T3.5.5.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.6.6.5">Dihedral angle<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.6.6.5.m1.1"><semantics id="S3.T3.6.6.5.m1.1a"><mo id="S3.T3.6.6.5.m1.1.1" stretchy="false" xref="S3.T3.6.6.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.5.m1.1b"><ci id="S3.T3.6.6.5.m1.1.1.cmml" xref="S3.T3.6.6.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.5.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.6.12.1"><span class="ltx_text" id="S3.T3.6.12.1.1" style="color:#808080;">Train</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.12.2"><span class="ltx_text" id="S3.T3.6.12.2.1" style="color:#808080;">0.994</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.6.12.3"><span class="ltx_text" id="S3.T3.6.12.3.1" style="color:#808080;">0.877</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.6.12.4"><span class="ltx_text" id="S3.T3.6.12.4.1" style="color:#808080;">5.44E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.6.12.5"><span class="ltx_text" id="S3.T3.6.12.5.1" style="color:#808080;">4.65E-04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T3.6.12.6"><span class="ltx_text" id="S3.T3.6.12.6.1" style="color:#808080;">1.78E-04</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.13">
<td class="ltx_td ltx_align_left" id="S3.T3.6.13.1">EDM</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.13.2">0.986</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.13.3">1.285</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.13.4">1.30E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.13.5">1.82E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.13.6">6.64E-04</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.14">
<td class="ltx_td ltx_align_left" id="S3.T3.6.14.1">MDM</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.14.2">0.992</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.14.3">4.861</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.14.4">2.74E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.14.5">6.60E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.14.6">2.39E-02</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.15">
<td class="ltx_td ltx_align_left" id="S3.T3.6.15.1">JODO</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.15.2">0.992</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.15.3">0.885</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.15.4">1.48E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.15.5">1.21E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.15.6">6.29E-04</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.16">
<td class="ltx_td ltx_align_left" id="S3.T3.6.16.1">MiDi*</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.16.2">0.983</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.16.3">1.100</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.16.4">8.96E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.16.5">2.08E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.16.6">8.14E-04</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.17">
<td class="ltx_td ltx_align_left" id="S3.T3.6.17.1">GeoLDM</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.17.2">0.989</td>
<td class="ltx_td ltx_align_center" id="S3.T3.6.17.3">1.030</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.17.4">2.40E-01</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.17.5">1.00E-02</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S3.T3.6.17.6">6.59E-04</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.6.18.1">UDM-3D, ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.6.18.2"><span class="ltx_text ltx_font_bold" id="S3.T3.6.18.2.1">0.993</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.6.18.3"><span class="ltx_text ltx_font_bold" id="S3.T3.6.18.3.1">0.881</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T3.6.18.4"><span class="ltx_text ltx_font_bold" id="S3.T3.6.18.4.1">7.04E-02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T3.6.18.5"><span class="ltx_text ltx_font_bold" id="S3.T3.6.18.5.1">9.84E-03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" colspan="2" id="S3.T3.6.18.6"><span class="ltx_text ltx_font_bold" id="S3.T3.6.18.6.1">3.47E-04</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of de novo 3D molecule generation on the QM9 dataset.  It compares the performance of the proposed UDM-3D model against several state-of-the-art baselines.  The metrics assess both 2D structural validity (atom stability, validity and completeness, etc.) and 3D geometric accuracy (bond length, bond angle, dihedral angle distributions).  The asterisk (*) indicates that results for certain baselines were reproduced using the official source code, whereas other results were obtained from a publication by Huang et al. (2023b). This allows for a more robust and accurate comparison of model performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of de novo 3D molecule generation on QM9. * indicates results reproduced using official source codes, while other baseline results are taken from Huang et al. (2023b).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T4.6">
<tr class="ltx_tr" id="S3.T4.6.6">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T4.6.6.7">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1"><math alttext="\mu\ (\textnormal{D})" class="ltx_Math" display="inline" id="S3.T4.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.m1.1a"><mrow id="S3.T4.1.1.1.m1.1.2" xref="S3.T4.1.1.1.m1.1.2.cmml"><mi id="S3.T4.1.1.1.m1.1.2.2" xref="S3.T4.1.1.1.m1.1.2.2.cmml">μ</mi><mo id="S3.T4.1.1.1.m1.1.2.1" lspace="0.500em" xref="S3.T4.1.1.1.m1.1.2.1.cmml">⁢</mo><mrow id="S3.T4.1.1.1.m1.1.2.3.2" xref="S3.T4.1.1.1.m1.1.1a.cmml"><mo id="S3.T4.1.1.1.m1.1.2.3.2.1" stretchy="false" xref="S3.T4.1.1.1.m1.1.1a.cmml">(</mo><mtext id="S3.T4.1.1.1.m1.1.1" xref="S3.T4.1.1.1.m1.1.1.cmml">D</mtext><mo id="S3.T4.1.1.1.m1.1.2.3.2.2" stretchy="false" xref="S3.T4.1.1.1.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.m1.1b"><apply id="S3.T4.1.1.1.m1.1.2.cmml" xref="S3.T4.1.1.1.m1.1.2"><times id="S3.T4.1.1.1.m1.1.2.1.cmml" xref="S3.T4.1.1.1.m1.1.2.1"></times><ci id="S3.T4.1.1.1.m1.1.2.2.cmml" xref="S3.T4.1.1.1.m1.1.2.2">𝜇</ci><ci id="S3.T4.1.1.1.m1.1.1a.cmml" xref="S3.T4.1.1.1.m1.1.2.3.2"><mtext id="S3.T4.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.m1.1.1">D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.m1.1c">\mu\ (\textnormal{D})</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.m1.1d">italic_μ ( D )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.2.2.2"><math alttext="\alpha\ (\textnormal{Bohr}^{3})" class="ltx_Math" display="inline" id="S3.T4.2.2.2.m1.1"><semantics id="S3.T4.2.2.2.m1.1a"><mrow id="S3.T4.2.2.2.m1.1.1" xref="S3.T4.2.2.2.m1.1.1.cmml"><mi id="S3.T4.2.2.2.m1.1.1.3" xref="S3.T4.2.2.2.m1.1.1.3.cmml">α</mi><mo id="S3.T4.2.2.2.m1.1.1.2" lspace="0.500em" xref="S3.T4.2.2.2.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T4.2.2.2.m1.1.1.1.1" xref="S3.T4.2.2.2.m1.1.1.1.1.1.cmml"><mo id="S3.T4.2.2.2.m1.1.1.1.1.2" stretchy="false" xref="S3.T4.2.2.2.m1.1.1.1.1.1.cmml">(</mo><msup id="S3.T4.2.2.2.m1.1.1.1.1.1" xref="S3.T4.2.2.2.m1.1.1.1.1.1.cmml"><mtext id="S3.T4.2.2.2.m1.1.1.1.1.1.2" xref="S3.T4.2.2.2.m1.1.1.1.1.1.2a.cmml">Bohr</mtext><mn id="S3.T4.2.2.2.m1.1.1.1.1.1.3" xref="S3.T4.2.2.2.m1.1.1.1.1.1.3.cmml">3</mn></msup><mo id="S3.T4.2.2.2.m1.1.1.1.1.3" stretchy="false" xref="S3.T4.2.2.2.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.2.2.2.m1.1b"><apply id="S3.T4.2.2.2.m1.1.1.cmml" xref="S3.T4.2.2.2.m1.1.1"><times id="S3.T4.2.2.2.m1.1.1.2.cmml" xref="S3.T4.2.2.2.m1.1.1.2"></times><ci id="S3.T4.2.2.2.m1.1.1.3.cmml" xref="S3.T4.2.2.2.m1.1.1.3">𝛼</ci><apply id="S3.T4.2.2.2.m1.1.1.1.1.1.cmml" xref="S3.T4.2.2.2.m1.1.1.1.1"><csymbol cd="ambiguous" id="S3.T4.2.2.2.m1.1.1.1.1.1.1.cmml" xref="S3.T4.2.2.2.m1.1.1.1.1">superscript</csymbol><ci id="S3.T4.2.2.2.m1.1.1.1.1.1.2a.cmml" xref="S3.T4.2.2.2.m1.1.1.1.1.1.2"><mtext id="S3.T4.2.2.2.m1.1.1.1.1.1.2.cmml" xref="S3.T4.2.2.2.m1.1.1.1.1.1.2">Bohr</mtext></ci><cn id="S3.T4.2.2.2.m1.1.1.1.1.1.3.cmml" type="integer" xref="S3.T4.2.2.2.m1.1.1.1.1.1.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.2.2.2.m1.1c">\alpha\ (\textnormal{Bohr}^{3})</annotation><annotation encoding="application/x-llamapun" id="S3.T4.2.2.2.m1.1d">italic_α ( Bohr start_POSTSUPERSCRIPT 3 end_POSTSUPERSCRIPT )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.3.3.3"><math alttext="C_{v}\ \left(\frac{\textnormal{cal}}{\textnormal{mol}}\textnormal{K}\right)" class="ltx_Math" display="inline" id="S3.T4.3.3.3.m1.1"><semantics id="S3.T4.3.3.3.m1.1a"><mrow id="S3.T4.3.3.3.m1.1.1" xref="S3.T4.3.3.3.m1.1.1.cmml"><msub id="S3.T4.3.3.3.m1.1.1.3" xref="S3.T4.3.3.3.m1.1.1.3.cmml"><mi id="S3.T4.3.3.3.m1.1.1.3.2" xref="S3.T4.3.3.3.m1.1.1.3.2.cmml">C</mi><mi id="S3.T4.3.3.3.m1.1.1.3.3" xref="S3.T4.3.3.3.m1.1.1.3.3.cmml">v</mi></msub><mo id="S3.T4.3.3.3.m1.1.1.2" lspace="0.500em" xref="S3.T4.3.3.3.m1.1.1.2.cmml">⁢</mo><mrow id="S3.T4.3.3.3.m1.1.1.1.1" xref="S3.T4.3.3.3.m1.1.1.1.1.1.cmml"><mo id="S3.T4.3.3.3.m1.1.1.1.1.2" xref="S3.T4.3.3.3.m1.1.1.1.1.1.cmml">(</mo><mrow id="S3.T4.3.3.3.m1.1.1.1.1.1" xref="S3.T4.3.3.3.m1.1.1.1.1.1.cmml"><mfrac id="S3.T4.3.3.3.m1.1.1.1.1.1.2" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2.cmml"><mtext id="S3.T4.3.3.3.m1.1.1.1.1.1.2.2" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2.2a.cmml">cal</mtext><mtext id="S3.T4.3.3.3.m1.1.1.1.1.1.2.3" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2.3a.cmml">mol</mtext></mfrac><mo id="S3.T4.3.3.3.m1.1.1.1.1.1.1" xref="S3.T4.3.3.3.m1.1.1.1.1.1.1.cmml">⁢</mo><mtext id="S3.T4.3.3.3.m1.1.1.1.1.1.3" xref="S3.T4.3.3.3.m1.1.1.1.1.1.3a.cmml">K</mtext></mrow><mo id="S3.T4.3.3.3.m1.1.1.1.1.3" xref="S3.T4.3.3.3.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.3.3.3.m1.1b"><apply id="S3.T4.3.3.3.m1.1.1.cmml" xref="S3.T4.3.3.3.m1.1.1"><times id="S3.T4.3.3.3.m1.1.1.2.cmml" xref="S3.T4.3.3.3.m1.1.1.2"></times><apply id="S3.T4.3.3.3.m1.1.1.3.cmml" xref="S3.T4.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T4.3.3.3.m1.1.1.3.1.cmml" xref="S3.T4.3.3.3.m1.1.1.3">subscript</csymbol><ci id="S3.T4.3.3.3.m1.1.1.3.2.cmml" xref="S3.T4.3.3.3.m1.1.1.3.2">𝐶</ci><ci id="S3.T4.3.3.3.m1.1.1.3.3.cmml" xref="S3.T4.3.3.3.m1.1.1.3.3">𝑣</ci></apply><apply id="S3.T4.3.3.3.m1.1.1.1.1.1.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1"><times id="S3.T4.3.3.3.m1.1.1.1.1.1.1.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1.1.1"></times><apply id="S3.T4.3.3.3.m1.1.1.1.1.1.2.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2"><divide id="S3.T4.3.3.3.m1.1.1.1.1.1.2.1.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2"></divide><ci id="S3.T4.3.3.3.m1.1.1.1.1.1.2.2a.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2.2"><mtext id="S3.T4.3.3.3.m1.1.1.1.1.1.2.2.cmml" mathsize="70%" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2.2">cal</mtext></ci><ci id="S3.T4.3.3.3.m1.1.1.1.1.1.2.3a.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2.3"><mtext id="S3.T4.3.3.3.m1.1.1.1.1.1.2.3.cmml" mathsize="70%" xref="S3.T4.3.3.3.m1.1.1.1.1.1.2.3">mol</mtext></ci></apply><ci id="S3.T4.3.3.3.m1.1.1.1.1.1.3a.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1.1.3"><mtext id="S3.T4.3.3.3.m1.1.1.1.1.1.3.cmml" xref="S3.T4.3.3.3.m1.1.1.1.1.1.3">K</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.3.3.3.m1.1c">C_{v}\ \left(\frac{\textnormal{cal}}{\textnormal{mol}}\textnormal{K}\right)</annotation><annotation encoding="application/x-llamapun" id="S3.T4.3.3.3.m1.1d">italic_C start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT ( divide start_ARG cal end_ARG start_ARG mol end_ARG K )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.4.4.4"><math alttext="\varepsilon_{\textnormal{HOMO}}\ (\textnormal{meV})" class="ltx_Math" display="inline" id="S3.T4.4.4.4.m1.1"><semantics id="S3.T4.4.4.4.m1.1a"><mrow id="S3.T4.4.4.4.m1.1.2" xref="S3.T4.4.4.4.m1.1.2.cmml"><msub id="S3.T4.4.4.4.m1.1.2.2" xref="S3.T4.4.4.4.m1.1.2.2.cmml"><mi id="S3.T4.4.4.4.m1.1.2.2.2" xref="S3.T4.4.4.4.m1.1.2.2.2.cmml">ε</mi><mtext id="S3.T4.4.4.4.m1.1.2.2.3" xref="S3.T4.4.4.4.m1.1.2.2.3a.cmml">HOMO</mtext></msub><mo id="S3.T4.4.4.4.m1.1.2.1" lspace="0.500em" xref="S3.T4.4.4.4.m1.1.2.1.cmml">⁢</mo><mrow id="S3.T4.4.4.4.m1.1.2.3.2" xref="S3.T4.4.4.4.m1.1.1a.cmml"><mo id="S3.T4.4.4.4.m1.1.2.3.2.1" stretchy="false" xref="S3.T4.4.4.4.m1.1.1a.cmml">(</mo><mtext id="S3.T4.4.4.4.m1.1.1" xref="S3.T4.4.4.4.m1.1.1.cmml">meV</mtext><mo id="S3.T4.4.4.4.m1.1.2.3.2.2" stretchy="false" xref="S3.T4.4.4.4.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.4.4.4.m1.1b"><apply id="S3.T4.4.4.4.m1.1.2.cmml" xref="S3.T4.4.4.4.m1.1.2"><times id="S3.T4.4.4.4.m1.1.2.1.cmml" xref="S3.T4.4.4.4.m1.1.2.1"></times><apply id="S3.T4.4.4.4.m1.1.2.2.cmml" xref="S3.T4.4.4.4.m1.1.2.2"><csymbol cd="ambiguous" id="S3.T4.4.4.4.m1.1.2.2.1.cmml" xref="S3.T4.4.4.4.m1.1.2.2">subscript</csymbol><ci id="S3.T4.4.4.4.m1.1.2.2.2.cmml" xref="S3.T4.4.4.4.m1.1.2.2.2">𝜀</ci><ci id="S3.T4.4.4.4.m1.1.2.2.3a.cmml" xref="S3.T4.4.4.4.m1.1.2.2.3"><mtext id="S3.T4.4.4.4.m1.1.2.2.3.cmml" mathsize="70%" xref="S3.T4.4.4.4.m1.1.2.2.3">HOMO</mtext></ci></apply><ci id="S3.T4.4.4.4.m1.1.1a.cmml" xref="S3.T4.4.4.4.m1.1.2.3.2"><mtext id="S3.T4.4.4.4.m1.1.1.cmml" xref="S3.T4.4.4.4.m1.1.1">meV</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.4.4.4.m1.1c">\varepsilon_{\textnormal{HOMO}}\ (\textnormal{meV})</annotation><annotation encoding="application/x-llamapun" id="S3.T4.4.4.4.m1.1d">italic_ε start_POSTSUBSCRIPT HOMO end_POSTSUBSCRIPT ( meV )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.5.5.5"><math alttext="\varepsilon_{\textnormal{LUMO}}\ (\textnormal{meV})" class="ltx_Math" display="inline" id="S3.T4.5.5.5.m1.1"><semantics id="S3.T4.5.5.5.m1.1a"><mrow id="S3.T4.5.5.5.m1.1.2" xref="S3.T4.5.5.5.m1.1.2.cmml"><msub id="S3.T4.5.5.5.m1.1.2.2" xref="S3.T4.5.5.5.m1.1.2.2.cmml"><mi id="S3.T4.5.5.5.m1.1.2.2.2" xref="S3.T4.5.5.5.m1.1.2.2.2.cmml">ε</mi><mtext id="S3.T4.5.5.5.m1.1.2.2.3" xref="S3.T4.5.5.5.m1.1.2.2.3a.cmml">LUMO</mtext></msub><mo id="S3.T4.5.5.5.m1.1.2.1" lspace="0.500em" xref="S3.T4.5.5.5.m1.1.2.1.cmml">⁢</mo><mrow id="S3.T4.5.5.5.m1.1.2.3.2" xref="S3.T4.5.5.5.m1.1.1a.cmml"><mo id="S3.T4.5.5.5.m1.1.2.3.2.1" stretchy="false" xref="S3.T4.5.5.5.m1.1.1a.cmml">(</mo><mtext id="S3.T4.5.5.5.m1.1.1" xref="S3.T4.5.5.5.m1.1.1.cmml">meV</mtext><mo id="S3.T4.5.5.5.m1.1.2.3.2.2" stretchy="false" xref="S3.T4.5.5.5.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.5.5.5.m1.1b"><apply id="S3.T4.5.5.5.m1.1.2.cmml" xref="S3.T4.5.5.5.m1.1.2"><times id="S3.T4.5.5.5.m1.1.2.1.cmml" xref="S3.T4.5.5.5.m1.1.2.1"></times><apply id="S3.T4.5.5.5.m1.1.2.2.cmml" xref="S3.T4.5.5.5.m1.1.2.2"><csymbol cd="ambiguous" id="S3.T4.5.5.5.m1.1.2.2.1.cmml" xref="S3.T4.5.5.5.m1.1.2.2">subscript</csymbol><ci id="S3.T4.5.5.5.m1.1.2.2.2.cmml" xref="S3.T4.5.5.5.m1.1.2.2.2">𝜀</ci><ci id="S3.T4.5.5.5.m1.1.2.2.3a.cmml" xref="S3.T4.5.5.5.m1.1.2.2.3"><mtext id="S3.T4.5.5.5.m1.1.2.2.3.cmml" mathsize="70%" xref="S3.T4.5.5.5.m1.1.2.2.3">LUMO</mtext></ci></apply><ci id="S3.T4.5.5.5.m1.1.1a.cmml" xref="S3.T4.5.5.5.m1.1.2.3.2"><mtext id="S3.T4.5.5.5.m1.1.1.cmml" xref="S3.T4.5.5.5.m1.1.1">meV</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.5.5.5.m1.1c">\varepsilon_{\textnormal{LUMO}}\ (\textnormal{meV})</annotation><annotation encoding="application/x-llamapun" id="S3.T4.5.5.5.m1.1d">italic_ε start_POSTSUBSCRIPT LUMO end_POSTSUBSCRIPT ( meV )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.6.6.6"><math alttext="\Delta\varepsilon\ (\textnormal{meV})" class="ltx_Math" display="inline" id="S3.T4.6.6.6.m1.1"><semantics id="S3.T4.6.6.6.m1.1a"><mrow id="S3.T4.6.6.6.m1.1.2" xref="S3.T4.6.6.6.m1.1.2.cmml"><mi id="S3.T4.6.6.6.m1.1.2.2" mathvariant="normal" xref="S3.T4.6.6.6.m1.1.2.2.cmml">Δ</mi><mo id="S3.T4.6.6.6.m1.1.2.1" xref="S3.T4.6.6.6.m1.1.2.1.cmml">⁢</mo><mi id="S3.T4.6.6.6.m1.1.2.3" xref="S3.T4.6.6.6.m1.1.2.3.cmml">ε</mi><mo id="S3.T4.6.6.6.m1.1.2.1a" lspace="0.500em" xref="S3.T4.6.6.6.m1.1.2.1.cmml">⁢</mo><mrow id="S3.T4.6.6.6.m1.1.2.4.2" xref="S3.T4.6.6.6.m1.1.1a.cmml"><mo id="S3.T4.6.6.6.m1.1.2.4.2.1" stretchy="false" xref="S3.T4.6.6.6.m1.1.1a.cmml">(</mo><mtext id="S3.T4.6.6.6.m1.1.1" xref="S3.T4.6.6.6.m1.1.1.cmml">meV</mtext><mo id="S3.T4.6.6.6.m1.1.2.4.2.2" stretchy="false" xref="S3.T4.6.6.6.m1.1.1a.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.6.6.6.m1.1b"><apply id="S3.T4.6.6.6.m1.1.2.cmml" xref="S3.T4.6.6.6.m1.1.2"><times id="S3.T4.6.6.6.m1.1.2.1.cmml" xref="S3.T4.6.6.6.m1.1.2.1"></times><ci id="S3.T4.6.6.6.m1.1.2.2.cmml" xref="S3.T4.6.6.6.m1.1.2.2">Δ</ci><ci id="S3.T4.6.6.6.m1.1.2.3.cmml" xref="S3.T4.6.6.6.m1.1.2.3">𝜀</ci><ci id="S3.T4.6.6.6.m1.1.1a.cmml" xref="S3.T4.6.6.6.m1.1.2.4.2"><mtext id="S3.T4.6.6.6.m1.1.1.cmml" xref="S3.T4.6.6.6.m1.1.1">meV</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.6.6.6.m1.1c">\Delta\varepsilon\ (\textnormal{meV})</annotation><annotation encoding="application/x-llamapun" id="S3.T4.6.6.6.m1.1d">roman_Δ italic_ε ( meV )</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.6.7.1"><span class="ltx_text" id="S3.T4.6.7.1.1" style="color:#808080;">U-Bound</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.6.7.2"><span class="ltx_text" id="S3.T4.6.7.2.1" style="color:#808080;">1.613</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.6.7.3"><span class="ltx_text" id="S3.T4.6.7.3.1" style="color:#808080;">8.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.6.7.4"><span class="ltx_text" id="S3.T4.6.7.4.1" style="color:#808080;">6.879</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.6.7.5"><span class="ltx_text" id="S3.T4.6.7.5.1" style="color:#808080;">645</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.6.7.6"><span class="ltx_text" id="S3.T4.6.7.6.1" style="color:#808080;">1457</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.6.7.7"><span class="ltx_text" id="S3.T4.6.7.7.1" style="color:#808080;">1464</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.8">
<td class="ltx_td ltx_align_left" id="S3.T4.6.8.1">EDM</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.8.2">1.123</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.8.3">2.78</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.8.4">1.065</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.8.5">371</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.8.6">
<span class="ltx_text ltx_phantom" id="S3.T4.6.8.6.1"><span style="visibility:hidden">0</span></span>601</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.8.7">
<span class="ltx_text ltx_phantom" id="S3.T4.6.8.7.1"><span style="visibility:hidden">0</span></span>671</td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.9">
<td class="ltx_td ltx_align_left" id="S3.T4.6.9.1">EEGSDE</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.9.2">0.777</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.9.3">2.50</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.9.4">0.941</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.9.5">302</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.9.6">
<span class="ltx_text ltx_phantom" id="S3.T4.6.9.6.1"><span style="visibility:hidden">0</span></span>447</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.9.7">
<span class="ltx_text ltx_phantom" id="S3.T4.6.9.7.1"><span style="visibility:hidden">0</span></span>487</td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.10">
<td class="ltx_td ltx_align_left" id="S3.T4.6.10.1">GeoLDM</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.10.2">1.108</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.10.3">2.37</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.10.4">1.025</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.10.5">340</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.10.6">
<span class="ltx_text ltx_phantom" id="S3.T4.6.10.6.1"><span style="visibility:hidden">0</span></span>522</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.10.7">
<span class="ltx_text ltx_phantom" id="S3.T4.6.10.7.1"><span style="visibility:hidden">0</span></span>587</td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.11">
<td class="ltx_td ltx_align_left" id="S3.T4.6.11.1">JODO</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.11.2">0.628</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.11.3"><span class="ltx_text ltx_font_bold" id="S3.T4.6.11.3.1">1.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.11.4">0.581</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.11.5">226</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.11.6">
<span class="ltx_text ltx_phantom" id="S3.T4.6.11.6.1"><span style="visibility:hidden">0</span></span>256</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.11.7">
<span class="ltx_text ltx_phantom" id="S3.T4.6.11.7.1"><span style="visibility:hidden">0</span></span>335</td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.12">
<td class="ltx_td ltx_align_left" id="S3.T4.6.12.1">UDM-3D, ours</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.12.2"><span class="ltx_text ltx_font_bold" id="S3.T4.6.12.2.1">0.603</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.12.3">1.76</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.12.4"><span class="ltx_text ltx_font_bold" id="S3.T4.6.12.4.1">0.553</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.12.5"><span class="ltx_text ltx_font_bold" id="S3.T4.6.12.5.1">216</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.12.6">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T4.6.12.6.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S3.T4.6.12.6.2">247</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T4.6.12.7">
<span class="ltx_text ltx_phantom ltx_font_bold" id="S3.T4.6.12.7.1"><span style="visibility:hidden">0</span></span><span class="ltx_text ltx_font_bold" id="S3.T4.6.12.7.2">313</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T4.6.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.6.13.1"><span class="ltx_text" id="S3.T4.6.13.1.1" style="color:#808080;">L-Bound</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.6.13.2"><span class="ltx_text" id="S3.T4.6.13.2.1" style="color:#808080;">0.043</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.6.13.3"><span class="ltx_text" id="S3.T4.6.13.3.1" style="color:#808080;">0.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.6.13.4"><span class="ltx_text" id="S3.T4.6.13.4.1" style="color:#808080;">0.040</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.6.13.5">
<span class="ltx_text ltx_phantom" id="S3.T4.6.13.5.1" style="color:#808080;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S3.T4.6.13.5.2" style="color:#808080;">39</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.6.13.6">
<span class="ltx_text ltx_phantom" id="S3.T4.6.13.6.1" style="color:#808080;"><span style="visibility:hidden">00</span></span><span class="ltx_text" id="S3.T4.6.13.6.2" style="color:#808080;">36</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.6.13.7">
<span class="ltx_text ltx_phantom" id="S3.T4.6.13.7.1" style="color:#808080;"><span style="visibility:hidden">00</span></span><span class="ltx_text" id="S3.T4.6.13.7.2" style="color:#808080;">65</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the Mean Absolute Error (MAE) achieved by different methods on the QM9 dataset for conditional 3D molecule generation.  The goal is to generate 3D molecules with specific target quantum chemical properties. Lower MAE values indicate better performance, meaning the generated molecules' properties are closer to the target values. The properties considered include dipole moment (μ), polarizability (α), heat capacity (Cv), HOMO energy (εHOMO), LUMO energy (εLUMO), and HOMO-LUMO gap (Δε).
> <details>
> <summary>read the caption</summary>
> Table 4: Mean Absolute Error (MAE) for conditional 3D molecule generation on QM9. Lower values represent better performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.2">
<tr class="ltx_tr" id="S4.T5.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.2.2.3">Arch.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1">A.S.<math alttext="{}_{\text{3D}}" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><msub id="S4.T5.1.1.1.m1.1.1" xref="S4.T5.1.1.1.m1.1.1.cmml"><mi id="S4.T5.1.1.1.m1.1.1a" xref="S4.T5.1.1.1.m1.1.1.cmml"></mi><mtext id="S4.T5.1.1.1.m1.1.1.1" xref="S4.T5.1.1.1.m1.1.1.1a.cmml">3D</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><apply id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1"><ci id="S4.T5.1.1.1.m1.1.1.1a.cmml" xref="S4.T5.1.1.1.m1.1.1.1"><mtext id="S4.T5.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S4.T5.1.1.1.m1.1.1.1">3D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">{}_{\text{3D}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">start_FLOATSUBSCRIPT 3D end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.2">A.S.<math alttext="{}_{\text{2D}}" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><msub id="S4.T5.2.2.2.m1.1.1" xref="S4.T5.2.2.2.m1.1.1.cmml"><mi id="S4.T5.2.2.2.m1.1.1a" xref="S4.T5.2.2.2.m1.1.1.cmml"></mi><mtext id="S4.T5.2.2.2.m1.1.1.1" xref="S4.T5.2.2.2.m1.1.1.1a.cmml">2D</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><apply id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1"><ci id="S4.T5.2.2.2.m1.1.1.1a.cmml" xref="S4.T5.2.2.2.m1.1.1.1"><mtext id="S4.T5.2.2.2.m1.1.1.1.cmml" mathsize="70%" xref="S4.T5.2.2.2.m1.1.1.1">2D</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">{}_{\text{2D}}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">start_FLOATSUBSCRIPT 2D end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.4">V&amp;C</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.5">V&amp;U</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.6">V&amp;U&amp;N</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.2.3.1">DiT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.3.2.1">0.993</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.3.3.1">0.999</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.3.4.1">0.983</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.5"><span class="ltx_text ltx_font_bold" id="S4.T5.2.3.5.1">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.6"><span class="ltx_text ltx_font_bold" id="S4.T5.2.3.6.1">0.948</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.2.4.1">Trans.</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.2">0.983</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.3">0.997</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.4">0.938</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.5">0.922</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.4.6">0.922</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two different model architectures, Diffusion Transformer (DiT) and a vanilla Transformer, when used for latent diffusion modeling in 3D molecular generation.  Both models have the same depth and hidden size to ensure a fair comparison. The results are evaluated based on atom stability (A.S.) in 2D and 3D spaces, and other key metrics for the validity and uniqueness of generated molecules: V&C, V&U, and V&U&N.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparing DiT with vanilla Transformer for latent diffusion modeling. Models have the same depth and hidden size. A.S. stands for atom stability
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.15567/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.15567/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}