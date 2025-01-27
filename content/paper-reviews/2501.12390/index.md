---
title: "GPS as a Control Signal for Image Generation"
summary: "GPS-guided image generation is here!  This paper leverages GPS data to create highly realistic images reflecting specific locations, even reconstructing 3D models from 2D photos."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Michigan",]
showSummary: true
date: 2025-01-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.12390 {{< /keyword >}}
{{< keyword icon="writer" >}} Chao Feng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.12390" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.12390" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.12390/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image generation models often lack fine-grained control over location-specific details.  This limits their ability to create images accurately reflecting the unique characteristics of a particular place, hindering applications in virtual tourism, urban planning, and other location-based contexts.  Existing methods also struggle with 3D reconstruction, often requiring explicit camera pose estimation and intricate processing, which is time-consuming and prone to errors. This research tackles these challenges by introducing a novel approach that incorporates GPS coordinates as a control signal in image generation. 

The researchers trained a diffusion model on geotagged images, enabling it to generate images conditioned on both GPS location and text descriptions. The method successfully captures the distinctive visual characteristics of various locations within a city, generating images with realistic details that reflect location-based variations.  Furthermore, they demonstrate that this model can extract 3D models from 2D images, using GPS conditioning to constrain the 3D reconstruction from each viewpoint.  This novel technique eliminates the need for explicit camera pose estimation, providing a more efficient and robust solution for 3D reconstruction from image data.  The evaluations show the model accurately reflects location features, outperforming alternative approaches in image generation and 3D reconstruction tasks.  **This work demonstrates the significant potential of GPS data as a powerful control signal for enhancing the realism and location specificity of generated images and 3D models.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GPS data serves as an effective control signal for generating location-aware images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel method for 3D reconstruction is introduced, extracting 3D models from 2D GPS-conditioned images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The approach successfully demonstrates compositional generation by combining GPS and text prompts for image synthesis. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it introduces a novel approach to image generation by using GPS coordinates as a control signal. This opens up new avenues for research in location-aware image synthesis, 3D reconstruction from images, and compositional image generation.  The findings are relevant to current trends in cross-modal learning and generative models, potentially influencing the development of more realistic and location-specific AI applications.  The method's simplicity and effectiveness are particularly noteworthy, making it a valuable contribution to the field.

------
#### Visual Insights



