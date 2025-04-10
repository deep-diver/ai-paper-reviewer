---
title: "MedSAM2: Segment Anything in 3D Medical Images and Videos"
summary: "MedSAM2: A promptable segmentation foundation model for 3D medical image/video segmentation. Reduces manual costs by >85%."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Segmentation", "🏢 University Health Network",]
showSummary: true
date: 2025-04-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.03600 {{< /keyword >}}
{{< keyword icon="writer" >}} Jun Ma et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.03600" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.03600" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.03600/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Medical image segmentation is critical for precision medicine, but general-purpose models for 3D images and videos are lacking. Existing models are often task-specific and limited in capturing 3D spatial relationships. Large-scale validation in practical image-labeling scenarios is also notably absent, hindering high-throughput medical image annotation tasks.



To address these limitations, MedSAM2, a promptable segmentation foundation model, was developed by modifying and fine-tuning SAM2 on a large medical dataset with over 455,000 3D image-mask pairs and 76,000 annotated video frames. MedSAM2 can reduce manual annotation costs by more than 85%. It is also integrated into widely used platforms with user-friendly interfaces for local and cloud deployment.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MedSAM2 is a promptable segmentation foundation model, outperforming previous models across various medical imaging modalities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It reduces manual annotation costs by >85% through a human-in-the-loop pipeline, facilitating efficient dataset creation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MedSAM2 is integrated into widely used platforms, offering practical support for scalable, high-quality segmentation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers by introducing **MedSAM2, which achieves SOTA performance, and offers an open-source solution for medical image segmentation**. This can potentially streamline research workflows and facilitate advancements in medical imaging applications.

------
#### Visual Insights



