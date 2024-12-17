---
title: "GaussianProperty: Integrating Physical Properties to 3D Gaussians with LMMs"
summary: "Training-free method adds physical properties to 3D models using vision-language models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2024-12-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.11258 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinli Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.11258" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.11258" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/gaussianproperty-integrating-physical" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.11258/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Estimating physical properties from visual data is crucial for applications like robotics, augmented reality, and simulation. However, it remains under-explored due to the inherent difficulty in estimating these unseen properties from limited visual information. Existing methods often focus on specific properties or require laborious manual labeling, hindering their applicability to diverse scenarios and scalability.

This paper introduces a new method called GaussianProperty. It leverages the power of Large Multimodal Models (LMMs) and segmentation models to estimate a wider range of physical properties from images, without training. It assigns material properties like density and elasticity to 3D models (represented as Gaussians) reconstructed from multiple views. This enables the model to generate more realistic physical simulations. It also assists robotic grasping by estimating a safe range of force required to lift and hold objects without damage, adapting to the material properties of the object.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The method utilizes large multimodal models (LMMs) combined with a segmentation model for understanding physical properties from images in a zero-shot manner. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It demonstrates improved performance in material segmentation and physics-based simulation, showcasing the effectiveness of integrating physical properties into 3D models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed grasping force prediction improves robotic grasping reliability by adapting to the estimated material properties of target objects, enabling more robust and adaptive robot interactions in real-world scenarios {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**Estimating physical properties from images is crucial for robotics and simulation, but it's also challenging.** This work presents a novel method using AI models to understand and assign properties like density and elasticity to 3D models reconstructed from images. **This automation offers significant potential for enhancing realism in various applications by bridging the gap between visual data and physical simulations.** It opens new possibilities for more efficient physics-based simulations and material-aware robot interactions in complex environments.

------
#### Visual Insights



![](https://arxiv.org/html/2412.11258/x1.png)

> 🔼 GaussianProperty adds physical properties like material, density, etc., to 3D Gaussian models.  This enhances applications such as physics simulations (how objects move and interact) and robot grasping (choosing appropriate grip forces).  The framework uses Large Multimodal Models (LMMs) and doesn't require training.  The figure shows the process: multi-view images as input, processing by SAM, LMM adding properties, and resulting 3D Gaussians used for simulation and robotic grasping.
> <details>
> <summary>read the caption</summary>
> Figure 1:  GaussianProperty is a training-free framework, aiming at adding physical properties to 3D Gaussians with the assistance of LMMs. By assigning physical properties to 3D Gaussians, it promotes several downstream tasks such as physical-based generative dynamics and robot grasping in this work.
> </details>





{{< table-caption >}}
| · Method | ABO dataset | ABO dataset | ABO dataset | ABO dataset | ABO dataset | ABO dataset | MVImgNet | MVImgNet | MVImgNet | MVImgNet | MVImgNet | MVImgNet | MVImgNet | MVImgNet | MVImgNet | MVImgNet | MVImgNet |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---| 
|  | Wood | Metal | Plastic | Fabric | Ceramic | Average | Wood | Metal | Plastic | Glass | Fabric | Foam | Food | Ceramic | Paper | Leather | Average |
| Nerf2phycics | 27.87 | 13.01 | 8.38 | 40.26 | 38.44 | 25.59 | 6.39 | 3.63 | 6.70 | 1.15 | 1.11 | 0.38 | 2.40 | 6.54 | 6.73 | 5.20 | 4.02 |
| Ours | **61.53** | **33.41** | **38.26** | **67.57** | **78.40** | **55.83** | **41.96** | **38.85** | **39.50** | **18.87** | **27.12** | **23.18** | **84.89** | **19.74** | **30.23** | **23.96** | **34.83** |{{< /table-caption >}}

> 🔼 Compares material segmentation mIoU of GaussianProperty with NeRF2Physics [46] on ABO and MVImgNet datasets, demonstrating superior performance across various material categories like wood, metal, plastic, glass, fabric etc.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of material segmentation with NeRF2Physics [46] across different categories on ABO and MVImgNet dataset. Our method achieves a more comprehensive and accurate understanding of the object and achieve more precise material segmentation.
> </details>





### In-depth insights


#### 3D Gaussian Properties
**3D Gaussian properties** play a crucial role in representing and manipulating 3D objects. By utilizing Gaussian functions to model various attributes, such as shape, appearance, and physical characteristics, researchers can achieve realistic and efficient simulations. Key advantages of using 3D Gaussians include their **smoothness**, which allows for accurate representation of curved surfaces, and their **compactness**, enabling efficient storage and processing. Additionally, the **mathematical properties** of Gaussians facilitate various operations, like blending, deformation, and collision detection.  A key advancement in this area is integrating physical properties with 3D Gaussian representations. By assigning properties like material type, density, and elasticity to individual Gaussian components, simulations can achieve new levels of realism in dynamic interactions and robotic manipulation tasks.

#### LLM-Driven Physics
**LLM-driven physics** represents a novel paradigm, leveraging the vast knowledge encoded within LLMs to enhance our understanding of physical phenomena.  This approach could potentially **revolutionize** fields like material science by enabling the prediction of material properties from visual data, accelerating the discovery of new materials with desired characteristics. LLMs could also contribute to **robotics**, where an understanding of physical properties is essential for tasks like grasping and manipulation.  Furthermore, integrating LLMs with physics engines holds promise for enhancing the **realism and efficiency** of dynamic simulations, potentially impacting fields like computer graphics and virtual reality.  However, the reliance on visual data and textual descriptions raises challenges regarding the accuracy and completeness of information extracted by LLMs.  Further research is needed to address these challenges and fully realize the **transformative potential** of LLM-driven physics.

#### Robotic Grasping
**GaussianProperty** empowers robots to grasp diverse objects more effectively by predicting material properties for adaptive force. Traditional methods struggle with varying object materials, often applying fixed forces that risk slippage or damage.  By analyzing multi-view images, GaussianProperty identifies materials and estimates density, friction, and elasticity. This allows calculating a **safe force range**, minimizing slippage and preventing deformation.  Experiments with 16 objects of various materials demonstrate **100% success rate**, surpassing fixed-force baselines. This method offers a **robust solution for real-world grasping scenarios**, reducing reliance on complex tactile sensors and expanding robotic capabilities in diverse environments.

#### Dynamic Simulation
**Dynamic simulation** breathes life into static 3D models, predicting their behavior under forces.  It's crucial for robotics, gaming, and engineering. Physics-based methods, like **Material Point Method (MPM)**, offer realism but often require tedious manual parameter tuning. Automating this process is key.  Imagine effortlessly simulating complex interactions like cloth draping or fluid flow.  This unlocks potential for **interactive design**, **virtual prototyping**, and **realistic training environments**. However, computational cost and accuracy remain challenges. Balancing real-time performance with high-fidelity physics is essential.  Future research might explore machine learning for faster, more efficient dynamic simulations.

#### Multi-View Projection
**Multi-view projection** is crucial for robust 3D understanding. By capturing an object from various viewpoints, we gather a richer dataset that overcomes limitations inherent in single-view observations, such as occlusion and perspective distortion.  This approach enhances the accuracy of **3D reconstruction, material recognition, and physical property estimation**. Combining multi-view data with deep learning or traditional computer vision techniques allows us to build more complete and reliable 3D models, leading to improvements in diverse applications like **robotics, augmented reality, and virtual environments**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.11258/x2.png)

> 🔼 GaussianProperty begins by employing SAM to segment the object in the input image, creating segmentation masks.  These masks, along with the original images, are then fed into GPT-4V(ision). GPT-4V(ision) leverages a pre-defined material library to predict the physical properties of the segmented regions within the image. This involves matching the visual features of the segments with known material properties. Finally, the estimated physical properties from the 2D images are projected and aggregated onto a 3D Gaussian representation of the object. This utilizes a multi-view approach and a voting strategy to consolidate the 2D estimations into a coherent 3D representation enriched with physical properties.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall pipeline. Our Gausssian-Property initially leverages SAM to get the segmentation map of the object. Then the original images and the masks are sent to the foundation models like GPT-4V(ision) to get the corresponding physical properties by inquiring the material candidates. After acquiring physical properties from 2D images, we using a multi-view approach and a voting strategy to add physical properties to the reconstruction 3D Gaussians.
> </details>



![](https://arxiv.org/html/2412.11258/x3.png)

> 🔼 This figure illustrates the effectiveness of the combined global-local reasoning module.  On the left, when provided with both the full image and a masked partial image, GPT-4V struggles to identify the dumbbell handle material. On the right, by first providing a global context image, then the masked partial image, and finally the isolated part image, GPT-4V correctly identifies the handle material as metal (often steel).  This demonstrates the importance of contextual information and part-level association for accurate material recognition by LMMs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: GPT-4V(ision) struggles to recognize the material when directly provided with both global and partial image inputs. Right: Enhanced with combined global-local information and association, the agent accurately characterizes the component’s properties.
> </details>



![](https://arxiv.org/html/2412.11258/x4.png)

> 🔼 This figure showcases qualitative results of material segmentation. There are four groups of images displayed, each comparing an input RGB image with two corresponding material segmentation outputs: one from a baseline method and one from the proposed method. As shown by the color-coded segmentation outputs, the proposed method delivers more accurate and boundary-precise material predictions compared to the baseline method.  For instance, the proposed method can accurately segment the plastic backrest and the metal frame of a chair, while the baseline method struggles to make these distinctions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results of Material Segmentation. Our model makes boundary-accurate physical material predictions.
> </details>



![](https://arxiv.org/html/2412.11258/x5.png)

> 🔼 This figure showcases a downstream application of 3D Gaussians enhanced with physical properties, demonstrating generative dynamics.  By applying forces to the Gaussian representations of objects (a pillow, garbage bin, and chair), the models exhibit realistic movement corresponding to the applied force. In the first row, a chair reacts to a top-down force, realistically illustrating the potential of this physics-based simulation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Generative Dynamics. We present a potential downstream task of 3D Gaussians with physical property, i.e., the generative dynamics. By imposing force, the 3D Gaussians generate corresponding motion. For example, in the first row, we applied a top-down force, the chair exhibited a movement corresponding to the applied force.
> </details>



![](https://arxiv.org/html/2412.11258/x6.png)

> 🔼 This figure showcases examples of robot grasping experiments, comparing the proposed GaussianProperty method against three baselines (MinGF, MidGF, and MaxGF) across different objects and materials, starting from initial to final configurations. It highlights the superior performance of GaussianProperty in successfully grasping objects of diverse material properties without causing damage or slippage.
> <details>
> <summary>read the caption</summary>
> Figure 6: Robot Grasping is a downstream application of GaussianProperty. Several sample cases from robot grasping experiments are presented, where we compare our proposed method (right) against three baselines (middle columns), starting from initial configurations (left).
> </details>



![](https://arxiv.org/html/2412.11258/x7.png)

> 🔼 The figure presents the Jacobi.ai JSR-1 robot platform with a TEK CTAG2F90-C robotic gripper used in the robot grasping experiments. The left image shows the overall robot platform, while the right image focuses on the close-up view of the gripper.
> <details>
> <summary>read the caption</summary>
> Figure 7: The robot platform (left) and the  robotic gripper (right)  utilized in robot grasping experiments.
> </details>



![](https://arxiv.org/html/2412.11258/x8.png)

> 🔼 This figure presents the calibration curve used to determine the relationship between the normalized input to the robotic gripper (ranging from 0 to 100) and the actual grasping force exerted by the gripper in Newtons. The left plot shows the raw data points from the calibration measurements, while the middle and right plots display smoothed versions of the curve using a 5th-order polynomial fit.  This calibration is essential for accurately controlling the grasping force during the robot experiments, as it allows for mapping the desired force to the appropriate normalized input value for the gripper.
> <details>
> <summary>read the caption</summary>
> Figure 8: Calibration curve of robotic gripper grasping force (left) and its 5th-order polynomial smoothings (middle and right).
> </details>



![](https://arxiv.org/html/2412.11258/x9.png)

> 🔼 This figure presents sixteen real-world objects selected for robotic grasping experiments. These objects represent common household items made of diverse materials like plastic, wood, glass, etc. Their inclusion aims to test the robustness of a grasping method across varying weights, shapes, and material properties, as a naive approach might struggle with such diversity.
> <details>
> <summary>read the caption</summary>
> Figure 9: List of selected objects for robot grasping experiments.
> </details>



![](https://arxiv.org/html/2412.11258/x10.png)

> 🔼 This figure showcases the results of real-world robotic grasping experiments across 16 test cases, comparing the proposed GaussianProperty method against three baseline grasping strategies (MinGF, MidGF, and MaxGF). Each row displays a different object, with images from left to right showing the initial configuration, the baseline attempts, and the final result using the proposed approach.  The figure highlights successful grasps, failures, and any instances of slippage or damage. Videos of the experiments are available on the project page.
> <details>
> <summary>read the caption</summary>
> Figure 10: Complete robot grasping experiment results. The 16 test cases along with results in robot grasping experiments are listed. We compare our proposed method (right) against three baselines (middle columns), starting from initial configurations (left). You can view the MP4 videos of the experiments in our project page.
> </details>



![](https://arxiv.org/html/2412.11258/x11.png)

> 🔼 This figure presents a qualitative comparison of hardness prediction between the proposed method and the baseline method, NeRF2physics, on the same object.  The top row displays the input RGB image and the generated hardness predictions from NeRF2physics. The bottom row shows the segmentation map used by the proposed method and its corresponding hardness prediction. The proposed method generates more accurate predictions, marked by clear boundaries between areas with different hardness levels, in contrast to the baseline method, which produces a more blurred and less accurate prediction.
> <details>
> <summary>read the caption</summary>
> Figure 11: Qualitative comparison of hardness prediction. Compared to NeRF2Physics, our method provides more accurate hardness prediction with clear boundaries.
> </details>



![](https://arxiv.org/html/2412.11258/x12.png)

> 🔼 This figure illustrates the process of segmenting an image using the Segment Anything Model (SAM) at three different levels of detail: large, medium, and small.  Each level provides progressively finer segmentations. The authors chose the medium level for their model to balance the trade-off between detailed part-level understanding and computational cost.
> <details>
> <summary>read the caption</summary>
> Figure 12: Segmentation process using SAM at different levels of granularity. From left to right: the input image, large-level segmentation, middle-level segmentation, and small-level segmentation. For our model, we selected the middle-level of SAM prediction to balance part-level object understanding and computational efficiency.
> </details>



![](https://arxiv.org/html/2412.11258/x13.png)

> 🔼 This figure showcases examples of how different parts of 3D objects are labeled with their corresponding material types. The labeling process involves using an interactive segmentation tool to precisely annotate each part of the object in specific views.  The examples provided include a chair labeled with wood, foam, and metal; a hammer labeled with wood and metal; a hand warmer labeled with leather and metal; a bin labeled with metal; a table labeled with wood and metal; and a folding chair labeled with wood and metal. These labeled objects are selected from the ABO-500 dataset, a subset of the Amazon Berkeley Objects (ABO) dataset, specifically designed for evaluating physical reasoning and robotic manipulation tasks.
> <details>
> <summary>read the caption</summary>
> Figure 13: Examples of data labeling. These objects are sourced from the ABO-500 dataset.
> </details>



![](https://arxiv.org/html/2412.11258/x14.png)

> 🔼 This figure showcases the prompt employed by GaussianProperty to elicit material proposals and other physical attributes from the Large Multimodal Model (LMM). The prompt instructs the LMM to first offer a concise caption of the part based on the image. Subsequently, the LMM is tasked with describing the material composition of the part, primarily focusing on the major component. Finally, by combining knowledge of the object and its material, the LMM predicts other properties like hardness, density, Young's modulus, and Poisson's Ratio. The prompt also incorporates adaptive hardness scale selection (Shore A or Shore D) depending on the predicted material. The response format is structured as a tuple for parsing: (caption, material, hardness low-high, <Shore A or Shore D>, density, Young's modulus, Poisson's Ratio).  A predefined library of common materials ensures consistent responses. This structured prompting approach aids the LMM in accurately identifying physical properties by providing clear context and specific instructions.
> <details>
> <summary>read the caption</summary>
> Figure 14: Prompt used for proposing materials and other physical properties.
> </details>



![](https://arxiv.org/html/2412.11258/x15.png)

> 🔼 This figure demonstrates the effectiveness of the frequency-based voting strategy in material segmentation. Without voting, the method misclassifies 'aluminum' and 'wood' as 'plastic' and 'steel.' With voting across multiple views, accurate material predictions can be obtained. In view 1, voting correctly identifies the dumbbell handle as 'aluminum,' while view 9 correctly identifies it as 'wood.' The figure includes images of the original object, property predictions with and without voting, and a segmentation map highlighting the object part.
> <details>
> <summary>read the caption</summary>
> Figure 15: Effects of Frequency-based Voting Strategy. We provide an example to demonstrate the effectiveness of the frequency-based voting strategy. The result misclassified the “aluminum” and “wood” into “plastic” and “’steel’ without voting strategy.
> </details>



![](https://arxiv.org/html/2412.11258/x16.png)

> 🔼 This figure visually compares the material segmentation results obtained using NeRF2Physics and the method proposed in the paper.  The objects shown, sourced from the ABO-500 dataset, include a ladder, a clothing rack, a chair, a sofa, a planter, and a bench. For each object, the input RGB image, features extracted using CLIP, and the material segmentation produced by each method are presented side-by-side.  The segmentation maps offer a color-coded visualization of the different materials identified on each object.  The proposed method generally demonstrates more accurate and detailed material segmentation compared to NeRF2Physics, particularly in distinguishing finer object parts and materials.  For instance, the proposed method correctly identifies the wooden steps and metal frame of the ladder, while NeRF2Physics misclassifies some parts.  Similarly, for the chair, the proposed method differentiates the fabric seat and wooden frame, which NeRF2Physics fails to capture accurately.
> <details>
> <summary>read the caption</summary>
> Figure 16: Qualitative comparison of Material Segmentation. These objects are sourced from the ABO-500 dataset.
> </details>



![](https://arxiv.org/html/2412.11258/x17.png)

> 🔼 Qualitative results of material segmentation on objects from the MVImgNet dataset are presented.  The model accurately segments various materials like wood, fabric, steel, plastic, and glass across different objects, some of which have multiple materials.
> <details>
> <summary>read the caption</summary>
> Figure 17: Qualitative results of object material segmentation on MVImgNet. Our model makes reasonable and boundary-accurate material predictions for objects with multiple or single materials.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Global-to-local | Voting | Average mIoU (%↑) |
|---|---|---| 
|  | ✓ | 22.17 |
| ✓ |  | 51.28 |
| ✓ | ✓ | **55.83** |{{< /table-caption >}}
> 🔼 This table presents an ablation study showcasing the impact of integrating global-to-local knowledge and applying a frequency-based voting strategy on material segmentation performance, measured by mIoU.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study of Global-to-Local Knowledge Integration and Frequency-Based Voting.
> </details>

{{< table-caption >}}
| Method | PUR (%) ↑ | NDR (%) ↑ | SR (%) ↑ |
|---|---|---|---| 
| MinGF | 50.00 | **100.00** | 50.00 |
| MidGF | 87.50 | 81.25 | 68.75 |
| MaxGF | **100.00** | 75.00 | 75.00 |
| Ours* | **100.00** | **100.00** | **100.00** |{{< /table-caption >}}
> 🔼 This table presents the results of robotic grasping experiments conducted on 16 objects, comparing the proposed method (GaussianProperty) with three baseline methods (MinGF, MidGF, and MaxGF). Each baseline represents a different level of grasping force applied by the robotic gripper: minimum, medium, and maximum, respectively. The table uses three metrics to evaluate the performance of each method: Pick-Up Rate (PUR), No-Damage Rate (NDR), and overall Success Rate (SR).  The best results are highlighted in bold.
> <details>
> <summary>read the caption</summary>
> Table 3: Results of robot grasping experiments on 16 objects. MinGF, MidGF and MaxGF are baselines with minimum (NG⁢F=15subscript𝑁𝐺𝐹15N_{GF}=15italic_N start_POSTSUBSCRIPT italic_G italic_F end_POSTSUBSCRIPT = 15), medium (NG⁢F=60subscript𝑁𝐺𝐹60N_{GF}=60italic_N start_POSTSUBSCRIPT italic_G italic_F end_POSTSUBSCRIPT = 60) and maximum (NG⁢F=100subscript𝑁𝐺𝐹100N_{GF}=100italic_N start_POSTSUBSCRIPT italic_G italic_F end_POSTSUBSCRIPT = 100) grasping forces applied by the robotic gripper. Bold: best results.
> </details>

{{< table-caption >}}
| Method | ADE (↓) | ALDE (↓) | APE (↓) | MnRE (↑) | PRA (↑) |
|---|---|---|---|---|---| 
| NeRF2Physics | 35.917 | 0.328 | 0.294 | 0.748 | 0.575 |
| Ours* | **28.583** | **0.220** | **0.198** | **0.820** | **0.686** |{{< /table-caption >}}
> 🔼 Comparison of our proposed method and NeRF2Physics on hardness estimation of 10 household objects and 100 points using several metrics (ADE, ALDE, APE, MnRE, PRA). Lower is better for ADE, ALDE, APE while higher is better for MnRE, PRA. Our method outperforms NeRF2Physics on all metrics.
> <details>
> <summary>read the caption</summary>
> Table 4: Estimation of per-point Shore hardness on the real-captured in-house collected dataset (10 objects, 100 points). Bold: best model.
> </details>

{{< table-caption >}}
| Method | ADE (↓) | ALDE (↓) | APE (↓) | MnRE (↑) |
|---|---|---|---|---| 
| NeRF2Physics | 12.761 | 0.803 | **0.589** | 0.498 |
| Ours* | **5.960** | **0.744** | 1.609 | **0.559** |{{< /table-caption >}}
> 🔼 Comparison of mass estimation performance between our proposed method and a baseline method (NeRF2Physics) on the ABO dataset.  The metrics used for evaluation include Absolute Difference Error (ADE), Absolute Log Difference Error (ALDE), Absolute Percentage Error (APE), Min Ratio Error (MnRE), and Pairwise Relationship Accuracy (PRA). Lower values are better for ADE, ALDE, and APE, while higher values are better for MnRE and PRA. The best results are shown in bold.
> <details>
> <summary>read the caption</summary>
> Table 5: Mass estimation on ABO dataset. Bold: best results.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.11258/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.11258/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}