---
title: "Magma: A Foundation Model for Multimodal AI Agents"
summary: "Magma: a new foundation model for multimodal AI agents excels at bridging verbal and spatial intelligence, achieving state-of-the-art performance across various tasks, including UI navigation and robo..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 Microsoft Research",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13130 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianwei Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13130" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13130" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13130/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current multimodal AI agents often struggle with generalizability across tasks and domains.  Existing models are typically trained separately for different environments (e.g., 2D digital vs. 3D physical), hindering their ability to seamlessly handle diverse inputs and complete complex tasks.  Furthermore, training data for such models can be limited in size and diversity.  These factors limit the progress towards truly general-purpose AI agents capable of handling real-world scenarios effectively.



To address these limitations, the researchers present Magma, a foundation model that effectively combines multimodal understanding and action prediction. This is achieved by leveraging large amounts of diverse data (images, videos, robotics data) and using novel training techniques—Set-of-Mark (SoM) and Trace-of-Mark (ToM)—which bridge the gap between verbal and spatial intelligence.  Magma demonstrates state-of-the-art performance on UI navigation and robotic manipulation tasks while showing favorable results in other areas as well. The model's code and data are publicly available, fostering reproducibility and future research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Magma is the first foundation model capable of interpreting and grounding multimodal inputs within its environment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Magma uses novel Set-of-Mark (SoM) and Trace-of-Mark (ToM) training methods to achieve state-of-the-art results across diverse tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Magma's open-source nature allows for reproducibility and facilitates further research in multimodal AI. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for AI researchers because it introduces **Magma**, a groundbreaking foundation model for multimodal AI agents.  Its ability to bridge verbal and spatial intelligence, achieving state-of-the-art results in diverse tasks (UI navigation, robotic manipulation), offers a significant advancement in the field.  Researchers can utilize Magma's open-source nature and novel training methods (SoM and ToM) to advance their own work on general-purpose AI agents and explore new research directions in multimodal AI.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/intro_fig.png)

> 🔼 This figure showcases Magma, a novel foundation model designed for multimodal AI agents.  Magma uniquely integrates verbal and spatial intelligence, enabling it to understand and respond to various forms of input (visual and textual), plan actions, and execute those plans in real-world and digital environments. The diagrams illustrate Magma's ability to accomplish diverse tasks, from interacting with user interfaces and manipulating objects to answering complex questions. This is achieved by leveraging knowledge effectively from freely available data encompassing visuals and language.
> <details>
> <summary>read the caption</summary>
> Figure 1: We introduce Magma, the first foundation model that is capable of interpreting and grounding multimodal inputs within its environment. Given a described goal, Magma is able to formulate plans and execute actions to achieve it. By effectively transferring knowledge from freely available visual and language data, Magma bridges verbal and spatial intelligence to navigate complex tasks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.2">
<tr class="ltx_tr" id="S4.T1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.1.1">Data Type</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.2">Set-of-Mark</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.1.3">Trace-of-Mark</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.2.1">UI Screenshots</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.2.2.3">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.3.1">Robotics Images</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.3.3">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.4.1">Instructional Videos</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.4.3">✓</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table shows how the Set-of-Mark (SoM) and Trace-of-Mark (ToM) labeling methods are applied to different data types used in the Magma model's training. SoM labels actionable objects within images, while ToM labels object movements across video frames to model action planning.  The table highlights that ToM is not used for UI data because it consists of discrete screenshots rather than continuous video sequences.
> <details>
> <summary>read the caption</summary>
> Table 1: SoM and ToM applied to various data types. ToM is not applied to UI data as they are a sequence of discrete screenshots.
> </details>





### In-depth insights


#### Multimodal AI Agents
Multimodal AI agents represent a significant advancement in artificial intelligence, aiming to create systems capable of understanding and interacting with the world through multiple modalities like vision, language, and proprioception.  **The core challenge lies in seamlessly integrating these diverse data streams to enable intelligent action**. This requires robust multimodal understanding capabilities to interpret complex scenarios accurately, followed by the ability to plan and execute appropriate actions within dynamic environments.  **Current research focuses on developing foundation models that can be efficiently transferred to a wide range of downstream tasks** to improve generalizability and reduce the need for task-specific training.  This involves training on vast amounts of heterogeneous data and designing effective surrogate tasks, such as action grounding and planning, to bridge the semantic gap between different modalities and facilitate the acquisition of spatial-temporal intelligence.  **A key area of exploration is the development of robust and reliable action prediction models**, crucial for safe and effective interaction in real-world settings, as well as zero-shot generalization capabilities.  The ultimate goal is the creation of truly autonomous and versatile AI agents that can perform complex tasks in both digital and physical worlds.

#### Magma's Architecture
Magma's architecture is likely a complex, multi-modal system designed for robust performance across diverse tasks.  It probably leverages a **transformer-based backbone** for processing both visual and textual inputs, possibly using separate encoders for each modality. The architecture likely incorporates mechanisms for **multimodal fusion**, combining the processed visual and linguistic information to create a unified representation.  Furthermore, a **planning module** would be crucial for generating sequences of actions, possibly utilizing techniques like reinforcement learning or trajectory prediction.  **Action grounding**, a key component, would map high-level goals or instructions to specific actions within the environment.  The system's effectiveness likely hinges on pre-training with massive, heterogeneous datasets, including image, video, and robotics data.  The use of **surrogate tasks**, such as action grounding and action prediction, is probable during pre-training. This allows learning transferable skills, boosting generalization capabilities to unseen tasks. Finally, **efficient mechanisms** are needed for model outputs to be interpreted and translated into actions in different settings(digital or physical).

#### Action Grounding
Action grounding, a crucial aspect of embodied AI, focuses on **connecting high-level action descriptions with low-level, executable actions within a physical or digital environment.**  The challenge lies in bridging the semantic gap between human-understandable instructions and the precise motor commands needed for robots or digital agents.  Effective action grounding requires **robust perception** to accurately identify actionable objects and their spatial relationships.  **Sophisticated planning algorithms** are essential to translate abstract goals into sequences of feasible actions.  Furthermore, **handling uncertainty and errors** in perception or execution is critical for reliable action grounding.  Successful systems achieve this through a combination of large-scale multimodal training data, learned representations that encode object affordances and spatial context, and robust control policies capable of executing complex action sequences.  **Set-of-Mark (SoM)** and **Trace-of-Mark (ToM)** are innovative methods for efficiently labeling data, improving model learning and achieving stronger grounding.

#### Benchmark Results
A dedicated 'Benchmark Results' section in a research paper would ideally present a thorough comparison of the proposed model's performance against existing state-of-the-art methods.  This would involve reporting quantitative metrics on various established benchmarks, clearly indicating the model's strengths and weaknesses across different tasks.  **Key aspects** to look for include the choice of benchmarks (relevance to the problem), the specific metrics used (accuracy, precision, recall, F1-score, etc., depending on the task type), and a detailed analysis of the results, highlighting significant improvements or shortcomings compared to baselines.  **Visualizations**, such as tables and graphs, are essential for effective presentation.  The discussion should not just present the numbers but provide insightful interpretations of the results, explaining any unexpected findings or limitations. **Statistical significance testing** should be employed to confirm the reliability of the observed differences.  A comprehensive analysis might also delve into the computational cost and resource requirements of the model compared to others, providing a holistic evaluation beyond just raw performance.

#### Future of Magma
The future of Magma, a foundational multimodal AI model, is promising and multifaceted.  **Continued development will likely focus on enhancing its scalability and efficiency**, enabling it to handle even larger and more diverse datasets for improved performance across a wider range of tasks.  **Addressing the challenges of generalization and robustness** will be crucial;  making Magma more adaptable to unseen environments and inputs.  **Research into more sophisticated methods for action grounding and planning** is key to unlocking the full potential of embodied AI agents.  Furthermore,  **ethical considerations regarding bias and safety** must be prioritized, ensuring responsible development and deployment.  Finally, the model's open-source nature encourages community collaboration, accelerating innovation and pushing the boundaries of multimodal AI.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/som_fig.png)

> 🔼 This figure illustrates the core functionalities of a multimodal AI agent.  The agent receives both a multimodal understanding input (combining visual and textual information) and a goal specification. Its core task is to predict the appropriate actions required to achieve the given goal, demonstrating both perception and action capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 2: A multimodal AI agent should be capable of mutimodal understanding and action-prediction towards a given goal.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/tom_fig.png)

> 🔼 Figure 3 illustrates the concept of Set-of-Mark (SoM), a method used for action grounding in various contexts.  The image on the left shows SoM applied to a User Interface (UI) screenshot; actionable elements (like clickable buttons) are labeled with numerical marks overlaid onto the image. The middle image displays SoM applied to robot manipulation data; specific robot arm positions and actions are marked numerically.  The image on the right shows SoM for human action video data; points corresponding to human hand motions during actions are labeled with numerical marks overlaid onto the video frames.  All coordinates in the marks are normalized to the image height and width and then quantized into 256 bins for easier representation.
> <details>
> <summary>read the caption</summary>
> Figure 3: Set-of-Mark supervisions for action grounding on UI screenshot (left), robot manipulation (middle) and human video (right). All coordinates are normalized by image size (height, width) and then quantized into 256 bins. Images better viewed by zooming in.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/tom_fig5.png)

> 🔼 This figure illustrates the concept of Trace-of-Mark, a method used to enhance spatial-temporal intelligence in the Magma model.  The left panel showcases Trace-of-Mark applied to robot manipulation, demonstrating how the model predicts the future trajectory of the robot's end-effector by overlaying marks onto consecutive video frames. This shows the planned path of the robot arm as it moves a white object. The right panel shows Trace-of-Mark applied to human actions, illustrating how the model predicts the future hand movements involved in a task, here, gathering potato peels.  In both cases, the marks show the trajectory over several frames. The same coordinate normalization and quantization scheme used for Set-of-Mark is consistently applied for the Trace-of-Mark.
> <details>
> <summary>read the caption</summary>
> Figure 4: Trace-of-Mark supervisions for robot manipulation (left) and human action (right). Same coordinate normalization and quantization is used as SoM. Images show the future traces to predict.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/magma_pt_v3.png)

> 🔼 This figure illustrates Algorithm 2, which addresses the challenge of camera motion in videos when generating Set-of-Mark (SoM) and Trace-of-Mark (ToM) annotations for action grounding and planning.  Algorithm 2 first uses CoTracker to generate point traces, then filters for global motion using homography transformation, classifying traces into foreground and background. Finally, it clusters foreground and background traces separately and applies SoM to the first frame.
> <details>
> <summary>read the caption</summary>
> Figure 5: An illustration of Alg. 2 to handle videos with camera motions for SoM/ToM generation.
> </details>



![](https://arxiv.org/html/2502.13130/x4.png)

> 🔼 Figure 6 provides a detailed breakdown of the datasets used for pretraining the Magma multimodal AI model.  The figure visually represents the composition of the datasets using a pie chart, color-coding each data type.  Instructional videos are shown in orange, robotics manipulation data in green, UI navigation data in pink, and multimodal understanding data in blue. The size of each slice in the pie chart corresponds to the number of image samples within each dataset. It's important to note that for datasets containing videos (instructional videos and robotics manipulation data), only the images extracted from short video clips and robot trajectories are counted, not the complete videos themselves.
> <details>
> <summary>read the caption</summary>
> Figure 6: Overview of Pretraining Data Sources. A diverse collection of datasets including instructional videos (orange), robotics manipulation (green), UI navigation (pink), and multimodal understanding (blue). Note that we count the size of each dataset by the number of image samples. For video and robotics data, we extract the images from the short clips and trajectories, respectively.
> </details>



![](https://arxiv.org/html/2502.13130/x5.png)

> 🔼 The figure illustrates the architecture of the Magma multimodal AI agent's pretraining pipeline.  Text data from various sources is tokenized.  Images and videos, regardless of source domain (UI, robotics, instructional videos), are processed by a shared vision encoder, producing a common representation. These visual features, along with the text tokens, are fed into a large language model (LLM). The LLM then generates outputs representing verbal, spatial, and action information. This unified approach enables the model to bridge multimodal understanding and action prediction tasks, a key feature of the Magma model.
> <details>
> <summary>read the caption</summary>
> Figure 7: Magma pretraining pipeline. For all training data, texts are tokenized into tokens, while images and videos from different domains are encoded by a shared vision encoder. The resulted discrete and continuous tokens are then fed into a LLM to generate the outputs in verbal, spatial and action types. Our proposed method reconcile the multimodal understanding and action prediction tasks.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/images/magma_libero.png)

> 🔼 This figure compares the performance of two models, Magma and Magma(OXE), on the SimplerEnv benchmark for robot manipulation tasks using Google Robots and Bridge simulators. Magma(OXE) was trained solely on the Open-X-Embodiment dataset, while Magma is a pretrained model trained on a more diverse set of data. The results shown are the average success rates across various scenarios, including visual matching and variant aggregation tasks, showcasing the generalizability and robustness of the pretrained Magma model.
> <details>
> <summary>read the caption</summary>
> Figure 8: SimplerEnv performance comparison on Google Robots and Bridge. Magma(OXE) represents our model trained solely on Open-X-Embodiment (OXE) [22], while Magma is our pretrained model. Results for each task are averaged across visual matching and variant aggregation scenarios.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/magma_spatial_visualizations_v2.png)

