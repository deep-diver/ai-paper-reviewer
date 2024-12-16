---
title: "Large Action Models: From Inception to Implementation"
summary: "From language models to action models: building AI that *does* things."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Microsoft",]
showSummary: true
date: 2024-12-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.10047 {{< /keyword >}}
{{< keyword icon="writer" >}} Lu Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.10047" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.10047" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/large-action-models-from-inception-to" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.10047/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) excel at understanding and generating text.  However, they struggle to perform real-world actions.  This limits their use in applications requiring interaction with the environment, like controlling software or robots.  There's a need for AI that can not only understand but *act*. Current LLMs excel in textual tasks but lack real-world action execution. This limits their application in interactive environments.  Building agents with LLMs is challenging, requiring data and expertise.  There's a gap between language processing and tangible action.This paper introduces **Large Action Models (LAMs), which are designed to generate and execute actions** within dynamic environments.  A **detailed four-phase training process** transforms an LLM into a LAM. The process includes **data collection**, **model training**, **integration with a Windows OS GUI agent**, **grounding**, and **evaluation**. The approach focuses on teaching the model to plan, imitate expert demonstrations, explore new solutions, and learn from feedback. This study bridges the gap between language and action, enabling AI to perform complex real-world tasks efficiently.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Large Action Models (LAMs) are introduced to bridge the gap between language understanding and real-world action execution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A four-phase training approach is proposed to develop LAMs from scratch, including task-plan pretraining, learning from experts, self-boosting exploration, and learning from a reward model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LAMs achieve competitive accuracy and superior efficiency compared to traditional LLMs in complex, multi-step real-world task completion within a Windows OS environment using a GUI agent called UFO {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper introduces a novel approach to building Large Action Models (LAMs), a crucial step towards more practical and interactive AI.**  Researchers benefit from the detailed, step-by-step guide for developing LAMs, from data collection to deployment.  The focus on bridging the gap between language understanding and real-world action execution opens exciting possibilities for future research in areas like robotics, autonomous systems, and human-computer interaction.

------
#### Visual Insights