![](https://arxiv.org/html/2501.12390/x4.png)

> 🔼 This figure demonstrates the capabilities of a GPS-conditioned image generation model.  The model is trained on geotagged photos from Manhattan, learning to generate images representative of different locations and their characteristics, including landmarks and neighborhood styles.  Examples show how text prompts combined with GPS coordinates generate images consistent with both, illustrating compositional generation. For instance, the prompt “bagel” produces diverse results depending on location: a modern sculpture near MoMA and an impressionist painting near the Met.  The figure also highlights the model's ability to reconstruct 3D models from 2D images (a 3D NeRF of the Statue of Liberty) using score distillation sampling.
> <details>
> <summary>read the caption</summary>
> Figure 1: What can we do with a GPS-conditioned image generation model? We train GPS-to-image models and use them for tasks that require a fine-grained understanding of how images vary within a city. For example, a model trained on densely sampled geotagged photos from Manhattan can generate images that match a neighborhood’s general appearance and capture key landmarks like museums and parks. We show images sampled from a variety of GPS locations and text prompts. For example, an image with the text prompt “bagel” results in a modern-style sculpture when conditioned on the Museum of Modern Art and an impressionist-style painting when conditioned on the Metropolitan Museum of Art. We also “lift” a 3D NeRF of the Statue of Liberty from a landmark-specific 2D GPS-to-image model using score distillation sampling. Please see the project webpage and Sec. A.1.1 for more examples.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.SS2.3.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.SS2.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.SS2.3.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.SS2.3.3.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.SS2.1.1.1.1.1">
<span class="ltx_text" id="S4.SS2.1.1.1.1.1.1" style="font-size:90%;">CLIP Score (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.1.1.1.1.1.m1.1"><semantics id="S4.SS2.1.1.1.1.1.m1.1a"><mo id="S4.SS2.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.SS2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.1.1.1.1.1.m1.1b"><ci id="S4.SS2.1.1.1.1.1.m1.1.1.cmml" xref="S4.SS2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.SS2.1.1.1.1.1.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.SS2.2.2.2.2.2">
<span class="ltx_text" id="S4.SS2.2.2.2.2.2.1" style="font-size:90%;">GPS Score (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.2.2.2.2.2.m1.1"><semantics id="S4.SS2.2.2.2.2.2.m1.1a"><mo id="S4.SS2.2.2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.SS2.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.2.2.2.2.2.m1.1b"><ci id="S4.SS2.2.2.2.2.2.m1.1.1.cmml" xref="S4.SS2.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.2.2.2.2.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.SS2.2.2.2.2.2.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.SS2.3.3.3.3.3">
<span class="ltx_text" id="S4.SS2.3.3.3.3.3.1" style="font-size:90%;">Avg (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.SS2.3.3.3.3.3.m1.1"><semantics id="S4.SS2.3.3.3.3.3.m1.1a"><mo id="S4.SS2.3.3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.SS2.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.SS2.3.3.3.3.3.m1.1b"><ci id="S4.SS2.3.3.3.3.3.m1.1.1.cmml" xref="S4.SS2.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.SS2.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.SS2.3.3.3.3.3.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.SS2.3.3.3.3.3.2" style="font-size:90%;">)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.SS2.3.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.SS2.3.3.3.4.1.1"><span class="ltx_text" id="S4.SS2.3.3.3.4.1.1.1" style="font-size:90%;">GPS NN</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS2.3.3.3.4.1.2"><span class="ltx_text" id="S4.SS2.3.3.3.4.1.2.1" style="font-size:90%;">18.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS2.3.3.3.4.1.3"><span class="ltx_text" id="S4.SS2.3.3.3.4.1.3.1" style="font-size:90%;color:#0000FF;">13.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.SS2.3.3.3.4.1.4"><span class="ltx_text" id="S4.SS2.3.3.3.4.1.4.1" style="font-size:90%;color:#0000FF;">16.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.SS2.3.3.3.5.2.1"><span class="ltx_text" id="S4.SS2.3.3.3.5.2.1.1" style="font-size:90%;">SD (Text&amp;address)</span></th>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.5.2.2"><span class="ltx_text" id="S4.SS2.3.3.3.5.2.2.1" style="font-size:90%;">26.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.5.2.3">
<span class="ltx_text ltx_phantom" id="S4.SS2.3.3.3.5.2.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.SS2.3.3.3.5.2.3.2" style="font-size:90%;">4.25</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.5.2.4"><span class="ltx_text" id="S4.SS2.3.3.3.5.2.4.1" style="font-size:90%;">15.45</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.SS2.3.3.3.6.3.1"><span class="ltx_text" id="S4.SS2.3.3.3.6.3.1.1" style="font-size:90%;">SD (Text)</span></th>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.SS2.3.3.3.6.3.2.1" style="font-size:90%;">29.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.6.3.3">
<span class="ltx_text ltx_phantom" id="S4.SS2.3.3.3.6.3.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.SS2.3.3.3.6.3.3.2" style="font-size:90%;">1.21</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.6.3.4"><span class="ltx_text" id="S4.SS2.3.3.3.6.3.4.1" style="font-size:90%;">15.17</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.SS2.3.3.3.7.4.1">
<span class="ltx_ERROR undefined" id="S4.SS2.3.3.3.7.4.1.1">\cdashline</span><span class="ltx_text" id="S4.SS2.3.3.3.7.4.1.2" style="font-size:90%;">1-4

Ours</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.7.4.2"><span class="ltx_text" id="S4.SS2.3.3.3.7.4.2.1" style="font-size:90%;color:#0000FF;">27.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.7.4.3">
<span class="ltx_text ltx_phantom" id="S4.SS2.3.3.3.7.4.3.1" style="font-size:90%;"><span style="visibility:hidden">0</span></span><span class="ltx_text" id="S4.SS2.3.3.3.7.4.3.2" style="font-size:90%;">8.15</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.SS2.3.3.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.SS2.3.3.3.7.4.4.1" style="font-size:90%;">18.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.SS2.3.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.SS2.3.3.3.8.5.1"><span class="ltx_text" id="S4.SS2.3.3.3.8.5.1.1" style="font-size:90%;">Ours (w/o text)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.3.3.3.8.5.2"><span class="ltx_text" id="S4.SS2.3.3.3.8.5.2.1" style="font-size:90%;">–</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.3.3.3.8.5.3"><span class="ltx_text ltx_font_bold" id="S4.SS2.3.3.3.8.5.3.1" style="font-size:90%;">13.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.SS2.3.3.3.8.5.4"><span class="ltx_text" id="S4.SS2.3.3.3.8.5.4.1" style="font-size:90%;">–</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for GPS-to-image diffusion.  It evaluates the performance of the proposed method against several baselines using two metrics: CLIP Score and GPS Score. CLIP Score assesses the semantic alignment between generated images and text prompts, while GPS Score measures the consistency of generated images with their corresponding GPS locations.  The nearest neighbor (NN) baseline uses the image closest to a given GPS location, while the Stable Diffusion (SD) baselines represent results when using the text and address or text alone. The table highlights the superior performance of the proposed method in terms of both CLIP and GPS scores, demonstrating its ability to effectively combine GPS and text-based conditioning for image generation.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation of GPS-to-image diffusion. We compare our method with several baselines in terms of CLIP Score and GPS Score. NN represents the nearest neighbor and SD is for stable diffusion. The best results are in bold, and the second bests are colored in blue.
> </details>





### In-depth insights


#### GPS-Image Synthesis
GPS-Image Synthesis represents a novel approach to image generation, leveraging geographic location data (GPS coordinates) as a crucial conditioning factor.  This method goes beyond typical text or image-based conditioning by **incorporating spatial context**, enabling the generation of images that accurately reflect the characteristics of a specific location. The core idea is to train a model on a large dataset of geotagged images, allowing it to learn the nuanced visual relationships between GPS coordinates and image features. This approach offers several advantages. First, it allows for the **creation of highly realistic and geographically accurate images**, capturing the unique visual attributes of specific places. Second, it opens the door for exciting applications such as generating realistic virtual tours, creating detailed maps based on real-world locations, and improving the fidelity of location-based augmented reality experiences.  However, challenges remain.  **Data acquisition** is crucial, requiring a substantial number of well-geotagged, high-quality images. Additionally, the model must effectively manage the complex relationship between geographic coordinates and visual features, considering various factors such as lighting, weather, time of day, and seasonal changes.  Finally, **robust generalization** is key, ensuring the model accurately synthesizes images for locations beyond its training data. Despite these challenges, GPS-Image Synthesis shows considerable promise as a powerful new technique in image generation, offering a unique path towards creating synthetic images deeply rooted in the real world.

#### 3D from 2D GPS
The concept of '3D from 2D GPS' presents a fascinating challenge and opportunity in computer vision.  It suggests reconstructing three-dimensional models of locations using only two-dimensional images geotagged with GPS coordinates. This approach has several key advantages. **First, it leverages the readily available data of geotagged images**, eliminating the need for expensive and time-consuming 3D scanning. **Second, it offers a potentially more robust and scalable solution compared to traditional 3D reconstruction methods**, which often rely on accurate camera pose estimation and feature matching, processes susceptible to error.  The core innovation lies in utilizing the GPS data as a powerful constraint on the 3D reconstruction.  By learning the relationship between image appearance and GPS location, a model can infer 3D structure from multiple views, even without explicit camera pose information.  **However, the accuracy and detail of the resulting 3D models will heavily depend on the density and quality of the input geotagged images.**  Areas with sparse or poorly distributed images would likely lead to incomplete or inaccurate 3D reconstructions.  Furthermore, **challenges remain in handling variations in lighting, weather conditions, and occlusion**.  Despite these hurdles, '3D from 2D GPS' shows promise for generating detailed 3D models of urban environments and landmarks, enriching applications in virtual reality, augmented reality, urban planning, and cultural heritage preservation.

#### Diffusion Model Tuning
Diffusion model tuning is a crucial aspect of leveraging the power of these generative models.  **Fine-tuning pre-trained diffusion models** on specific datasets allows for adaptation to particular domains, significantly enhancing performance and control.  The process involves carefully selecting a base model, preparing a targeted dataset with appropriate annotations, and employing suitable training techniques such as **classifier-free guidance** or **score distillation**.  **Hyperparameter optimization** is critical during tuning, involving experimentation with learning rates, batch sizes, and other factors to prevent overfitting and optimize results.  Furthermore, **effective evaluation metrics** are needed to assess the success of the tuning process and to compare different approaches.  The choice of evaluation method depends on the specific application and desired outcome, including metrics such as FID and other domain-specific measures.  **Careful consideration of potential biases** in both the base model and the dataset is essential to mitigate unintended consequences in the tuned model's output, thereby ensuring responsible and ethical applications of the technology.

#### Geo-Visual Composition
**Geo-visual composition** in the context of image generation using GPS data presents a fascinating research area.  It involves understanding how geographic location influences visual elements within an image and using this understanding to generate realistic and contextually relevant images.  This goes beyond simply placing objects on a map; it's about capturing the nuances of a specific place – its architecture, atmosphere, and even the subtle differences between neighborhoods.  The challenge lies in **learning complex relationships between GPS coordinates and image features**, which are not always directly observable. **Successful models need to integrate location-based information with other conditioning signals** such as text prompts to create coherent and highly detailed images.  The integration of GPS data adds a layer of realism not found in traditional text-to-image models, enabling the generation of highly localized and contextually appropriate images.  Furthermore, extending this to generate 3D models based on GPS coordinates opens exciting possibilities for virtual and augmented reality applications,  allowing for more immersive and accurate digital representations of the real world.

#### Limitations and Future
The research paper's success in utilizing GPS data for image generation and 3D reconstruction is noteworthy.  However, **limitations exist**, particularly concerning data scarcity: regions with limited geotagged photos hinder the model's performance.  The reliance on existing diffusion models introduces limitations inherent to those models, notably difficulties with precise viewpoint control and issues like the "Janus problem." **Future work should address data limitations** through collaborative data collection initiatives, focusing on under-represented areas.  **Improving viewpoint control** and overcoming ambiguities inherent in GPS coordinates require further research. Exploring alternative or complementary conditioning signals could enhance image generation accuracy and detail.  **Investigating more robust methods for 3D reconstruction** from 2D data is crucial, potentially by incorporating alternative 3D model representations or exploring direct 3D generation techniques.  Finally, exploring the potential of this approach beyond urban landscapes, such as in diverse geographical contexts, warrants future study.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.12390/x5.png)

> 🔼 Figure 2 illustrates the methodology of the proposed GPS-based image and 3D model generation.  Panel (a) details the training process for a GPS-to-image diffusion model.  This model learns to generate images conditioned on both geographical location (GPS coordinates) and textual descriptions. The model's ability to combine these two inputs compositionally is highlighted. Panel (b) shows how 3D models of landmarks are extracted from a 2D GPS-conditioned image model. This is achieved through score distillation sampling, a technique that leverages the model's understanding of how a landmark appears from different viewpoints (parameterized by azimuth relative to the landmark's center) to reconstruct a 3D representation.  The '+' symbol indicates concatenation of GPS and text embeddings during model training.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method. (a) After downloading geotagged photos, we train a GPS-to-image generation model conditioned on GPS tags and text prompts. The trained generative model can produce images using both conditioning signals in a compositional manner. (b) We can also extract 3D models from a landmark-specific GPS-to-image model using score distillation sampling. This diffusion model parameterizes the GPS location by the azimuth with respect to a given landmark’s center. + means we concatenate GPS embeddings and text embeddings.
> </details>



![](https://arxiv.org/html/2501.12390/x7.png)

> 🔼 Figure 3 compares three different approaches for generating 3D models from 2D images.  Panel (a) illustrates the traditional Structure from Motion (SfM) pipeline, which involves estimating camera poses and then generating a dense 3D model.  This approach is prone to errors when camera poses are inaccurately estimated. Panel (b) shows DreamFusion's method, which uses text prompts to control viewpoint, but this method has limitations in precisely specifying camera positions. In contrast, Panel (c) presents the proposed method, which incorporates GPS information into DreamFusion to constrain the camera views, leading to more accurate and robust 3D reconstructions.
> <details>
> <summary>read the caption</summary>
> Figure 3: 3D Setup Comparison. We extract 3D models from 2D GPS-to-image models. (a) Traditional approaches require running SfM to estimate camera pose, followed by dense geometry estimation. Since they are based on triangulation, they are susceptible to catastrophic errors due to incorrect pose; (b) DreamFusion [64] samples images from different poses within a scene using view-dependent prompting. However, text has a limited ability to precisely control the position of the camera. (c) Our method extends DreamFusion with GPS conditioning, reducing pose uncertainty.
> </details>



![](https://arxiv.org/html/2501.12390/x9.png)

> 🔼 Figure 4 presents qualitative results from the GPS-to-image diffusion model.  It showcases images generated using various text prompts and their corresponding GPS locations within Paris. The goal is to demonstrate the model's ability to generate images that reflect both the specified text and the geographic location, capturing the visual characteristics of different Parisian neighborhoods and landmarks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results for Paris. We show images that have been sampled from our GPS-to-image diffusion model for various locations and prompts within Paris.
> </details>



![](https://arxiv.org/html/2501.12390/x11.png)

> 🔼 Figure 5 compares the image generation capabilities of four different methods: the proposed GPS-to-image diffusion model, a text-address-to-image diffusion model, a nearest neighbor approach, and Google Street View.  Each column presents a specific text prompt and GPS coordinates. The text-address method combines the text prompt with the address obtained from the GPS coordinates. The nearest neighbor method selects the most similar image from the training data based on GPS. The proposed model uses both the text prompt and the raw GPS coordinates. Google Street View provides a ground truth reference image for the same location.  The comparison demonstrates the superior compositional ability and visual quality of the proposed GPS-to-image diffusion model.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative comparison for GPS-to-image diffusion. We compare the qualitative results of our method against baselines using specific pairs of text prompts and GPS tags. Each column shows a text prompt and a GPS tag at the top. Text-address-to-image diffusion model is conditioned on a combination of the text prompt and the address name derived from the GPS tag. We also perform nearest neighbor in the training set based on GPS tags. Our GPS-to-image diffusion model uses a text prompt and raw GPS tag as conditioning. Google Street View images are sampled for reference of geolocation. Our method achieves better compositionality and visual quality.
> </details>



![](https://arxiv.org/html/2501.12390/x12.png)

> 🔼 This figure displays average images generated using GPS-to-image models.  Five areas were selected in each of Paris and New York City.  For each area, the model generated images of buildings, showcasing the architectural styles characteristic of those particular regions. The goal was to demonstrate the model's ability to capture location-specific variations in building styles across different neighborhoods.
> <details>
> <summary>read the caption</summary>
> Figure 6: Average images. We select five areas for Paris and New York City respectively. Using our GPS-to-image models, we obtain representative images of the concept of “building” within these geographic regions to observe architectural styles. More examples can be found on project webpage for different locations and concepts.
> </details>



![](https://arxiv.org/html/2501.12390/x13.png)

> 🔼 Figure 7 compares the 3D reconstruction results of two methods: DreamFusion and the proposed GPS-guided approach.  The comparison focuses on two landmarks: the Leaning Tower of Pisa and the Arc de Triomphe.  The visualization includes RGB images and surface normal maps for both methods, highlighting differences in visual quality and 3D structural accuracy. The background is rendered white using depth information for better visualization.  Appendix A.2.2 and the project website offer additional examples.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative comparison for 3D monument reconstruction. We show qualitative results of DreamFusion [64] and our method on two monuments: 1) Leaning Tower of Pisa; 2) Arc de Triomphe. Our reconstructed 3D monuments have better visual quality and more accurate 3D structure. We use rendered depth to make the background of RGB rendering white. Please see Appendix A.2.2 and project webpage for more examples.
> </details>



![](https://arxiv.org/html/2501.12390/x14.png)

> 🔼 This ablation study investigates the impact of various components within the proposed GPS-to-image generation and 3D landmark reconstruction model.  It specifically examines the contributions of different modules to the overall performance by systematically removing or altering them and measuring the resulting changes in key metrics.  This allows for a quantitative assessment of the importance of each component to image quality and 3D reconstruction accuracy, aiding in understanding the model's architecture and identifying potential areas for improvement.
> <details>
> <summary>read the caption</summary>
> Figure 8: Ablation. We conducted ablation studies to analyze the effectiveness of different modules in our method for GPS-to-image generation and 3D landmark reconstruction.
> </details>



![](https://arxiv.org/html/2501.12390/x15.png)

> 🔼 Figure 9 visualizes attention maps generated by the model, highlighting which parts of the input (text and GPS coordinates) influence the generation of different image regions.  For example, the attention map for the text prompt 'A tourist' shows the model focusing on the tourist's features, while the GPS coordinates' attention map highlights the surrounding environment such as buildings in the scene, showcasing the model's ability to effectively integrate both text and location information in image generation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Attention visualization. We visualize attention maps for text and GPS tokens.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.2.1">
<span class="ltx_p" id="S4.T2.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1.1.1" style="font-size:90%;">Method</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;">Angle acc (</span><math alttext="\%" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="90%" xref="S4.T2.1.1.1.m1.1.1.cmml">%</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">percent</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\%</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">%</annotation></semantics></math><span class="ltx_text" id="S4.T2.1.1.1.2" style="font-size:90%;">)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.2.1.1.1">
<span class="ltx_p" id="S4.T2.1.2.1.1.1.1"><span class="ltx_text" id="S4.T2.1.2.1.1.1.1.1" style="font-size:90%;">Random chance</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.2.1.2"><span class="ltx_text" id="S4.T2.1.2.1.2.1" style="font-size:90%;">2.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row" id="S4.T2.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.3.2.1.1">
<span class="ltx_p" id="S4.T2.1.3.2.1.1.1"><span class="ltx_text" id="S4.T2.1.3.2.1.1.1.1" style="font-size:90%;">Stable Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.1.3.2.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12390v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="S4.T2.1.3.2.1.1.1.3.2" style="font-size:90%;">]</span></cite></span>
</span>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.2.2"><span class="ltx_text" id="S4.T2.1.3.2.2.1" style="font-size:90%;">3.06</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_justify ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.4.3.1.1">
<span class="ltx_p" id="S4.T2.1.4.3.1.1.1"><span class="ltx_text" id="S4.T2.1.4.3.1.1.1.1" style="font-size:90%;">Ours</span></span>
</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.4.3.2.1" style="font-size:90%;">22.36</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the angle-to-image diffusion model's ability to generate images with accurate azimuth angles.  The accuracy is determined by comparing the generated images to a separate image-to-azimuth model that predicts the azimuth (angle) from an image. The table shows the accuracy of the angle prediction for three methods: random chance, Stable Diffusion, and the proposed method (Ours).  The results demonstrate the effectiveness of the proposed GPS-guided method in accurately generating images from specific angles compared to the baseline models.
> <details>
> <summary>read the caption</summary>
> Table 2: Evaluation of angle-to-image diffusion.  We evaluate the accuracy of our model in generating images with the correct azimuth, as determined by an image-to-azimuth model.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:90%;">CS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.1.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12390v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="S4.T3.1.1.1.3.2" style="font-size:90%;">]</span></cite><span class="ltx_text" id="S4.T3.1.1.1.4" style="font-size:90%;"> (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T3.1.1.1.5" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:90%;">PQ (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T3.2.2.2.2" style="font-size:90%;">)</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:90%;">TS (</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S4.T3.3.3.3.2" style="font-size:90%;">)</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.3.4.1.1">
<span class="ltx_text" id="S4.T3.3.4.1.1.1" style="font-size:90%;">NeRF </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.3.4.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12390v1#bib.bib84" title=""><span class="ltx_text" style="font-size:90%;">84</span></a><span class="ltx_text" id="S4.T3.3.4.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.4.1.2"><span class="ltx_text" id="S4.T3.3.4.1.2.1" style="font-size:90%;">20.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.4.1.3"><span class="ltx_text" id="S4.T3.3.4.1.3.1" style="font-size:90%;">1.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.4.1.4"><span class="ltx_text" id="S4.T3.3.4.1.4.1" style="font-size:90%;">1.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.3.5.2.1">
<span class="ltx_text" id="S4.T3.3.5.2.1.1" style="font-size:90%;">Dreamfusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T3.3.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2501.12390v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="S4.T3.3.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.2"><span class="ltx_text" id="S4.T3.3.5.2.2.1" style="font-size:90%;">29.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.3"><span class="ltx_text" id="S4.T3.3.5.2.3.1" style="font-size:90%;">2.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.5.2.4"><span class="ltx_text" id="S4.T3.3.5.2.4.1" style="font-size:90%;">2.09</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.3.6.3.1"><span class="ltx_text" id="S4.T3.3.6.3.1.1" style="font-size:90%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.3.6.3.2.1" style="font-size:90%;">31.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.3.6.3.3.1" style="font-size:90%;">3.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.6.3.4.1" style="font-size:90%;">3.45</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of three different methods for 3D landmark reconstruction: NeRF [84], DreamFusion [64], and the authors' proposed method.  The comparison is based on three metrics: CLIP Score (CS) [65], which measures the alignment between generated images and text prompts; Perceptual Quality (PQ), which is a subjective assessment of the 3D model's visual appeal conducted via a user study; and Tourist Score (TS), which evaluates how well the generated landmarks resemble real-world tourist photos, again using a user study.  The results show that the authors' method outperforms the baselines in all three metrics, indicating higher quality and realism in its 3D reconstructions.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparison for 3D. We report results: CLIP Score (CS) [65], Perceptual Quality (PC), and Tourist Score (TS). It shows that our method achieves the highest quality.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.12390/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12390/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}