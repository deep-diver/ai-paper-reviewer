---
title: "Multi Agent based Medical Assistant for Edge Devices"
summary: "On-device multi-agent system overcomes privacy/latency issues in healthcare, enabling personalized, scalable AI assistance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 Samsung Research",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05397 {{< /keyword >}}
{{< keyword icon="writer" >}} Sakharam Gawade et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-13 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05397" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05397" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05397/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Action Models face hurdles in healthcare due to privacy, latency, and internet reliance. This study introduces an **on-device**, **multi-agent** healthcare assistant to overcome these limitations. By using smaller, specialized agents, the system optimizes resource use, scalability, and performance, offering appointment scheduling, health monitoring, medication reminders, and health reporting. This solution addresses sensitive data handling, real-time responsiveness, and offline functionality, all crucial for healthcare applications. 



Powered by the **Qwen Code Instruct 2.5 7B** model, the **Planner and Caller Agents** achieve impressive **RougeL scores of 85.5 and 96.5**, respectively, in planning and calling tasks, while remaining lightweight enough for edge deployment. This innovative approach merges the benefits of on-device systems with multi-agent architectures, paving the way for user-centric healthcare solutions with enhanced privacy and efficiency. A synthetic data pipeline is also created to finetune the models for planning and caller tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multi-agent healthcare assistants can operate effectively on edge devices. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Task-specific agents optimize resource allocation and ensure scalability. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Qwen Code Instruct model achieves high performance in planning and calling tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper pioneers an edge-device healthcare assistant, sidestepping privacy and latency issues of cloud-based systems. It highlights the potential of multi-agent systems in personalized, secure healthcare, opening new avenues for on-device AI research and applications that prioritize user data protection and real-time responsiveness. The **data creation pipeline** can also be useful for other applications as well.

------
#### Visual Insights



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/system_arch.png)

> 🔼 This figure illustrates the communication pathways between the three main components of the multi-agent system: the Action Manager, the Health Manager, and the Memory Unit.  The Action Manager oversees the planning and execution of tasks, coordinating the interactions between different agents. The Health Manager focuses on managing health data, generating reports, and handling medication reminders.  The Memory Unit, crucial for personalized experiences, stores and retrieves both short-term (STM) and long-term (LTM) information.  Arrows depict the flow of information between these components, showing how data and instructions are passed and processed for the overall functioning of the healthcare assistant.
> <details>
> <summary>read the caption</summary>
> (a) Communication in the multi-agent system
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.1.1">Category</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.2.1">BLEU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.3.1">Rouge1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.4.1">Rouge2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.5.1">RougeL</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T2.1.2.2.1">General</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.2">94.79</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.3">0.97</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.4">0.95</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.2.2.5">0.97</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T2.1.3.3.1">Counter</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.2">78.97</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.3">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.4">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.3.3.5">0.83</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T2.1.4.4.1">Negative</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.2">78.05</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.3">0.86</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.4">0.76</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T2.1.4.4.5">0.84</td>
</tr>
<tr class="ltx_tr" id="S6.T2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="S6.T2.1.5.5.1">Dietician</th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.5.5.2">74.44</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.5.5.3">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.5.5.4">0.71</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" id="S6.T2.1.5.5.5">0.78</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the statistics of synthetic data generated for training the Planner and Caller agents in a multi-agent healthcare assistant system.  The data includes various use cases categorized as Combined (a mix of general appointments, counter interactions, negative responses, and dietician referrals), Hard SOS (start and end scenarios), and Soft SOS.  Each category represents different user interactions and system responses within the healthcare assistant's workflow.  The details provided allow for a comprehensive understanding of the dataset's composition and balance across different interaction scenarios.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of Synthetic Data Created for Planner and Caller agents. Combined indicates mixture of appointment usecases (general, counter, negative, dietician), hard SOS (start and end) and soft SOS. General: Appointment booked after finding specialist for the symptoms, Counter: Follow-up questions asked to understand symptoms better, Negative: User declines the appointment, Dietician: Use is referred to dietician based on the symptoms
> </details>





### In-depth insights


#### Edge AI Healthcare
**Edge AI in healthcare** presents a compelling paradigm shift, addressing critical limitations of cloud-centric approaches.  **Privacy** is paramount, as sensitive patient data remains on-device, mitigating risks associated with external data breaches. **Reduced latency** ensures real-time responsiveness, crucial for time-sensitive applications like emergency alerts and continuous health monitoring.  **Offline functionality** guarantees uninterrupted operation, even without internet connectivity, vital in remote areas or during network outages.  **Resource optimization** is achieved through task-specific agents, enabling efficient deployment on resource-constrained edge devices.  **Scalability** is enhanced by modular agent architectures, allowing incremental functionality additions.  **Customization** with various forms is possible, tailored to individual patient needs and preferences for personalized care.

