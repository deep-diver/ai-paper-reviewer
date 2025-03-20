---
title: "MaRI: Material Retrieval Integration across Domains"
summary: "MaRI: Accurately retrieves textures from images by bridging the gap between visual representations and material properties across diverse domains."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Electronic Science and Technology of China",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08111 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianhui Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08111" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08111" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08111/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods for material retrieval rely on datasets that are shape-invariant and lighting-varied representations of materials, which are scarce and face challenges due to limited diversity and inadequate real-world generalization. Current approaches adopt traditional image search techniques, falling short in capturing the unique properties of material spaces and resulting in suboptimal retrieval performance. 



This paper introduces **MaRI, a framework designed to bridge the feature space gap between synthetic and real-world materials**. MaRI constructs a shared embedding space that harmonizes visual and material attributes through contrastive learning and constructs a comprehensive dataset. Experiments demonstrate superior retrieval performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MaRI framework aligns visual and material properties in a shared embedding space. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework constructs a comprehensive dataset comprising synthetic and real-world materials. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MaRI outperforms existing methods in material retrieval tasks, demonstrating superior accuracy and generalization capabilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers as it introduces a novel framework that **significantly improves material retrieval accuracy** by bridging the gap between visual and material properties. The comprehensive dataset and innovative approach open new avenues for research in 3D asset generation, AR/VR, and digital content creation, enhancing the realism and context-awareness of virtual environments.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08111/extracted/6269952/fig/dataset.jpg)

> 🔼 Figure 1 demonstrates the MaRI (Material Retrieval Integration) framework's capability by showcasing examples from its gallery.  Subfigure (a) displays synthetic datasets created by rendering various 3D objects with different materials under controlled lighting. Subfigure (b) shows real-world datasets, where images of materials were captured and processed. Subfigure (c) provides a visual overview of the MaRI framework.  It's described as a groundbreaking method that accurately retrieves materials from images by connecting visual representations (images) with actual material properties, effectively bridging a gap in traditional material retrieval methods.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Examples from the MaRI Gallery, showcasing (a) synthetic and (b) real-world datasets we constructed. (c) MaRI: A groundbreaking framework for accurately retrieving textures from images, bridging the gap between visual representations and material properties.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T1.5.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T1.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.1.1.2.1">Trained</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T1.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.1.1.3.1">Unseen</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.1.2.2.1">T1I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.1.2.2.2">T5I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.1.2.2.3">T1C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T1.5.1.2.2.4">T3IoU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.1.2.2.5">T1I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T1.5.1.2.2.6">T5I</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.5.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.5.1.3.1.1">ViT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08111v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.3.1.2">3.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.3.1.3">12.0%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.3.1.4">16.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.5.1.3.1.5">0.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.3.1.6">16.5%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.5.1.3.1.7">56.0%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.4.2.1">DINOv2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08111v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.2.2">7.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.2.3">28.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.2.4">69.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.4.2.5">0.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.2.6">31.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.4.2.7">62.5%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.5.3.1">CLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08111v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.3.2">2.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.3.3">11.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.3.4">36.5%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.5.3.5">0.47</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.3.6">14.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.5.3.7">29.5%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.6.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.6.4.1">Make-it-Real <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08111v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.6.4.2">8.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.6.4.3">16.0%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.6.4.4">76.5%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.6.4.5">0.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.6.4.6">42.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.6.4.7">75.0%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.7.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.7.5.1">MaPa <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.08111v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.7.5.2">2.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.7.5.3">17.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.7.5.4">80.0%</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.1.7.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.7.5.5.1" style="color:#0077FF;">0.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.7.5.6">19.5%</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.7.5.7">69.0%</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.1.8.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.5.1.8.6.1">MaRI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.1.8.6.2"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.8.6.2.1" style="color:#0077FF;">26.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.1.8.6.3"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.8.6.3.1" style="color:#0077FF;">90.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.1.8.6.4"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.8.6.4.1" style="color:#0077FF;">81.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.5.1.8.6.5">0.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.1.8.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.8.6.6.1" style="color:#0077FF;">54.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.5.1.8.6.7"><span class="ltx_text ltx_font_bold" id="S4.T1.5.1.8.6.7.1" style="color:#0077FF;">89.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of material retrieval performance across different methods on two datasets: 'Trained' and 'Unseen'.  The 'Trained' dataset contains materials the model was trained on, while the 'Unseen' dataset contains novel materials to evaluate generalization capabilities. The table shows the top-1 and top-5 instance-level accuracy (T1I, T5I), top-1 class-level accuracy (T1C), and top-3 Intersection over Union (T3IoU).  Higher values indicate better retrieval performance.  The best results for each metric are highlighted in blue.
> <details>
> <summary>read the caption</summary>
> Table 1: Material Retrieval Performance on Trained and Unseen Datasets. Best values are highlighted in blue.
> </details>





