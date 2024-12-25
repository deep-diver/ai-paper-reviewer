---
title: "3DGraphLLM: Combining Semantic Graphs and Large Language Models for 3D Scene Understanding"
summary: "3DGraphLLM boosts 3D scene understanding by cleverly merging semantic graphs and LLMs, enabling more accurate scene descriptions and outperforming existing methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 AIRI",]
showSummary: true
date: 2024-12-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.18450 {{< /keyword >}}
{{< keyword icon="writer" >}} Tatiana Zemskova et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.18450" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.18450" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/3dgraphllm-combining-semantic-graphs-and" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.18450/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for 3D scene understanding often struggle to effectively incorporate semantic information about the relationships between objects within a scene, limiting their ability to generate detailed and accurate descriptions.  These limitations hinder progress in various applications, including robotics and AI-driven scene understanding.  Existing approaches often rely solely on spatial coordinates, neglecting rich semantic information that can improve understanding. 



This paper introduces 3DGraphLLM, a novel approach that combines semantic graphs and Large Language Models (LLMs) to address these limitations.  By representing the 3D scene as a learnable graph, 3DGraphLLM incorporates semantic relationships between objects, improving the accuracy of LLM responses.  The experimental results demonstrate that 3DGraphLLM significantly outperforms existing methods on several benchmark datasets, thus showcasing the effectiveness of incorporating semantic relationships for improved 3D scene understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} 3DGraphLLM enhances 3D scene understanding by integrating semantic relationships between objects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed method improves accuracy in various 3D vision-language tasks (object grounding, scene captioning, question answering). {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} 3DGraphLLM demonstrates a significant advantage over methods that do not explicitly use information about semantic relationships between objects. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **significantly improves 3D scene understanding** by combining semantic graphs and large language models. This approach addresses current limitations of methods that don't explicitly use semantic relationships between objects, leading to more accurate and detailed scene descriptions.  The **3DGraphLLM method** and the related findings open exciting new avenues for further research in vision-language tasks, particularly in robotics and AI-driven scene understanding.

------
#### Visual Insights



