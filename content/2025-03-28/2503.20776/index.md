---
title: "Feature4X: Bridging Any Monocular Video to 4D Agentic AI with Versatile Gaussian Feature Fields"
summary: "Feature4X: 4D Agentic AI from Monocular Video w/ Gaussian Feature Fields"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 UCLA",]
showSummary: true
date: 2025-03-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.20776 {{< /keyword >}}
{{< keyword icon="writer" >}} Shijie Zhou et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.20776" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.20776" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.20776/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Recent advancements in 2D and multimodal models have shown success by leveraging large-scale training datasets, but extending these achievements to enable free-form interactions with complex 3D/4D scenes is still challenging due to limited annotated 3D/4D datasets. To address this, the paper introduces **Feature4X**, a framework to extend any functionality from a 2D vision model into the 4D realm, using only monocular video input and adaptable, model-conditioned 4D feature field distillation.The core of the framework involves a dynamic optimization strategy that unifies multiple model capabilities into a single representation. 



**Feature4X** enhances dynamic 3D Gaussian Splatting with a unified latent feature capable of distilling diverse 2D foundation features for flexibility and efficiency, representing the dense 4D feature field using a sparse set of base features. The method is fully differentiable and uses ground truth color, feature maps from 2D vision models, and an LLM-powered agentic AI to interpret natural language prompts and dynamically adjust parameters for intelligent 4D scene interaction.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Feature4X enables 4D scene understanding from monocular video by distilling 2D foundation model features. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Introduces a compact and versatile 4D Gaussian feature field using a sparse set of base features. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The framework integrates with LLMs for intelligent 4D scene interaction and manipulation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**Feature4X** enables versatile 4D scene understanding from monocular video, bridging the gap between 2D foundation models and agentic AI, offering new possibilities for interactive dynamic scene analysis and manipulation, paving the way for immersive 4D interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2503.20776/x2.png)

> 🔼 Figure 1 showcases Feature4X, a framework that generates interactive 4D scenes from monocular videos.  It combines model-distilled features, 2D foundation models, and LLMs to enable various tasks such as segmentation, scene editing, and visual question answering (VQA) across different dimensions (2D, 3D, 4D), viewpoints, and timesteps.  The user can interact using either high-level language commands or direct manipulations.
> <details>
> <summary>read the caption</summary>
> Figure 1: Feature4X: Building 4D Interactive Scenes with Agentic AI from Monocular Videos. By dynamically distilling model-conditioned features and integrating 2D foundation models with LLMs in feedback loops, Feature4X enables multimodal tasks across 2D, 3D, and 4D with high-level language inputs or direct user interactions, including (but not limited to) segmentation, scene editing, and VQA across novel views and all time steps, unlocking new possibilities for 4D agentic AI.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.4.4.4.4.5">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2.2.2">mIoU<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3.3.3">accuracy<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.4.4.4.4.4">Size (MB)<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.4.m1.1a"><mo id="S4.T1.4.4.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.4.m1.1b"><ci id="S4.T1.4.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.4.5.1.1">MoSca</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.2">25.166</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.3">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4.5.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.5.1.5.1">67.726</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.4.4.6.2.1">MoSca + Feature 3DGS</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.6.2.2">25.191</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.6.2.3">0.506</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.6.2.4"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.6.2.4.1">0.881</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.6.2.5">593.907</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.4.4.4.7.3.1">Ours (single CLIP head)</th>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.2">25.186</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.3.3.1">0.510</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.4">0.880</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.7.3.5">95.294</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.4.4.4.8.4.1">Ours (full model)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.8.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.8.4.2.1">25.197</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.8.4.3">0.503</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.8.4.4">0.876</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.4.4.8.4.5">95.457</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of semantic segmentation performance on the Nvidia dataset [47] among different methods.  The metrics compared include Peak Signal-to-Noise Ratio (PSNR) for radiance reconstruction quality, mean Intersection over Union (mIoU) and accuracy for segmentation performance, and model size (in MB) to assess memory efficiency. The results show that the proposed method achieves comparable reconstruction and segmentation quality to existing methods while significantly reducing the memory footprint.
> <details>
> <summary>read the caption</summary>
> Table 1: Semantic segmentation on the Nvidia dataset [47]. Our method achieves comparable radiance reconstruction (PSNR) and segmentation performance, while significantly reducing memory usage compared to the baselines.
> </details>





### In-depth insights


#### 4D from 2D
The pursuit of reconstructing and understanding 4D scenes from 2D data, particularly monocular video, is a significant challenge. **It bridges the gap between readily available 2D sources and the richer, more informative 4D world crucial for advanced AI applications.** Monocular video presents inherent ambiguities due to the loss of depth information during projection. Overcoming these limitations demands clever techniques that incorporate priors, leverage foundation models, and introduce constraints. A key challenge is lifting 2D features into a consistent 4D representation that captures both spatial and temporal dynamics. Furthermore, efficient representation is needed, as naive extensions to 4D quickly become computationally intractable. The success in '4D from 2D' opens avenues for interactive and context-aware AI capable of reasoning about dynamic environments.

#### Gaussians 4 Agent
While the term 'Gaussians 4 Agent' is speculative, it evokes intriguing possibilities. In agentic AI, **Gaussian distributions** could serve as powerful tools for **representing uncertainty** in perception and action. An agent operating in a complex environment faces inherent ambiguity. By modeling sensory inputs and internal states as Gaussians, the agent can quantify its confidence, enabling more robust decision-making. Moreover, Gaussians can facilitate **probabilistic reasoning**, allowing the agent to estimate the likelihood of different outcomes and choose actions that maximize expected reward. Furthermore, **Gaussian Mixture Models** could represent multimodal beliefs, capturing diverse possibilities. The agent could also use Gaussians to model the distribution of successful actions, **learning optimal control policies** through reinforcement learning. The mean of the Gaussian would represent the best action, while the variance would indicate the exploration-exploitation trade-off. The agent can also **learn and adapt** more efficiently.

#### LLM 4 Feedback
While "LLM 4 Feedback" isn't explicit, the paper heavily implies LLMs as central. **LLMs enhance 4D scene understanding by interpreting language prompts, optimizing parameters, and refining results iteratively.** This creates a perception-reasoning-action loop crucial for tasks like scene editing.  LLMs connect visual data (Gaussian features) to natural language, enabling intuitive interactions and complex scene manipulation. The paper lifts InternVideo 2's video chatbot from 2D to 4D, showing **LLMs allow free-form interaction in dynamic scenes, with a contextually aware 4D system.** This feedback loop enables agents to understand user intent, execute changes, and refine them, making dynamic 4D editing adaptable and powerful. **The reliance on foundation models indicates a broader trend toward AI-driven perception and reasoning in complex visual environments.**

#### Versatile Field
A Versatile Field, in the context of AI, suggests a dynamic and adaptable area of study. It implies the ability to handle diverse tasks and data types. **Adaptability** is key. Such a field would need to accommodate new algorithms, datasets, and modalities seamlessly. **Cross-disciplinary integration** is vital, merging insights from computer vision, NLP, and other AI domains.  **Real-world applicability** is also a must, solving practical problems in areas like robotics, healthcare, and finance.  This versatility demands a flexible architecture and a focus on lifelong learning.

#### Scalable Fields
Scalable fields in research signify a crucial advancement, enabling the handling of large datasets and complex models. Their design focuses on **efficient computation and memory usage**, often employing techniques like sparse representations or hierarchical structures. A key aspect is maintaining **accuracy and relevance** as the scale increases, necessitating adaptive algorithms and robust error handling. Scalable fields facilitate a broader range of applications, including real-time simulations and large-scale data analysis, leading to **more comprehensive insights** and innovative solutions. Their development demands a blend of theoretical understanding and practical engineering to address the challenges of complexity and resource constraints, ultimately driving the **next wave of scientific discoveries and technological advancements**. They are usually built on algorithms by decreasing computations and still retaining the significant information.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.20776/x3.png)

> 🔼 Figure 2 illustrates the Feature4X framework's architecture for processing monocular video input into a 4D representation suitable for various AI tasks.  2D priors are used to delineate static and dynamic elements. Static elements are represented by static 3D Gaussians combined with latent features, while dynamic elements are modeled using dynamic 3D Gaussians guided by Motion Scaffolds (a graph structure encoding motion trajectories and latent features).  These Gaussians are then combined and processed through a parallel rasterization technique generating RGB images and a unified latent feature map. This map is subsequently decoded into task-specific features, as exemplified using SAM2, CLIP-LSeg, and InternVideo2 for 2D, 3D, and 4D tasks respectively. The framework's adaptability to various 2D vision models and end-to-end training approach are also highlighted, demonstrating its ability to seamlessly support user prompts and LLM interactions for creating a unified 4D agentic AI system.
> <details>
> <summary>read the caption</summary>
> Figure 2: Method overview. Given an input monocular video, we infer 2D priors to segment static background (represented by static 3D Gaussians augmented with latent features) and dynamic foreground (represented by dynamic 3D Gaussians guided by Motion Scaffolds [35], a set of nodes {𝐯i}subscript𝐯𝑖\{\mathbf{v}_{i}\}{ bold_v start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT } encoding 3D motion trajectories and latent features hisubscriptℎ𝑖h_{i}italic_h start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT). Dynamic Gaussian features and motions are computed via interpolation from their K𝐾Kitalic_K-nearest scaffold nodes. At each timestep, dynamic Gaussians are warped and fused with static Gaussians. A parallel rasterization [102] generates RGB images and a unified latent feature map, decoded into task-specific features—illustrated here by SAM2 [68], CLIP-LSeg [36], and InternVideo2 [84] for representative 2D (novel view segmentation), 3D (scene editing), and 4D (spatiotemporal VQA) tasks. Our framework generalizes to any 2D vision foundation model and is trained end-to-end using input RGB frames and customized features from pretrained 2D models. At inference, rendered feature maps from arbitrary views and timesteps are directly fed into task-specific decoders, seamlessly supporting user prompts and LLM interactions to form a unified 4D agentic AI system.
> </details>