### In-depth insights


#### Domain Alignment
**Domain alignment** is crucial for bridging the gap between synthetic and real-world data in material recognition. The paper addresses this by constructing a comprehensive dataset with both synthetic (controlled) and real-world materials (processed and standardized). A dual-encoder framework (MaRI) aligns visual and material features in a shared space, using contrastive learning. The goal is to bring similar materials and images closer while separating dissimilar pairs. The framework finetunes pre-trained models (DINOv2) to capture domain-specific nuances and preserves generalizability. To build synthetic pairs, the paper uses 3D models and textures from open repositories, rendered with varying lighting. Real-world data is incorporated by leveraging ZeST to generate material spheres from images. This approach allows the model to learn robust representations without relying on extensive annotations, thereby improving retrieval accuracy and generalization capabilities across domains.

#### Contrastive Loss
Contrastive loss is a crucial component in representation learning, particularly in scenarios where the goal is to learn embeddings that group similar instances together while separating dissimilar ones. The core idea revolves around defining a loss function that penalizes embeddings when similar pairs are far apart and dissimilar pairs are too close. **Effectively, it shapes the embedding space to reflect the underlying similarity structure of the data.** The specific formulation can vary; some approaches directly minimize the distance between similar pairs and maximize the distance between dissimilar pairs, while others leverage techniques like InfoNCE loss, which uses a softmax-based approach to compare a positive pair against a set of negative examples. **The effectiveness of contrastive loss hinges on the careful selection of similar and dissimilar pairs**, often requiring strategies like hard negative mining to identify the most informative negative examples. **It has found wide applications in areas like image recognition, natural language processing, and recommendation systems**, where learning effective representations is key to achieving strong performance.

#### Dataset Creation
The dataset creation process is multifaceted, strategically employing both synthetic generation and real-world capture techniques to create a comprehensive resource for material retrieval. **Synthetic data** is generated by rendering diverse 3D models with a wide array of materials under varying lighting conditions, leveraging resources like Objaverse and AmbientCG. This provides controlled variations and a large volume of data. **Real-world data** is incorporated to bridge the domain gap, utilizing methods like ZeST to transfer material appearances from real images onto neutral spheres. This approach captures the nuances and complexities of real-world materials. **Segmentation** is crucial for isolating material regions within real images. The balance between synthetic and real data ensures robustness and generalization. This comprehensive strategy allows the model to learn a robust feature space for material retrieval.

#### Unseen Generalize
While "Unseen Generalize" isn't explicitly a section title in this paper, the concept of generalization to unseen data is central to its claims. The paper emphasizes that **MaRI excels in transferring knowledge acquired from synthetic data to real-world scenarios**. This is critical because the model is trained on a controlled synthetic dataset, but its ultimate goal is to perform well on novel, real-world material retrieval tasks. The authors evaluate generalization performance using a separate test set comprised of materials and images not included in the training data. This provides insights into how **MaRI handles the domain gap between synthetic and real images, a common challenge in material recognition.** They leverage an unsupervised learning approach to overcome annotated datasets. The success in the Unseen Materials retrieval task underscores MaRI's ability to capture **underlying material properties rather than memorizing specific training examples**. By demonstrating robust generalization capabilities, the authors strengthen their claim that MaRI offers a more practical solution for material retrieval in real-world applications.

#### Encoder Ablation
While the provided text doesn't explicitly contain a section titled 'Encoder Ablation,' the ablation studies presented delve into the impact of various architectural choices related to the encoder. The findings underscore the importance of **dual encoders** for effectively bridging the gap between image and material representations. Ablating either the synthetic or real-world data reveals a significant drop in performance, highlighting the **complementary nature of these datasets** in creating a robust embedding space. In essence, the encoder ablation experiments emphasize that the carefully chosen architecture and the diversity of the training data are crucial for achieving state-of-the-art performance in material retrieval, showing the relative contribution of each component to the success of the framework, suggesting that the model is more effective if it preserves both.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08111/extracted/6269952/fig/framework.jpg)