> 🔼 Figure 9 presents a comparative analysis of few-shot finetuning and generalization capabilities of the Magma model and other models on a WidowX real robot.  The experiment involved four diverse everyday object manipulation tasks. The results highlight Magma's superior performance in these tasks, particularly in challenging scenarios requiring precise spatial understanding and planning, where other models often fail.
> <details>
> <summary>read the caption</summary>
> Figure 9: Few-shot finetuning and generalization performance on real robot. On a WidowX robot, we evaluate Magma on 4 tasks including diverse everyday object manipulation.
> </details>



![](https://arxiv.org/html/2502.13130/x6.png)

> 🔼 The figure visualizes the outcomes of a few-shot fine-tuning experiment conducted on the LIBERO simulation benchmark.  The experiment involved using 10 trajectories per task for the fine-tuning process.  The graph likely presents a comparison of the model's performance (e.g., success rate) across different tasks within the LIBERO benchmark, possibly showcasing how well the model generalizes after a small amount of fine-tuning. Each bar might represent a specific task, and the height of the bar corresponds to the model's performance on that task.
> <details>
> <summary>read the caption</summary>
> Figure 10: Few-shot finetuning results on the LIBERO simulation benchmark, using 10 trajectories per task for fine-tuning.
> </details>



![](https://arxiv.org/html/2502.13130/x7.png)

> 🔼 Figure 11 presents a comparison of GPT-4 and Magma's performance on spatial reasoning tasks.  The figure shows example questions requiring complex spatial understanding, along with the answers produced by each model.  It highlights Magma's ability to perform relatively well on these challenging tasks, despite having been trained on significantly less data than GPT-4.  This demonstrates Magma's efficiency and effectiveness in spatial reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 11: Spatial evaluation predictions. Spatial reasoning questions are challenging even for GPT-4o but Magma can answer relatively well despite relying on much fewer pretraining data.
> </details>



![](https://arxiv.org/html/2502.13130/x8.png)

> 🔼 Figure 12 showcases examples of the Magma-PT-UI training dataset, demonstrating its versatility in handling various UI interaction tasks.  (a) illustrates action grounding: given bounding box coordinates, the model generates a natural language description of the box's content. (b) shows the reverse process: given a natural language description or the exact content, the model returns the corresponding bounding box coordinates. (c) demonstrates another aspect of action grounding, where the model identifies the point coordinates for a given text description. (d) and (e) present examples of widget captioning and UI summarization, respectively, showcasing the model's ability to understand and process UI elements holistically.
> <details>
> <summary>read the caption</summary>
> Figure 12: Training samples in our Magma-PT-UI. It covers a wide range of action grounding and UI understanding tasks including: (a) Given the bounding box or point coordinates as the query, assistant should return the natural language description or the content. (b) Given the natural language or the exact content as the query, assistant should return the value of the bounding box coordinates.. (c) Given the natural language as the query, assistant should return the value of the point coordinate. (d) Widget captioning. (e) UI summarization.
> </details>



![](https://arxiv.org/html/2502.13130/x9.png)

> 🔼 This figure presents bar charts visualizing the frequency distribution of action verbs used in the three types of datasets used for pretraining the Magma model: UI Navigation, Robotic Manipulation, and Instructional Videos.  Each chart shows the top most frequent action verbs in that particular dataset, offering a glimpse into the semantic distinctions between the types of actions present in each dataset. The visualization provides insight into how the action vocabularies of each dataset differ, reflecting the varied nature of tasks and actions involved in each domain.
> <details>
> <summary>read the caption</summary>
> Figure 13: Action distributions in three types of action-oriented pretraining datasets. (a) UI Navigation; (b) Robotic Manipulation; (c) Instructional Videos.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/openvla_hotdog.png)

> 🔼 The image shows a WidowX 250 robot arm, equipped with a gripper, performing a series of kitchen-related manipulation tasks. This setup is used to evaluate the performance of the Magma model in real-world scenarios.  The tasks involve precise movements and interactions, such as picking up and placing objects and performing soft manipulations (like adjusting the position of items). The figure highlights Magma's capabilities in real-world object manipulation.
> <details>
> <summary>read the caption</summary>
> Figure 14: Real robot setup. Magma is deployed on a WidowX 250 robot arm to perform a sequence of kitchen manipulation tasks including object pick-place and soft manipulation.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/openvla_mushroom.png)

> 🔼 This figure showcases two examples of mobile UI navigation tasks performed by the Magma model.  The first task is to find the weather in Tokyo, which involves a sequence of actions such as opening a weather app, entering a location, and reading the results. The second task is to install the Instagram app, involving actions like opening the app store, searching for the app, and initiating the installation process. The model's actions are presented in a step-by-step fashion, illustrating how it processes new visual information and builds upon its history of actions to achieve the final goal.  The images and text clearly demonstrate Magma's ability to interpret user requests, generate a plan, and execute the plan by interacting with a mobile UI.
> <details>
> <summary>read the caption</summary>
> Figure 15: Examples for mobile UI navigation sample. We prompt the model with two tasks: “What’s the weather like in Tokyo” and “Install app ‘Instagram’”. The model take actions sequentially given the new observation and history action information.
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/magma_hotdog.png)

> 🔼 The figure shows a sequence of images depicting a robot's failed attempt at placing a sausage into a hotdog bun. This is a result of using the OpenVLA model, which demonstrates limitations in executing complex manipulation tasks requiring precise spatial understanding and planning.
> <details>
> <summary>read the caption</summary>
> a Robot policy rollout for task “Put the sausage to hotdog” for OpenVLA model. (Failure)
> </details>



![](https://arxiv.org/html/2502.13130/extracted/6213812/figures/magma_mushroom.png)

> 🔼 The figure shows a sequence of images depicting a robot's failed attempt to perform the task of picking up a mushroom and placing it in a pot.  The robot's actions are clumsy and inefficient, ultimately failing to complete the task successfully. This illustrates the limitations of the OpenVLA model in handling this specific robotic manipulation task, which requires precise spatial reasoning and planning.
> <details>
> <summary>read the caption</summary>
> b Robot policy rollout for task “Pick up the mushroom to the pot” for OpenVLA model. (Failure)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.2.1">
<tr class="ltx_tr" id="S5.T2.2.1.1">
<td class="ltx_td" id="S5.T2.2.1.1.1"></td>
<td class="ltx_td ltx_border_r" id="S5.T2.2.1.1.2"></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S5.T2.2.1.1.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S5.T2.2.1.1.3.1" style="width:118.7pt;height:8.800000000000001pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="width:118.7pt;transform:translate(0pt,2.92pt) rotate(-0deg) ;">
<p class="ltx_p" id="S5.T2.2.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.3.1.1.1">Multimodal Understanding</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" colspan="5" id="S5.T2.2.1.1.4">
<div class="ltx_inline-block ltx_transformed_outer" id="S5.T2.2.1.1.4.1" style="width:164.0pt;height:8.800000000000001pt;vertical-align:-1.9pt;"><span class="ltx_transformed_inner" style="width:164.0pt;transform:translate(0pt,2.92pt) rotate(-0deg) ;">
<p class="ltx_p" id="S5.T2.2.1.1.4.1.1"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.4.1.1.1">UI Action Grounding and Navigation</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.T2.2.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.1.5.1">Robot Manipulation</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.2.1.2.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.2.1.2.2">Size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.3">VQAv2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.4">TextVQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.5">POPE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.6">
<span class="ltx_text ltx_font_italic" id="S5.T2.2.1.2.6.1">SS</span>-Mobile</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.7">
<span class="ltx_text ltx_font_italic" id="S5.T2.2.1.2.7.1">SS</span>-Desktop</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.8">SS-Web</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.9">VWB-Ele-G</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.10">VWB-Act-G</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.11">SE-Google Robot</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.2.12">SE-Bridge</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.1.3.1">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.3.2">n/a</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.3">77.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.3.4.1">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.5">n/a</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.6">22.6/24.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.7">20.2/11.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.8">9.2/8.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.3.9.1">67.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.10"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.3.10.1">75.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.3.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.4">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.4.1">GPT-4V-OmniParser <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.4.2">n/a</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.3">n/a</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.4">n/a</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.5">n/a</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.6">
<span class="ltx_text ltx_font_bold" id="S5.T2.2.1.4.6.1">92.7</span>/49.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.7">64.9/26.3</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.8">
<span class="ltx_text ltx_font_bold" id="S5.T2.2.1.4.8.1">77.3</span>/39.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.10">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.11">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.4.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T2.2.1.5.1">LLaVA-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T2.2.1.5.2">7.4B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.3">78.5</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.4">58.2</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.5">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.7">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.9">12.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.10">13.6</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T2.2.1.5.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.6">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.6.1">LLaVA-Next <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.6.2">7.4B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.3"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.6.3.1">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.4">64.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.6.5.1">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.9">15.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.10">8.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.11">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.6.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.7">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.7.1">Qwen-VL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.7.2">9.6B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.3">78.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.4">63.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.5">n/a</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.6">7.5/4.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.7">5.7/5.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.8">3.5/2.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.9">14.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.10">10.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.11">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.7.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.8">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.8.1">Qwen-VL-Chat <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.8.2">9.6B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.3">78.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.4">61.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.5">n/a</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.10">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.11">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.8.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.1.9.1">Fuyu <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.9.2">8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.3">74.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.4">n/a</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.5">n/a</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.6">41.0/1.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.7">33.0/3.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.8">33.9/4.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.9">19.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.10">15.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.9.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.10">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.10.1">SeeClick <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.10.2">9.6B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.6">
<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.10.6.1">78.0</span>/<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.10.6.2">52.0</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.7">72.2/<span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.10.7.1">30.0</span>
</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.8">55.7/32.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.9">9.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.10">1.9</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.11">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.10.12">-</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.11">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.11.1">Octo <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib113" title=""><span class="ltx_text" style="font-size:90%;">113</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.11.2">93M</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.10">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.11">6.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.11.12"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.11.12.1">15.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.12">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.12.1">RT-1-X <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.12.2">35M</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.10">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.12.11.1">34.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.12.12">1.1</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.13">
<td class="ltx_td ltx_align_left" id="S5.T2.2.1.13.1">OpenVLA <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T2.2.1.13.2">8B</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.7">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.8">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.9">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.10">-</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.11">31.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.13.12">14.5</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.2.1.14.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T2.2.1.14.1.1">Magma</span>-8B (Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T2.2.1.14.2">8.6B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.14.3.1">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.14.4.1">66.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.5.1">87.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.6">60.4/<span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.6.1">58.5</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.7"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.7.1">75.3/52.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.8">69.1/<span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.8.1">52.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.9"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.9.1">96.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.2.1.14.10.1">71.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.11"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.11.1">52.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.14.12"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.14.12.1">35.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a zero-shot evaluation of the Magma model's performance across various agentic intelligence tasks, without any task-specific fine-tuning.  The results highlight Magma's ability to handle a wide range of tasks encompassing multimodal understanding, UI action grounding and navigation, and robot manipulation.  The table compares Magma's performance against other state-of-the-art models on established benchmarks such as ScreenSpot, VisualWebBench, and SimplerEnv, revealing Magma's superior performance and generalization capability across different domains.  The evaluation utilized OmniParser for object detection, focusing solely on detection without incorporating local semantic information.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot evaluation on agentic intelligence. We report the results for pretrained Magma without any domain-specific finetuning. Magma is the only model that can conduct the full task spectrum. “SS” denotes the ScreenSpot benchmark proposed in SeeClick [19]; “VWB” denotes VisualWebBench [79]; “SE” denotes the SimplerEnv simulator [65]. ‘n/a’ means not available and ‘-’ means not supported. For all related evaluations, we use OmniParser to provide the detection results only, without local semantics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.2.1">
<tr class="ltx_tr" id="S5.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.2.1.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S5.T3.2.1.1.2">SoM+ToM</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.3">SS-Overal</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.4">VWB-Ele-G</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.5">VWB-Act-G</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.6">SE-Bridge</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.7">SE-Google</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.2.1.2.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T3.2.1.2.1.1">Magma</span>-8B (UI)</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S5.T3.2.1.2.2">✗</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.3">57.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.4">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.5">58.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3">
<td class="ltx_td ltx_align_left" id="S5.T3.2.1.3.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T3.2.1.3.1.1">Magma</span>-8B (OXE)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.3.2">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.6">22.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.7">35.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.4">
<td class="ltx_td ltx_align_left" id="S5.T3.2.1.4.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T3.2.1.4.1.1">Magma</span>-8B (ACT)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.4.2">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.3">56.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.4">89.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.5">21.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.6">17.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.4.7">31.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.5">
<td class="ltx_td ltx_align_left" id="S5.T3.2.1.5.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T3.2.1.5.1.1">Magma</span>-8B (Full)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S5.T3.2.1.5.2">✗</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.3">57.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.4">90.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.5">25.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.6">17.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.5.7">37.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.2.1.6.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T3.2.1.6.1.1">Magma</span>-8B (Full)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S5.T3.2.1.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.6.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.6.3.1">61.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.6.4"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.6.4.1">96.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.6.5"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.6.5.1">71.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.6.6"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.6.6.1">35.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.6.7"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.6.7.1">52.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of data sources and training methods on the performance of the Magma model.  It compares the model's performance when trained with: 1) only UI data, 2) only robotics data, 3) both UI and robotics data (without using the proposed Set-of-Mark and Trace-of-Mark methods), 4) the full dataset (including the proposed training methods). The 'w/o SoM+ToM' condition indicates that the original action supervisions (2D coordinates for UI tasks and 7 degrees of freedom for robotics tasks) were used, instead of the novel methods introduced in the paper. The results highlight the importance of the proposed training techniques and data diversity for the model's overall performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on the effect of data mixtures and pretraining techniques. w/o SoM+Tom means using original action supervisions (2D coordinates for UI and 7DoF for robots.)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.4.4">
<tr class="ltx_tr" id="S5.T4.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.5.1" rowspan="2"><span class="ltx_text" id="S5.T4.4.4.5.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.5.2" rowspan="2"><span class="ltx_text" id="S5.T4.4.4.5.2.1" style="font-size:80%;">Backbone</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.T4.4.4.5.3"><span class="ltx_text" id="S5.T4.4.4.5.3.1" style="font-size:80%;">Input Source</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S5.T4.4.4.5.4"><span class="ltx_text" id="S5.T4.4.4.5.4.1" style="font-size:80%;">Cross-Website</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S5.T4.4.4.5.5"><span class="ltx_text" id="S5.T4.4.4.5.5.1" style="font-size:80%;">Cross-Task</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S5.T4.4.4.5.6"><span class="ltx_text" id="S5.T4.4.4.5.6.1" style="font-size:80%;">Cross-Domain</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.6">
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.1"><span class="ltx_text" id="S5.T4.4.4.6.1.1" style="font-size:80%;">DoM Tree</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.2"><span class="ltx_text" id="S5.T4.4.4.6.2.1" style="font-size:80%;">Image</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.3"><span class="ltx_text" id="S5.T4.4.4.6.3.1" style="font-size:80%;">Ele. Acc</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.4"><span class="ltx_text" id="S5.T4.4.4.6.4.1" style="font-size:80%;">Op. F1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.5"><span class="ltx_text" id="S5.T4.4.4.6.5.1" style="font-size:80%;">Step SR</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.6"><span class="ltx_text" id="S5.T4.4.4.6.6.1" style="font-size:80%;">Ele. Acc</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.7"><span class="ltx_text" id="S5.T4.4.4.6.7.1" style="font-size:80%;">Op. F1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.8"><span class="ltx_text" id="S5.T4.4.4.6.8.1" style="font-size:80%;">Step SR</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.9"><span class="ltx_text" id="S5.T4.4.4.6.9.1" style="font-size:80%;">Ele. Acc</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.10"><span class="ltx_text" id="S5.T4.4.4.6.10.1" style="font-size:80%;">Op. F1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.6.11"><span class="ltx_text" id="S5.T4.4.4.6.11.1" style="font-size:80%;">Step SR</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.4.4.7.1"><span class="ltx_text" id="S5.T4.4.4.7.1.1" style="font-size:80%;">GPT-4-MindAct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.4.4.7.2">
<span class="ltx_text" id="S5.T4.4.4.7.2.1" style="font-size:80%;">GPT-4 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.7.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib98" title=""><span class="ltx_text" style="font-size:90%;">98</span></a><span class="ltx_text" id="S5.T4.4.4.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.3"><span class="ltx_text" id="S5.T4.4.4.7.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_tt" id="S5.T4.4.4.7.4"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.5"><span class="ltx_text" id="S5.T4.4.4.7.5.1" style="font-size:80%;">35.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.6"><span class="ltx_text" id="S5.T4.4.4.7.6.1" style="font-size:80%;">51.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.7"><span class="ltx_text" id="S5.T4.4.4.7.7.1" style="font-size:80%;">30.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.8"><span class="ltx_text" id="S5.T4.4.4.7.8.1" style="font-size:80%;">41.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.9"><span class="ltx_text" id="S5.T4.4.4.7.9.1" style="font-size:80%;">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.10"><span class="ltx_text" id="S5.T4.4.4.7.10.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.11"><span class="ltx_text" id="S5.T4.4.4.7.11.1" style="font-size:80%;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.12"><span class="ltx_text" id="S5.T4.4.4.7.12.1" style="font-size:80%;">46.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.4.4.7.13"><span class="ltx_text" id="S5.T4.4.4.7.13.1" style="font-size:80%;">26.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.8.1"><span class="ltx_text" id="S5.T4.4.4.8.1.1" style="font-size:80%;">GPT-4V-OmniParser <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.8.2">
<span class="ltx_text" id="S5.T4.4.4.8.2.1" style="font-size:80%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.8.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S5.T4.4.4.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.3"><span class="ltx_text" id="S5.T4.4.4.8.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.4"><span class="ltx_text" id="S5.T4.4.4.8.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.5"><span class="ltx_text" id="S5.T4.4.4.8.5.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.6"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.8.6.1" style="font-size:80%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.7"><span class="ltx_text" id="S5.T4.4.4.8.7.1" style="font-size:80%;">36.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.8"><span class="ltx_text" id="S5.T4.4.4.8.8.1" style="font-size:80%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.9"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.8.9.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.10"><span class="ltx_text" id="S5.T4.4.4.8.10.1" style="font-size:80%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.11"><span class="ltx_text" id="S5.T4.4.4.8.11.1" style="font-size:80%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.12"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.8.12.1" style="font-size:80%;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.8.13"><span class="ltx_text" id="S5.T4.4.4.8.13.1" style="font-size:80%;">42.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.4.4.9.1" rowspan="3"><span class="ltx_text" id="S5.T4.4.4.9.1.1" style="font-size:80%;">SeeAct <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib141" title=""><span class="ltx_text" style="font-size:90%;">141</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.4.4.9.2">
<span class="ltx_text" id="S5.T4.4.4.9.2.1" style="font-size:80%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.9.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S5.T4.4.4.9.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T4.4.4.9.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.4"><span class="ltx_text" id="S5.T4.4.4.9.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S5.T4.4.4.9.5"></td>
<td class="ltx_td ltx_border_t" id="S5.T4.4.4.9.6"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.7"><span class="ltx_text" id="S5.T4.4.4.9.7.1" style="font-size:80%;">13.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.8"><span class="ltx_text" id="S5.T4.4.4.9.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.9"><span class="ltx_text" id="S5.T4.4.4.9.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.10"><span class="ltx_text" id="S5.T4.4.4.9.10.1" style="font-size:80%;">20.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.11"><span class="ltx_text" id="S5.T4.4.4.9.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.12"><span class="ltx_text" id="S5.T4.4.4.9.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.9.13"><span class="ltx_text" id="S5.T4.4.4.9.13.1" style="font-size:80%;">23.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.10">
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.10.1">
<span class="ltx_text" id="S5.T4.4.4.10.1.1" style="font-size:80%;">Gemini-Pro </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a><span class="ltx_text" id="S5.T4.4.4.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.2"><span class="ltx_text" id="S5.T4.4.4.10.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.3"><span class="ltx_text" id="S5.T4.4.4.10.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.4"><span class="ltx_text" id="S5.T4.4.4.10.4.1" style="font-size:80%;">21.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.5"><span class="ltx_text" id="S5.T4.4.4.10.5.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.6"><span class="ltx_text" id="S5.T4.4.4.10.6.1" style="font-size:80%;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.7"><span class="ltx_text" id="S5.T4.4.4.10.7.1" style="font-size:80%;">21.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.8"><span class="ltx_text" id="S5.T4.4.4.10.8.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.9"><span class="ltx_text" id="S5.T4.4.4.10.9.1" style="font-size:80%;">19.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.10"><span class="ltx_text" id="S5.T4.4.4.10.10.1" style="font-size:80%;">20.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.11"><span class="ltx_text" id="S5.T4.4.4.10.11.1" style="font-size:80%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.10.12"><span class="ltx_text" id="S5.T4.4.4.10.12.1" style="font-size:80%;">18.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.11">
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.11.1">
<span class="ltx_text" id="S5.T4.4.4.11.1.1" style="font-size:80%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S5.T4.4.4.11.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.2"><span class="ltx_text" id="S5.T4.4.4.11.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.3"><span class="ltx_text" id="S5.T4.4.4.11.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.4"><span class="ltx_text" id="S5.T4.4.4.11.4.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.5"><span class="ltx_text" id="S5.T4.4.4.11.5.1" style="font-size:80%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.6"><span class="ltx_text" id="S5.T4.4.4.11.6.1" style="font-size:80%;">32.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.7"><span class="ltx_text" id="S5.T4.4.4.11.7.1" style="font-size:80%;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.8"><span class="ltx_text" id="S5.T4.4.4.11.8.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.9"><span class="ltx_text" id="S5.T4.4.4.11.9.1" style="font-size:80%;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.10"><span class="ltx_text" id="S5.T4.4.4.11.10.1" style="font-size:80%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.11"><span class="ltx_text" id="S5.T4.4.4.11.11.1" style="font-size:80%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.11.12"><span class="ltx_text" id="S5.T4.4.4.11.12.1" style="font-size:80%;">36.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T4.1.1.1.1">
<span class="ltx_text" id="S5.T4.1.1.1.1.1" style="font-size:80%;">Fuyu-8B</span><sup class="ltx_sup" id="S5.T4.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.1.1.1.1.2.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T4.1.1.1.2">
<span class="ltx_text" id="S5.T4.1.1.1.2.1" style="font-size:80%;">Fuyu-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.1.1.1.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S5.T4.1.1.1.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_border_tt" id="S5.T4.1.1.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.4"><span class="ltx_text" id="S5.T4.1.1.1.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.5"><span class="ltx_text" id="S5.T4.1.1.1.5.1" style="font-size:80%;">4.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.6"><span class="ltx_text" id="S5.T4.1.1.1.6.1" style="font-size:80%;">81.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.7"><span class="ltx_text" id="S5.T4.1.1.1.7.1" style="font-size:80%;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.8"><span class="ltx_text" id="S5.T4.1.1.1.8.1" style="font-size:80%;">8.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.9"><span class="ltx_text" id="S5.T4.1.1.1.9.1" style="font-size:80%;">83.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.10"><span class="ltx_text" id="S5.T4.1.1.1.10.1" style="font-size:80%;">6.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.11"><span class="ltx_text" id="S5.T4.1.1.1.11.1" style="font-size:80%;">3.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.12"><span class="ltx_text" id="S5.T4.1.1.1.12.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.1.1.1.13"><span class="ltx_text" id="S5.T4.1.1.1.13.1" style="font-size:80%;">3.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.12.1">
<span class="ltx_text" id="S5.T4.4.4.12.1.1" style="font-size:80%;">Fuyu-8B-GUI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.12.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S5.T4.4.4.12.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.12.2">
<span class="ltx_text" id="S5.T4.4.4.12.2.1" style="font-size:80%;">Fuyu-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.12.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S5.T4.4.4.12.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T4.4.4.12.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.4"><span class="ltx_text" id="S5.T4.4.4.12.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.5"><span class="ltx_text" id="S5.T4.4.4.12.5.1" style="font-size:80%;">13.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.6"><span class="ltx_text" id="S5.T4.4.4.12.6.1" style="font-size:80%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.7"><span class="ltx_text" id="S5.T4.4.4.12.7.1" style="font-size:80%;">12.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.8"><span class="ltx_text" id="S5.T4.4.4.12.8.1" style="font-size:80%;">19.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.9"><span class="ltx_text" id="S5.T4.4.4.12.9.1" style="font-size:80%;">86.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.10"><span class="ltx_text" id="S5.T4.4.4.12.10.1" style="font-size:80%;">15.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.11"><span class="ltx_text" id="S5.T4.4.4.12.11.1" style="font-size:80%;">14.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.12"><span class="ltx_text" id="S5.T4.4.4.12.12.1" style="font-size:80%;">83.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.12.13"><span class="ltx_text" id="S5.T4.4.4.12.13.1" style="font-size:80%;">11.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.2.2.2.1">
<span class="ltx_text" id="S5.T4.2.2.2.1.1" style="font-size:80%;">MiniCPM-V</span><sup class="ltx_sup" id="S5.T4.2.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.2.2.2.1.2.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.2.2.2.2">
<span class="ltx_text" id="S5.T4.2.2.2.2.1" style="font-size:80%;">MiniCPM-V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.2.2.2.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a><span class="ltx_text" id="S5.T4.2.2.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T4.2.2.2.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.4"><span class="ltx_text" id="S5.T4.2.2.2.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.5"><span class="ltx_text" id="S5.T4.2.2.2.5.1" style="font-size:80%;">8.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.6"><span class="ltx_text" id="S5.T4.2.2.2.6.1" style="font-size:80%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.7"><span class="ltx_text" id="S5.T4.2.2.2.7.1" style="font-size:80%;">6.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.8"><span class="ltx_text" id="S5.T4.2.2.2.8.1" style="font-size:80%;">11.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.9"><span class="ltx_text" id="S5.T4.2.2.2.9.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.10"><span class="ltx_text" id="S5.T4.2.2.2.10.1" style="font-size:80%;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.11"><span class="ltx_text" id="S5.T4.2.2.2.11.1" style="font-size:80%;">6.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.12"><span class="ltx_text" id="S5.T4.2.2.2.12.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.2.2.13"><span class="ltx_text" id="S5.T4.2.2.2.13.1" style="font-size:80%;">5.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.13.1">
<span class="ltx_text" id="S5.T4.4.4.13.1.1" style="font-size:80%;">MiniCPM-V-GUI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.13.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S5.T4.4.4.13.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.13.2">
<span class="ltx_text" id="S5.T4.4.4.13.2.1" style="font-size:80%;">MiniCPM-V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.13.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a><span class="ltx_text" id="S5.T4.4.4.13.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T4.4.4.13.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.4"><span class="ltx_text" id="S5.T4.4.4.13.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.5"><span class="ltx_text" id="S5.T4.4.4.13.5.1" style="font-size:80%;">20.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.6"><span class="ltx_text" id="S5.T4.4.4.13.6.1" style="font-size:80%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.7"><span class="ltx_text" id="S5.T4.4.4.13.7.1" style="font-size:80%;">17.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.8"><span class="ltx_text" id="S5.T4.4.4.13.8.1" style="font-size:80%;">23.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.9"><span class="ltx_text" id="S5.T4.4.4.13.9.1" style="font-size:80%;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.10"><span class="ltx_text" id="S5.T4.4.4.13.10.1" style="font-size:80%;">20.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.11"><span class="ltx_text" id="S5.T4.4.4.13.11.1" style="font-size:80%;">17.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.12"><span class="ltx_text" id="S5.T4.4.4.13.12.1" style="font-size:80%;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.13.13"><span class="ltx_text" id="S5.T4.4.4.13.13.1" style="font-size:80%;">17.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.3.3.3.1">
<span class="ltx_text" id="S5.T4.3.3.3.1.1" style="font-size:80%;">Qwen-VL</span><sup class="ltx_sup" id="S5.T4.3.3.3.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.3.3.3.1.2.1" style="font-size:80%;">♮</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.3.3.3.2">
<span class="ltx_text" id="S5.T4.3.3.3.2.1" style="font-size:80%;">Qwen-VL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.3.3.3.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S5.T4.3.3.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T4.3.3.3.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.4"><span class="ltx_text" id="S5.T4.3.3.3.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.5"><span class="ltx_text" id="S5.T4.3.3.3.5.1" style="font-size:80%;">13.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.6"><span class="ltx_text" id="S5.T4.3.3.3.6.1" style="font-size:80%;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.7"><span class="ltx_text" id="S5.T4.3.3.3.7.1" style="font-size:80%;">9.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.8"><span class="ltx_text" id="S5.T4.3.3.3.8.1" style="font-size:80%;">15.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.9"><span class="ltx_text" id="S5.T4.3.3.3.9.1" style="font-size:80%;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.10"><span class="ltx_text" id="S5.T4.3.3.3.10.1" style="font-size:80%;">13.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.11"><span class="ltx_text" id="S5.T4.3.3.3.11.1" style="font-size:80%;">14.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.12"><span class="ltx_text" id="S5.T4.3.3.3.12.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.3.3.3.13"><span class="ltx_text" id="S5.T4.3.3.3.13.1" style="font-size:80%;">12.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.14.1">
<span class="ltx_text" id="S5.T4.4.4.14.1.1" style="font-size:80%;">SeeClick </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.14.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T4.4.4.14.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.14.2">
<span class="ltx_text" id="S5.T4.4.4.14.2.1" style="font-size:80%;">Qwen-VL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.14.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S5.T4.4.4.14.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T4.4.4.14.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.4"><span class="ltx_text" id="S5.T4.4.4.14.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.5"><span class="ltx_text" id="S5.T4.4.4.14.5.1" style="font-size:80%;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.6"><span class="ltx_text" id="S5.T4.4.4.14.6.1" style="font-size:80%;">80.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.7"><span class="ltx_text" id="S5.T4.4.4.14.7.1" style="font-size:80%;">16.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.8"><span class="ltx_text" id="S5.T4.4.4.14.8.1" style="font-size:80%;">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.9"><span class="ltx_text" id="S5.T4.4.4.14.9.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.10"><span class="ltx_text" id="S5.T4.4.4.14.10.1" style="font-size:80%;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.11"><span class="ltx_text" id="S5.T4.4.4.14.11.1" style="font-size:80%;">23.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.12"><span class="ltx_text" id="S5.T4.4.4.14.12.1" style="font-size:80%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.14.13"><span class="ltx_text" id="S5.T4.4.4.14.13.1" style="font-size:80%;">20.8</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.4.1">
<span class="ltx_text" id="S5.T4.4.4.4.1.1" style="font-size:80%;">CogAgent</span><sup class="ltx_sup" id="S5.T4.4.4.4.1.2"><span class="ltx_text ltx_font_italic" id="S5.T4.4.4.4.1.2.1" style="font-size:80%;">†</span></sup><span class="ltx_text" id="S5.T4.4.4.4.1.3" style="font-size:80%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.4.1.4.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S5.T4.4.4.4.1.5.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.4.2">
<span class="ltx_text" id="S5.T4.4.4.4.2.1" style="font-size:80%;">CogVLM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.4.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib118" title=""><span class="ltx_text" style="font-size:90%;">118</span></a><span class="ltx_text" id="S5.T4.4.4.4.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T4.4.4.4.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.4"><span class="ltx_text" id="S5.T4.4.4.4.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.5"><span class="ltx_text" id="S5.T4.4.4.4.5.1" style="font-size:80%;">27.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.6"><span class="ltx_text" id="S5.T4.4.4.4.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.7"><span class="ltx_text" id="S5.T4.4.4.4.7.1" style="font-size:80%;">23.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.8"><span class="ltx_text" id="S5.T4.4.4.4.8.1" style="font-size:80%;">30.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.9"><span class="ltx_text" id="S5.T4.4.4.4.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.10"><span class="ltx_text" id="S5.T4.4.4.4.10.1" style="font-size:80%;">26.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.11"><span class="ltx_text" id="S5.T4.4.4.4.11.1" style="font-size:80%;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.12"><span class="ltx_text" id="S5.T4.4.4.4.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.4.13"><span class="ltx_text" id="S5.T4.4.4.4.13.1" style="font-size:80%;">28.5</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T4.4.4.15.1">
<span class="ltx_text" id="S5.T4.4.4.15.1.1" style="font-size:80%;">Qwen2-UIX </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.15.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib78" title=""><span class="ltx_text" style="font-size:90%;">78</span></a><span class="ltx_text" id="S5.T4.4.4.15.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T4.4.4.15.2">
<span class="ltx_text" id="S5.T4.4.4.15.2.1" style="font-size:80%;">Qwen2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.15.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a><span class="ltx_text" id="S5.T4.4.4.15.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T4.4.4.15.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.4"><span class="ltx_text" id="S5.T4.4.4.15.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.5"><span class="ltx_text" id="S5.T4.4.4.15.5.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.6"><span class="ltx_text" id="S5.T4.4.4.15.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.7"><span class="ltx_text" id="S5.T4.4.4.15.7.1" style="font-size:80%;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.8"><span class="ltx_text" id="S5.T4.4.4.15.8.1" style="font-size:80%;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.9"><span class="ltx_text" id="S5.T4.4.4.15.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.10"><span class="ltx_text" id="S5.T4.4.4.15.10.1" style="font-size:80%;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.11"><span class="ltx_text" id="S5.T4.4.4.15.11.1" style="font-size:80%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.12"><span class="ltx_text" id="S5.T4.4.4.15.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.4.4.15.13"><span class="ltx_text" id="S5.T4.4.4.15.13.1" style="font-size:80%;">34.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.4.4.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T4.4.4.16.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T4.4.4.16.1.1" style="font-size:80%;">Magma</span><span class="ltx_text" id="S5.T4.4.4.16.1.2" style="font-size:80%;">-8B (Ours)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.4.4.16.2">
<span class="ltx_text" id="S5.T4.4.4.16.2.1" style="font-size:80%;">LLaMA3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T4.4.4.16.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a><span class="ltx_text" id="S5.T4.4.4.16.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T4.4.4.16.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.4"><span class="ltx_text" id="S5.T4.4.4.16.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.5"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.16.5.1" style="font-size:80%;">57.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.6"><span class="ltx_text" id="S5.T4.4.4.16.6.1" style="font-size:80%;">76.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.7"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.16.7.1" style="font-size:80%;">45.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.8"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.16.8.1" style="font-size:80%;">54.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.9"><span class="ltx_text" id="S5.T4.4.4.16.9.1" style="font-size:80%;">79.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.10"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.16.10.1" style="font-size:80%;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.11"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.16.11.1" style="font-size:80%;">55.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.12"><span class="ltx_text" id="S5.T4.4.4.16.12.1" style="font-size:80%;">80.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.4.4.16.13"><span class="ltx_text ltx_font_bold" id="S5.T4.4.4.16.13.1" style="font-size:80%;">47.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of fine-tuning various models on the Mind2Web benchmark for web UI navigation.  It compares the performance of different models across three key metrics: Element Selection Accuracy (Ele. Acc), which measures the accuracy of selecting the correct UI element; Operation F1 Score (Op. F1), which assesses the accuracy of predicting the correct operation (e.g., click, type); and Step-wise Success Rate (Step SR), representing the success rate at each step of the navigation task. The table includes a breakdown of results for different models, highlighting their strengths and weaknesses in each metric.  Note that some numbers are taken from other studies as indicated by the symbols in the caption.
> <details>
> <summary>read the caption</summary>
> Table 4: Efficient finetuning on Mind2Web for web UI navigation. “Ele. Acc” denotes element selection accuracy. “Op. F1” denotes the token-wise F1 score between predicted ground-truth operation. “Step SR” denotes the step-wise success rate. ‡ Numbers reported in Chen et al. [17]. ♮ Numbers reported in Cheng et al. [19]. † Numbers reported in Liu et al. [78].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.5.5">
<tr class="ltx_tr" id="S5.T5.5.5.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.5.5.6.1"><span class="ltx_text" id="S5.T5.5.5.6.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.6.2"><span class="ltx_text" id="S5.T5.5.5.6.2.1" style="font-size:80%;">Backbone</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.3"><span class="ltx_text" id="S5.T5.5.5.6.3.1" style="font-size:80%;">DoM Tree</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.4"><span class="ltx_text" id="S5.T5.5.5.6.4.1" style="font-size:80%;">Image</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.5"><span class="ltx_text" id="S5.T5.5.5.6.5.1" style="font-size:80%;">General</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.6"><span class="ltx_text" id="S5.T5.5.5.6.6.1" style="font-size:80%;">Install</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.7"><span class="ltx_text" id="S5.T5.5.5.6.7.1" style="font-size:80%;">GoogleApps</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.8"><span class="ltx_text" id="S5.T5.5.5.6.8.1" style="font-size:80%;">Single</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.9"><span class="ltx_text" id="S5.T5.5.5.6.9.1" style="font-size:80%;">WebShopping</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.6.10"><span class="ltx_text" id="S5.T5.5.5.6.10.1" style="font-size:80%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.1.1.1.1"><span class="ltx_text" id="S5.T5.1.1.1.1.1" style="font-size:80%;">GPT-4V-SeeAct<sup class="ltx_sup" id="S5.T5.1.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T5.1.1.1.1.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib141" title=""><span class="ltx_text" style="font-size:90%;">141</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.1.1.1.2">
<span class="ltx_text" id="S5.T5.1.1.1.2.1" style="font-size:80%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.1.1.1.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S5.T5.1.1.1.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T5.1.1.1.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.4"><span class="ltx_text" id="S5.T5.1.1.1.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.5"><span class="ltx_text" id="S5.T5.1.1.1.5.1" style="font-size:80%;">34.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.6"><span class="ltx_text" id="S5.T5.1.1.1.6.1" style="font-size:80%;">39.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.7"><span class="ltx_text" id="S5.T5.1.1.1.7.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.8"><span class="ltx_text" id="S5.T5.1.1.1.8.1" style="font-size:80%;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.9"><span class="ltx_text" id="S5.T5.1.1.1.9.1" style="font-size:80%;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.1.1.1.10"><span class="ltx_text" id="S5.T5.1.1.1.10.1" style="font-size:80%;">39.6</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.2.2.2.1"><span class="ltx_text" id="S5.T5.2.2.2.1.1" style="font-size:80%;">GPT-4V-ReAct<sup class="ltx_sup" id="S5.T5.2.2.2.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T5.2.2.2.1.1.1.1">†</span></sup> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib127" title=""><span class="ltx_text" style="font-size:90%;">127</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.2.2.2.2">
<span class="ltx_text" id="S5.T5.2.2.2.2.1" style="font-size:80%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.2.2.2.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S5.T5.2.2.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T5.2.2.2.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.4"><span class="ltx_text" id="S5.T5.2.2.2.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.5"><span class="ltx_text" id="S5.T5.2.2.2.5.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.6"><span class="ltx_text" id="S5.T5.2.2.2.6.1" style="font-size:80%;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.7"><span class="ltx_text" id="S5.T5.2.2.2.7.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.8"><span class="ltx_text" id="S5.T5.2.2.2.8.1" style="font-size:80%;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.9"><span class="ltx_text" id="S5.T5.2.2.2.9.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.2.2.10"><span class="ltx_text" id="S5.T5.2.2.2.10.1" style="font-size:80%;">42.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.5.5.7.1"><span class="ltx_text" id="S5.T5.5.5.7.1.1" style="font-size:80%;">GPT-4V-OmniParser <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.7.2">
<span class="ltx_text" id="S5.T5.5.5.7.2.1" style="font-size:80%;">GPT-4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.7.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib99" title=""><span class="ltx_text" style="font-size:90%;">99</span></a><span class="ltx_text" id="S5.T5.5.5.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.3"><span class="ltx_text" id="S5.T5.5.5.7.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.4"><span class="ltx_text" id="S5.T5.5.5.7.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.5"><span class="ltx_text" id="S5.T5.5.5.7.5.1" style="font-size:80%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.6"><span class="ltx_text" id="S5.T5.5.5.7.6.1" style="font-size:80%;">57.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.7"><span class="ltx_text" id="S5.T5.5.5.7.7.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.8"><span class="ltx_text" id="S5.T5.5.5.7.8.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.9"><span class="ltx_text" id="S5.T5.5.5.7.9.1" style="font-size:80%;">52.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.7.10"><span class="ltx_text" id="S5.T5.5.5.7.10.1" style="font-size:80%;">57.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T5.3.3.3.1">
<span class="ltx_text" id="S5.T5.3.3.3.1.1" style="font-size:80%;">Fuyu-8B</span><sup class="ltx_sup" id="S5.T5.3.3.3.1.2"><span class="ltx_text ltx_font_italic" id="S5.T5.3.3.3.1.2.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T5.3.3.3.2">
<span class="ltx_text" id="S5.T5.3.3.3.2.1" style="font-size:80%;">Fuyu-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.3.3.3.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S5.T5.3.3.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_border_tt" id="S5.T5.3.3.3.3"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3.4"><span class="ltx_text" id="S5.T5.3.3.3.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3.5"><span class="ltx_text" id="S5.T5.3.3.3.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3.6"><span class="ltx_text" id="S5.T5.3.3.3.6.1" style="font-size:80%;">45.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3.7"><span class="ltx_text" id="S5.T5.3.3.3.7.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3.8"><span class="ltx_text" id="S5.T5.3.3.3.8.1" style="font-size:80%;">47.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3.9"><span class="ltx_text" id="S5.T5.3.3.3.9.1" style="font-size:80%;">40.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.3.3.10"><span class="ltx_text" id="S5.T5.3.3.3.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.5.5.8.1">
<span class="ltx_text" id="S5.T5.5.5.8.1.1" style="font-size:80%;">Fuyu-8B-GUI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S5.T5.5.5.8.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.8.2">
<span class="ltx_text" id="S5.T5.5.5.8.2.1" style="font-size:80%;">Fuyu-8B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.8.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S5.T5.5.5.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T5.5.5.8.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.4"><span class="ltx_text" id="S5.T5.5.5.8.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.5"><span class="ltx_text" id="S5.T5.5.5.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.6"><span class="ltx_text" id="S5.T5.5.5.8.6.1" style="font-size:80%;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.7"><span class="ltx_text" id="S5.T5.5.5.8.7.1" style="font-size:80%;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.8"><span class="ltx_text" id="S5.T5.5.5.8.8.1" style="font-size:80%;">45.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.9"><span class="ltx_text" id="S5.T5.5.5.8.9.1" style="font-size:80%;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.8.10"><span class="ltx_text" id="S5.T5.5.5.8.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.4.4.4.1">
<span class="ltx_text" id="S5.T5.4.4.4.1.1" style="font-size:80%;">MiniCPM-V</span><sup class="ltx_sup" id="S5.T5.4.4.4.1.2"><span class="ltx_text ltx_font_italic" id="S5.T5.4.4.4.1.2.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T5.4.4.4.2">
<span class="ltx_text" id="S5.T5.4.4.4.2.1" style="font-size:80%;">MiniCPM-V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.4.4.4.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a><span class="ltx_text" id="S5.T5.4.4.4.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T5.4.4.4.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.4"><span class="ltx_text" id="S5.T5.4.4.4.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.5"><span class="ltx_text" id="S5.T5.4.4.4.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.6"><span class="ltx_text" id="S5.T5.4.4.4.6.1" style="font-size:80%;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.7"><span class="ltx_text" id="S5.T5.4.4.4.7.1" style="font-size:80%;">45.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.8"><span class="ltx_text" id="S5.T5.4.4.4.8.1" style="font-size:80%;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.9"><span class="ltx_text" id="S5.T5.4.4.4.9.1" style="font-size:80%;">44.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.4.4.4.10"><span class="ltx_text" id="S5.T5.4.4.4.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.5.5.9.1">
<span class="ltx_text" id="S5.T5.5.5.9.1.1" style="font-size:80%;">MiniCPM-V-GUI </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="S5.T5.5.5.9.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.9.2">
<span class="ltx_text" id="S5.T5.5.5.9.2.1" style="font-size:80%;">MiniCPM-V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.9.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib128" title=""><span class="ltx_text" style="font-size:90%;">128</span></a><span class="ltx_text" id="S5.T5.5.5.9.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T5.5.5.9.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.9.4"><span class="ltx_text" id="S5.T5.5.5.9.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.9.5"><span class="ltx_text" id="S5.T5.5.5.9.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.9.6"><span class="ltx_text" id="S5.T5.5.5.9.6.1" style="font-size:80%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.9.7"><span class="ltx_text" id="S5.T5.5.5.9.7.1" style="font-size:80%;">46.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.9.8"><span class="ltx_text" id="S5.T5.5.5.9.8.1" style="font-size:80%;">67.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.9.9"><span class="ltx_text" id="S5.T5.5.5.9.9.1" style="font-size:80%;">57.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.9.10"><span class="ltx_text" id="S5.T5.5.5.9.10.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.5.5.5.1">
<span class="ltx_text" id="S5.T5.5.5.5.1.1" style="font-size:80%;">Qwen-VL</span><sup class="ltx_sup" id="S5.T5.5.5.5.1.2"><span class="ltx_text ltx_font_italic" id="S5.T5.5.5.5.1.2.1" style="font-size:80%;">♮</span></sup>
</td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.5.2">
<span class="ltx_text" id="S5.T5.5.5.5.2.1" style="font-size:80%;">Qwen-VL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.5.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S5.T5.5.5.5.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T5.5.5.5.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.4"><span class="ltx_text" id="S5.T5.5.5.5.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.5"><span class="ltx_text" id="S5.T5.5.5.5.5.1" style="font-size:80%;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.6"><span class="ltx_text" id="S5.T5.5.5.5.6.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.7"><span class="ltx_text" id="S5.T5.5.5.5.7.1" style="font-size:80%;">46.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.8"><span class="ltx_text" id="S5.T5.5.5.5.8.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.9"><span class="ltx_text" id="S5.T5.5.5.5.9.1" style="font-size:80%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.5.10"><span class="ltx_text" id="S5.T5.5.5.5.10.1" style="font-size:80%;">54.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T5.5.5.10.1">
<span class="ltx_text" id="S5.T5.5.5.10.1.1" style="font-size:80%;">SeeClick </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S5.T5.5.5.10.1.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T5.5.5.10.2">
<span class="ltx_text" id="S5.T5.5.5.10.2.1" style="font-size:80%;">Qwen-VL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.10.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S5.T5.5.5.10.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td" id="S5.T5.5.5.10.3"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.10.4"><span class="ltx_text" id="S5.T5.5.5.10.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.10.5"><span class="ltx_text" id="S5.T5.5.5.10.5.1" style="font-size:80%;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.10.6"><span class="ltx_text" id="S5.T5.5.5.10.6.1" style="font-size:80%;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.10.7"><span class="ltx_text" id="S5.T5.5.5.10.7.1" style="font-size:80%;">54.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.10.8"><span class="ltx_text" id="S5.T5.5.5.10.8.1" style="font-size:80%;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.10.9"><span class="ltx_text" id="S5.T5.5.5.10.9.1" style="font-size:80%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.5.5.10.10"><span class="ltx_text" id="S5.T5.5.5.10.10.1" style="font-size:80%;">59.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.5.5.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T5.5.5.11.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T5.5.5.11.1.1" style="font-size:80%;">Magma</span><span class="ltx_text" id="S5.T5.5.5.11.1.2" style="font-size:80%;">-8B (Ours)</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.5.5.11.2">
<span class="ltx_text" id="S5.T5.5.5.11.2.1" style="font-size:80%;">LLaMA3 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T5.5.5.11.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a><span class="ltx_text" id="S5.T5.5.5.11.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T5.5.5.11.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.11.4"><span class="ltx_text" id="S5.T5.5.5.11.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.11.5"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.11.5.1" style="font-size:80%;">61.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.11.6"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.11.6.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.11.7"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.11.7.1" style="font-size:80%;">62.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.11.8"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.11.8.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.11.9"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.11.9.1" style="font-size:80%;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.5.5.11.10"><span class="ltx_text ltx_font_bold" id="S5.T5.5.5.11.10.1" style="font-size:80%;">67.3</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the results of fine-tuning various models on the AITW benchmark for mobile UI navigation.  The models were either trained using the Document Object Model (DOM) tree or image screenshots.  The table compares the performance of Magma against other models across multiple sub-tasks within the AITW benchmark (element selection accuracy, operation F1 score, and step-wise success rate).  Results from other papers are included for comparison and marked with appropriate citations (Zhang et al. [138], Chen et al. [17], and Cheng et al. [19]). Magma's performance is evaluated after joint finetuning across all subtasks.
> <details>
> <summary>read the caption</summary>
> Table 5: Efficient finetuning on AITW for mobile UI navigation. We compared models either using DoM tree or image screenshot. We finetune our Magma jointly and then report the results on individual tasks. † Numbers reported in Zhang et al. [138]. ‡ Numbers reported in Chen et al. [17]. ♮ Numbers reported in Cheng et al. [19].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T6.2.1">
<tr class="ltx_tr" id="S5.T6.2.1.1">
<td class="ltx_td ltx_border_r" id="S5.T6.2.1.1.1"></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.2" rowspan="2"><span class="ltx_text" id="S5.T6.2.1.1.2.1">VSR</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.1.3" rowspan="2"><span class="ltx_text" id="S5.T6.2.1.1.3.1">BLINK-val</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S5.T6.2.1.1.4">SpatialEval<span class="ltx_note ltx_role_footnote" id="footnote2"><sup class="ltx_note_mark">2</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">2</sup><span class="ltx_tag ltx_tag_note">2</span>We evaluate our model using the standard option matching before the official evaluation pipeline was released and will update in the next version.</span></span></span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.1.2.1">Model</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.2.2">
<span class="ltx_text" id="S5.T6.2.1.2.2.1"></span> <span class="ltx_text" id="S5.T6.2.1.2.2.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.2.1.2.2.2.1">
<span class="ltx_tr" id="S5.T6.2.1.2.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.2.1.2.2.2.1.1.1">Spatial Map</span></span>
</span></span><span class="ltx_text" id="S5.T6.2.1.2.2.3"></span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.2.3">
<span class="ltx_text" id="S5.T6.2.1.2.3.1"></span> <span class="ltx_text" id="S5.T6.2.1.2.3.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.2.1.2.3.2.1">
<span class="ltx_tr" id="S5.T6.2.1.2.3.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.2.1.2.3.2.1.1.1">Maze Nav.</span></span>
</span></span><span class="ltx_text" id="S5.T6.2.1.2.3.3"></span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.2.4">
<span class="ltx_text" id="S5.T6.2.1.2.4.1"></span> <span class="ltx_text" id="S5.T6.2.1.2.4.2">
<span class="ltx_tabular ltx_align_middle" id="S5.T6.2.1.2.4.2.1">
<span class="ltx_tr" id="S5.T6.2.1.2.4.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.2.1.2.4.2.1.1.1">Spatial Grid</span></span>
</span></span><span class="ltx_text" id="S5.T6.2.1.2.4.3"></span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.2.1.3.1">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.3.2">74.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.3.3">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.3.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.3.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.3.6">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.1.4.1">Gemini</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.4.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.4.3">61.4</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.4.4">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.4.5">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.4.6">-</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T6.2.1.5.1">LLaVA-1.5-7B</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.1.5.2">57.1*</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.1.5.3">37.1</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.1.5.4">28.4</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.1.5.5">28.8</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.2.1.5.6">41.6</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.1.6.1">LLaVA-1.6-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.6.2">52.2*</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.6.3">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.6.4">28.0</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.6.5">34.8</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.6.6">32.2</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.1.7.1">Qwen-VL-9.6B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.7.2">-</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.7.3">40.3</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.7.4">28.7</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.7.5">31.8</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.7.6">25.7</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T6.2.1.8.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T6.2.1.8.1.1">Magma</span>-8B (Act<sup class="ltx_sup" id="S5.T6.2.1.8.1.2">w/o</sup>)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.8.2">62.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.8.3">30.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.8.4">36.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.8.5"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.8.5.1">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.2.1.8.6">37.5</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.1.9.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T6.2.1.9.1.1">Magma</span>-8B (Full<sup class="ltx_sup" id="S5.T6.2.1.9.1.2">w/o</sup>)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.9.2">58.1</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.9.3">38.3</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.9.4">27.5</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.9.5">33.5</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.9.6">47.3</td>
</tr>
<tr class="ltx_tr" id="S5.T6.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T6.2.1.10.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T6.2.1.10.1.1">Magma</span>-8B (Full)</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.10.2"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.10.2.1">65.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.10.3"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.10.3.1">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.10.4"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.10.4.1">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.10.5">36.5</td>
<td class="ltx_td ltx_align_center" id="S5.T6.2.1.10.6"><span class="ltx_text ltx_font_bold" id="S5.T6.2.1.10.6.1">64.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different models' performance on spatial reasoning tasks.  The models' performance is measured across several benchmarks: Spatial Map, Maze Navigation, Spatial Grid, and VSR.  Results are shown for models with and without the Set-of-Mark (SoM) and Trace-of-Mark (ToM) pre-training techniques.  The asterisk (*) indicates results obtained by the authors of the paper directly evaluating pre-trained weights from other researchers. The 'w/o' superscript denotes results for models not trained with SoM and ToM.
> <details>
> <summary>read the caption</summary>
> Table 6: Spatial reasoning evaluations. We use * to denote results that are obtained by us evaluating the provided model weights. Superscript ‘w/o’ means models pretrained without SoM/ToM.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T7.2.1">
<tr class="ltx_tr" id="S5.T7.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T7.2.1.1.1">Model</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.1.2">VQAv2</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.1.3">GQA</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.1.4">MME</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.1.5">POPE</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.1.6">TextVQA</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.1.7">ChartQA</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.1.8">DocVQA</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T7.2.1.2.1">LLaVA-1.5-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.2">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.3">62.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.4">1510.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.5">85.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.6">46.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.7">18.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.2.8">28.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T7.2.1.3.1">LLaVA-Next-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.3.2">80.1</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.3.3"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.3.3.1">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.3.4">1519.3</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.3.5"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.3.5.1">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.3.6">64.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.3.7">54.8</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.3.8">74.4</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T7.2.1.4.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T7.2.1.4.1.1">Magma</span>-8B (SFT)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.4.2">79.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.4.3">61.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.4.4">1510.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.4.5">86.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.4.6">67.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.4.7">73.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.2.1.4.8">80.4</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T7.2.1.5.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T7.2.1.5.1.1">Magma</span>-8B (Act<sup class="ltx_sup" id="S5.T7.2.1.5.1.2">w/o</sup>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.5.2">81.3</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.5.3">63.5</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.5.4">1559.5</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.5.5">86.1</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.5.6">69.8</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.5.7">71.0</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.5.8">84.1</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T7.2.1.6.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T7.2.1.6.1.1">Magma</span>-8B (Full<sup class="ltx_sup" id="S5.T7.2.1.6.1.2">w/o</sup>)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.6.2">81.3</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.6.3">62.9</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.6.4">1576.0</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.6.5">86.3</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.6.6">69.6</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.6.7">71.7</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.6.8">83.8</td>
</tr>
<tr class="ltx_tr" id="S5.T7.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T7.2.1.7.1">
<span class="ltx_text ltx_font_typewriter" id="S5.T7.2.1.7.1.1">Magma</span>-8B (Full)</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.7.2"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.7.2.1">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.7.3">64.0</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.7.4"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.7.4.1">1588.7</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.7.5">86.3</td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.7.6"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.7.6.1">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.7.7"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.7.7.1">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T7.2.1.7.8"><span class="ltx_text ltx_font_bold" id="S5.T7.2.1.7.8.1">84.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning various large multimodal models on several image understanding tasks.  The models were initially pre-trained, and then further fine-tuned.  The table compares the performance of these models across different tasks, highlighting the superior performance achieved by the model when pre-trained with a full dataset incorporating both Set-of-Mark (SoM) and Trace-of-Mark (ToM) annotations. This demonstrates the effectiveness of the SoM and ToM methods in improving model performance on multimodal image understanding tasks.
> <details>
> <summary>read the caption</summary>
> Table 7: Finetuned performance on multimodal image understanding tasks. Pretraining on full set with SoM and ToM (last row) attains the overall best performance compared with our own baselines and counterparts of the same model class.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T8.2.1">
<tr class="ltx_tr" id="S5.T8.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.1.1" rowspan="2"><span class="ltx_text" id="S5.T8.2.1.1.1.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.1.2" rowspan="2"><span class="ltx_text" id="S5.T8.2.1.1.2.1" style="font-size:90%;">Backbone</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.1.3"><span class="ltx_text" id="S5.T8.2.1.1.3.1" style="font-size:90%;">IntentQA</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.1.4"><span class="ltx_text" id="S5.T8.2.1.1.4.1" style="font-size:90%;">Next-QA</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="S5.T8.2.1.1.5"><span class="ltx_text" id="S5.T8.2.1.1.5.1" style="font-size:90%;">VideoMME (w/o subs)</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S5.T8.2.1.1.6"><span class="ltx_text" id="S5.T8.2.1.1.6.1" style="font-size:90%;">MVBench</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.2">
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.1"><span class="ltx_text" id="S5.T8.2.1.2.1.1" style="font-size:90%;">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.2"><span class="ltx_text" id="S5.T8.2.1.2.2.1" style="font-size:90%;">Overall</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.3"><span class="ltx_text" id="S5.T8.2.1.2.3.1" style="font-size:90%;">Short</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.4"><span class="ltx_text" id="S5.T8.2.1.2.4.1" style="font-size:90%;">Medium</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.5"><span class="ltx_text" id="S5.T8.2.1.2.5.1" style="font-size:90%;">Long</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.6"><span class="ltx_text" id="S5.T8.2.1.2.6.1" style="font-size:90%;">Action Prediction</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.7"><span class="ltx_text" id="S5.T8.2.1.2.7.1" style="font-size:90%;">Action Sequence</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.8"><span class="ltx_text" id="S5.T8.2.1.2.8.1" style="font-size:90%;">Action localization</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.2.9"><span class="ltx_text" id="S5.T8.2.1.2.9.1" style="font-size:90%;">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T8.2.1.3.1"><span class="ltx_text" id="S5.T8.2.1.3.1.1" style="font-size:90%;">Gemini-1.5 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T8.2.1.3.2"><span class="ltx_text" id="S5.T8.2.1.3.2.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.3"><span class="ltx_text" id="S5.T8.2.1.3.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.4"><span class="ltx_text" id="S5.T8.2.1.3.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.5"><span class="ltx_text" id="S5.T8.2.1.3.5.1" style="font-size:90%;">81.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.6"><span class="ltx_text" id="S5.T8.2.1.3.6.1" style="font-size:90%;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.7"><span class="ltx_text" id="S5.T8.2.1.3.7.1" style="font-size:90%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.8"><span class="ltx_text" id="S5.T8.2.1.3.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.9"><span class="ltx_text" id="S5.T8.2.1.3.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.10"><span class="ltx_text" id="S5.T8.2.1.3.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.3.11"><span class="ltx_text" id="S5.T8.2.1.3.11.1" style="font-size:90%;">37.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.4.1"><span class="ltx_text" id="S5.T8.2.1.4.1.1" style="font-size:90%;">GPT-4V <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.4.2"><span class="ltx_text" id="S5.T8.2.1.4.2.1" style="font-size:90%;">GPT-4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.3"><span class="ltx_text" id="S5.T8.2.1.4.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.4"><span class="ltx_text" id="S5.T8.2.1.4.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.5"><span class="ltx_text" id="S5.T8.2.1.4.5.1" style="font-size:90%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.6"><span class="ltx_text" id="S5.T8.2.1.4.6.1" style="font-size:90%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.7"><span class="ltx_text" id="S5.T8.2.1.4.7.1" style="font-size:90%;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.8"><span class="ltx_text" id="S5.T8.2.1.4.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.9"><span class="ltx_text" id="S5.T8.2.1.4.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.10"><span class="ltx_text" id="S5.T8.2.1.4.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.4.11"><span class="ltx_text" id="S5.T8.2.1.4.11.1" style="font-size:90%;">43.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S5.T8.2.1.5.1">
<span class="ltx_text" id="S5.T8.2.1.5.1.1" style="font-size:90%;">LLaVA-OV </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib60" title=""><span class="ltx_text" style="font-size:90%;">60</span></a><span class="ltx_text" id="S5.T8.2.1.5.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T8.2.1.5.2"><span class="ltx_text" id="S5.T8.2.1.5.2.1" style="font-size:90%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.3"><span class="ltx_text" id="S5.T8.2.1.5.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.5.4.1" style="font-size:90%;">79.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.5.5.1" style="font-size:90%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.5.6.1" style="font-size:90%;">54.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.7"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.5.7.1" style="font-size:90%;">47.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.8"><span class="ltx_text" id="S5.T8.2.1.5.8.1" style="font-size:90%;">46.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.9"><span class="ltx_text" id="S5.T8.2.1.5.9.1" style="font-size:90%;">74.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.10"><span class="ltx_text" id="S5.T8.2.1.5.10.1" style="font-size:90%;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T8.2.1.5.11"><span class="ltx_text" id="S5.T8.2.1.5.11.1" style="font-size:90%;">56.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.6.1">
<span class="ltx_text" id="S5.T8.2.1.6.1.1" style="font-size:90%;">Long-Llava 9B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib119" title=""><span class="ltx_text" style="font-size:90%;">119</span></a><span class="ltx_text" id="S5.T8.2.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.6.2"><span class="ltx_text" id="S5.T8.2.1.6.2.1" style="font-size:90%;">Long-Llava 9B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.3"><span class="ltx_text" id="S5.T8.2.1.6.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.4"><span class="ltx_text" id="S5.T8.2.1.6.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.5"><span class="ltx_text" id="S5.T8.2.1.6.5.1" style="font-size:90%;">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.6"><span class="ltx_text" id="S5.T8.2.1.6.6.1" style="font-size:90%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.7"><span class="ltx_text" id="S5.T8.2.1.6.7.1" style="font-size:90%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.8"><span class="ltx_text" id="S5.T8.2.1.6.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.9"><span class="ltx_text" id="S5.T8.2.1.6.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.10"><span class="ltx_text" id="S5.T8.2.1.6.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.6.11"><span class="ltx_text" id="S5.T8.2.1.6.11.1" style="font-size:90%;">49.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.7.1">
<span class="ltx_text" id="S5.T8.2.1.7.1.1" style="font-size:90%;">LongVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib136" title=""><span class="ltx_text" style="font-size:90%;">136</span></a><span class="ltx_text" id="S5.T8.2.1.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.7.2"><span class="ltx_text" id="S5.T8.2.1.7.2.1" style="font-size:90%;">Qwen2-7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.3"><span class="ltx_text" id="S5.T8.2.1.7.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.4"><span class="ltx_text" id="S5.T8.2.1.7.4.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.5"><span class="ltx_text" id="S5.T8.2.1.7.5.1" style="font-size:90%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.6"><span class="ltx_text" id="S5.T8.2.1.7.6.1" style="font-size:90%;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.7.7.1" style="font-size:90%;">46.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.8"><span class="ltx_text" id="S5.T8.2.1.7.8.1" style="font-size:90%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.9"><span class="ltx_text" id="S5.T8.2.1.7.9.1" style="font-size:90%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.10"><span class="ltx_text" id="S5.T8.2.1.7.10.1" style="font-size:90%;">42.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.7.11"><span class="ltx_text" id="S5.T8.2.1.7.11.1" style="font-size:90%;">51.3</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.8.1">
<span class="ltx_text" id="S5.T8.2.1.8.1.1" style="font-size:90%;">ShareGPT4Video </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S5.T8.2.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.8.2"><span class="ltx_text" id="S5.T8.2.1.8.2.1" style="font-size:90%;">LLaMA3-8B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.3"><span class="ltx_text" id="S5.T8.2.1.8.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.4"><span class="ltx_text" id="S5.T8.2.1.8.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.5"><span class="ltx_text" id="S5.T8.2.1.8.5.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.6"><span class="ltx_text" id="S5.T8.2.1.8.6.1" style="font-size:90%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.7"><span class="ltx_text" id="S5.T8.2.1.8.7.1" style="font-size:90%;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.8"><span class="ltx_text" id="S5.T8.2.1.8.8.1" style="font-size:90%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.9"><span class="ltx_text" id="S5.T8.2.1.8.9.1" style="font-size:90%;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.10"><span class="ltx_text" id="S5.T8.2.1.8.10.1" style="font-size:90%;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.8.11"><span class="ltx_text" id="S5.T8.2.1.8.11.1" style="font-size:90%;">51.2</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.9.1">
<span class="ltx_text" id="S5.T8.2.1.9.1.1" style="font-size:90%;">Video-Llama2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S5.T8.2.1.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.9.2"><span class="ltx_text" id="S5.T8.2.1.9.2.1" style="font-size:90%;">Llama2-7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.3"><span class="ltx_text" id="S5.T8.2.1.9.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.4"><span class="ltx_text" id="S5.T8.2.1.9.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.5"><span class="ltx_text" id="S5.T8.2.1.9.5.1" style="font-size:90%;">55.9</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.6"><span class="ltx_text" id="S5.T8.2.1.9.6.1" style="font-size:90%;">45.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.7"><span class="ltx_text" id="S5.T8.2.1.9.7.1" style="font-size:90%;">42.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.8"><span class="ltx_text" id="S5.T8.2.1.9.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.9"><span class="ltx_text" id="S5.T8.2.1.9.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.10"><span class="ltx_text" id="S5.T8.2.1.9.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.9.11"><span class="ltx_text" id="S5.T8.2.1.9.11.1" style="font-size:90%;">34.1</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.10.1">
<span class="ltx_text" id="S5.T8.2.1.10.1.1" style="font-size:90%;">Video-Chat2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S5.T8.2.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.10.2"><span class="ltx_text" id="S5.T8.2.1.10.2.1" style="font-size:90%;">Mistral 7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.3"><span class="ltx_text" id="S5.T8.2.1.10.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.4"><span class="ltx_text" id="S5.T8.2.1.10.4.1" style="font-size:90%;">43.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.5"><span class="ltx_text" id="S5.T8.2.1.10.5.1" style="font-size:90%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.6"><span class="ltx_text" id="S5.T8.2.1.10.6.1" style="font-size:90%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.7"><span class="ltx_text" id="S5.T8.2.1.10.7.1" style="font-size:90%;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.8"><span class="ltx_text" id="S5.T8.2.1.10.8.1" style="font-size:90%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.10.9.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.10"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.10.10.1" style="font-size:90%;">50.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.10.11"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.10.11.1" style="font-size:90%;">60.4</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.11.1">
<span class="ltx_text" id="S5.T8.2.1.11.1.1" style="font-size:90%;">Video-Llava </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a><span class="ltx_text" id="S5.T8.2.1.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.11.2"><span class="ltx_text" id="S5.T8.2.1.11.2.1" style="font-size:90%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.3"><span class="ltx_text" id="S5.T8.2.1.11.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.4"><span class="ltx_text" id="S5.T8.2.1.11.4.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.5"><span class="ltx_text" id="S5.T8.2.1.11.5.1" style="font-size:90%;">45.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.6"><span class="ltx_text" id="S5.T8.2.1.11.6.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.7"><span class="ltx_text" id="S5.T8.2.1.11.7.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.11.8.1" style="font-size:90%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.9"><span class="ltx_text" id="S5.T8.2.1.11.9.1" style="font-size:90%;">38.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.10"><span class="ltx_text" id="S5.T8.2.1.11.10.1" style="font-size:90%;">30.5</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.11.11"><span class="ltx_text" id="S5.T8.2.1.11.11.1" style="font-size:90%;">43.0</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.12.1">
<span class="ltx_text" id="S5.T8.2.1.12.1.1" style="font-size:90%;">IG-VLM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="S5.T8.2.1.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.12.2"><span class="ltx_text" id="S5.T8.2.1.12.2.1" style="font-size:90%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.12.3.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.4"><span class="ltx_text" id="S5.T8.2.1.12.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.5"><span class="ltx_text" id="S5.T8.2.1.12.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.6"><span class="ltx_text" id="S5.T8.2.1.12.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.7"><span class="ltx_text" id="S5.T8.2.1.12.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.8"><span class="ltx_text" id="S5.T8.2.1.12.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.9"><span class="ltx_text" id="S5.T8.2.1.12.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.10"><span class="ltx_text" id="S5.T8.2.1.12.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.12.11"><span class="ltx_text" id="S5.T8.2.1.12.11.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S5.T8.2.1.13.1">
<span class="ltx_text" id="S5.T8.2.1.13.1.1" style="font-size:90%;">SF-LLaVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T8.2.1.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib121" title=""><span class="ltx_text" style="font-size:90%;">121</span></a><span class="ltx_text" id="S5.T8.2.1.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_left" id="S5.T8.2.1.13.2"><span class="ltx_text" id="S5.T8.2.1.13.2.1" style="font-size:90%;">Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.3"><span class="ltx_text" id="S5.T8.2.1.13.3.1" style="font-size:90%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.4"><span class="ltx_text" id="S5.T8.2.1.13.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.5"><span class="ltx_text" id="S5.T8.2.1.13.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.6"><span class="ltx_text" id="S5.T8.2.1.13.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.7"><span class="ltx_text" id="S5.T8.2.1.13.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.8"><span class="ltx_text" id="S5.T8.2.1.13.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.9"><span class="ltx_text" id="S5.T8.2.1.13.9.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.10"><span class="ltx_text" id="S5.T8.2.1.13.10.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T8.2.1.13.11"><span class="ltx_text" id="S5.T8.2.1.13.11.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T8.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S5.T8.2.1.14.1"><span class="ltx_text" id="S5.T8.2.1.14.1.1" style="font-size:90%;">Magma-8B (Ours)</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T8.2.1.14.2"><span class="ltx_text" id="S5.T8.2.1.14.2.1" style="font-size:90%;">LLaMA3-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.3"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.14.3.1" style="font-size:90%;">88.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.4"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.14.4.1" style="font-size:90%;">80.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.5"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.14.5.1" style="font-size:90%;">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.6"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.14.6.1" style="font-size:90%;">55.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.7"><span class="ltx_text" id="S5.T8.2.1.14.7.1" style="font-size:90%;">44.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.8"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.14.8.1" style="font-size:90%;">65.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.9"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.14.9.1" style="font-size:90%;">79.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.10"><span class="ltx_text ltx_font_bold" id="S5.T8.2.1.14.10.1" style="font-size:90%;">55.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T8.2.1.14.11"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T8.2.1.14.11.1" style="font-size:90%;">59.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comparison of the Magma model's performance on several zero-shot video question answering (QA) benchmarks against other state-of-the-art models with similar parameter counts.  The benchmarks evaluate various aspects of video understanding, including action prediction, action sequencing, and action localization.  The results demonstrate that Magma performs competitively and, in some cases, surpasses top-performing models like Video-Llama2 and ShareGPT4Video. This is notable given that Magma was pre-trained on significantly less video instruction tuning data.
> <details>
> <summary>read the caption</summary>
> Table 8: Zero-shot Video QA benchmarks. We compare our Magma model to other state-of-the-art approaches with comparable numbers of parameters. Our Magma model performs competitively and even outperforms some state-of-the-art approaches such as Video-Llama2 and ShareGPT4Video on most benchmarks, despite using much fewer video instruction tuning data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T9.2.1">
<tr class="ltx_tr" id="A1.T9.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T9.2.1.1.1"><span class="ltx_text" id="A1.T9.2.1.1.1.1" style="font-size:80%;">Setting</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.1.2"><span class="ltx_text" id="A1.T9.2.1.1.2.1" style="font-size:80%;">Pretraining</span></td>
<td class="ltx_td ltx_align_center" colspan="3" id="A1.T9.2.1.1.3"><span class="ltx_text" id="A1.T9.2.1.1.3.1" style="font-size:80%;">Finetuning</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.2">
<td class="ltx_td ltx_border_r" id="A1.T9.2.1.2.1"></td>
<td class="ltx_td" id="A1.T9.2.1.2.2"></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.2.3"><span class="ltx_text" id="A1.T9.2.1.2.3.1" style="font-size:80%;">UI</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.2.4"><span class="ltx_text" id="A1.T9.2.1.2.4.1" style="font-size:80%;">Image/Video</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.2.5"><span class="ltx_text" id="A1.T9.2.1.2.5.1" style="font-size:80%;">Real Robot</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T9.2.1.3.1"><span class="ltx_text" id="A1.T9.2.1.3.1.1" style="font-size:80%;">batch size</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.2.1.3.2"><span class="ltx_text" id="A1.T9.2.1.3.2.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.2.1.3.3"><span class="ltx_text" id="A1.T9.2.1.3.3.1" style="font-size:80%;">32</span></td>
<td class="ltx_td ltx_border_t" id="A1.T9.2.1.3.4"></td>
<td class="ltx_td ltx_border_t" id="A1.T9.2.1.3.5"></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T9.2.1.4.1"><span class="ltx_text" id="A1.T9.2.1.4.1.1" style="font-size:80%;">base learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.4.2"><span class="ltx_text" id="A1.T9.2.1.4.2.1" style="font-size:80%;">1e-5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.4.3"><span class="ltx_text" id="A1.T9.2.1.4.3.1" style="font-size:80%;">1e-5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.4.4"><span class="ltx_text" id="A1.T9.2.1.4.4.1" style="font-size:80%;">1e-5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.4.5"><span class="ltx_text" id="A1.T9.2.1.4.5.1" style="font-size:80%;">1e-5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T9.2.1.5.1"><span class="ltx_text" id="A1.T9.2.1.5.1.1" style="font-size:80%;">learning rate scheduler</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.5.2"><span class="ltx_text" id="A1.T9.2.1.5.2.1" style="font-size:80%;">Constant</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.5.3"><span class="ltx_text" id="A1.T9.2.1.5.3.1" style="font-size:80%;">Cosine</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.5.4"><span class="ltx_text" id="A1.T9.2.1.5.4.1" style="font-size:80%;">Cosine</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.5.5"><span class="ltx_text" id="A1.T9.2.1.5.5.1" style="font-size:80%;">Constant</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T9.2.1.6.1"><span class="ltx_text" id="A1.T9.2.1.6.1.1" style="font-size:80%;">training epochs</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.6.2"><span class="ltx_text" id="A1.T9.2.1.6.2.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.6.3"><span class="ltx_text" id="A1.T9.2.1.6.3.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.6.4"><span class="ltx_text" id="A1.T9.2.1.6.4.1" style="font-size:80%;">1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.6.5"><span class="ltx_text" id="A1.T9.2.1.6.5.1" style="font-size:80%;">20</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T9.2.1.7.1"><span class="ltx_text" id="A1.T9.2.1.7.1.1" style="font-size:80%;">optimizer</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.7.2"><span class="ltx_text" id="A1.T9.2.1.7.2.1" style="font-size:80%;">adamw</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.7.3"><span class="ltx_text" id="A1.T9.2.1.7.3.1" style="font-size:80%;">adamw</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.7.4"><span class="ltx_text" id="A1.T9.2.1.7.4.1" style="font-size:80%;">adamw</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.7.5"><span class="ltx_text" id="A1.T9.2.1.7.5.1" style="font-size:80%;">adamw</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T9.2.1.8.1"><span class="ltx_text" id="A1.T9.2.1.8.1.1" style="font-size:80%;">Image Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.2.1.8.2"><span class="ltx_text" id="A1.T9.2.1.8.2.1" style="font-size:80%;">512</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.2.1.8.3"><span class="ltx_text" id="A1.T9.2.1.8.3.1" style="font-size:80%;">768</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.2.1.8.4"><span class="ltx_text" id="A1.T9.2.1.8.4.1" style="font-size:80%;">768</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.2.1.8.5"><span class="ltx_text" id="A1.T9.2.1.8.5.1" style="font-size:80%;">256</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T9.2.1.9.1"><span class="ltx_text" id="A1.T9.2.1.9.1.1" style="font-size:80%;">Number of Crops</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.9.2"><span class="ltx_text" id="A1.T9.2.1.9.2.1" style="font-size:80%;">4 or 1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.9.3"><span class="ltx_text" id="A1.T9.2.1.9.3.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.9.4"><span class="ltx_text" id="A1.T9.2.1.9.4.1" style="font-size:80%;">4 or 1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.2.1.9.5"><span class="ltx_text" id="A1.T9.2.1.9.5.1" style="font-size:80%;">1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for both the pretraining and finetuning stages of the Magma model.  It shows the settings for various aspects of the training process, including batch size, learning rate, optimizer, learning rate scheduler, number of training epochs, and image resolution.  The table also notes the hardware used for training, specifying that experiments used either 32 Nvidia H100 GPUs or 64 AMD MI300 GPUs.
> <details>
> <summary>read the caption</summary>
> Table 9: Experimental settings pretraining and finetuning of Magma models. We maximally use either 32 Nvidia H100s or 64 AMD MI300 GPUs for all training jobs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T10.2.1">
<tr class="ltx_tr" id="A2.T10.2.1.1">
<td class="ltx_td ltx_align_left" id="A2.T10.2.1.1.1"><span class="ltx_text" id="A2.T10.2.1.1.1.1" style="font-size:144%;">Source</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.1.2"><span class="ltx_text" id="A2.T10.2.1.1.2.1" style="font-size:144%;">Task</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.1.3"><span class="ltx_text" id="A2.T10.2.1.1.3.1" style="font-size:144%;">Size</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T10.2.1.2.1" rowspan="4"><span class="ltx_text" id="A2.T10.2.1.2.1.1" style="font-size:144%;">SeeClick-Web</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.2.1.2.2"><span class="ltx_text" id="A2.T10.2.1.2.2.1" style="font-size:144%;">text_2_point</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.2.1.2.3"><span class="ltx_text" id="A2.T10.2.1.2.3.1" style="font-size:144%;">271K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.3">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.3.1"><span class="ltx_text" id="A2.T10.2.1.3.1.1" style="font-size:144%;">text_2_bbox</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.3.2"><span class="ltx_text" id="A2.T10.2.1.3.2.1" style="font-size:144%;">54K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.4">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.4.1"><span class="ltx_text" id="A2.T10.2.1.4.1.1" style="font-size:144%;">point_2_text</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.4.2"><span class="ltx_text" id="A2.T10.2.1.4.2.1" style="font-size:144%;">54K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.5">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.5.1"><span class="ltx_text" id="A2.T10.2.1.5.1.1" style="font-size:144%;">bbox_2_text</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.5.2"><span class="ltx_text" id="A2.T10.2.1.5.2.1" style="font-size:144%;">54K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.2.1.6.1" rowspan="4"><span class="ltx_text" id="A2.T10.2.1.6.1.1" style="font-size:144%;">SeeClick-Mobile</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.1.6.2"><span class="ltx_text" id="A2.T10.2.1.6.2.1" style="font-size:144%;">text_2_point</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.1.6.3"><span class="ltx_text" id="A2.T10.2.1.6.3.1" style="font-size:144%;">274K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.7">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.7.1"><span class="ltx_text" id="A2.T10.2.1.7.1.1" style="font-size:144%;">text_2_bbox</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.7.2"><span class="ltx_text" id="A2.T10.2.1.7.2.1" style="font-size:144%;">56K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.8">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.8.1"><span class="ltx_text" id="A2.T10.2.1.8.1.1" style="font-size:144%;">UI summarization</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.8.2"><span class="ltx_text" id="A2.T10.2.1.8.2.1" style="font-size:144%;">48K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.9">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.9.1"><span class="ltx_text" id="A2.T10.2.1.9.1.1" style="font-size:144%;">widget captioning</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.9.2"><span class="ltx_text" id="A2.T10.2.1.9.2.1" style="font-size:144%;">42K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.2.1.10.1" rowspan="4"><span class="ltx_text" id="A2.T10.2.1.10.1.1" style="font-size:144%;">Visison2UI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.1.10.2"><span class="ltx_text" id="A2.T10.2.1.10.2.1" style="font-size:144%;">input_2_point</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.2.1.10.3"><span class="ltx_text" id="A2.T10.2.1.10.3.1" style="font-size:144%;">980K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.11">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.11.1"><span class="ltx_text" id="A2.T10.2.1.11.1.1" style="font-size:144%;">input_2_bbox</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.11.2"><span class="ltx_text" id="A2.T10.2.1.11.2.1" style="font-size:144%;">982K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.12">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.12.1"><span class="ltx_text" id="A2.T10.2.1.12.1.1" style="font-size:144%;">text_2_point</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.12.2"><span class="ltx_text" id="A2.T10.2.1.12.2.1" style="font-size:144%;color:#808080;">794K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.13">
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.13.1"><span class="ltx_text" id="A2.T10.2.1.13.1.1" style="font-size:144%;">text_2_bbox</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.13.2"><span class="ltx_text" id="A2.T10.2.1.13.2.1" style="font-size:144%;color:#808080;">774K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.14">
<td class="ltx_td" id="A2.T10.2.1.14.1"></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.14.2"><span class="ltx_text" id="A2.T10.2.1.14.2.1" style="font-size:144%;">point_2_text</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.14.3"><span class="ltx_text" id="A2.T10.2.1.14.3.1" style="font-size:144%;color:#808080;">199K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.15">
<td class="ltx_td" id="A2.T10.2.1.15.1"></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.15.2"><span class="ltx_text" id="A2.T10.2.1.15.2.1" style="font-size:144%;">bbox_2_text</span></td>
<td class="ltx_td ltx_align_center" id="A2.T10.2.1.15.3"><span class="ltx_text" id="A2.T10.2.1.15.3.1" style="font-size:144%;color:#808080;">193K</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.1.16" style="background-color:#EBF4FD;">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T10.2.1.16.1"><span class="ltx_text" id="A2.T10.2.1.16.1.1" style="font-size:144%;background-color:#EBF4FD;">Magma-PT-UI (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.2.1.16.2"><span class="ltx_text" id="A2.T10.2.1.16.2.1" style="font-size:144%;background-color:#EBF4FD;">Mixed</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.2.1.16.3"><span class="ltx_text" id="A2.T10.2.1.16.3.1" style="font-size:144%;background-color:#EBF4FD;">2.8M</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the UI-related data used in the Magma model's pretraining phase.  It lists the source of the data (SeeClick-Web, SeeClick-Mobile, Vision2UI), the specific task involved (e.g., text to point, text to bounding box, etc.), and the number of training samples available for each task and data source.
> <details>
> <summary>read the caption</summary>
> Table 10: Statistics of UI related pretraining data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T11.2.1">
<tr class="ltx_tr" id="A2.T11.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.1.1"><span class="ltx_text" id="A2.T11.2.1.1.1.1" style="font-size:144%;">Dataset</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.1.2"><span class="ltx_text" id="A2.T11.2.1.1.2.1" style="font-size:144%;">Size</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.1.3"><span class="ltx_text" id="A2.T11.2.1.1.3.1" style="font-size:144%;">Domain</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T11.2.1.2.1">
<span class="ltx_text" id="A2.T11.2.1.2.1.1" style="font-size:144%;">ShareGPT </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.2.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib106" title=""><span class="ltx_text" style="font-size:90%;">106</span></a><span class="ltx_text" id="A2.T11.2.1.2.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.2.1.2.2"><span class="ltx_text" id="A2.T11.2.1.2.2.1" style="font-size:144%;">40K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.2.1.2.3"><span class="ltx_text" id="A2.T11.2.1.2.3.1" style="font-size:144%;">Text</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.3.1">
<span class="ltx_text" id="A2.T11.2.1.3.1.1" style="font-size:144%;">ShareGPT4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.3.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="A2.T11.2.1.3.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.3.2"><span class="ltx_text" id="A2.T11.2.1.3.2.1" style="font-size:144%;">39K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.3.3"><span class="ltx_text" id="A2.T11.2.1.3.3.1" style="font-size:144%;">General</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.4.1">
<span class="ltx_text" id="A2.T11.2.1.4.1.1" style="font-size:144%;">LLaVA-Instruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.4.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="A2.T11.2.1.4.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.4.2"><span class="ltx_text" id="A2.T11.2.1.4.2.1" style="font-size:144%;">158K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.4.3"><span class="ltx_text" id="A2.T11.2.1.4.3.1" style="font-size:144%;">General</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.5.1">
<span class="ltx_text" id="A2.T11.2.1.5.1.1" style="font-size:144%;">LAION-GPT4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.5.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="A2.T11.2.1.5.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.5.2"><span class="ltx_text" id="A2.T11.2.1.5.2.1" style="font-size:144%;">11K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.5.3"><span class="ltx_text" id="A2.T11.2.1.5.3.1" style="font-size:144%;">General</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T11.2.1.6.1">
<span class="ltx_text" id="A2.T11.2.1.6.1.1" style="font-size:144%;">VQAv2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.6.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="A2.T11.2.1.6.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.2.1.6.2"><span class="ltx_text" id="A2.T11.2.1.6.2.1" style="font-size:144%;">83K</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.2.1.6.3"><span class="ltx_text" id="A2.T11.2.1.6.3.1" style="font-size:144%;">General VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.7.1">
<span class="ltx_text" id="A2.T11.2.1.7.1.1" style="font-size:144%;">GQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.7.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a><span class="ltx_text" id="A2.T11.2.1.7.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.7.2"><span class="ltx_text" id="A2.T11.2.1.7.2.1" style="font-size:144%;">72K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.7.3"><span class="ltx_text" id="A2.T11.2.1.7.3.1" style="font-size:144%;">General VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.8.1">
<span class="ltx_text" id="A2.T11.2.1.8.1.1" style="font-size:144%;">OKVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.8.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a><span class="ltx_text" id="A2.T11.2.1.8.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.8.2"><span class="ltx_text" id="A2.T11.2.1.8.2.1" style="font-size:144%;">9K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.8.3"><span class="ltx_text" id="A2.T11.2.1.8.3.1" style="font-size:144%;">Knowledge VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.9.1">
<span class="ltx_text" id="A2.T11.2.1.9.1.1" style="font-size:144%;">OCRVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.9.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a><span class="ltx_text" id="A2.T11.2.1.9.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.9.2"><span class="ltx_text" id="A2.T11.2.1.9.2.1" style="font-size:144%;">80K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.9.3"><span class="ltx_text" id="A2.T11.2.1.9.3.1" style="font-size:144%;">OCR VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.10.1">
<span class="ltx_text" id="A2.T11.2.1.10.1.1" style="font-size:144%;">ChartQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.10.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="A2.T11.2.1.10.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.10.2"><span class="ltx_text" id="A2.T11.2.1.10.2.1" style="font-size:144%;">7K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.10.3"><span class="ltx_text" id="A2.T11.2.1.10.3.1" style="font-size:144%;">Chart VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.11.1">
<span class="ltx_text" id="A2.T11.2.1.11.1.1" style="font-size:144%;">DVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.11.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a><span class="ltx_text" id="A2.T11.2.1.11.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.11.2"><span class="ltx_text" id="A2.T11.2.1.11.2.1" style="font-size:144%;">16K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.11.3"><span class="ltx_text" id="A2.T11.2.1.11.3.1" style="font-size:144%;">Chart VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.12.1">
<span class="ltx_text" id="A2.T11.2.1.12.1.1" style="font-size:144%;">DocVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.12.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib89" title=""><span class="ltx_text" style="font-size:90%;">89</span></a><span class="ltx_text" id="A2.T11.2.1.12.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.12.2"><span class="ltx_text" id="A2.T11.2.1.12.2.1" style="font-size:144%;">10K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.12.3"><span class="ltx_text" id="A2.T11.2.1.12.3.1" style="font-size:144%;">Document VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.13.1">
<span class="ltx_text" id="A2.T11.2.1.13.1.1" style="font-size:144%;">AI2D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.13.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a><span class="ltx_text" id="A2.T11.2.1.13.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.13.2"><span class="ltx_text" id="A2.T11.2.1.13.2.1" style="font-size:144%;">2K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.13.3"><span class="ltx_text" id="A2.T11.2.1.13.3.1" style="font-size:144%;">Infographic VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.14.1">
<span class="ltx_text" id="A2.T11.2.1.14.1.1" style="font-size:144%;">SynthDog-EN </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.14.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="A2.T11.2.1.14.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.14.2"><span class="ltx_text" id="A2.T11.2.1.14.2.1" style="font-size:144%;">20K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.14.3"><span class="ltx_text" id="A2.T11.2.1.14.3.1" style="font-size:144%;">Document Understanding</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.15.1"><span class="ltx_text" id="A2.T11.2.1.15.1.1" style="font-size:144%;">A-OKVQA</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.15.2"><span class="ltx_text" id="A2.T11.2.1.15.2.1" style="font-size:144%;">66K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.15.3"><span class="ltx_text" id="A2.T11.2.1.15.3.1" style="font-size:144%;">Knowledge VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.16.1">
<span class="ltx_text" id="A2.T11.2.1.16.1.1" style="font-size:144%;">RefCOCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.16.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib133" title=""><span class="ltx_text" style="font-size:90%;">133</span></a><span class="ltx_text" id="A2.T11.2.1.16.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.16.2"><span class="ltx_text" id="A2.T11.2.1.16.2.1" style="font-size:144%;">48K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.16.3"><span class="ltx_text" id="A2.T11.2.1.16.3.1" style="font-size:144%;">Grounding Desc.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.17.1">
<span class="ltx_text" id="A2.T11.2.1.17.1.1" style="font-size:144%;">VG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.17.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib57" title=""><span class="ltx_text" style="font-size:90%;">57</span></a><span class="ltx_text" id="A2.T11.2.1.17.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.17.2"><span class="ltx_text" id="A2.T11.2.1.17.2.1" style="font-size:144%;">86K</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.17.3"><span class="ltx_text" id="A2.T11.2.1.17.3.1" style="font-size:144%;">Referring Exp.</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.18">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T11.2.1.18.1">
<span class="ltx_text" id="A2.T11.2.1.18.1.1" style="font-size:144%;">InfographicsVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.18.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib90" title=""><span class="ltx_text" style="font-size:90%;">90</span></a><span class="ltx_text" id="A2.T11.2.1.18.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.2.1.18.2"><span class="ltx_text" id="A2.T11.2.1.18.2.1" style="font-size:144%;">24k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.2.1.18.3"><span class="ltx_text" id="A2.T11.2.1.18.3.1" style="font-size:144%;">Infographic VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.19.1">
<span class="ltx_text" id="A2.T11.2.1.19.1.1" style="font-size:144%;">ChartQA (Aug) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.19.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="A2.T11.2.1.19.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.19.2"><span class="ltx_text" id="A2.T11.2.1.19.2.1" style="font-size:144%;">20k</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.19.3"><span class="ltx_text" id="A2.T11.2.1.19.3.1" style="font-size:144%;">Chart VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.20.1">
<span class="ltx_text" id="A2.T11.2.1.20.1.1" style="font-size:144%;">FigureQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.20.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="A2.T11.2.1.20.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.20.2"><span class="ltx_text" id="A2.T11.2.1.20.2.1" style="font-size:144%;">20k</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.20.3"><span class="ltx_text" id="A2.T11.2.1.20.3.1" style="font-size:144%;">Chart/Figure VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.21.1">
<span class="ltx_text" id="A2.T11.2.1.21.1.1" style="font-size:144%;">TQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.21.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="A2.T11.2.1.21.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.21.2"><span class="ltx_text" id="A2.T11.2.1.21.2.1" style="font-size:144%;">1.5k</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.21.3"><span class="ltx_text" id="A2.T11.2.1.21.3.1" style="font-size:144%;">Textbook VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T11.2.1.22.1">
<span class="ltx_text" id="A2.T11.2.1.22.1.1" style="font-size:144%;">ScienceQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A2.T11.2.1.22.1.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2502.13130v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a><span class="ltx_text" id="A2.T11.2.1.22.1.3.2" style="font-size:144%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.22.2"><span class="ltx_text" id="A2.T11.2.1.22.2.1" style="font-size:144%;">5k</span></td>
<td class="ltx_td ltx_align_center" id="A2.T11.2.1.22.3"><span class="ltx_text" id="A2.T11.2.1.22.3.1" style="font-size:144%;">Textbook VQA</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.2.1.23" style="background-color:#EBF4FD;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="A2.T11.2.1.23.1"><span class="ltx_text" id="A2.T11.2.1.23.1.1" style="font-size:144%;background-color:#EBF4FD;">Magma-SFT-Image (Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.2.1.23.2"><span class="ltx_text" id="A2.T11.2.1.23.2.1" style="font-size:144%;background-color:#EBF4FD;">820k</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.2.1.23.3"><span class="ltx_text" id="A2.T11.2.1.23.3.1" style="font-size:144%;background-color:#EBF4FD;">Mixed</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the 820k image instruction tuning dataset used to fine-tune the Magma model for multimodal image understanding tasks.  The dataset is a compilation of various publicly available datasets, each focusing on different aspects of visual-language understanding, such as general VQA, OCR-VQA, Chart-VQA, and others. The sizes and domains of each dataset are listed for clarity and reproducibility.
> <details>
> <summary>read the caption</summary>
> Table 11: A detailed breakdown of our 820k Magma image instruction tuning data used in our multimodal image understanding experiments shown in Table 5 in our main submission.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13130/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13130/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}