![](https://arxiv.org/html/2412.18450/x1.png)

> 🔼 This figure illustrates the 3DGraphLLM approach.  A 3D scene graph is generated, encoding the objects and their semantic relationships within a 3D scene.  This graph is then converted into a learnable representation, which is fed as input to a Large Language Model (LLM). The LLM then processes this information to perform a variety of 3D vision-language tasks, such as 3D referred object grounding, 3D dense scene captioning, and 3D question answering.  The output of the LLM is a response in natural language to a user query about the 3D scene.
> <details>
> <summary>read the caption</summary>
> Figure 1: Proposed 3DGraphLLM approach leverages 3D semantic scene graph learnable representation supplied as input to an LLM to perform various 3D vision-language tasks.
> </details>





{{< table-caption >}}
| System: | A chat between a curious user and an artificial intelligence assistant. |
|---|---| 
|  | The assistant gives helpful, detailed, and polite answers to the user’s questions. The conversation centers around an indoor scene: `<OBJ001>` $F_{1}^{2d},F_{1}^{v},F_{12}^{e},F_{2}^{v}F_{1}^{v},F_{14}^{e},F_{4}^{v}...`<OBJN>` $F_{N}^{2d},F_{N}^{v},F_{Nk_{1}}^{e},F_{k_{1}}^{v}F_{N}^{v},F_{Nk_{2}}^{e},F_{k_{2}}^{v}$ | 
| User: | According to the given description, *there are brown wooden cabinets*, | 
|  | *placed on the side of the kitchen*, please provide the ID of the object that closely matches this description. | 
| Assistant: | `<OBJ001>`. |{{< /table-caption >}}

> 🔼 This table provides an example of how a prompt is structured for the language model when it contains a scene graph. The prompt includes system instructions, user query, and assistant response sections. The scene is described with a sequence of object identifiers and embeddings, along with relationships between them. This structured format allows the language model to process the information from the scene graph effectively to answer user questions.
> <details>
> <summary>read the caption</summary>
> Table 1:  Example of prompt for the language model containing scene graph.
> </details>





### In-depth insights


#### 3D Graph Encoding
3D graph encoding is a crucial technique for representing 3D scene information in a structured manner, suitable for machine learning tasks.  **Effective encoding schemes are vital for capturing both the geometric and semantic relationships between objects in a scene.**  This involves representing objects as nodes and their relationships as edges.  The challenge lies in designing an encoding that effectively captures spatial relationships (distance, orientation, etc.) and semantic relationships (on, near, in, etc.). **A good encoding should be compact, expressive, and computationally efficient.**  Different techniques could leverage graph neural networks (GNNs) to learn representations from the graph structure, focusing on node and edge embeddings that capture the scene's inherent characteristics. **Key considerations include the choice of graph structure (fully connected, k-nearest neighbor), the embedding methods (e.g., positional encoding, attention mechanisms), and techniques to handle variable-sized graphs.** The effectiveness of a 3D graph encoding significantly impacts downstream tasks such as object detection, scene understanding, and visual question answering.  **Therefore, research in this area should focus on developing robust, efficient, and generalizable graph encoding schemes tailored to specific application requirements.**

#### LLM Integration
The integration of Large Language Models (LLMs) within the 3DGraphLLM framework is a **critical component**, leveraging their natural language processing capabilities for scene understanding tasks.  The method cleverly uses the LLM not simply for output generation, but as a core reasoning engine.  By feeding the LLM a learnable representation of the 3D scene graph (as opposed to raw textual descriptions), 3DGraphLLM allows the model to **efficiently process complex spatial and semantic relationships** between objects. This results in improved performance on a variety of vision-language tasks like object grounding and scene captioning.  The design choice to use a flat graph representation, albeit reducing some information, likely contributes to **enhanced LLM inference speed**, a crucial factor for real-time applications.   **Fine-tuning the LLM**, incorporating object identifiers, and employing the LoRA technique further enhance accuracy. The overall approach demonstrates the potential of combining LLMs with structured scene representations for improved 3D scene understanding, avoiding the limitations of solely relying on spatial coordinates.  However, future work should investigate refining the LLM integration to minimize information loss during graph flattening.

#### Semantic Relations
The concept of semantic relations is **central** to the 3DGraphLLM model's ability to understand and respond to complex queries about 3D scenes.  The model leverages information about the relationships between objects, going beyond simply their spatial coordinates.  This allows it to capture richer scene understanding, interpreting natural language queries that reference semantic connections (e.g., "the chair behind the desk").  The inclusion of semantic relations dramatically **improves the accuracy** of the LLM's responses on various 3D vision-language tasks.  The authors explore different methods of representing and integrating these relations, experimenting with techniques like VL-SAT to generate scene graphs.  They highlight the challenge of handling noisy data from imperfect object detection, requiring strategies to ensure robustness.  Ultimately, **effectively incorporating semantic relations** is shown to be a key differentiator, improving accuracy significantly over baseline methods that only consider object features and locations.

#### Benchmark Results
A dedicated 'Benchmark Results' section would be crucial for evaluating the proposed 3DGraphLLM model.  It should present a thorough comparison against state-of-the-art methods on multiple established 3D vision-language benchmarks. Key metrics like accuracy, F1-score, and CIDEr should be reported for tasks such as 3D object grounding, scene captioning, and visual question answering.  **Quantitative results showing the performance gains of 3DGraphLLM over baselines that don't use semantic relationships would be essential.**  The results should be broken down by dataset to highlight the model's strengths and weaknesses in various scenarios.  Furthermore, **qualitative examples illustrating the model's outputs and their comparison with ground truth would provide valuable insights into its capabilities and limitations.** This section must clearly detail the experimental setup, including dataset splits, evaluation protocols, and hyperparameters used.  **Robust statistical significance testing would strengthen the claims made about the model's performance improvements.**  Finally, any limitations or failure cases observed should be discussed to provide a balanced and comprehensive evaluation of 3DGraphLLM.

#### Future Directions
Future research could explore several avenues to enhance 3DGraphLLM.  **Improving the efficiency of the graph representation** is crucial; the current approach's scalability is limited by the number of connections between objects.  Investigating more efficient graph structures or encoding methods, perhaps incorporating attention mechanisms, would be beneficial.  **Robustness to noisy instance segmentation** is another key area; current reliance on high-quality segmentations restricts real-world applicability.  Research into integrating more robust segmentation methods or developing techniques to handle uncertainty in the segmentation would be valuable.  **Expanding the range of supported relationships** beyond those currently handled by VL-SAT could enhance the model's expressive power and improve the accuracy of spatial reasoning.  Additionally, exploring **cross-modal learning** with other modalities, such as audio and tactile data, could significantly enrich the scene understanding capabilities and enable more complex interactions.  Finally, **thorough evaluation on diverse datasets** beyond those used in the paper is essential to establish the model's generalization capacity and address potential biases. These future directions could pave the way for more versatile and robust 3D scene understanding systems.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.18450/x2.png)

> 🔼 The figure illustrates the architecture of 3DGraphLLM, a system that combines 3D scene graphs with large language models (LLMs) for 3D scene understanding.  The system processes 3D point cloud data, extracting features for objects and their semantic relationships using pre-trained encoders. These features are then projected into the embedding space of an LLM using trainable layers.  The scene graph is transformed into a flattened sequence for LLM input, with each object represented by its features and the features of its k nearest neighbors (k-NN). To enhance LLM performance, new object tokens are added to the LLM vocabulary, and the LLM itself is fine-tuned using LoRA (Low-Rank Adaptation). The output is a response to various vision-language tasks such as object grounding, scene captioning, and question answering.
> <details>
> <summary>read the caption</summary>
> Figure 2:  The overall architecture of our approach. 3DGraphLLM leverages pre-trained encoders for 3D object point clouds and semantic relationships between objects. We introduce trainable layers to map the extracted graph node and edge features into the token embedding space of a pre-trained LLM. The scene graph is flattened for input into the LLM, with each object represented by a subgraph of its k nearest neighbors. To further adapt the LLM to 3D vision-language tasks, we add new object tokens to the LLM’s vocabulary and fine-tune it using LoRa.
> </details>



![](https://arxiv.org/html/2412.18450/x3.png)

> 🔼 This figure showcases qualitative examples of 3DGraphLLM's performance on the ScanRefer dataset.  Each example shows a user query, an RGB image of the ScanNet scene highlighting the identified object, and a 3D point cloud visualization.  Within the point cloud, green points pinpoint the points 3DGraphLLM identified as belonging to the object described in the query, while a green bounding box indicates the ground truth location of the object.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Qualitative examples of 3DGraphLLM performance on the ScanRefer dataset. For each query, we provide an RGB image from the ScanNet dataset showing the selected object, along with a visualization of the RGB point cloud. In the point cloud, green points indicate the points that 3DGraphLLM identified as corresponding to the object from the text query, while the green box highlights the ground truth (GT) box for the query.
> </details>



![](https://arxiv.org/html/2412.18450/x4.png)

> 🔼 Figure 4 presents a comparison of Uni3D object features and VL-SAT semantic edge features using both ground truth (GT) and Mask3D scene segmentations from the ScanNet training dataset.  The left panel shows that Uni3D object features are very similar for both GT and Mask3D point clouds. The center panel demonstrates that using the standard nearest neighbor (NN) selection method for VL-SAT feature generation results in significantly different features for Mask3D compared to GT. The right panel illustrates how applying a minimum distance filter during NN selection leads to much closer alignment between VL-SAT features derived from Mask3D and GT segmentations.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Comparison of Uni3D object features and VL-SAT semantic edge features for the two nearest neighbors (NNs) based on ground-truth (GT) scene segmentation and Mask3D scene segmentation within the ScanNet training set.  Left: Uni3D object features are relatively close for GT point clouds and Mask3D point clouds. Center: using the standard approach for selecting NNs to generate VL-SAT features, the features for pairs of Mask3D point clouds differ significantly from those of GT point clouds. Right: after applying a minimum neighbor distance filter for selecting NNs, the VL-SAT features for object pairs from Mask3D instance segmentation align more closely with those from GT instance segmentation.
> </details>



![](https://arxiv.org/html/2412.18450/extracted/6093446/nn_ablation.png)

> 🔼 Figure 5 illustrates the relationship between the number of nearest neighbors considered when constructing object subgraphs and two key metrics: inference speed and visual grounding accuracy.  The experiment uses the RioRefer dataset and ground truth instance segmentation for a comprehensive evaluation.  Increasing the number of nearest neighbors generally improves visual grounding accuracy, but at the cost of increased inference time.  This demonstrates a trade-off between model performance and computational efficiency, highlighting the importance of optimizing the number of neighbors for optimal results.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Dependence of inference speed and visual grounding accuracy on the number of nearest neighbors in the object subgraph. This experiment utilizes the RioRefer dataset along with GT instance segmentation.
> </details>



![](https://arxiv.org/html/2412.18450/x5.png)

> 🔼 This figure showcases instances where 3DGraphLLM struggles with spatial relationships. The left panel shows an example from the ScanQA dataset where the model misinterprets front/back and left/right directions relative to the viewer's perspective. The right panel illustrates a similar issue from the ScanRefer dataset, this time with the model confusing left and right.  Ground truth objects are highlighted in green, while the model's predictions are in red.  This highlights the model's limitations in accurately interpreting and applying spatial reasoning during scene understanding tasks.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Common failure cases of 3DGraphLLM related to spatial relationships. Left: In the ScanQA dataset, 3DGraphLLM incorrectly identifies the front/back and left.right directions relative to the observer. Right: In the ScanRefer dataset, 3DGraphLLM confuses left and right. The GT object is highlighted in green, and the 3DGraphLLM prediction is highlighted in red.
> </details>



![](https://arxiv.org/html/2412.18450/x6.png)

> 🔼 Figure 7 demonstrates 3DGraphLLM's ability to answer functional queries about a room and its objects, showcasing its common sense reasoning capabilities.  The left panel shows 3DGraphLLM correctly identifying the room type ('hotel room') and its lack of cooking facilities based on the objects present, implying an understanding of functional properties. The right panel shows 3DGraphLLM successfully identifying an object suitable for homework ('laptop') given a query about functionality, highlighting its capacity to connect object properties to human actions and tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Functional queries about the room and objects to the 3DGraphLLM. Left: 3DGraphLLM is capable of answering questions about functional properties of the room and its room type. Right: 3DGraphLLM is capable of answering questions about the functional properties of objects in a room.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
## Table 1: Performance comparison on ScanRefer, Multi3DRefer, ScanQA, Sqa3D and Scan2Cap.

| Methods | ScanRefer A@0.25↑ | ScanRefer A@0.5↑ | ScanRefer F1@0.25↑ | ScanRefer F1@0.5↑ | Multi3DRefer C↑ | Multi3DRefer B-4↑ | Multi3DRefer EM↑ | ScanQA C@0.5↑ | Sqa3D B-4@0.5↑ | Scan2Cap B-4@0.5↑ |
|---|---|---|---|---|---|---|---|---|---|---|
| **Expert models** |  |  |  |  |  |  |  |  |  |  |
| ScanRefer [Chen et al., 2020] | 37.3 | 24.3 | - | - | - | - | - | - | - | - |
| MVT [Huang et al., 2022] | 40.8 | 33.3 | - | - | - | - | - | - | - | - |
| 3DVG-Trans [Zhao et al., 2021] | 45.9 | 34.5 | - | - | - | - | - | - | - | - |
| ViL3DRel [Chen et al., 2022] | 47.9 | 37.7 | - | - | - | - | - | - | - | - |
| M3DRef-CLIP [Zhang et al., 2023] | 51.9 | 44.7 | 42.8 | 38.4 | - | - | - | - | - | - |
| Scan2Cap [Chen et al., 2021] | - | - | - | - | - | - | - | 35.2 | 22.4 | - |
| ScanQA [Azuma et al., 2022] | - | - | - | - | 64.9 | 10.1 | - | - | - | - |
| Sqa3D [Ma et al., 2022] | - | - | - | - | - | - | 47.2 | - | - | - |
| 3D-VisTA [Zhu et al., 2023] | 50.6 | 45.8 | - | - | 72.9 | 13.1 | 48.5 | 66.9 | 34.0 | - |
| BUTD-DETR [Jain et al., 2022] | 52.2 | 39.8 | - | - | - | - | - | - | - | - |
| PQ3D [Zhu et al., 2025] | - | 51.2 | - | - | 50.1 | 87.8 | - | 47.1 | 80.3 | 36.0 |
| **LLM-based models** |  |  |  |  |  |  |  |  |  |  |
| ZSVG3D [Yuan et al., 2024] | 36.4 | 32.7 | - | - | - | - | - | - | - | - |
| 3D-LLM(Flamingo) [Hong et al., 2023b] | 21.2 | - | - | - | 59.2 | 7.2 | - | - | - | - |
| 3D-LLM(BLIP2-flant5) [Hong et al., 2023b] | 30.3 | - | - | - | 69.4 | 12.0 | - | - | - | - |
| Chat-3D v2 [Huang et al., 2023] | 35.9 | 30.4 | - | - | 77.1 | 7.3 | - | - | - | - |
| Scene-LLM [Fu et al., 2024] | - | - | - | - | 80.0 | 12.0 | 54.2 | - | - | - |
| LL3DA [Chen et al., 2023] | - | - | - | - | 76.8 | 13.5 | - | 65.2 | 36.8 | - |
| Grounded 3D-LLM [Chen et al., 2024] | 47.9 | 44.1 | 45.2 | 40.6 | 72.7 | 13.4 | - | 70.6 | 35.5 | - |
| Chat-Scene [Huang et al., 2024] | 55.5 | 50.2 | 57.1 | 52.4 | 87.7 | 14.3 | 54.6 | 77.1 | 36.3 | - |
| **3DGraphLLM Vicuna-1.5 (ours)** | 57.0 | 51.3 | 60.1 | 55.4 | 87.6 | 12.1 | 53.1 | 81.2 | 36.3 | - |
| **3DGraphLLM LLAMA3-8B (ours)** | 60.2 | 54.6 | 63.0 | 58.2 | 83.1 | 12.5 | 55.2 | 82.9 | 37.8 | - |{{< /table-caption >}}
> 🔼 Table 2 presents a comparative analysis of 3DGraphLLM's performance against state-of-the-art methods in 3D vision-language tasks.  It highlights the differences between approaches using specialized task heads ('expert models') versus those using a large language model (LLM) that handles various tasks through different queries ('LLM-based models'). 3DGraphLLM is categorized as an LLM-based model.  The table showcases results across several benchmark datasets, encompassing metrics such as accuracy at different Intersection over Union (IoU) thresholds (Acc@0.25, Acc@0.5), F1 scores (F1@0.25, F1@0.5), CIDEr scores (C), and BLEU scores (B-4), providing a comprehensive evaluation of each model's capabilities.
> <details>
> <summary>read the caption</summary>
> Table 2:  Performance comparison of 3DGraphLLM with state-of-the-art approaches for 3D vision-language tasks. 'Expert models' use specialized heads to deal with different 3D vision-language tasks. Our approach falls into the category of 'LLM-based models' that consider different tasks as different user queries to a generative model. C denotes the CIDEr metric.
> </details>

{{< table-caption >}}
| Methods | Pre-train | of edges | ScanRefer Acc@0.5↑ | ScanRefer F1@0.5↑ | Multi3DRefer C↑ | Multi3DRefer B-4↑ | ScanQA EM↑ | Sqa3D C@0.5↑ | Scan2Cap B-4@0.5↑ | Scan2Cap C@0.5↑ |
|---|---|---|---|---|---|---|---|---|---|---|
| 3DGraphLLM-0 Vicuna1.5 | ✗ | 0 | 50.2 | 52.4 | 87.7 | 14.3 | 54.6 | 77.1 | 36.3 |  |
| 3DGraphLLM-2 Vicuna1.5 | ✗ | 2 | 50.1 | 52.7 | 92.2 | 15.5 | 54.7 | 80.4 | 36.9 |  |
| **3DGraphLLM-2 Vicuna1.5** | ✓ | **2** | **51.3** | **55.4** | 87.6 | 12.1 | 53.1 | **81.2** | **36.3** |  |
| 3DGraphLLM-0 LLAMA3-8B | ✗ | 0 | 52.0 | 55.1 | 84.0 | 15.8 | 53.8 | 80.0 | 37.5 |  |
| 3DGraphLLM-2 LLLAMA3-8B | ✗ | 2 | 54.3 | 57.3 | **87.4** | 14.9 | 54.5 | **85.6** | **39.6** |  |
| **3DGraphLLM-2 LLLAMA3-8B** | ✓ | **2** | **54.6** | **58.2** | 83.1 | 12.5 | **55.2** | 82.9 | 37.8 | {{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of incorporating semantic relationships (edges) in the 3D scene graph representation used by the 3DGraphLLM model.  It compares the performance of different model variants with varying numbers of edges and training strategies (pre-training included or not) across five different 3D vision-language tasks: ScanRefer, Multi3DRefer, ScanQA, Sqa3D, and Scan2Cap.  The metrics used to assess performance include accuracy (Acc), F1 score (F1), CIDEr (C), BLEU-4 (B-4), and exact match (EM), providing a comprehensive evaluation of the model's effectiveness across various tasks and different numbers of edges in the graph.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on semantic edges role and training pipeline. C denotes the CIDEr metric.
> </details>

{{< table-caption >}}
| Methods | Instance segmentation | Number of edges | Minimal distance, cm | Acc@0.25↑ | Acc@0.5↑ |
|---|---|---|---|---|---| 
| 3DGraphLLM-0 | GT | 0 | - | 48.9 | 48.9 |
| **3DGraphLLM-2** | **GT** | **2** | 0 | **54.4(+5.6%)** | **54.4(+5.6%)** |
| 3DGraphLLM-0 | Mask3D | 0 | - | 46.0 | 34.2 |
| 3DGraphLLM-2 | Mask3D | 2 | 0 | 47.3(+1.3%) | 35.6(+1.4%) |
| 3DGraphLLM-2 | Mask3D | 2 | 1 | 48.0(+2.0%) | 36.2(+2.0%) |
| **3DGraphLLM-2** | **Mask3D (+ NMS)** | **2** | **1** | **48.1(+2.1%)** | **36.5(+2.3%)** |
| 3DGraphLLM-0 | OneFormer3D | 0 | - | 45.4 | 34.5 |
| 3DGraphLLM-2 | OneFormer3D | 2 | 0 | 47.1(+1.7%) | 35.7(+1.2%) |
| **3DGraphLLM-2** | **OneFormer3D (+NMS)** | **2** | **1** | **47.5(+2.1%)** | **36.1(+1.6%)** |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of using semantic relationships (edges) in a scene graph on the performance of the 3DGraphLLM model.  The study varies the quality of instance segmentation used to generate the scene graph, comparing ground truth segmentation with results from two state-of-the-art instance segmentation models (Mask3D and OneFormer3D).  For each segmentation method, experiments are conducted with and without using k-nearest neighbor subgraphs and a minimum distance filter to mitigate the impact of noisy segmentation. The table shows how the accuracy of the model (measured by Acc@0.25 and Acc@0.5) on the ScanRefer benchmark is affected by these changes in scene graph representation and segmentation quality.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on semantic edges role depending on quality of instance segmentation.
> </details>

{{< table-caption >}}
| Methods | Edge Number | Spatial relation | Acc@0.5↑ |
|---|---|---|---|
| 3DGraphLLM | 0 | ✓ | 42.6 |
| 3DGraphLLM | 2 | ✓ | 48.9(+6.3%) |
| 3DGraphLLM | 2 | ✗ | **50.1(+7.5%)** |{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study focusing on the impact of incorporating spatial relationship information into the 3DGraphLLM model.  Specifically, it investigates the effect of adding a spatial relation module on the accuracy of 3D object grounding. The study uses the RioRefer dataset and relies on ground truth (GT) instance segmentation for object identification.  The table shows how different configurations of the spatial relation module, indicated by the number of edges used, affect the overall performance as measured by Accuracy@0.5.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on spatial relation module on RioRefer dataset (GT Instance segmentation).
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.18450/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.18450/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}