![](https://arxiv.org/html/2503.20776/x4.png)

> 🔼 Figure 3 demonstrates the capabilities of Feature4X in performing semantic segmentation on dynamic 4D scenes using the Segment Anything Model (SAM2).  It showcases two modes: (a) Promptless segmentation, where the system automatically segments all objects in the first frame (t=0) and propagates these masks consistently across subsequent frames, handling both static and dynamic content. (b) Promptable segmentation, which allows users to interactively segment any object (static or dynamic) at any point in time simply by providing a point or box prompt. The system then accurately tracks and propagates this mask through the rest of the video. This highlights the versatility and robustness of Feature4X in handling complex 4D scenes.
> <details>
> <summary>read the caption</summary>
> Figure 3: Segment Anything in Dynamic 4D Scenes with SAM2 Feature Field. For any rendered novel view video, we support: (a) Promptless segmentation (segment everything): when no user prompt is provided, segmentation masks are automatically assigned at the first frame (t=0𝑡0t=0italic_t = 0) and then propagated across all frames. (b) Promptable segmentation (segment anything): the user can segment any object—static or dynamic—at any timestep using a point or box prompt, and the corresponding mask is robustly tracked and propagated through subsequent frames.
> </details>



![](https://arxiv.org/html/2503.20776/x5.png)

> 🔼 Figure 4 presents a comparison of two methods for SAM2 inference: a naive RGB-based approach and a novel feature-based approach.  The RGB-based approach processes the raw RGB video frames directly through the SAM2 model, while the feature-based approach utilizes a learned compact 4D feature field representation to achieve segmentation.  The results demonstrate that the feature-based method achieves comparable segmentation accuracy, accurately tracking the object across frames. Importantly, it avoids the RGB artifacts observed in the naive RGB-based approach, specifically around time step 70. The feature-based method also offers a significant speed-up in inference time, achieving approximately four times faster processing than the RGB-based approach.
> <details>
> <summary>read the caption</summary>
> Figure 4: Baseline Comparison on SAM2 Inference. We compare segmentation quality and inference speed between (a) the naive RGB-based approach and (b) our feature-based method. Ours achieves comparable segmentation, accurately tracking the object over time, and avoids RGB artifacts (red box region at t=70𝑡70t=70italic_t = 70), while reducing inference time to about 4×\times× speed-up.
> </details>



![](https://arxiv.org/html/2503.20776/x6.png)

> 🔼 Figure 5 demonstrates the capability of Feature4X to perform semantic 4D scene understanding.  By incorporating CLIP-LSeg features into a 4D feature field, the model achieves pixel-level semantic segmentation from any viewpoint at any point in time.  This addresses a key challenge in 3D/4D vision: maintaining consistent semantic understanding even as object appearance changes dynamically throughout the video. The example of a blooming flower, accurately identified from bud to full bloom across multiple views, showcases this robust 4D scene understanding capability.
> <details>
> <summary>read the caption</summary>
> Figure 5: Semantic 4D Scene Understanding with CLIP Feature Field. By lifting CLIP-LSeg [36] features into a 4D feature field, we enable pixel-level semantic segmentation from any view at any timestep. This allows robust 4D scene understanding, even as object appearances change over time—for example, accurately identifying a blooming flower from bud to full bloom across views.
> </details>



![](https://arxiv.org/html/2503.20776/x7.png)

> 🔼 This figure showcases the capabilities of the LLM-powered AI agent in editing 4D scenes.  The agent takes high-level natural language instructions (e.g., 'Extract the swan', 'Delete the moving camel', 'Change the cow color to black and white') and uses the 4D CLIP feature field to perform the edits.  The edits can involve geometric changes (like extracting or deleting objects) or changes in appearance (like altering an object's color).  While the results might not be perfect due to limitations in aligning fine-grained features or finding optimal editing parameters, the AI agent iteratively refines these parameters and ensures consistent application of edits across different viewpoints and time steps. This significantly simplifies the editing process and enables robust, interactive 4D scene manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scene Editing with AI Agent. Given user prompts, our GPT-powered agent interprets editing intent and autonomously performs scene edits via our 4D CLIP feature field. Examples include both geometric (e.g., “extract” and “delete”) and appearance (e.g., “change color”) editing in 3D space. While results may not be perfect due to imperfect fine-grained feature alignment and non-optimal editing parameter tuning, the agent adaptively refines parameters and applies edits consistently across views and time—greatly reducing the need for manual tuning—and demonstrates robust, interactive 4D scene manipulation.
> </details>



![](https://arxiv.org/html/2503.20776/x8.png)

> 🔼 Figure 7 illustrates the model's ability to answer visual questions (VQA) using a chatbot interface.  The left side shows the diverse question types supported: general, spatial, and temporal questions. The core of this capability comes from leveraging InternVideo2's features. The right panel highlights the model's 4D reconstruction, producing both a 4D radiance field and a 4D feature field. This provides access to richer inference sources than just the original input video. These include novel views (both local, from a moving camera, and global, zoomed-out) and their corresponding feature maps. This approach is crucial for robust spatiotemporal reasoning in VQA.
> <details>
> <summary>read the caption</summary>
> Figure 7: VQA with Chatbot Agent. (Left) Our model supports free-form VQA across diverse question types—general, spatial, and temporal—by distilling InternVideo2 [84] features. (Right) At each timestep, we reconstruct both a 4D radiance field and a 4D feature field, providing more inference sources beyond the input video frame—including local (moving camera) and global (zoomed-out) novel views and their corresponding feature maps—thereby supporting VQA in 4D and enhancing the model’s spatiotemporal reasoning capabilities.
> </details>



![](https://arxiv.org/html/2503.20776/x9.png)

> 🔼 This figure visualizes the versatile Gaussian feature field developed in the Feature4X framework.  It uses Principal Component Analysis (PCA) to reduce the dimensionality of the feature fields for better visualization.  The visualization includes the unified latent feature field and its decoded versions for three different 2D foundation models: Segment Anything (SAM2), CLIP-LSeg, and InternVideo.  Each model's decoded feature field provides a different perspective on the underlying 4D scene representation, highlighting the versatility of the Feature4X framework in adapting to various downstream tasks.
> <details>
> <summary>read the caption</summary>
> Figure A: Feature Field Visualizations. We visualize our versatile Gaussian feature field along with its decoded SAM2, CLIP, and InternVideo feature fields using PCA.
> </details>



![](https://arxiv.org/html/2503.20776/x10.png)

> 🔼 This figure illustrates the 4D scene editing framework.  It begins with a user providing a high-level prompt (e.g., 'Make the dog's color look like Clifford').  This prompt is processed by GPT-40, a large language model, to generate different editing configurations. These configurations include details like which objects to edit, what operations to perform, the specific targets for the edits, and threshold settings. The model then uses a hybrid filtering method to identify the relevant Gaussians (points in a 3D Gaussian splatting representation) within the 4D scene that correspond to the targeted objects. The system then applies the selected edit operation and renders the result. Finally, the GPT-40 model evaluates the rendered image quality and selects the best configuration, ensuring consistency and high quality results across the 4D scene.
> <details>
> <summary>read the caption</summary>
> Figure B: Overview of the editing framework. GPT-4o generates different editing configurations based on user prompts, selects target regions via hybrid filtering, evaluates their outputs, and selects the best configuration.
> </details>



![](https://arxiv.org/html/2503.20776/x11.png)

> 🔼 This figure compares the semantic segmentation results obtained using CLIP features.  Two methods are compared: one using ground-truth RGB images and the other using the proposed method's feature maps. The comparison is done for both training and novel (unseen) views to show how well the proposed method generalizes to new viewpoints.  The results visually demonstrate the effectiveness of the proposed method for accurate and consistent semantic segmentation across different views, even without directly using the full RGB image information.
> <details>
> <summary>read the caption</summary>
> Figure C: CLIP semantic segmentation quality comparison. We compare the CLIP semantic segmentation quality between ground-truth (inference from RGB) and our implementation (inference from feature map) for both training and novel views.
> </details>



![](https://arxiv.org/html/2503.20776/x12.png)

> 🔼 This figure compares the segmentation quality achieved using the Segment Anything Model 2 (SAM2) with different dimensions for the unified latent feature maps. The results show that a 32-dimensional unified latent feature map produces the best performing SAM2 segmentation, accurately tracking the object over time and avoiding artifacts present in the results from other dimensions.
> <details>
> <summary>read the caption</summary>
> Figure D: SAM2 segmentation quality comparison for different dimensions of unified latent feature maps Best performing SAM2 segmentation is derived from the 32-dimensional unified latent feature map.
> </details>



![](https://arxiv.org/html/2503.20776/x13.png)

> 🔼 This figure shows the training time taken for different dimensions of the unified latent feature map.  It demonstrates the trade-off between model complexity and training efficiency.  As the dimension of the latent feature increases, so does the training time.  This is because higher dimensions increase the number of parameters the model needs to learn, leading to longer training times.
> <details>
> <summary>read the caption</summary>
> Figure E: Training Time vs Unified Latent Feature Dimensions We show the training time required with different dimensions of unified latent feature map.
> </details>



![](https://arxiv.org/html/2503.20776/x14.png)

> 🔼 This figure demonstrates the relationship between the dimensionality of the unified latent feature map and the time needed for rendering.  As the dimensionality increases, the rendering time also increases, highlighting a trade-off between feature representation complexity and computational efficiency.  The plot likely shows an exponential or near-exponential increase in rendering time as the dimension increases, indicating that higher-dimensional features significantly increase computational demands during the rendering process.
> <details>
> <summary>read the caption</summary>
> Figure F: Rendering Time vs Unified Latent Feature Dimensions We show the rendering time required for different dimensions of unified latent feature map.
> </details>



![](https://arxiv.org/html/2503.20776/x15.png)

> 🔼 This figure shows a graph illustrating the relationship between the training time and the dimensionality of rendered CLIP features.  Higher dimensional rendered CLIP features lead to longer training times. This demonstrates a trade-off between model complexity and training efficiency.
> <details>
> <summary>read the caption</summary>
> Figure G: Training Time vs CLIP Feature Dimensions We show the training time required with different dimensions of rendered CLIP features.
> </details>



![](https://arxiv.org/html/2503.20776/x16.png)

> 🔼 Figure H illustrates the relationship between the rendering time and the dimensions of rendered CLIP features.  The x-axis represents the different dimensions of the rendered CLIP features used in the experiment, while the y-axis shows the corresponding rendering time.  The graph likely demonstrates that increasing the dimensions of the CLIP features significantly increases the rendering time required.  This suggests a trade-off between feature richness and computational efficiency.
> <details>
> <summary>read the caption</summary>
> Figure H: Rendering Time vs CLIP Feature Dimensions We show the rendering time required for different dimensions of rendered CLIP features.
> </details>



![](https://arxiv.org/html/2503.20776/x17.png)

> 🔼 This figure presents the results of an ablation study that examines how different dimensions of rendered CLIP features affect the mean Intersection over Union (mIoU) score in semantic segmentation.  The x-axis represents the dimension of the rendered CLIP features, while the y-axis shows the corresponding mIoU score.  The graph helps to determine the optimal dimensionality for achieving a balance between performance and computational efficiency.
> <details>
> <summary>read the caption</summary>
> Figure I: mIoU vs CLIP Feature Dimensions We show mIoU with respect to different rendered CLIP feature dimensions.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.5.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.5.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T2.5.5.5.6.1.1" style="padding-top:-1pt;padding-bottom:-1pt;">Inference Source</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5.6.1.2" style="padding-top:-1pt;padding-bottom:-1pt;">General</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5.6.1.3" style="padding-top:-1pt;padding-bottom:-1pt;">Spatial</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.5.5.5.6.1.4" style="padding-top:-1pt;padding-bottom:-1pt;">Temporal</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.5.5.5.6.1.5" style="padding-top:-1pt;padding-bottom:-1pt;">Time (s)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T2.2.2.2.2.3" style="padding-top:-1pt;padding-bottom:-1pt;">Input Video View</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2.4" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.1.1" style="padding-top:-1pt;padding-bottom:-1pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.m1.1b"><times id="S4.T2.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.2.2.2" style="padding-top:-1pt;padding-bottom:-1pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.2.2.m1.1.1" xref="S4.T2.2.2.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.2.m1.1b"><times id="S4.T2.2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2.2.5" style="padding-top:-1pt;padding-bottom:-1pt;">33.65</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.3.3.3.3.2" style="padding-top:-1pt;padding-bottom:-1pt;">Local Novel View</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3.3" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3.4" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.3.3.1" style="padding-top:-1pt;padding-bottom:-1pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.3.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.3.1.m1.1.1" xref="S4.T2.3.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.1.m1.1b"><times id="S4.T2.3.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3.5" style="padding-top:-1pt;padding-bottom:-1pt;">33.86</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.4.4.4.4.2" style="padding-top:-1pt;padding-bottom:-1pt;">Local Novel Feature</th>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4.3" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4.1" style="padding-top:-1pt;padding-bottom:-1pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.4.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.4.1.m1.1.1" xref="S4.T2.4.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.1.m1.1b"><times id="S4.T2.4.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.4.4.4" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4.5" style="padding-top:-1pt;padding-bottom:-1pt;">11.99</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T2.5.5.5.5.2" style="padding-top:-1pt;padding-bottom:-1pt;">Global Novel View</th>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5.3" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5.1" style="padding-top:-1pt;padding-bottom:-1pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S4.T2.5.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.5.1.m1.1a"><mo id="S4.T2.5.5.5.5.1.m1.1.1" xref="S4.T2.5.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.1.m1.1b"><times id="S4.T2.5.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.5.4" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5.5" style="padding-top:-1pt;padding-bottom:-1pt;">33.37</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T2.5.5.5.7.1.1" style="padding-top:-1pt;padding-bottom:-1pt;">Global Novel Feature</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.1.2" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.1.3" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.5.5.5.7.1.4" style="padding-top:-1pt;padding-bottom:-1pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.5.5.7.1.5" style="padding-top:-1pt;padding-bottom:-1pt;">12.24</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of Visual Question Answering (VQA) using different inference sources on the scene depicted in Figure 7.  The inference sources are categorized into view-based (input video view, local novel view, global novel view) and feature-based (local novel view feature, global novel view feature). The table shows the accuracy of answering general, spatial, and temporal questions using each inference source.  It highlights that feature-based inference achieves higher accuracy and requires less time for all question types compared to view-based methods, indicating that feature-based inference is better suited for spatiotemporal reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: VQA performance across different inference sources with the scene shown in Fig. 7. Feature-based inference supports all question types with lower latency, while view-based methods are limited in spatial and temporal reasoning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.4.1.1.1.1">Inference Source</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.1.1.1.2">Spatial Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.1.1.1.3">Temporal Acc.</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.1.1.1.4">Overall Acc.</th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.4.1.1.1.5">Time (s)</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.4.1.2.1.1">Input Video View</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.1.2.1.2">48.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.1.2.1.3">49.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.1.2.1.4">49.06</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T3.4.1.2.1.5">10.02</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.1.3.2.1">Local Novel View</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.3.2.2">49.75</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.3.2.3">51.13</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.3.2.4">50.31</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.1.3.2.5">9.78</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.1.4.3.1">Local Novel Feature</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.4.3.2">54.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.4.3.3">54.37</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.4.3.4">56.29</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.1.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.4.3.5.1">2.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.1.5.4.1">Global Novel View</th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.5.4.2">47.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.5.4.3">49.19</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.1.5.4.4">47.48</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.1.5.4.5">10.06</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.4.1.6.5.1">Global Novel Feature</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.6.5.2.1">58.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.6.5.3.1">58.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.6.5.4.1">61.32</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T3.4.1.6.5.5">3.42</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of spatiotemporal Visual Question Answering (VQA) performance on the DAVIS dataset.  It compares the accuracy and inference time of different methods for answering various types of questions (general, spatial, and temporal) about a video scene. The methods include using only the input video, local novel views, features from local novel views, global novel views, and features from global novel views.  The key finding is that using our 4D feature space (Global Novel Feature) significantly improves the Video-LLM's ability to reason about both space and time in the video, while also achieving a threefold speedup in inference compared to 2D video inference.
> <details>
> <summary>read the caption</summary>
> Table 3: Spatiotemporal VQA on DAVIS dataset [61]. Compared to 2D video inference, our 4D feature space inference (Global Novel Feature) enhances the Video-LLM’s spatiotemporal reasoning while achieving approximately 3×\times× faster inference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1a.2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1a.2.2.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1a.2.2.2.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.2.2.2.2.3.1" style="font-size:144%;">NVIDIA</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.2.2.2.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.2.4.1" style="font-size:144%;">Exp1</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.2.2.2.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.2.5.1" style="font-size:144%;">Exp2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.2.2.2.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.2.6.1" style="font-size:144%;">Exp3</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.1.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1a.1.1.1.1.1.1" style="font-size:144%;">Mean</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1a.1.1.1.1.1.m1.1"><semantics id="S4.T1a.1.1.1.1.1.m1.1a"><mo id="S4.T1a.1.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.1.1.1.1.1.m1.1b"><ci id="S4.T1a.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1a.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.2.2.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1a.2.2.2.2.2.1" style="font-size:144%;">Time (s)</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1a.2.2.2.2.2.m1.1"><semantics id="S4.T1a.2.2.2.2.2.m1.1a"><mo id="S4.T1a.2.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.2.2.2.2.2.m1.1b"><ci id="S4.T1a.2.2.2.2.2.m1.1.1.cmml" xref="S4.T1a.2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.2.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1a.2.2.2.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1a.2.2.2.3.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.3.1.1.1" style="font-size:144%;">RGB</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.2.2.2.3.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.3.1.2.1" style="font-size:144%;">0.656</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.2.2.2.3.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.3.1.3.1" style="font-size:144%;">0.246</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.2.2.2.3.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.3.1.4.1" style="font-size:144%;">0.467</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.2.2.2.3.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.3.1.5.1" style="font-size:144%;">0.456</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.2.2.2.3.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.3.1.6.1" style="font-size:144%;">1.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.2.2.2.4.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1a.2.2.2.4.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.2.2.2.4.2.1.1" style="font-size:144%;">Feature</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.2.2.2.4.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.2.2.2.4.2.2.1" style="font-size:144%;">0.761</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.2.2.2.4.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.2.2.2.4.2.3.1" style="font-size:144%;">0.728</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.2.2.2.4.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.2.2.2.4.2.4.1" style="font-size:144%;">0.727</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.2.2.2.4.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.2.2.2.4.2.5.1" style="font-size:144%;">0.739</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.2.2.2.4.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.2.2.2.4.2.6.1" style="font-size:144%;">1.01</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the mean Intersection over Union (mIoU) scores achieved by the Segment Anything Model 2 (SAM2) on the NVIDIA and Nerfies datasets.  It compares the performance of two approaches: a baseline method using RGB images directly and the proposed Feature4X method which uses distilled features.  The results are presented for three separate experiments (Exp1, Exp2, Exp3) to showcase the robustness and stability of the Feature4X method. Inference time is also reported for each approach.
> <details>
> <summary>read the caption</summary>
> Table A: SAM2 Quantitative Results (mIoU) on NVIDIA and Nerfies Datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1a.4.4.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1a.4.4.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1a.4.4.2.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.2.2.3.1" style="font-size:144%;">Nerfies</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.4.4.2.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.2.4.1" style="font-size:144%;">Exp1</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.4.4.2.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.2.5.1" style="font-size:144%;">Exp2</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.4.4.2.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.2.6.1" style="font-size:144%;">Exp3</span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.3.3.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1a.3.3.1.1.1.1" style="font-size:144%;">Mean</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1a.3.3.1.1.1.m1.1"><semantics id="S4.T1a.3.3.1.1.1.m1.1a"><mo id="S4.T1a.3.3.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.3.3.1.1.1.m1.1b"><ci id="S4.T1a.3.3.1.1.1.m1.1.1.cmml" xref="S4.T1a.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.3.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1a.4.4.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_text" id="S4.T1a.4.4.2.2.2.1" style="font-size:144%;">Time (s)</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1a.4.4.2.2.2.m1.1"><semantics id="S4.T1a.4.4.2.2.2.m1.1a"><mo id="S4.T1a.4.4.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T1a.4.4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1a.4.4.2.2.2.m1.1b"><ci id="S4.T1a.4.4.2.2.2.m1.1.1.cmml" xref="S4.T1a.4.4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1a.4.4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1a.4.4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1a.4.4.2.3.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1a.4.4.2.3.1.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.3.1.1.1" style="font-size:144%;">RGB</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.4.4.2.3.1.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.3.1.2.1" style="font-size:144%;">0.484</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.4.4.2.3.1.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.3.1.3.1" style="font-size:144%;">0.536</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.4.4.2.3.1.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.3.1.4.1" style="font-size:144%;">0.538</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.4.4.2.3.1.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.3.1.5.1" style="font-size:144%;">0.519</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T1a.4.4.2.3.1.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.3.1.6.1" style="font-size:144%;">9.10</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1a.4.4.2.4.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1a.4.4.2.4.2.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T1a.4.4.2.4.2.1.1" style="font-size:144%;">Feature</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.4.4.2.4.2.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.2.4.2.2.1" style="font-size:144%;">0.560</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.4.4.2.4.2.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.2.4.2.3.1" style="font-size:144%;">0.662</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.4.4.2.4.2.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.2.4.2.4.1" style="font-size:144%;">0.561</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.4.4.2.4.2.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.2.4.2.5.1" style="font-size:144%;">0.594</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S4.T1a.4.4.2.4.2.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1a.4.4.2.4.2.6.1" style="font-size:144%;">3.10</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table B presents a detailed quantitative analysis of the proposed Feature4X model's performance on seven distinct scenes from the NVIDIA dataset.  For each scene, the table compares the performance metrics of four different methods: the baseline MoSca model, MoSca augmented with Feature 3DGS, Feature4X with a single CLIP head, and the full Feature4X model.  The metrics reported include PSNR, SSIM, LPIPS, accuracy, and mIoU, providing a comprehensive evaluation of the model's ability to reconstruct the scene accurately, and its effectiveness in performing both semantic segmentation and spatiotemporal reasoning.  The table also shows the model sizes (static and dynamic) for each method, offering insights into memory usage and computational efficiency.
> <details>
> <summary>read the caption</summary>
> Table B: Detailed Performance of 7 scenes from the NVIDIA Dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2a.5.5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2a.5.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2a.5.5.5.5.6"><span class="ltx_text" id="S4.T2a.5.5.5.5.6.1" style="font-size:144%;">Scene</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.5.5.5.5.7"><span class="ltx_text" id="S4.T2a.5.5.5.5.7.1" style="font-size:144%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.1.1.1.1.1">
<span class="ltx_text" id="S4.T2a.1.1.1.1.1.1" style="font-size:144%;">PSNR</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2a.1.1.1.1.1.m1.1"><semantics id="S4.T2a.1.1.1.1.1.m1.1a"><mo id="S4.T2a.1.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T2a.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2a.1.1.1.1.1.m1.1b"><ci id="S4.T2a.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2a.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2a.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2a.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.2.2.2.2.2">
<span class="ltx_text" id="S4.T2a.2.2.2.2.2.1" style="font-size:144%;">SSIM</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2a.2.2.2.2.2.m1.1"><semantics id="S4.T2a.2.2.2.2.2.m1.1a"><mo id="S4.T2a.2.2.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T2a.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2a.2.2.2.2.2.m1.1b"><ci id="S4.T2a.2.2.2.2.2.m1.1.1.cmml" xref="S4.T2a.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2a.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2a.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.3.3.3.3.3">
<span class="ltx_text" id="S4.T2a.3.3.3.3.3.1" style="font-size:144%;">LPIPS</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2a.3.3.3.3.3.m1.1"><semantics id="S4.T2a.3.3.3.3.3.m1.1a"><mo id="S4.T2a.3.3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T2a.3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2a.3.3.3.3.3.m1.1b"><ci id="S4.T2a.3.3.3.3.3.m1.1.1.cmml" xref="S4.T2a.3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2a.3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2a.3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.4.4.4.4.4">
<span class="ltx_text" id="S4.T2a.4.4.4.4.4.1" style="font-size:144%;">accuracy</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2a.4.4.4.4.4.m1.1"><semantics id="S4.T2a.4.4.4.4.4.m1.1a"><mo id="S4.T2a.4.4.4.4.4.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T2a.4.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2a.4.4.4.4.4.m1.1b"><ci id="S4.T2a.4.4.4.4.4.m1.1.1.cmml" xref="S4.T2a.4.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2a.4.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2a.4.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.5.5.5.5.5">
<span class="ltx_text" id="S4.T2a.5.5.5.5.5.1" style="font-size:144%;">mIoU</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2a.5.5.5.5.5.m1.1"><semantics id="S4.T2a.5.5.5.5.5.m1.1a"><mo id="S4.T2a.5.5.5.5.5.m1.1.1" mathsize="144%" stretchy="false" xref="S4.T2a.5.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2a.5.5.5.5.5.m1.1b"><ci id="S4.T2a.5.5.5.5.5.m1.1.1.cmml" xref="S4.T2a.5.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2a.5.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2a.5.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.5.5.5.5.8"><span class="ltx_text" id="S4.T2a.5.5.5.5.8.1" style="font-size:144%;">Static Model Size (MB)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.5.5.5.5.9"><span class="ltx_text" id="S4.T2a.5.5.5.5.9.1" style="font-size:144%;">Dynamic Model Size (MB)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2a.5.5.5.5.10"><span class="ltx_text" id="S4.T2a.5.5.5.5.10.1" style="font-size:144%;">Size (MB)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2a.5.5.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.6.1.1"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.1.1" style="font-size:144%;">Jumping</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.2">
<span class="ltx_text" id="S4.T2a.5.5.5.6.1.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.6.1.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.3"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.3.1" style="font-size:144%;">24.558</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.4"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.4.1" style="font-size:144%;">0.792</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.5"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.5.1" style="font-size:144%;">0.092</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.6"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.7"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.8"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.8.1" style="font-size:144%;">29.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.9"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.9.1" style="font-size:144%;">29.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.6.1.10"><span class="ltx_text" id="S4.T2a.5.5.5.6.1.10.1" style="font-size:144%;">58.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.7.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.7.2.1"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.1.1" style="font-size:144%;">Jumping</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.2">
<span class="ltx_text" id="S4.T2a.5.5.5.7.2.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.7.2.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.3"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.3.1" style="font-size:144%;">24.516</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.4"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.4.1" style="font-size:144%;">0.793</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.5"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.5.1" style="font-size:144%;">0.092</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.6"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.6.1" style="font-size:144%;">0.840</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.7"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.7.1" style="font-size:144%;">0.483</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.8"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.8.1" style="font-size:144%;">271.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.9"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.9.1" style="font-size:144%;">212.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.7.2.10"><span class="ltx_text" id="S4.T2a.5.5.5.7.2.10.1" style="font-size:144%;">483.88</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.8.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.8.3.1"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.1.1" style="font-size:144%;">Jumping</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.2"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.3"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.3.1" style="font-size:144%;">24.633</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.4"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.4.1" style="font-size:144%;">0.795</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.5"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.5.1" style="font-size:144%;">0.090</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.6"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.6.1" style="font-size:144%;">0.836</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.7"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.7.1" style="font-size:144%;">0.495</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.8"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.8.1" style="font-size:144%;">44.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.9"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.9.1" style="font-size:144%;">30.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.8.3.10"><span class="ltx_text" id="S4.T2a.5.5.5.8.3.10.1" style="font-size:144%;">74.66</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.9.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.9.4.1"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.1.1" style="font-size:144%;">Jumping</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.2"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.3"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.3.1" style="font-size:144%;">24.616</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.4"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.4.1" style="font-size:144%;">0.793</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.5"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.5.1" style="font-size:144%;">0.090</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.6"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.6.1" style="font-size:144%;">0.831</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.7"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.7.1" style="font-size:144%;">0.483</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.8"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.8.1" style="font-size:144%;">44.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.9"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.9.1" style="font-size:144%;">30.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.9.4.10"><span class="ltx_text" id="S4.T2a.5.5.5.9.4.10.1" style="font-size:144%;">74.93</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.10.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.10.5.1"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.1.1" style="font-size:144%;">Skating</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.2">
<span class="ltx_text" id="S4.T2a.5.5.5.10.5.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.10.5.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.3"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.3.1" style="font-size:144%;">31.478</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.4"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.4.1" style="font-size:144%;">0.926</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.5"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.5.1" style="font-size:144%;">0.059</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.6"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.7"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.8"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.8.1" style="font-size:144%;">32.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.9"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.9.1" style="font-size:144%;">4.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.10.5.10"><span class="ltx_text" id="S4.T2a.5.5.5.10.5.10.1" style="font-size:144%;">37.39</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.11.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.11.6.1"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.1.1" style="font-size:144%;">Skating</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.2">
<span class="ltx_text" id="S4.T2a.5.5.5.11.6.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.11.6.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.3"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.3.1" style="font-size:144%;">31.568</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.4"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.4.1" style="font-size:144%;">0.927</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.5"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.5.1" style="font-size:144%;">0.059</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.6"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.6.1" style="font-size:144%;">0.835</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.7"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.7.1" style="font-size:144%;">0.446</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.8"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.8.1" style="font-size:144%;">302.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.9"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.9.1" style="font-size:144%;">35.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.11.6.10"><span class="ltx_text" id="S4.T2a.5.5.5.11.6.10.1" style="font-size:144%;">337.90</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.12.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.12.7.1"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.1.1" style="font-size:144%;">Skating</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.2"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.3"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.3.1" style="font-size:144%;">31.572</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.4"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.4.1" style="font-size:144%;">0.927</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.5"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.5.1" style="font-size:144%;">0.059</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.6"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.6.1" style="font-size:144%;">0.838</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.7"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.7.1" style="font-size:144%;">0.450</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.8"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.8.1" style="font-size:144%;">49.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.9"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.9.1" style="font-size:144%;">4.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.12.7.10"><span class="ltx_text" id="S4.T2a.5.5.5.12.7.10.1" style="font-size:144%;">54.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.13.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.13.8.1"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.1.1" style="font-size:144%;">Skating</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.2"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.3"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.3.1" style="font-size:144%;">31.666</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.4"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.4.1" style="font-size:144%;">0.926</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.5"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.5.1" style="font-size:144%;">0.059</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.6"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.6.1" style="font-size:144%;">0.819</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.7"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.7.1" style="font-size:144%;">0.418</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.8"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.8.1" style="font-size:144%;">47.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.9"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.9.1" style="font-size:144%;">5.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.13.8.10"><span class="ltx_text" id="S4.T2a.5.5.5.13.8.10.1" style="font-size:144%;">53.12</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.14.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.14.9.1"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.1.1" style="font-size:144%;">Truck</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.2">
<span class="ltx_text" id="S4.T2a.5.5.5.14.9.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.14.9.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.3"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.3.1" style="font-size:144%;">26.688</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.4"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.4.1" style="font-size:144%;">0.824</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.5"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.5.1" style="font-size:144%;">0.115</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.6"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.7"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.8"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.8.1" style="font-size:144%;">38.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.9"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.9.1" style="font-size:144%;">11.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.14.9.10"><span class="ltx_text" id="S4.T2a.5.5.5.14.9.10.1" style="font-size:144%;">50.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.15.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.15.10.1"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.1.1" style="font-size:144%;">Truck</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.2">
<span class="ltx_text" id="S4.T2a.5.5.5.15.10.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.15.10.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.3"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.3.1" style="font-size:144%;">26.619</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.4"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.4.1" style="font-size:144%;">0.824</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.5"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.5.1" style="font-size:144%;">0.115</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.6"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.6.1" style="font-size:144%;">0.973</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.7"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.7.1" style="font-size:144%;">0.880</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.8"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.8.1" style="font-size:144%;">353.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.9"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.9.1" style="font-size:144%;">90.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.15.10.10"><span class="ltx_text" id="S4.T2a.5.5.5.15.10.10.1" style="font-size:144%;">444.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.16.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.16.11.1"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.1.1" style="font-size:144%;">Truck</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.2"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.3"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.3.1" style="font-size:144%;">26.630</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.4"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.4.1" style="font-size:144%;">0.820</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.5"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.5.1" style="font-size:144%;">0.122</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.6"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.6.1" style="font-size:144%;">0.971</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.7"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.7.1" style="font-size:144%;">0.878</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.8"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.8.1" style="font-size:144%;">58.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.9"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.9.1" style="font-size:144%;">12.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.16.11.10"><span class="ltx_text" id="S4.T2a.5.5.5.16.11.10.1" style="font-size:144%;">70.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.17.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.17.12.1"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.1.1" style="font-size:144%;">Truck</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.2"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.3"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.3.1" style="font-size:144%;">26.610</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.4"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.4.1" style="font-size:144%;">0.822</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.5"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.5.1" style="font-size:144%;">0.117</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.6"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.6.1" style="font-size:144%;">0.969</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.7"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.7.1" style="font-size:144%;">0.868</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.8"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.8.1" style="font-size:144%;">58.16</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.9"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.9.1" style="font-size:144%;">13.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.17.12.10"><span class="ltx_text" id="S4.T2a.5.5.5.17.12.10.1" style="font-size:144%;">71.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.18.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.18.13.1"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.1.1" style="font-size:144%;">Umbrella</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.2">
<span class="ltx_text" id="S4.T2a.5.5.5.18.13.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.18.13.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.3"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.3.1" style="font-size:144%;">23.355</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.4"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.4.1" style="font-size:144%;">0.706</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.5"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.5.1" style="font-size:144%;">0.185</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.6"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.7"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.8"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.8.1" style="font-size:144%;">71.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.9"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.9.1" style="font-size:144%;">11.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.18.13.10"><span class="ltx_text" id="S4.T2a.5.5.5.18.13.10.1" style="font-size:144%;">82.71</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.19.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.19.14.1"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.1.1" style="font-size:144%;">Umbrella</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.2">
<span class="ltx_text" id="S4.T2a.5.5.5.19.14.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.19.14.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.3"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.3.1" style="font-size:144%;">23.362</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.4"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.4.1" style="font-size:144%;">0.708</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.5"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.5.1" style="font-size:144%;">0.176</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.6"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.6.1" style="font-size:144%;">0.875</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.7"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.7.1" style="font-size:144%;">0.556</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.8"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.8.1" style="font-size:144%;">657.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.9"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.9.1" style="font-size:144%;">75.12</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.19.14.10"><span class="ltx_text" id="S4.T2a.5.5.5.19.14.10.1" style="font-size:144%;">733.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.20.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.20.15.1"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.1.1" style="font-size:144%;">Umbrella</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.2"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.3"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.3.1" style="font-size:144%;">23.433</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.4"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.4.1" style="font-size:144%;">0.707</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.5"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.5.1" style="font-size:144%;">0.185</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.6"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.6.1" style="font-size:144%;">0.869</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.7"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.7.1" style="font-size:144%;">0.559</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.8"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.8.1" style="font-size:144%;">107.87</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.9"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.9.1" style="font-size:144%;">11.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.20.15.10"><span class="ltx_text" id="S4.T2a.5.5.5.20.15.10.1" style="font-size:144%;">119.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.21.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.21.16.1"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.1.1" style="font-size:144%;">Umbrella</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.2"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.3"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.3.1" style="font-size:144%;">23.392</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.4"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.4.1" style="font-size:144%;">0.708</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.5"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.5.1" style="font-size:144%;">0.180</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.6"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.6.1" style="font-size:144%;">0.880</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.7"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.7.1" style="font-size:144%;">0.565</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.8"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.8.1" style="font-size:144%;">107.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.9"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.9.1" style="font-size:144%;">11.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.21.16.10"><span class="ltx_text" id="S4.T2a.5.5.5.21.16.10.1" style="font-size:144%;">119.08</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.22.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.22.17.1"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.1.1" style="font-size:144%;">Balloon1</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.2">
<span class="ltx_text" id="S4.T2a.5.5.5.22.17.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.22.17.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.3"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.3.1" style="font-size:144%;">22.666</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.4"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.4.1" style="font-size:144%;">0.760</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.5"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.5.1" style="font-size:144%;">0.117</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.6"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.7"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.8"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.8.1" style="font-size:144%;">56.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.9"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.9.1" style="font-size:144%;">18.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.22.17.10"><span class="ltx_text" id="S4.T2a.5.5.5.22.17.10.1" style="font-size:144%;">75.47</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.23.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.23.18.1"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.1.1" style="font-size:144%;">Balloon1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.2">
<span class="ltx_text" id="S4.T2a.5.5.5.23.18.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.23.18.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.3"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.3.1" style="font-size:144%;">22.687</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.4"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.4.1" style="font-size:144%;">0.762</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.5"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.5.1" style="font-size:144%;">0.115</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.6"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.6.1" style="font-size:144%;">0.901</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.7"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.7.1" style="font-size:144%;">0.377</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.8"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.8.1" style="font-size:144%;">525.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.9"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.9.1" style="font-size:144%;">129.88</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.23.18.10"><span class="ltx_text" id="S4.T2a.5.5.5.23.18.10.1" style="font-size:144%;">654.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.24.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.24.19.1"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.1.1" style="font-size:144%;">Balloon1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.2"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.3"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.3.1" style="font-size:144%;">22.668</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.4"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.4.1" style="font-size:144%;">0.760</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.5"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.5.1" style="font-size:144%;">0.118</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.6"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.6.1" style="font-size:144%;">0.905</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.7"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.7.1" style="font-size:144%;">0.435</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.8"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.8.1" style="font-size:144%;">85.95</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.9"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.9.1" style="font-size:144%;">18.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.24.19.10"><span class="ltx_text" id="S4.T2a.5.5.5.24.19.10.1" style="font-size:144%;">104.79</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.25.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.25.20.1"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.1.1" style="font-size:144%;">Balloon1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.2"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.3"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.3.1" style="font-size:144%;">22.691</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.4"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.4.1" style="font-size:144%;">0.759</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.5"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.5.1" style="font-size:144%;">0.117</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.6"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.6.1" style="font-size:144%;">0.903</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.7"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.7.1" style="font-size:144%;">0.446</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.8"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.8.1" style="font-size:144%;">85.72</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.9"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.9.1" style="font-size:144%;">19.90</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.25.20.10"><span class="ltx_text" id="S4.T2a.5.5.5.25.20.10.1" style="font-size:144%;">105.62</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.26.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.26.21.1"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.1.1" style="font-size:144%;">Balloon2</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.2">
<span class="ltx_text" id="S4.T2a.5.5.5.26.21.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.26.21.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.3"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.3.1" style="font-size:144%;">26.827</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.4"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.4.1" style="font-size:144%;">0.850</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.5"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.5.1" style="font-size:144%;">0.082</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.6"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.7"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.8"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.8.1" style="font-size:144%;">51.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.9"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.9.1" style="font-size:144%;">15.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.26.21.10"><span class="ltx_text" id="S4.T2a.5.5.5.26.21.10.1" style="font-size:144%;">67.04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.27.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.27.22.1"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.1.1" style="font-size:144%;">Balloon2</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.2">
<span class="ltx_text" id="S4.T2a.5.5.5.27.22.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.27.22.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.3"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.3.1" style="font-size:144%;">27.018</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.4"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.4.1" style="font-size:144%;">0.854</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.5"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.5.1" style="font-size:144%;">0.080</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.6"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.6.1" style="font-size:144%;">0.819</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.7"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.7.1" style="font-size:144%;">0.350</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.8"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.8.1" style="font-size:144%;">475.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.9"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.9.1" style="font-size:144%;">108.96</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.27.22.10"><span class="ltx_text" id="S4.T2a.5.5.5.27.22.10.1" style="font-size:144%;">584.67</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.28.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.28.23.1"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.1.1" style="font-size:144%;">Balloon2</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.2"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.3"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.3.1" style="font-size:144%;">26.904</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.4"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.4.1" style="font-size:144%;">0.851</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.5"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.5.1" style="font-size:144%;">0.081</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.6"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.6.1" style="font-size:144%;">0.821</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.7"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.7.1" style="font-size:144%;">0.321</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.8"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.8.1" style="font-size:144%;">78.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.9"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.9.1" style="font-size:144%;">15.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.28.23.10"><span class="ltx_text" id="S4.T2a.5.5.5.28.23.10.1" style="font-size:144%;">93.40</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.29.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.29.24.1"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.1.1" style="font-size:144%;">Balloon2</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.2"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.3"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.3.1" style="font-size:144%;">26.871</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.4"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.4.1" style="font-size:144%;">0.853</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.5"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.5.1" style="font-size:144%;">0.078</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.6"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.6.1" style="font-size:144%;">0.813</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.7"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.7.1" style="font-size:144%;">0.319</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.8"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.8.1" style="font-size:144%;">77.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.9"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.9.1" style="font-size:144%;">15.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.29.24.10"><span class="ltx_text" id="S4.T2a.5.5.5.29.24.10.1" style="font-size:144%;">93.13</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.30.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.30.25.1"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.1.1" style="font-size:144%;">Playground</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.2">
<span class="ltx_text" id="S4.T2a.5.5.5.30.25.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.30.25.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.3"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.3.1" style="font-size:144%;">20.591</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.4"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.4.1" style="font-size:144%;">0.777</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.5"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.5.1" style="font-size:144%;">0.130</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.6"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.7"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.8"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.8.1" style="font-size:144%;">92.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.9"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.9.1" style="font-size:144%;">9.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.30.25.10"><span class="ltx_text" id="S4.T2a.5.5.5.30.25.10.1" style="font-size:144%;">102.54</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.31.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.31.26.1"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.1.1" style="font-size:144%;">Playground</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.2">
<span class="ltx_text" id="S4.T2a.5.5.5.31.26.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.31.26.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.3"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.3.1" style="font-size:144%;">20.569</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.4"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.4.1" style="font-size:144%;">0.776</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.5"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.5.1" style="font-size:144%;">0.124</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.6"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.6.1" style="font-size:144%;">0.922</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.7"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.7.1" style="font-size:144%;">0.447</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.8"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.8.1" style="font-size:144%;">857.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.9"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.9.1" style="font-size:144%;">61.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.31.26.10"><span class="ltx_text" id="S4.T2a.5.5.5.31.26.10.1" style="font-size:144%;">918.70</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.32.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.32.27.1"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.1.1" style="font-size:144%;">Playground</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.2"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.3"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.3.1" style="font-size:144%;">20.463</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.4"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.4.1" style="font-size:144%;">0.775</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.5"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.5.1" style="font-size:144%;">0.130</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.6"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.6.1" style="font-size:144%;">0.922</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.7"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.7.1" style="font-size:144%;">0.430</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.8"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.8.1" style="font-size:144%;">141.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.9"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.9.1" style="font-size:144%;">9.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.32.27.10"><span class="ltx_text" id="S4.T2a.5.5.5.32.27.10.1" style="font-size:144%;">150.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.33.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.33.28.1"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.1.1" style="font-size:144%;">Playground</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.2"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.3"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.3.1" style="font-size:144%;">20.536</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.4"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.4.1" style="font-size:144%;">0.775</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.5"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.5.1" style="font-size:144%;">0.130</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.6"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.6.1" style="font-size:144%;">0.913</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.7"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.7.1" style="font-size:144%;">0.419</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.8"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.8.1" style="font-size:144%;">140.44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.9"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.9.1" style="font-size:144%;">10.21</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.33.28.10"><span class="ltx_text" id="S4.T2a.5.5.5.33.28.10.1" style="font-size:144%;">150.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.34.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2a.5.5.5.34.29.1"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.1.1" style="font-size:144%;">Mean</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.2">
<span class="ltx_text" id="S4.T2a.5.5.5.34.29.2.1" style="font-size:144%;">MoSca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T2a.5.5.5.34.29.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.3"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.3.1" style="font-size:144%;">25.166</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.4"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.4.1" style="font-size:144%;">0.805</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.5"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.5.1" style="font-size:144%;">0.111</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.6"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.6.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.7"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.7.1" style="font-size:144%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.8"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.8.1" style="font-size:144%;">53.230</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.9"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.9.1" style="font-size:144%;">14.496</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2a.5.5.5.34.29.10"><span class="ltx_text" id="S4.T2a.5.5.5.34.29.10.1" style="font-size:144%;">67.726</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.35.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.35.30.1"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.1.1" style="font-size:144%;">Mean</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.2">
<span class="ltx_text" id="S4.T2a.5.5.5.35.30.2.1" style="font-size:144%;">MoSca + Feature 3DGS </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.2.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.20776v1#bib.bib102" title=""><span class="ltx_text" style="font-size:90%;">102</span></a><span class="ltx_text" id="S4.T2a.5.5.5.35.30.2.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.3"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.3.1" style="font-size:144%;">25.191</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.4"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.4.1" style="font-size:144%;">0.806</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.5"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.5.1" style="font-size:144%;">0.109</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.6"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.6.1" style="font-size:144%;">0.881</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.7"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.7.1" style="font-size:144%;">0.506</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.8"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.8.1" style="font-size:144%;">491.979</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.9"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.9.1" style="font-size:144%;">101.929</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.35.30.10"><span class="ltx_text" id="S4.T2a.5.5.5.35.30.10.1" style="font-size:144%;">593.907</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.36.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2a.5.5.5.36.31.1"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.1.1" style="font-size:144%;">Mean</span></th>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.2"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.2.1" style="font-size:144%;">Ours (single CLIP head)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.3"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.3.1" style="font-size:144%;">25.186</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.4"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.4.1" style="font-size:144%;">0.805</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.5"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.5.1" style="font-size:144%;">0.112</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.6"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.6.1" style="font-size:144%;">0.880</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.7"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.7.1" style="font-size:144%;">0.510</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.8"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.8.1" style="font-size:144%;">80.697</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.9"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.9.1" style="font-size:144%;">14.597</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2a.5.5.5.36.31.10"><span class="ltx_text" id="S4.T2a.5.5.5.36.31.10.1" style="font-size:144%;">95.294</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2a.5.5.5.37.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2a.5.5.5.37.32.1"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.1.1" style="font-size:144%;">Mean</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.2"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.2.1" style="font-size:144%;">Ours (full model)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.3"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.3.1" style="font-size:144%;">25.197</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.4"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.4.1" style="font-size:144%;">0.805</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.5"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.5.1" style="font-size:144%;">0.110</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.6"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.6.1" style="font-size:144%;">0.876</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.7"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.7.1" style="font-size:144%;">0.503</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.8"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.8.1" style="font-size:144%;">80.183</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.9"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.9.1" style="font-size:144%;">15.274</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2a.5.5.5.37.32.10"><span class="ltx_text" id="S4.T2a.5.5.5.37.32.10.1" style="font-size:144%;">95.457</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of semantic segmentation performance on the Nerfies dataset.  It compares the mean Intersection over Union (mIoU), accuracy, and inference time for different methods, including RGB-based and feature-based approaches, across several scenes (Broom, Curls, Tails, Toby-sit). The results showcase the improved efficiency and comparable segmentation accuracy achieved by the feature-based method compared to the RGB-based method.
> <details>
> <summary>read the caption</summary>
> Table C: Semantic Segmentation Quantitative Results on Nerfies Dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T3.3.3.4" rowspan="2"><span class="ltx_text" id="S6.T3.3.3.4.1" style="font-size:144%;"><span class="ltx_text ltx_font_bold" id="S6.T3.3.3.4.1.1">Nerfies</span> Scene</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T3.1.1.1">
<span class="ltx_text" id="S6.T3.1.1.1.1" style="font-size:144%;">mIoU </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T3.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.m1.1a"><mo id="S6.T3.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S6.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.m1.1b"><ci id="S6.T3.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T3.2.2.2">
<span class="ltx_text" id="S6.T3.2.2.2.1" style="font-size:144%;">Accuracy </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T3.2.2.2.m1.1"><semantics id="S6.T3.2.2.2.m1.1a"><mo id="S6.T3.2.2.2.m1.1.1" mathsize="144%" stretchy="false" xref="S6.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.2.m1.1b"><ci id="S6.T3.2.2.2.m1.1.1.cmml" xref="S6.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S6.T3.3.3.3">
<span class="ltx_text" id="S6.T3.3.3.3.1" style="font-size:144%;">Time (s) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S6.T3.3.3.3.m1.1"><semantics id="S6.T3.3.3.3.m1.1a"><mo id="S6.T3.3.3.3.m1.1.1" mathsize="144%" stretchy="false" xref="S6.T3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.3.m1.1b"><ci id="S6.T3.3.3.3.m1.1.1.cmml" xref="S6.T3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S6.T3.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T3.3.4.1.1"><span class="ltx_text" id="S6.T3.3.4.1.1.1" style="font-size:144%;">RGB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T3.3.4.1.2"><span class="ltx_text" id="S6.T3.3.4.1.2.1" style="font-size:144%;">Feature</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T3.3.4.1.3"><span class="ltx_text" id="S6.T3.3.4.1.3.1" style="font-size:144%;">RGB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T3.3.4.1.4"><span class="ltx_text" id="S6.T3.3.4.1.4.1" style="font-size:144%;">Feature</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T3.3.4.1.5"><span class="ltx_text" id="S6.T3.3.4.1.5.1" style="font-size:144%;">RGB</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S6.T3.3.4.1.6"><span class="ltx_text" id="S6.T3.3.4.1.6.1" style="font-size:144%;">Feature</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.3.5.1.1"><span class="ltx_text" id="S6.T3.3.5.1.1.1" style="font-size:144%;">Broom</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.5.1.2"><span class="ltx_text" id="S6.T3.3.5.1.2.1" style="font-size:144%;">0.193</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.5.1.3"><span class="ltx_text ltx_font_bold" id="S6.T3.3.5.1.3.1" style="font-size:144%;">0.333</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.5.1.4"><span class="ltx_text" id="S6.T3.3.5.1.4.1" style="font-size:144%;">0.321</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.5.1.5"><span class="ltx_text ltx_font_bold" id="S6.T3.3.5.1.5.1" style="font-size:144%;">0.610</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.5.1.6"><span class="ltx_text" id="S6.T3.3.5.1.6.1" style="font-size:144%;">207.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.3.5.1.7"><span class="ltx_text ltx_font_bold" id="S6.T3.3.5.1.7.1" style="font-size:144%;">30.22</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.6.2.1"><span class="ltx_text" id="S6.T3.3.6.2.1.1" style="font-size:144%;">Curls</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.6.2.2"><span class="ltx_text ltx_font_bold" id="S6.T3.3.6.2.2.1" style="font-size:144%;">0.514</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.6.2.3"><span class="ltx_text" id="S6.T3.3.6.2.3.1" style="font-size:144%;">0.443</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.6.2.4"><span class="ltx_text ltx_font_bold" id="S6.T3.3.6.2.4.1" style="font-size:144%;">0.877</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.6.2.5"><span class="ltx_text" id="S6.T3.3.6.2.5.1" style="font-size:144%;">0.872</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.6.2.6"><span class="ltx_text" id="S6.T3.3.6.2.6.1" style="font-size:144%;">155.25</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.6.2.7"><span class="ltx_text ltx_font_bold" id="S6.T3.3.6.2.7.1" style="font-size:144%;">20.82</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.7.3.1"><span class="ltx_text" id="S6.T3.3.7.3.1.1" style="font-size:144%;">Tail</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.3.2"><span class="ltx_text" id="S6.T3.3.7.3.2.1" style="font-size:144%;">0.261</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.3.3"><span class="ltx_text ltx_font_bold" id="S6.T3.3.7.3.3.1" style="font-size:144%;">0.338</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.3.4"><span class="ltx_text" id="S6.T3.3.7.3.4.1" style="font-size:144%;">0.652</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.3.5"><span class="ltx_text ltx_font_bold" id="S6.T3.3.7.3.5.1" style="font-size:144%;">0.860</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.3.6"><span class="ltx_text" id="S6.T3.3.7.3.6.1" style="font-size:144%;">389.89</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.7.3.7"><span class="ltx_text ltx_font_bold" id="S6.T3.3.7.3.7.1" style="font-size:144%;">46.43</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.3.8.4.1"><span class="ltx_text" id="S6.T3.3.8.4.1.1" style="font-size:144%;">Toby-sit</span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.4.2"><span class="ltx_text ltx_font_bold" id="S6.T3.3.8.4.2.1" style="font-size:144%;">0.504</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.4.3"><span class="ltx_text" id="S6.T3.3.8.4.3.1" style="font-size:144%;">0.470</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.4.4"><span class="ltx_text ltx_font_bold" id="S6.T3.3.8.4.4.1" style="font-size:144%;">0.757</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.4.5"><span class="ltx_text" id="S6.T3.3.8.4.5.1" style="font-size:144%;">0.737</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.4.6"><span class="ltx_text" id="S6.T3.3.8.4.6.1" style="font-size:144%;">355.82</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.3.8.4.7"><span class="ltx_text ltx_font_bold" id="S6.T3.3.8.4.7.1" style="font-size:144%;">45.96</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.3.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T3.3.9.5.1"><span class="ltx_text" id="S6.T3.3.9.5.1.1" style="font-size:144%;">Mean</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.3.9.5.2"><span class="ltx_text" id="S6.T3.3.9.5.2.1" style="font-size:144%;">0.368</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.3.9.5.3"><span class="ltx_text ltx_font_bold" id="S6.T3.3.9.5.3.1" style="font-size:144%;">0.396</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.3.9.5.4"><span class="ltx_text" id="S6.T3.3.9.5.4.1" style="font-size:144%;">0.652</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.3.9.5.5"><span class="ltx_text ltx_font_bold" id="S6.T3.3.9.5.5.1" style="font-size:144%;">0.770</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.3.9.5.6"><span class="ltx_text" id="S6.T3.3.9.5.6.1" style="font-size:144%;">277.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.3.9.5.7"><span class="ltx_text ltx_font_bold" id="S6.T3.3.9.5.7.1" style="font-size:144%;">35.86</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive analysis of semantic segmentation performance on the NVIDIA Jumping Scene dataset, using different dimensions for the unified latent feature field.  It evaluates the impact of varying the feature dimension on training time (in hours), rendering time (in seconds), mean Intersection over Union (mIoU), and accuracy.  Higher dimensions offer potentially more detailed representations, but this comes at a cost of increased computational expense.
> <details>
> <summary>read the caption</summary>
> Table D: Evaluation of Semantic Segmentation Performance On NVIDIA Jumping Scene Across Different Dimensions. This table presents the Time, mIoU, and Accuracy corresponding to each dimension level.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S6.T4.2.2.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.2.2.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.2.2.2.3.1.1"><span class="ltx_text" id="S6.T4.2.2.2.3.1.1.1" style="font-size:144%;">Dimension</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.2.2.3.1.2"><span class="ltx_text" id="S6.T4.2.2.2.3.1.2.1" style="font-size:144%;">8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.2.2.3.1.3"><span class="ltx_text" id="S6.T4.2.2.2.3.1.3.1" style="font-size:144%;">16</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.2.2.3.1.4"><span class="ltx_text" id="S6.T4.2.2.2.3.1.4.1" style="font-size:144%;">32</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.2.2.3.1.5"><span class="ltx_text" id="S6.T4.2.2.2.3.1.5.1" style="font-size:144%;">64</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.2.2.3.1.6"><span class="ltx_text" id="S6.T4.2.2.2.3.1.6.1" style="font-size:144%;">128</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.2.2.3.1.7"><span class="ltx_text" id="S6.T4.2.2.2.3.1.7.1" style="font-size:144%;">256</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.2.2.2.3.1.8"><span class="ltx_text" id="S6.T4.2.2.2.3.1.8.1" style="font-size:144%;">512</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.2.2.2.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.2.2.2.4.1.1"><span class="ltx_text" id="S6.T4.2.2.2.4.1.1.1" style="font-size:144%;">Training Time (h)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2.4.1.2"><span class="ltx_text" id="S6.T4.2.2.2.4.1.2.1" style="font-size:144%;">2.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2.4.1.3"><span class="ltx_text" id="S6.T4.2.2.2.4.1.3.1" style="font-size:144%;">2.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2.4.1.4"><span class="ltx_text" id="S6.T4.2.2.2.4.1.4.1" style="font-size:144%;">2.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2.4.1.5"><span class="ltx_text" id="S6.T4.2.2.2.4.1.5.1" style="font-size:144%;">3.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2.4.1.6"><span class="ltx_text" id="S6.T4.2.2.2.4.1.6.1" style="font-size:144%;">4.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2.4.1.7"><span class="ltx_text" id="S6.T4.2.2.2.4.1.7.1" style="font-size:144%;">8.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.2.2.2.4.1.8"><span class="ltx_text" id="S6.T4.2.2.2.4.1.8.1" style="font-size:144%;">14.80</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.2.2.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.2.2.2.5.2.1"><span class="ltx_text" id="S6.T4.2.2.2.5.2.1.1" style="font-size:144%;">Rendering Time (s)</span></th>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5.2.2"><span class="ltx_text" id="S6.T4.2.2.2.5.2.2.1" style="font-size:144%;">4.818</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5.2.3"><span class="ltx_text" id="S6.T4.2.2.2.5.2.3.1" style="font-size:144%;">4.898</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5.2.4"><span class="ltx_text" id="S6.T4.2.2.2.5.2.4.1" style="font-size:144%;">4.872</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5.2.5"><span class="ltx_text" id="S6.T4.2.2.2.5.2.5.1" style="font-size:144%;">4.967</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5.2.6"><span class="ltx_text" id="S6.T4.2.2.2.5.2.6.1" style="font-size:144%;">5.815</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5.2.7"><span class="ltx_text" id="S6.T4.2.2.2.5.2.7.1" style="font-size:144%;">10.167</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.2.2.2.5.2.8"><span class="ltx_text" id="S6.T4.2.2.2.5.2.8.1" style="font-size:144%;">16.313</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.1.1.1.1.1">
<span class="ltx_text" id="S6.T4.1.1.1.1.1.1" style="font-size:144%;">mIoU</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T4.1.1.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.1.1.m1.1a"><mo id="S6.T4.1.1.1.1.1.m1.1.1" mathsize="144%" stretchy="false" xref="S6.T4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.1.1.m1.1b"><ci id="S6.T4.1.1.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1.2"><span class="ltx_text" id="S6.T4.1.1.1.1.2.1" style="font-size:144%;">0.468</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1.3"><span class="ltx_text" id="S6.T4.1.1.1.1.3.1" style="font-size:144%;">0.483</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1.4"><span class="ltx_text" id="S6.T4.1.1.1.1.4.1" style="font-size:144%;">0.482</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1.5"><span class="ltx_text" id="S6.T4.1.1.1.1.5.1" style="font-size:144%;">0.485</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1.6"><span class="ltx_text" id="S6.T4.1.1.1.1.6.1" style="font-size:144%;">0.471</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1.7"><span class="ltx_text" id="S6.T4.1.1.1.1.7.1" style="font-size:144%;">0.494</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1.8.1" style="font-size:144%;">0.497</span></td>
</tr>
<tr class="ltx_tr" id="S6.T4.2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.2.2.2.2.1">
<span class="ltx_text" id="S6.T4.2.2.2.2.1.1" style="font-size:144%;">Accuracy</span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T4.2.2.2.2.1.m1.1"><semantics id="S6.T4.2.2.2.2.1.m1.1a"><mo id="S6.T4.2.2.2.2.1.m1.1.1" mathsize="144%" stretchy="false" xref="S6.T4.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T4.2.2.2.2.1.m1.1b"><ci id="S6.T4.2.2.2.2.1.m1.1.1.cmml" xref="S6.T4.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T4.2.2.2.2.1.m1.1d">↑</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.2.2.2.2"><span class="ltx_text" id="S6.T4.2.2.2.2.2.1" style="font-size:144%;">0.827</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.2.2.2.3"><span class="ltx_text" id="S6.T4.2.2.2.2.3.1" style="font-size:144%;">0.831</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.2.2.2.4"><span class="ltx_text" id="S6.T4.2.2.2.2.4.1" style="font-size:144%;">0.830</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.2.2.2.5"><span class="ltx_text" id="S6.T4.2.2.2.2.5.1" style="font-size:144%;">0.834</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.2.2.2.6"><span class="ltx_text" id="S6.T4.2.2.2.2.6.1" style="font-size:144%;">0.832</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.2.2.2.7"><span class="ltx_text" id="S6.T4.2.2.2.2.7.1" style="font-size:144%;">0.837</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.2.2.2.2.8"><span class="ltx_text ltx_font_bold" id="S6.T4.2.2.2.2.8.1" style="font-size:144%;">0.841</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of image quality across various dimensions of the unified latent feature field used in the Feature4X model.  Specifically, it shows how Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Learned Perceptual Image Patch Similarity (LPIPS) metrics change as the dimensionality of the feature field is altered. This helps assess the impact of feature dimensionality on the visual fidelity of the reconstructed scenes, specifically for the 'Jumping' scene from the NVIDIA dataset.
> <details>
> <summary>read the caption</summary>
> Table E: Evaluation of Image Quality Metrics On NVIDIA Jumping Scene Across Different Dimensions. This table presents the PSNR, SSIM, and LPIPS values corresponding to each dimension level.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.20776/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.20776/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}