#### Multi-Agent LAM
While the title 'Multi-Agent LAM' is not present, a multi-agent architecture incorporating Large Action Models (LAMs) offers interesting opportunities. By combining the reasoning capabilities of LAMs with a modular agent-based system, one could achieve **task decomposition and parallel processing**.  Each agent, leveraging a smaller, specialized LAM, can focus on a specific sub-task, **optimizing resource allocation** and improving overall system efficiency. The use of multiple agents further ensures **scalability and robustness**, allowing easy adaption. Effective communication protocols and memory management strategies are important for a system to handle complex workflows.

#### Modular Scalability
While 'Modular Scalability' isn't explicitly mentioned, the paper implicitly addresses it through a multi-agent architecture. **Task-specific agents enable distributing workloads**, optimizing resource allocation on edge devices. This approach fosters scalability by allowing **incremental addition of agents** for new functionalities, contrasting with monolithic models' limitations.  Each agent operates independently yet collaborates, realizing a 'modular collaboration'. Scaling is achieved not by expanding individual agent size, but by **integrating new, specialized agents**.  The architecture is well-suited to growing user needs and supports **functional expansion** without extensive retraining. The focus on lightweight, task-specific LoRA modules also facilitates modularity, enabling rapid **adaptation and deployment** of specialized healthcare solutions at scale.

#### Qwen-Coder Agent
While the provided text doesn't directly discuss a "Qwen-Coder Agent", its architecture relies on the Qwen 2.5-Coder-7B-Instruct model. This highlights the importance of **specialized coding models** in multi-agent systems, particularly for healthcare applications. The choice of Qwen, due to its compact size suitable for edge deployment and its performance, underscores a trade-off between model complexity and resource constraints. Further, the fine-tuning process using LoRA for planning and calling emphasizes that **domain-specific adaptation** is crucial for enhancing the abilities and aligning the model with the user’s specific needs. This finetuning is essential in order to incorporate planning and coding capabilities, further adapting the agent to be very useful in the field.

#### Synthetic Data
The research emphasizes **synthetic data generation** for healthcare AI agents, especially to address privacy and data scarcity. A pipeline is designed for creating this data, including steps for data format standardization, scenario trajectory generation using models, data enhancement via randomization and tool shuffling, verification against model failures, and finally interleaving for planner/caller agents. **Data quality and diversity are crucial**; therefore, the process involves checks, augmentations, and tool shufflings to make models robust. The focus is on **creating a dataset that simulates user interactions**, allowing AI agents to learn from diverse scenarios effectively and ensure their reasoning and decision-making capabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.05397/extracted/6259733/images/action_manager.png)

> 🔼 The figure illustrates the communication flow between the planner and caller agents within the Action Manager module. The planner agent, responsible for planning and generating action trajectories, sends the relevant information to the caller agent. The caller agent then executes the planned actions using various tools or APIs. This interaction is a key part of the multi-agent system's workflow, showcasing how these agents collaborate to achieve complex healthcare tasks.
> <details>
> <summary>read the caption</summary>
> (b) Communication between the planner and caller in Action Manager
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/app_diag.png)

> 🔼 This figure illustrates the multi-agent architecture of the healthcare assistant system.  It showcases the three main components: the Action Manager, the Health Manager, and the Memory Unit (both short-term and long-term).  The Action Manager coordinates the overall workflow by handling user prompts and managing agent interactions. The Health Manager houses several specialized agents for tasks such as health monitoring, medication reminders, and report generation.  The Memory Unit acts as the system's knowledge base, storing both short-term contextual information from ongoing interactions and long-term data such as patient history and preferences.  The figure also displays how these components communicate and interact to provide a comprehensive healthcare assistance experience.
> <details>
> <summary>read the caption</summary>
> Figure 1: Multi-Agent Design for Healthcare Assistant
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/datagen.png)

> 🔼 This figure illustrates the three-tier architecture of the end-to-end (E2E) application.  The frontend (user interface) handles user interaction, sending requests to the backend for processing. The backend manages agent models, data storage (SQLite database), and interacts with external services like Twilio (for notifications) and potentially a smart-watch simulator. The data layer (SQLite database) stores user data, interaction history, and other relevant information.  The communication flow shows how user actions trigger processes at the backend, leading to responses generated by agent models and stored in the database. The system utilizes several components such as: Frontend (React.js based application), Backend (Django framework), SQLite database, Celery (for task queue management), Twilio (for SMS and notification), and Qwen-7b Coder Instruct model for the agent models.
> <details>
> <summary>read the caption</summary>
> Figure 2: System flow diagram of the E2E application
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/appointment_booking_new.png)