> 🔼 Figure 2 illustrates the process of creating the MaRI dataset, which consists of synthetic and real-world materials. (a) shows how synthetic materials are generated: 3D models from Objaverse are combined with textures from AmbientCG, and rendered using HDR images to create a variety of material samples under diverse lighting conditions.  (b) depicts the creation of the real-world dataset: real-world images of materials are selected, the material regions are segmented using Grounded-SAM, and the ZeST method transforms these segments into standardized material spheres. This two-pronged approach ensures a balanced and comprehensive dataset for training and evaluating the MaRI material retrieval framework.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our dataset construction pipeline. (a) Synthetic materials are generated from 3D models obtained from Objaverse, combined with textures from AmbientCG, and rendered with HDR images. (b) Real-world materials are selected and segmented using Grounded-SAM and then transformed into material spheres via the ZeST method.
> </details>



![](https://arxiv.org/html/2503.08111/extracted/6269952/fig/comparison.jpg)

> 🔼 MaRI's architecture is a dual-encoder framework using two DINOv2-based encoders: one for image features and one for material features.  Only the final Transformer block of each encoder is fine-tuned during training, keeping the pre-trained weights frozen to maintain generalizability. The training utilizes a contrastive loss function to align image and material embeddings in a shared space. During inference, the cosine similarity between the image and material embeddings is calculated to retrieve the most relevant materials from a material library.
> <details>
> <summary>read the caption</summary>
> Figure 3: The architecture of the MaRI framework for contrastive fine-tuning in material retrieval. MaRI uses DINOv2-based encoders for both image and material feature extraction, fine-tuning only the last Transformer block, while keeping the rest of the model frozen. During inference, cosine similarity between image and material embeddings is used to retrieve the most relevant materials from the library.
> </details>



![](https://arxiv.org/html/2503.08111/extracted/6269952/fig/unseen.jpg)

> 🔼 This figure shows a qualitative comparison of material retrieval results using the 'Trained Materials' dataset as the gallery.  It presents a real-world image query alongside the top-1 and top-5 retrieval results from different methods: DINOv2, Make-it-Real, MaPa, and MaRI. The goal is to visually demonstrate the relative performance of each method in accurately retrieving materials that match the visual characteristics of the query image. This is done for two example queries, 'Marble' and 'Bark', allowing for a direct comparison across the methods, highlighting MaRI's superior performance in accurately retrieving visually similar materials.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative comparison of material retrieval results using the Trained Materials dataset as the gallery.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.5.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.1.1" style="font-size:90%;">Data %</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.2.1" style="font-size:90%;">Trained</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T2.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.3.1" style="font-size:90%;">Unseen</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.1"><span class="ltx_text" id="S4.T2.5.1.2.2.1.1" style="font-size:90%;">T1I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.2"><span class="ltx_text" id="S4.T2.5.1.2.2.2.1" style="font-size:90%;">T5I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.3"><span class="ltx_text" id="S4.T2.5.1.2.2.3.1" style="font-size:90%;">T1C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.5.1.2.2.4"><span class="ltx_text" id="S4.T2.5.1.2.2.4.1" style="font-size:90%;">T3IoU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.5"><span class="ltx_text" id="S4.T2.5.1.2.2.5.1" style="font-size:90%;">T1I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.5.1.2.2.6"><span class="ltx_text" id="S4.T2.5.1.2.2.6.1" style="font-size:90%;">T5I</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.1.3.1.1"><span class="ltx_text" id="S4.T2.5.1.3.1.1.1" style="font-size:90%;">25%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.2"><span class="ltx_text" id="S4.T2.5.1.3.1.2.1" style="font-size:90%;">19.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.3"><span class="ltx_text" id="S4.T2.5.1.3.1.3.1" style="font-size:90%;">55.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.4"><span class="ltx_text" id="S4.T2.5.1.3.1.4.1" style="font-size:90%;">77.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.1.3.1.5"><span class="ltx_text" id="S4.T2.5.1.3.1.5.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.6"><span class="ltx_text" id="S4.T2.5.1.3.1.6.1" style="font-size:90%;">44.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.3.1.7"><span class="ltx_text" id="S4.T2.5.1.3.1.7.1" style="font-size:90%;">83.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.4.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.1.4.2.1"><span class="ltx_text" id="S4.T2.5.1.4.2.1.1" style="font-size:90%;">50%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.2"><span class="ltx_text" id="S4.T2.5.1.4.2.2.1" style="font-size:90%;">20.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.3"><span class="ltx_text" id="S4.T2.5.1.4.2.3.1" style="font-size:90%;">63.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.4.2.4.1" style="font-size:90%;color:#0077FF;">82.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.1.4.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.4.2.5.1" style="font-size:90%;color:#0077FF;">0.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.6"><span class="ltx_text" id="S4.T2.5.1.4.2.6.1" style="font-size:90%;">46.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.4.2.7"><span class="ltx_text" id="S4.T2.5.1.4.2.7.1" style="font-size:90%;">85.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.5.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.1.5.3.1"><span class="ltx_text" id="S4.T2.5.1.5.3.1.1" style="font-size:90%;">75%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.2"><span class="ltx_text" id="S4.T2.5.1.5.3.2.1" style="font-size:90%;">22.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.3"><span class="ltx_text" id="S4.T2.5.1.5.3.3.1" style="font-size:90%;">79.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.4"><span class="ltx_text" id="S4.T2.5.1.5.3.4.1" style="font-size:90%;">80.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.1.5.3.5"><span class="ltx_text" id="S4.T2.5.1.5.3.5.1" style="font-size:90%;">0.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.6"><span class="ltx_text" id="S4.T2.5.1.5.3.6.1" style="font-size:90%;">48.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3.7"><span class="ltx_text" id="S4.T2.5.1.5.3.7.1" style="font-size:90%;">80.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.6.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.1.6.4.1"><span class="ltx_text" id="S4.T2.5.1.6.4.1.1" style="font-size:90%;">100%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.6.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.6.4.2.1" style="font-size:90%;color:#0077FF;">26.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.6.4.3.1" style="font-size:90%;color:#0077FF;">90.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.6.4.4"><span class="ltx_text" id="S4.T2.5.1.6.4.4.1" style="font-size:90%;">81.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.1.6.4.5"><span class="ltx_text" id="S4.T2.5.1.6.4.5.1" style="font-size:90%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.6.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.6.4.6.1" style="font-size:90%;color:#0077FF;">54.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.6.4.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.6.4.7.1" style="font-size:90%;color:#0077FF;">89.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes how different percentages of synthetic data (25%, 50%, 75%, and 100%) in the training process affect the performance of the MaRI model in material retrieval tasks.  The results are evaluated using instance-level accuracy (top-1 and top-5), class-level accuracy (top-1), and intersection-over-union (top-3 IoU) for both the 'Trained' and 'Unseen' datasets.  The table shows how increasing the amount of synthetic data improves retrieval performance, particularly for instance-level tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study evaluating the impact of synthetic data usage. Best values are highlighted in blue.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T3.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.1.1" style="font-size:90%;">Configuration</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T3.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.2.1" style="font-size:90%;">Trained</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T3.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.1.1.3.1" style="font-size:90%;">Unseen</span></th>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.1.1" style="font-size:90%;">DE</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.2.1" style="font-size:90%;">RD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.5.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.3.1" style="font-size:90%;">SD</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.4.1" style="font-size:90%;">T1I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.5.1" style="font-size:90%;">T5I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.6.1" style="font-size:90%;">T1C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.5.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.7.1" style="font-size:90%;">T3IoU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.8.1" style="font-size:90%;">T1I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.2.2.9.1" style="font-size:90%;">T5I</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.1" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.3.1.1.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.2"><span class="ltx_text" id="S4.T3.5.1.3.1.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.1.3.1.3" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.3.1.3.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.4"><span class="ltx_text" id="S4.T3.5.1.3.1.4.1" style="font-size:90%;">20.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.5"><span class="ltx_text" id="S4.T3.5.1.3.1.5.1" style="font-size:90%;">62.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.6"><span class="ltx_text" id="S4.T3.5.1.3.1.6.1" style="font-size:90%;">75.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.5.1.3.1.7"><span class="ltx_text" id="S4.T3.5.1.3.1.7.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.8"><span class="ltx_text" id="S4.T3.5.1.3.1.8.1" style="font-size:90%;">44.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.1.3.1.9"><span class="ltx_text" id="S4.T3.5.1.3.1.9.1" style="font-size:90%;">78.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.4.2">
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.1" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.4.2.1.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.2" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.4.2.2.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.4.2.3"><span class="ltx_text" id="S4.T3.5.1.4.2.3.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.4"><span class="ltx_text" id="S4.T3.5.1.4.2.4.1" style="font-size:90%;">9.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.5"><span class="ltx_text" id="S4.T3.5.1.4.2.5.1" style="font-size:90%;">27.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.6"><span class="ltx_text" id="S4.T3.5.1.4.2.6.1" style="font-size:90%;">45.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.4.2.7"><span class="ltx_text" id="S4.T3.5.1.4.2.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.8"><span class="ltx_text" id="S4.T3.5.1.4.2.8.1" style="font-size:90%;">35.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.4.2.9"><span class="ltx_text" id="S4.T3.5.1.4.2.9.1" style="font-size:90%;">63.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.5.3">
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.1"><span class="ltx_text" id="S4.T3.5.1.5.3.1.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.2" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.5.3.2.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.5.3.3" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.5.3.3.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.4"><span class="ltx_text" id="S4.T3.5.1.5.3.4.1" style="font-size:90%;">20.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.5"><span class="ltx_text" id="S4.T3.5.1.5.3.5.1" style="font-size:90%;">61.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.6"><span class="ltx_text" id="S4.T3.5.1.5.3.6.1" style="font-size:90%;">77.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.1.5.3.7"><span class="ltx_text" id="S4.T3.5.1.5.3.7.1" style="font-size:90%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.8"><span class="ltx_text" id="S4.T3.5.1.5.3.8.1" style="font-size:90%;">49.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.1.5.3.9"><span class="ltx_text" id="S4.T3.5.1.5.3.9.1" style="font-size:90%;">85.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.6.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.6.4.1" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.6.4.1.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.6.4.2" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.6.4.2.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.5.1.6.4.3" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T3.5.1.6.4.3.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.4.1" style="font-size:90%;color:#0077FF;">26.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.6.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.5.1" style="font-size:90%;color:#0077FF;">90.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.6.4.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.6.1" style="font-size:90%;color:#0077FF;">81.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.5.1.6.4.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.7.1" style="font-size:90%;color:#0077FF;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.6.4.8"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.8.1" style="font-size:90%;color:#0077FF;">54.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.5.1.6.4.9"><span class="ltx_text ltx_font_bold" id="S4.T3.5.1.6.4.9.1" style="font-size:90%;color:#0077FF;">89.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different model architectures and dataset compositions on material retrieval performance.  The table shows the results for various configurations, including whether a dual encoder model was used, whether real-world and synthetic data were included, and their effect on retrieval accuracy metrics (Top-1 Instance Accuracy, Top-5 Instance Accuracy, Top-1 Class Accuracy, and Top-3 Intersection over Union).  The '✓' symbol indicates that a component was included, while '✗' indicates it was excluded. The best performing configurations for each metric are highlighted in blue.  This allows for a quantitative comparison of model designs and data choices.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on model architecture and data composition. ✓ indicates the component is enabled, while ✗ indicates it is disabled. Best values are highlighted in blue. Abbreviations: DE = Dual Encoder, RD = Real Data, SD = Synthetic Data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="S4.T4.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.1.1" style="font-size:90%;">Configuration</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="S4.T4.5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.2.1" style="font-size:90%;">Trained</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S4.T4.5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.1.1.3.1" style="font-size:90%;">Unseen</span></th>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.1.1" style="font-size:90%;">LBO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.2.1" style="font-size:90%;">TL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.5.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.3.1" style="font-size:90%;">IL</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.4.1" style="font-size:90%;">T1I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.5.1" style="font-size:90%;">T5I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.6.1" style="font-size:90%;">T1C</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.5.1.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.7.1" style="font-size:90%;">T3IoU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.2.2.8"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.8.1" style="font-size:90%;">T1I</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.2.2.9"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.2.2.9.1" style="font-size:90%;">T5I</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.1.3.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.1"><span class="ltx_text" id="S4.T4.5.1.3.1.1.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.2"><span class="ltx_text" id="S4.T4.5.1.3.1.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.1.3.1.3" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T4.5.1.3.1.3.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.4"><span class="ltx_text" id="S4.T4.5.1.3.1.4.1" style="font-size:90%;">13.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.5"><span class="ltx_text" id="S4.T4.5.1.3.1.5.1" style="font-size:90%;">42.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.6"><span class="ltx_text" id="S4.T4.5.1.3.1.6.1" style="font-size:90%;">69.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.5.1.3.1.7"><span class="ltx_text" id="S4.T4.5.1.3.1.7.1" style="font-size:90%;">0.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.8"><span class="ltx_text" id="S4.T4.5.1.3.1.8.1" style="font-size:90%;">31.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.1.3.1.9"><span class="ltx_text" id="S4.T4.5.1.3.1.9.1" style="font-size:90%;">67.0%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.4.2">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.1"><span class="ltx_text" id="S4.T4.5.1.4.2.1.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.2" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T4.5.1.4.2.2.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.4.2.3"><span class="ltx_text" id="S4.T4.5.1.4.2.3.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.4"><span class="ltx_text" id="S4.T4.5.1.4.2.4.1" style="font-size:90%;">7.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.5"><span class="ltx_text" id="S4.T4.5.1.4.2.5.1" style="font-size:90%;">21.0%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.6"><span class="ltx_text" id="S4.T4.5.1.4.2.6.1" style="font-size:90%;">53.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.4.2.7"><span class="ltx_text" id="S4.T4.5.1.4.2.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.8"><span class="ltx_text" id="S4.T4.5.1.4.2.8.1" style="font-size:90%;">15.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.4.2.9"><span class="ltx_text" id="S4.T4.5.1.4.2.9.1" style="font-size:90%;">52.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.5.3">
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.1" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T4.5.1.5.3.1.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.2" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T4.5.1.5.3.2.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.5.3.3"><span class="ltx_text" id="S4.T4.5.1.5.3.3.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.4"><span class="ltx_text" id="S4.T4.5.1.5.3.4.1" style="font-size:90%;">5.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.5"><span class="ltx_text" id="S4.T4.5.1.5.3.5.1" style="font-size:90%;">31.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.6"><span class="ltx_text" id="S4.T4.5.1.5.3.6.1" style="font-size:90%;">73.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.1.5.3.7"><span class="ltx_text" id="S4.T4.5.1.5.3.7.1" style="font-size:90%;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.8"><span class="ltx_text" id="S4.T4.5.1.5.3.8.1" style="font-size:90%;">38.5%</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.1.5.3.9"><span class="ltx_text" id="S4.T4.5.1.5.3.9.1" style="font-size:90%;">71.5%</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.1.6.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.6.4.1" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T4.5.1.6.4.1.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.6.4.2"><span class="ltx_text" id="S4.T4.5.1.6.4.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.5.1.6.4.3" style="background-color:#CCFAEB;"><span class="ltx_text" id="S4.T4.5.1.6.4.3.1" style="font-size:90%;background-color:#CCFAEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.6.4.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.6.4.4.1" style="font-size:90%;color:#0077FF;">26.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.6.4.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.6.4.5.1" style="font-size:90%;color:#0077FF;">90.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.6.4.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.6.4.6.1" style="font-size:90%;color:#0077FF;">81.5%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.5.1.6.4.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.6.4.7.1" style="font-size:90%;color:#0077FF;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.6.4.8"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.6.4.8.1" style="font-size:90%;color:#0077FF;">54.0%</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.5.1.6.4.9"><span class="ltx_text ltx_font_bold" id="S4.T4.5.1.6.4.9.1" style="font-size:90%;color:#0077FF;">89.0%</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different fine-tuning configurations on the MaRI model's performance.  It examines the effects of fine-tuning only the last Transformer block (LBO), using Triplet Loss (TL), and using InfoNCE Loss (IL). The table shows the top-1 and top-5 instance-level accuracy (T1I, T5I), top-1 class-level accuracy (T1C), and top-3 Intersection over Union (T3IoU) for both the 'Trained' and 'Unseen' datasets under various combinations of these configurations.  The best-performing configurations for each metric are highlighted in blue.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on fine-tuning configurations. ✓ indicates the component is enabled, while ✗ indicates it is disabled. Best values are highlighted in blue. Abbreviations: LBO = Last Block Only, TL = Triplet Loss, IL = InfoNCE Loss.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08111/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08111/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}