![](https://arxiv.org/html/2412.10047/x1.png)

> 🔼 This figure illustrates the transition from Large Language Models (LLMs) to Large Action Models (LAMs).  Initially, a user interacts with an LLM, providing textual queries and receiving textual output such as chatbot responses or generated code.  This stage represents the current capabilities of LLMs, which excel at language-based tasks.  However, to achieve real-world action, the LLM needs to be transformed into a LAM.  This transformation involves finetuning the LLM with action and plan trajectories.  The resulting LAM then interacts with an agent. The agent takes in task requests and utilizes the LAM to produce both textual and agent action outputs.  This output allows the agent to interact with an environment, perform actions, and gather feedback.  This feedback loop allows the LAM and agent to adapt and learn within a dynamic environment, enabling the execution of real-world tasks.  The figure visually depicts this progression, highlighting the integration of the LAM within an agent system and the crucial role of environmental interaction and feedback.
> <details>
> <summary>read the caption</summary>
> Figure 1. The transition from LLMs to LAMs.
> </details>





{{< table-caption >}}
| Model | Data Type | Data Source | Input &#x2192; Output Format | Data Size |
|---|---|---|---|---| 
| LAM¹ | Task-Plan Pairs | Application documentation, WikiHow,
historical search queries, evolved data | t<sub>i</sub> &#x2192; P<sub>i</sub> | 76,672 tasks |
| LAM² | Task-Action Trajectories | GPT-4o | s<sub>t</sub> &#x2192; a<sub>t</sub> | 2,192 trajectories |
| LAM³ | Task-Action Trajectories | LAM² + GPT-4o | s<sub>t</sub> &#x2192; a<sub>t</sub> | 2,688 trajectories |
| LAM⁴ | Task-Action-Reward Trajectories | RM + LAM³ | (s<sub>t</sub>,r<sub>t</sub>) &#x2192; a<sub>t</sub> | 1,788 trajectories |
| Reward Model | Task-Action-Reward Trajectories | GPT-4o + LAM³ | (s<sub>t</sub>,a<sub>t</sub>) &#x2192; r<sub>t</sub> | 4,476 trajectories |{{< /table-caption >}}

> 🔼 This table summarizes the training datasets used in each of the four phases of LAM training.  It details the data type, source of the data, the input/output format used for training, and the size of each dataset.  Specifically, it breaks down the data used for training LAM¹, LAM², LAM³, LAM⁴, and the Reward Model.  This table helps to illustrate the progression of training data complexity and how each phase builds upon the previous one.
> <details>
> <summary>read the caption</summary>
> Table 1. Training data summary for each phase of LAM training.
> </details>





### In-depth insights


#### LAM Framework
A **LAM (Large Action Model) Framework** transitions AI from passive understanding to active task completion by enabling real-world actions. Unlike LLMs focused on text, LAMs generate **action sequences**. This involves interpreting user intent, planning steps, and executing actions within dynamic environments, often through **agent systems**. Key components include **grounding**, connecting actions to real-world tools and interfaces; **memory**, storing past actions and plans; and **feedback**, enabling adaptation to environmental changes. Building a LAM involves data collection of task-plans and task-actions, model training via **staged fine-tuning and reinforcement learning**, and rigorous evaluation in offline and online settings.  This framework bridges the gap between **language understanding and real-world execution**, marking a significant step towards practical, action-oriented AI. Challenges include safety risks, ethical concerns, scalability, and adaptability, requiring further research for robust real-world deployment.

#### Action-Centric AI
**Action-centric AI** shifts the focus from passive understanding to active task completion.  This paradigm emphasizes **generating and executing actions** within real-world environments, marking a key step towards truly intelligent systems. Current AI, often limited to textual output, lacks this crucial element.  Action-centric AI addresses this by integrating models into agent systems.  These systems **bridge the gap between perception and action**, enabling AI to interact with and manipulate its surroundings. This transition necessitates specialized training data that captures environmental states, actions, and outcomes. It also raises critical questions about safety and reliability, demanding robust testing and validation.  Ultimately, action-centric AI represents a profound shift in the capabilities and potential of artificial intelligence.

#### GUI Automation
**GUI automation** revolutionizes software testing and robotic process automation by simulating user interactions.  **Key benefits include increased speed and efficiency**, enabling faster test execution and process completion. **Enhanced accuracy** minimizes human error, leading to more reliable results.  It also enables **continuous testing and 24/7 operation**, maximizing resource utilization and productivity.  By automating repetitive GUI tasks, it **frees up human resources** for more complex and strategic activities, thus boosting overall productivity. Although initial setup can be complex, **long-term advantages outweigh the costs** by lowering expenses associated with manual labor and error correction.  Despite challenges, the **future of GUI automation is bright**, driven by advances in AI and machine learning that will enable more sophisticated and intelligent automation capabilities.

#### Safety & Ethics
**Safety** is paramount in LAMs due to their real-world action capabilities.  Errors could have significant consequences, necessitating robust error detection, rollback mechanisms, and fail-safe systems.  **Ethical** and **regulatory** concerns arise from LAMs' potential impact on accountability, transparency, and fairness.  Biases in training data could influence decisions, requiring careful mitigation.  **Transparency** in model architectures and **clear ethical guidelines** are essential for responsible LAM deployment, especially in critical sectors like healthcare and finance, to ensure safety and accountability.

#### Future of LAMs
**Large Action Models (LAMs) hold immense potential to revolutionize how we interact with technology.**  Moving beyond text generation, LAMs perform real-world actions, marking a shift towards truly intelligent agents. Future research will likely focus on several key areas. **Safety** is paramount, given LAMs' ability to manipulate external systems. Robust mechanisms are needed to prevent unintended consequences.  **Ethical and regulatory frameworks** are crucial to address accountability and bias. **Improving scalability, generalizability, and adaptability** is essential for broader application. Transfer learning and automated data collection could be key enablers. Lastly, exploring **human-LAM collaboration** offers exciting possibilities for augmenting human capabilities.  LAMs interacting naturally with humans could transform various domains. By tackling these challenges, LAMs can realize their transformative potential.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.10047/x2.png)

> 🔼 This figure visually illustrates the core difference between Large Language Models (LLMs) and Large Action Models (LAMs).  It uses the example task 'Buy a jacket for men.'  The LLM provides a textual, step-by-step plan for achieving this goal: 1. Open an online shopping website. 2. Search for 'jacket for men'. 3. Go through all jackets. The LLM stops at generating this plan and cannot execute the steps.  In contrast, the LAM takes the same goal and executes the necessary steps, interacting with the website environment. This shows how LAMs go beyond planning to perform real-world actions.
> <details>
> <summary>read the caption</summary>
> Figure 2. The objective difference between LLMs and LAMs.
> </details>



![](https://arxiv.org/html/2412.10047/x3.png)

> 🔼 The figure illustrates the five key stages involved in developing and implementing a Large Action Model (LAM). It begins with **Data Collection and Preparation**, where relevant data is gathered and processed. This is followed by **Model Training**, which involves techniques like supervised fine-tuning and reinforcement learning. The trained model then undergoes **Offline/Online Evaluation** to assess its performance in controlled and real-world environments. The next stage is **Integration and Grounding**, where the LAM is incorporated into an agent system and connected to external tools and the environment. Finally, **Online Evaluation** rigorously tests the LAM's performance in the real world, considering aspects like accuracy, efficiency, and robustness.
> <details>
> <summary>read the caption</summary>
> Figure 3. The process pipeline for LAM development and implementation.
> </details>



![](https://arxiv.org/html/2412.10047/x4.png)

> 🔼 This figure illustrates the two-stage process of data collection and preparation used for Large Action Model (LAM) training.  The first stage, 'Task-Plan Data Collection,' focuses on gathering data related to tasks and their corresponding plans.  The second stage, 'Task-Action Data Collection,' refines this data by grounding the tasks and plans in a specific environment (e.g., a Word document) and generating the corresponding low-level actions needed for execution.  This two-stage approach bridges the gap between high-level planning and executable actions, essential for training a LAM to perform real-world tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4. The two-phrase data collection and preparation process.
> </details>



![](https://arxiv.org/html/2412.10047/x5.png)

> 🔼 This figure illustrates the multi-stage process used for collecting and preparing the task-plan data, which serves as crucial input for training Large Action Models (LAMs). The pipeline begins with gathering raw data from diverse sources, such as software application documentation, online how-to guides (WikiHow), and historical user search queries.  Following data extraction, a pre-processing stage filters and standardizes the data, ensuring its quality and relevance. The core of the process involves leveraging GPT, a large language model, to structure the data into a consistent JSON format comprising task descriptions and their corresponding plans, which are detailed, step-by-step instructions to achieve the given tasks. Lastly, a data evolution step enhances the dataset by generating additional, more complex tasks derived from the initial ones, further augmenting the training data.
> <details>
> <summary>read the caption</summary>
> Figure 5. The pipeline to construct the task plan data.
> </details>



![](https://arxiv.org/html/2412.10047/x6.png)

> 🔼 This figure illustrates the four-stage pipeline for converting task-plan data, which includes high-level plans for user requests, into task-action data, which consists of the granular actions needed to execute plans within a specific application environment. The stages are: 1. **Instantiation:** An LLM transforms abstract task-plan data into actionable task-action data grounded within a specific environment, such as a Word document. Target objects and functions for the task are also determined in this stage. 2. **Execution:**  The instantiated task-action data is executed within the application environment to validate its correctness and collect execution trajectories. Screenshots of each step are taken for evaluation. 3. **Evaluation:** The executed trajectory is evaluated by an LLM to assess whether the intended task was successfully completed.  This ensures high-quality training data. 4. **Post-processing:**  Successful trajectories are combined with original task requests to form the final training data for the LAM, while discarded trajectories are excluded.
> <details>
> <summary>read the caption</summary>
> Figure 6. The pipeline of task-action data conversion and collection.
> </details>



![](https://arxiv.org/html/2412.10047/x7.png)

> 🔼 This figure illustrates the process of task instantiation, where a given task and its corresponding plan are transformed into a more concrete and actionable task with a detailed action plan by grounding it to a specific environment (e.g., a document) and available control items. For instance, given the task 'Highlight Text in document' and a document named 'template.doc' containing the text 'Hello World,' the instantiated task becomes 'Highlight Text 'Hello World' in template.doc'. The associated action plan is also generated. It shows two potential instantiated action sequences: the first one fails to match any control item in the environment, leading to task discard, while the second successfully finds a matching control item ('Text Highlight Color') and its associated label ('37'), enabling successful task execution.
> <details>
> <summary>read the caption</summary>
> Figure 7. An example of task instantiation.
> </details>



![](https://arxiv.org/html/2412.10047/x8.png)

> 🔼 The figure provides a visual overview of the four-phase training pipeline used to develop a Large Action Model (LAM).  Each phase is represented by a distinct block, illustrating the data resources, data format, training method, and objective for that stage. Phase 1, 'Task-Plan Pretraining,' focuses on teaching the model to generate structured plans from task descriptions. Phase 2, 'Learning from Experts,' incorporates expert-labeled action trajectories to guide the model's action execution. Phase 3, 'Self-Boosting Exploration,' encourages the model to learn from its own successes on tasks GPT-4 failed, improving adaptability. Finally, Phase 4, 'Learning from Reward Model,' uses reinforcement learning to refine decision-making based on a reward model trained on successes and failures.
> <details>
> <summary>read the caption</summary>
> Figure 8. The overview of LAM training pipeline.
> </details>



![](https://arxiv.org/html/2412.10047/x9.png)

> 🔼 The architecture of AppAgent in UFO consists of the following components: - **LAM**: Large Action Model for decision-making. - **Memory**: Stores historical actions and plans for context. - **Grounding**: Maps actions to tools and functions. - **Action Executor**: Executes actions within the environment. - **Environment**: Represents the Windows OS and application. - **Env. State Data Collection**: Collects UI information (e.g., control type, title, position) using UI Automation API.  - **Feedback**: Returns environment feedback to LAM. - **Screenshots**: Captures visual information of the environment. The AppAgent interacts with the environment via mouse clicks, keyboard input, or API calls, receiving feedback to adjust the plan dynamically.
> <details>
> <summary>read the caption</summary>
> Figure 9. The overall architecture of the AppAgent employed in UFO.
> </details>



![](https://arxiv.org/html/2412.10047/extracted/6067220/imgs/shape-file.png)

> 🔼 This figure showcases a screenshot of a Microsoft Word document serving as a template. The document's description is 'A doc with a rectangle shape,' indicating the presence of a rectangular shape within the document's content. This file is used during the instantiation stage of data collection and preparation, where tasks and their corresponding plans are transformed into actionable, environment-specific instructions for training the Large Action Model (LAM). The rectangle shape within the document serves as a target object for the LAM to interact with, enabling it to learn to execute actions related to shapes within a Word document.  This is one example of several templates used for instantiating actions, with others containing various Word elements such as text, tables, charts, and images to broaden the scope of training. Each template comes with a corresponding description, which aids in selecting the appropriate template for a given task during the instantiation process.
> <details>
> <summary>read the caption</summary>
> Figure 10. A word template file with the description “A doc with a rectangle shape.”
> </details>



![](https://arxiv.org/html/2412.10047/extracted/6067220/imgs/review-file.png)

> 🔼 This figure showcases a screenshot of a Microsoft Word document template.  Distinguishing features include a section for comments on the right side and indications of a reviewer, possibly through tracked changes or comments. The layout of the document is simple with numbered placeholders like '123' and '456' likely indicating areas for text input. The top menu bar in Word is also visible.
> <details>
> <summary>read the caption</summary>
> Figure 11. A word template file with the description “A doc with comments and reviewer.”
> </details>



![](https://arxiv.org/html/2412.10047/extracted/6067220/imgs/chart-file.png)

> 🔼 A screenshot of a Word document containing a bar chart, used as a template in the instantiation phase of data collection. The chart presents data across four categories, with three series represented in different colors. The chart has a title and labels for the x and y-axes. This template, along with others, allows for more specific and actionable instructions when converting tasks and plans into actionable steps for training the LAM.
> <details>
> <summary>read the caption</summary>
> Figure 12. A word template file with the description “A doc with a chart.”
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model | TSR (%) | Step Precision (%) | Step Recall (%) |
|---|---|---|---| 
| LAM¹ | 82.2 | 54.7 | 55.7 |
| GPT-4o | 84.5 | 28.2 | 66.1 |
| Mistral-7B | 0.0 | 0.1 | 0.5 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of different models, including LAM¹, GPT-40, and Mistral-7B, on planning tasks.  It uses three metrics: Task Success Rate (TSR), Step Precision, and Step Recall.  The table demonstrates that LAM¹ achieves comparable TSR to GPT-40 but with significantly higher Step Precision, indicating more efficient planning.  The baseline Mistral-7B model performs poorly without fine-tuning, highlighting the importance of the training approach used for LAM¹.
> <details>
> <summary>read the caption</summary>
> Table 2. Performance (%) comparison of different models on planning.
> </details>

{{< table-caption >}}
| Metric | **LAM**<sup>1</sup> | **LAM**<sup>2</sup> | **LAM**<sup>3</sup> | **LAM**<sup>4</sup> | GPT-4o (Text-only) | GPT-4o Mini (Text-only) |
|---|---|---|---|---|---|---| 
| Object Acc (%) | 39.4 | 85.6 | 87.4 | **87.8** | 73.2 | 74.6 |
| Operation Acc (%) | 59.9 | 97.3 | 97.7 | **97.7** | 94.2 | 91.5 |
| Status Acc (%) | 32.7 | 97.8 | 98.2 | **99.0** | 52.1 | 67.4 |
| Step Success Rate (SSR) (%) | 33.0 | 83.6 | 85.9 | **86.2** | 68.8 | 73.4 |
| Task Success Rate (TSR) (%) | 35.6 | 76.8 | 79.3 | **81.2** | 67.2 | 62.3 |{{< /table-caption >}}
> 🔼 This table presents a comparison of offline performance across various models, including LAM variants (LAM¹, LAM², LAM³, LAM⁴) and GPT-40 (both text-only and Mini versions), using five key metrics: Object Accuracy, Operation Accuracy, Status Accuracy, Step Success Rate, and Task Success Rate.  The comparison highlights the performance differences in decision-making capabilities between the Large Action Models (LAMs) and the baseline GPT models.
> <details>
> <summary>read the caption</summary>
> Table 3. Offline performance comparison across different models and metrics on decision making.
> </details>

{{< table-caption >}}
| Metric | Text-only | | | Text + Visual | |
|---|---|---|---|---|---|
| | LAM | GPT-4o | GPT-4o Mini | GPT-4o | GPT-4o Mini |
| Task Success Rate (%) | 71.0 | 63.0 | 57.8 | 75.5 | 66.7 |
| Task Completion Time (s) | 30.42 | 86.42 | 35.24 | 96.48 | 46.21 |
| Task Completion Steps | 5.62 | 6.73 | 5.99 | 4.98 | 6.34 |
| Average Step Latency (s) | 5.41 | 12.84 | 5.88 | 19.36 | 7.29 |{{< /table-caption >}}
> 🔼 This table presents a comparison of the Large Action Model (LAM) against baseline models, GPT-40 and GPT-40 Mini, across several performance metrics.  The metrics include Task Success Rate (TSR), Task Completion Time, Task Completion Steps, and Average Step Latency. The comparison is further broken down by input modality, showing results for both text-only and text+visual inputs. This comprehensive evaluation aims to demonstrate the effectiveness and efficiency of the LAM, particularly highlighting its advantages as a text-only model in achieving high task success rates and low latency.
> <details>
> <summary>read the caption</summary>
> Table 4. Performance comparison of LAM and baseline models across metrics.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.10047/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.10047/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}