![](https://arxiv.org/html/2504.03600/extracted/6336905/main-imgs/fig1.png)

> 🔼 Figure 1 demonstrates the dataset and architecture of MedSAM2.  Panel (a) showcases examples from the diverse dataset used to train MedSAM2, including 3D CT, PET, MRI scans, and ultrasound and endoscopy videos.  For the 3D images, both 2D slices and the full 3D structure are shown. For video data, representative frames from the sequence are displayed. Panel (b) illustrates the MedSAM2 architecture, highlighting its key components: an image encoder for feature extraction, a prompt encoder for processing user inputs (bounding boxes in this case), a memory attention module to incorporate information from previous frames or slices, and a mask decoder to generate segmentation masks. This architecture enables the model to handle both 3D image and video data by leveraging temporal and spatial information.
> <details>
> <summary>read the caption</summary>
> Figure 1: Dataset and network architecture for MedSAM2 development. a, The dataset includes diverse 3D CT, PET, MRI images, ultrasound, and endoscopy videos. For each 3D image example, we visualize both 2D slices and 3D structures. For each video example, we visualize frames at different time points. b, MedSAM2 is a promptable segmentation network with an image encoder, a prompt encoder, a memory attention module, and a mask decoder. The image encoder extracts multiscale features from each frame or 2D slice. The memory attention module conditions the current frame features on past frames’ features and predictions using streaming memory. The mask decoder generates accurate segmentation masks based on bounding box prompts and memory-conditioned features. This architecture enables MedSAM2 to effectively segment both 3D medical images and videos by exploiting spatial continuity across slices and frames.
> </details>







### In-depth insights


#### 3D Med-SAM Insight
**Extending Med-SAM to 3D** opens exciting avenues. A core insight revolves around **effectively capturing spatial relationships** within volumetric data, a limitation of 2D models. Consider challenges like **segmenting complex organs or lesions with varying shapes**, requiring robust 3D context understanding. Another vital aspect involves **adapting prompt mechanisms** for 3D. The success hinges on **creating large, diverse 3D datasets**, as performance gains are tied to comprehensive training. Another key area to focus on is **computational efficiency**. 3D segmentation is inherently more demanding. Efficient network architectures and optimization techniques will be vital for broader adoption. Another is **interactive correction tools**, enabling experts to refine model outputs, is essential. This allows for a human-in-the-loop approach to improve quality. Lastly is **domain adaptation**, as variations in medical imaging modalities (CT, MRI, etc.) necessitate tailored adaptation strategies to maintain accuracy. Furthermore, **visualization methods** for 3D medical data demand specific techniques for effective understanding.

#### MedSAM2: Overview
**MedSAM2 represents a significant advancement in medical image segmentation**, building upon the foundation of models like SAM but tailored for the complexities of 3D medical data, including both images and videos. It tackles the limitations of existing models by focusing on **3D spatial relationships and temporal information**, crucial for volumetric scans and video frames, often overlooked in 2D-centric approaches. **The core innovation lies in its ability to handle diverse medical data**, addressing the lack of general models capable of segmenting both 3D images and videos, a common requirement in clinical settings. The model **integrates a human-in-the-loop approach**, highlighting its scalability and practical utility, a crucial aspect often missing in research. By fine-tuning SAM on a large-scale, diverse dataset, **MedSAM2 demonstrates improved accuracy and robustness** across various organs, lesions, and imaging modalities. Furthermore, **the emphasis on user studies and practical implementation** suggests a move towards translational research, aiming to bridge the gap between advanced models and real-world clinical applications. It will be a practical tool for supporting efficient, scalable, and high-quality segmentation in both research and healthcare environments.

#### User study design
While the paper doesn't explicitly detail a 'User study design' section, the described experiments implicitly touch upon user-centric validation. The iterative annotation pipeline, particularly in the lesion annotation and video segmentation tasks, functions as a proxy for a user study. Annotators are essentially 'users' of the MedSAM2-assisted annotation tool. Their reduced annotation times and the increasing dataset sizes through each round showcase the practical benefits of MedSAM2. **The decreasing annotation time suggests an improved user experience and efficiency, directly translating to reduced costs and time investment for creating large-scale datasets.** A true 'User study design' would formally capture qualitative aspects like annotator satisfaction, ease of use, and potential biases introduced by the AI assistance. Quantifying inter-annotator variability with and without MedSAM2's assistance is also a valuable step, which is currently missing from the study. Further, the inclusion of the 3D Slicer plugin shows initial steps towards real-world deployment, where formal user testing could uncover usability issues and opportunities for workflow integration in real-world clinical scenarios. **More formal user studies would be beneficial to capture the holistic impact of MedSAM2 on clinical workflows.**

#### Annot. Pipeline
**Annotation pipelines** are crucial for creating large, high-quality medical image datasets, often a bottleneck due to manual annotation's time-consuming nature. Iterative approaches, leveraging models like MedSAM2, drastically reduce annotation time by pre-segmenting images, which annotators then refine. This human-in-the-loop approach enhances efficiency and model accuracy as the model learns from corrected data. **Bounding box prompts** offer an efficient means of initialization for segmentation. Efficient annotation workflows are key in medical imaging, where expert knowledge is essential, and large datasets are needed for robust model training.

#### Dataset scaling
While the research paper doesn't explicitly discuss 'Dataset Scaling' as a distinct section, the concept is woven throughout the study. The creation of MedSAM2 hinges on a **large and diverse 3D medical image and video dataset**, indicating a strong emphasis on dataset size as a key factor for achieving generalizable segmentation capabilities. The curation of over 455,000 3D image-mask pairs and 76,000 annotated video frames demonstrates a commitment to **increasing data volume** to improve model performance across various organs, pathologies, and imaging modalities. Furthermore, the iterative annotation pipeline, designed to leverage MedSAM2 for efficient 3D lesion annotation, indirectly addresses dataset scaling by **reducing the manual effort and time required to create large-scale datasets**. The observed decrease in annotation time per lesion as the model is iteratively fine-tuned suggests that active learning and semi-supervised techniques, facilitated by a pre-trained foundation model, can significantly **accelerate the dataset expansion process**. The discussion of MedSAM2's integration into platforms like 3D Slicer, JupyterLab, and Gradio also hints at the scalability aspect, enabling collaborative annotation efforts and facilitating the creation of even larger, community-driven medical imaging datasets. In essence, the paper highlights the **crucial role of dataset scaling** in developing robust and generalizable medical image segmentation models, while also exploring innovative methods for overcoming the limitations of manual annotation and accelerating the dataset creation process.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.03600/extracted/6336905/main-imgs/fig2.png)