> 🔼 The figure illustrates the data creation pipeline employed in the paper.  It starts with collecting data, then standardizes the format for consistency across various use cases.  Data generation involves creating synthetic trajectories that mimic realistic user interactions. This is followed by data enhancement techniques, including transformations to improve data quality and prevent overfitting. The data is then thoroughly verified to ensure accuracy and completeness, with any necessary updates being made to the generation pipeline for iterative improvement.  Finally, data interleaving is performed to create separate datasets for the planner and caller agents, optimizing the training process of the models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data Creation Process
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/reminder-upload.png)

> 🔼 This figure demonstrates the appointment booking process within the multi-agent healthcare assistant.  It shows a multi-turn conversation between the user and the AI, where the user describes their symptoms (abdominal pain and nausea). The AI, through its planner and caller agents, interacts with the user, clarifying symptoms and suggesting a suitable specialist (Gastroenterologist) based on the user's availability. The system then confirms the appointment time and date.
> <details>
> <summary>read the caption</summary>
> Figure 4: Appointment Booking
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/reminder-set.png)

> 🔼 This figure shows the user interface of the application, specifically focusing on the 'Reminders' section.  The image shows how uploaded medication schedules are processed and displayed as reminders in the application.  The left panel (a) shows how a prescription is uploaded, with the medication details extracted and automatically converted into reminders presented in a list-view in the right panel (b). The system uses the prescription data to create and schedule reminders for medication intake.
> <details>
> <summary>read the caption</summary>
> (a) Medication Uploaded schedule Reminders
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/soft-sos-triggered.png)

> 🔼 This figure shows the user interface after adding reminders from a prescription. The user has uploaded a prescription, and the system has automatically extracted relevant details such as medicine names, dosage timing, and frequency to create personalized reminders for the user. These reminders are displayed in a user-friendly format, making health management more convenient and efficient.
> <details>
> <summary>read the caption</summary>
> (b) Reminder Added
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/reminder-set.png)

> 🔼 This figure shows the process of adding medication reminders from a prescription.  Panel (a) displays the interface for uploading a prescription image.  Panel (b) shows the resulting added reminders in the application calendar, demonstrating how the system automatically extracts medication details from the uploaded prescription and creates reminders for the user.
> <details>
> <summary>read the caption</summary>
> Figure 5: Adding Reminder from Prescription
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/hard-sos.png)

> 🔼 This figure demonstrates a soft SOS alert triggered by the system due to abnormal vital signs detected from a simulated smartwatch.  The abnormal vitals are displayed to the user.  This soft SOS is a non-emergency alert designed to inform the user of potential health issues and does not automatically trigger emergency services.
> <details>
> <summary>read the caption</summary>
> (a) Soft SOS triggered due to abnormal vitals (simulated)
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/sms.jpg)

> 🔼 This figure shows a snapshot of the application's interface after the system has analyzed the user's vital signs.  The system continuously monitors vitals like heart rate, blood oxygen levels, etc. via a connected smartwatch or other device. If it detects irregularities, it triggers an alert. This display shows the processed vital sign data to the user and indicates whether an emergency response (SOS) was triggered. The system's health monitoring functionality aids users in proactive health management.
> <details>
> <summary>read the caption</summary>
> (b) User’s vitals analyzed
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/planner_IB_xlam.png)

> 🔼 This figure shows a snapshot of the application's interface when a soft SOS is triggered due to abnormal vital signs. The left panel displays the user's vitals being monitored (heart rate, oxygen level, sleep stages etc.), showing values outside the normal range which triggers the soft SOS. The right panel shows a summary of the user's vitals data with anomalies clearly indicated.  The system doesn't automatically trigger emergency services, but alerts the user about the unusual readings, prompting them to take necessary actions such as seeking medical advice.
> <details>
> <summary>read the caption</summary>
> Figure 6: Soft SOS triggered and vitals analyzed
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/planner_7B_xLAM.png)

> 🔼 The figure shows the user interface for triggering a Hard SOS (hard emergency).  It is part of a multi-agent healthcare assistant system designed for edge devices.  The interface likely allows the user to initiate an emergency alert that would automatically notify emergency services and relevant contacts, potentially including location data via GPS.
> <details>
> <summary>read the caption</summary>
> (a) Hard SOS-Interface
> </details>



![](https://arxiv.org/html/2503.05397/extracted/6259733/images/caller.png)

> 🔼 The figure shows a screenshot of an SMS message sent as part of the Hard SOS (Hard Software Override System) emergency response. The message is sent to the user's designated emergency contacts, providing vital information such as the user's name, location coordinates, and the urgent need for assistance.  This SMS is triggered when a user activates the Hard SOS feature in the application, indicating a critical emergency situation requiring immediate attention. The inclusion of GPS coordinates facilitates rapid response and location of the user by emergency services.
> <details>
> <summary>read the caption</summary>
> (b) Hard SOS-SMS
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05397/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05397/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}