> 🔼 Figure 2 presents a comprehensive evaluation of MedSAM2's segmentation performance. Panel (a) uses box plots to compare the Dice Similarity Coefficient (DSC) scores of six different models across five 3D medical image segmentation tasks.  The tasks involve segmenting organs and lesions in CT, MRI, and PET scans.  The models are compared across a wide range of organs and lesions, showcasing MedSAM2's generalization capability. Panels (b) and (d) provide visual examples of MedSAM2's segmentation results on 3D images and videos. These visuals directly compare MedSAM2's performance to the SAM2.1 and EfficientMedSAM-Top1 models, highlighting MedSAM2's improved segmentation accuracy, particularly in challenging scenarios. Panel (c) shows a box plot comparison focusing specifically on the segmentation of heart chambers in ultrasound videos and polyps in endoscopy videos, illustrating MedSAM2's superior performance in these specific applications.
> <details>
> <summary>read the caption</summary>
> Figure 2: Segmentation performance on hold-out 3D image and video datasets. a, Performance distribution of six models across five typical 3D segmentation tasks in terms of Dice similarity coefficient (DSC) scores: CT organs (N=783𝑁783N=783italic_N = 783), CT Lesions (N=409𝑁409N=409italic_N = 409), MRI organs (N=734𝑁734N=734italic_N = 734), MRI lesions (N=318𝑁318N=318italic_N = 318), and PET lesions (N=65𝑁65N=65italic_N = 65). The center line within the box represents the median value, with the bottom and top bounds of the box delineating the 25th and 75th percentiles, respectively. Whiskers are chosen to show the 1.5 of the interquartile range. Up-triangles denote the minima and down-triangles denote the maxima. b, Visualized segmentation examples for stomach and liver cancer in computed tomography (CT), and spleen and brain cancer in Magnetic Resonance Imaging (MRI). Blue: initial bounding box prompts; Yellow: reference standards; Blue: best SAM2.1 segmentation results; Green: EfficientMedSAM-Top1 segmentation results; Magenta: MedSAM2 segmentation results. c, Performance distribution of SAM2.1 and MedSAM2 for left ventricle (N=100𝑁100N=100italic_N = 100), left ventricle epicardium (N=100𝑁100N=100italic_N = 100), and left atrium (N=100𝑁100N=100italic_N = 100) segmentation in ultrasound videos and easy (N=119𝑁119N=119italic_N = 119) and hard (N=54𝑁54N=54italic_N = 54) polyp segmentation in endoscopy videos. d, Visualized segmentation examples for heart chambers and polyps in ultrasound and endoscopy videos, respectively.
> </details>



![](https://arxiv.org/html/2504.03600/extracted/6336905/main-imgs/fig3.png)

> 🔼 This figure demonstrates the MedSAM2-assisted human-in-the-loop annotation pipeline for efficient 3D lesion segmentation in CT and MRI scans, and video annotation in echocardiography. It shows the pipeline's workflow (a), annotation time reduction and dataset growth across iterative rounds for CT lesions (b,c), MRI lesions (e,f), and echocardiography frames (f,g), as well as illustrative examples of segmentation results in CT (d), MRI (g), and echocardiography (h).
> <details>
> <summary>read the caption</summary>
> Figure 3: MedSAM2 for efficient lesion annotation in 3D CT and MRI scans. a, A human-in-the-loop pipeline for 3D lesion segmentation. b, Annotation time per CT lesion and c, the number of generated CT lesions during the iterative annotation process. d, Visualized segmentation examples of the liver lesion and femoral osteosarcoma in CT scans. e, Annotation time per liver MRI lesion and f, the number of generated MRI lesions during the iterative annotation process. g, Visualized segmentation examples of hepatocellular carcinoma and hepatic abscess in venous contrast-enhanced phase and T2-weighted MRI scans, respectively. f, Average annotation time (seconds) per frame and g, the number of annotated frames during the iterative annotation process. h, Visualized segmentation examples of the left ventricle (red), myocardium (green), left atrium (blue), right ventricle (yellow), and right atrium (cyan).
> </details>



![](https://arxiv.org/html/2504.03600/extracted/6336905/main-imgs/fig4.png)

> 🔼 MedSAM2 is designed for ease of use and accessibility, offering deployment options across various platforms.  It's readily available for both local desktop and remote cluster use. Users can leverage common tools such as 3D Slicer (an interactive 3D visualization and analysis platform), the command-line terminal, JupyterLab and Google Colab (both cloud-based environments ideal for interactive coding and data science tasks), and Gradio (a web-based interface that requires no specialized technical knowledge). This versatility in deployment ensures broad accessibility and caters to diverse user needs and computing resources.
> <details>
> <summary>read the caption</summary>
> Figure 4: MedSAM2 can be deployed on local desktops and remote clusters with commonly used platforms: 3D Slicer, terminal, JupyterLab, Gradio, and Google Colab.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.03600/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.03600/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}