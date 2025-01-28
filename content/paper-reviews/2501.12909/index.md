---
title: "FilmAgent: A Multi-Agent Framework for End-to-End Film Automation in Virtual 3D Spaces"
summary: "FILMAGENT:  A multi-agent framework automates end-to-end virtual film production using LLMs, exceeding single-agent performance in a collaborative workflow."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-01-22
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.12909 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenran Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-23 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.12909" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.12909" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.12909/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Virtual film production is complex, requiring human collaboration and creative decision-making across multiple stages.  Existing automation methods lack the sophistication to handle the intricate aspects of scriptwriting, cinematography, and actor interactions, resulting in films that often lack coherence, realism, and storytelling capabilities.  This research addresses these limitations by leveraging LLMs for generating and refining a film in a 3D virtual environment. 

FILMAGENT employs a multi-agent system, where each LLM-based agent takes on a specific film crew role (director, screenwriter, cinematographer, actors). This collaborative approach enables iterative refinement of the film through feedback loops between agents.  The evaluation results showed that FILMAGENT significantly outperforms single-agent methods and achieves human-comparable quality in various aspects of film production, demonstrating the efficacy of multi-agent collaboration with LLMs in complex creative tasks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FILMAGENT automates all stages of film production, from idea development to cinematography. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Multi-agent collaboration improves film quality by mitigating LLM hallucinations and enhancing plot coherence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FILMAGENT outperforms single-agent LLMs, demonstrating the advantage of collaborative AI systems. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it presents **FILMAGENT**, a novel framework for automating film production using large language models and multi-agent collaboration. This significantly advances the field by tackling the intricate process of filmmaking, which traditionally requires human expertise and collaboration. Its success could **revolutionize virtual film production**, leading to increased efficiency, cost savings, and potentially new creative possibilities.  Researchers can leverage FILMAGENT's techniques and results for various AI-driven creative applications and explore new models for multi-agent collaboration in complex creative tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2501.12909/extracted/6148210/pics_v2/intro_2025_v3.png)

> 🔼 FilmAgent is a multi-agent framework driven by large language models (LLMs) designed for automated end-to-end film production within virtual 3D environments.  The framework uses LLMs to simulate the roles of a film crew (director, screenwriter, actors, cinematographer), mimicking the human workflow.  The process is divided into three stages: idea development (story brainstorming and outlining), scriptwriting (dialogue and action creation), and cinematography (camera setup and shot design).  Through iterative collaboration between the agents, a complete film is produced within the simulated 3D space.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We introduce FilmAgent, a multi-agent collaborative framework for end-to-end film automation powered by large language models (LLMs). A team of LLM-based agents takes on film crew roles, and simulates the human workflow in 3D virtual spaces by sequentially engaging in idea development, scriptwriting, and cinematography, finally completing the filmmaking process.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.3">
<tr class="ltx_tr" id="S3.T1.3.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.4.1"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.1.1">No.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.4.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.2.1">Shot Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.4.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.3.1">Description</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.4.4.1">View</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.2" style="padding-bottom:28.45274pt;">①</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.3" style="padding-bottom:28.45274pt;">Close-up Shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4" style="padding-bottom:28.45274pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S3.T1.1.1.4.1" style="width:128.0pt;">
<span class="ltx_p" id="S3.T1.1.1.4.1.1">Close-up (CU) Shot should be close to the subject, typically including the collar, encapsulating the identity.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1" style="padding-bottom:28.45274pt;"><span class="ltx_text" id="S3.T1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="80" id="S3.T1.1.1.1.1.g1" src="extracted/6148210/shots/close.png" width="138"/></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2" style="padding-bottom:28.45274pt;">②</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.3" style="padding-bottom:28.45274pt;">Medium Shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.4" style="padding-bottom:28.45274pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S3.T1.2.2.4.1" style="width:128.0pt;">
<span class="ltx_p" id="S3.T1.2.2.4.1.1">Medium Shot (MS) should include the posture (such as body language) and physical movement (like walking).</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.1" style="padding-bottom:28.45274pt;"><span class="ltx_text" id="S3.T1.2.2.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="80" id="S3.T1.2.2.1.1.g1" src="extracted/6148210/shots/mid.png" width="138"/></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.2" style="padding-bottom:28.45274pt;">③</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.3" style="padding-bottom:28.45274pt;">Long Shot</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.4" style="padding-bottom:28.45274pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S3.T1.3.3.4.1" style="width:128.0pt;">
<span class="ltx_p" id="S3.T1.3.3.4.1.1">Long shot (LS) contains the human body, showing where the subject is located.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.1" style="padding-bottom:28.45274pt;"><span class="ltx_text" id="S3.T1.3.3.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="80" id="S3.T1.3.3.1.1.g1" src="extracted/6148210/shots/long.png" width="138"/></span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table showcases three examples of static camera shots used in the FILMAGENT system, specifically focusing on Position B in Figure 2.  It illustrates different camera distances (Close-up, Medium, and Long Shot) and their effect on the visual representation of the scene and the subject (presumably an actor). Each shot type is defined with its description and is accompanied by a corresponding image, demonstrating its application and resulting visual perspective within the virtual 3D environment.
> <details>
> <summary>read the caption</summary>
> Table 1: Examples of 3 types of static shots in Figure 2, targeted at Position B.
> </details>





### In-depth insights


#### Multi-agent Filmmaking
Multi-agent filmmaking presents a fascinating paradigm shift in film production, leveraging the power of AI agents to collaborate on various aspects of filmmaking.  This approach offers several key advantages.  First, it allows for **parallel processing** of tasks, accelerating the overall filmmaking workflow.  Second, the use of specialized agents (e.g., director, screenwriter, cinematographer) enables **deeper domain expertise** in each role, potentially leading to higher-quality outputs. Third, the iterative feedback loops between agents facilitates **constant refinement**, minimizing errors and improving creative synergy. However, challenges remain.  **Coordination between agents** requires careful design and robust communication protocols.  The potential for unexpected outputs and the need for human oversight to ensure artistic vision remain crucial considerations.  Successfully navigating these complexities would usher in a new era of filmmaking, characterized by greater efficiency, creative potential, and accessibility.

#### LLM-based Agents
The concept of "LLM-based Agents" in the context of a research paper likely refers to the utilization of large language models (LLMs) as individual intelligent entities within a larger system.  These agents, powered by LLMs, are not merely passive processors of information but active participants, each potentially taking on specific roles and responsibilities.  **This multi-agent approach mirrors real-world collaborative efforts**, like those of a film crew, where specialized roles (director, screenwriter, etc.) contribute to a shared goal.  The key advantage lies in the **potential for automation and efficiency**.  Instead of relying on human input for every decision, the LLMs can autonomously perform tasks like scriptwriting or camera positioning. However, this approach also introduces challenges.  **Coordinating the actions of multiple LLMs to ensure consistency and coherence requires sophisticated algorithms.**  Furthermore, the **reliability and accuracy of LLMs remain a concern**, with the potential for hallucinations and biases affecting the quality of the output. Thus, a comprehensive evaluation of the LLM-based agents' performance in terms of overall quality and efficiency, comparing against baseline approaches, is crucial to validate the effectiveness of this method.

#### 3D Virtual Spaces
The utilization of 3D virtual spaces is a cornerstone of the FILMAGENT framework, offering a significant advantage over traditional film production.  **These meticulously crafted virtual environments provide pre-configured locations, actor positions, and camera setups**, streamlining the filmmaking process and minimizing the need for complex real-world coordination. The 15 diverse locations, ranging from living rooms to offices, ensure versatility and adaptability for various film narratives.  **The pre-defined actor positions and camera setups reduce ambiguity and expedite the filmmaking process.** The system's design cleverly uses designated positions, which helps reduce hallucinations and enhances the quality of scripts and camera settings.  Moreover, the integration of virtual cinematography tools within these spaces allows for a seamless transition from script to film, enhancing the accuracy of camera angles and actor movements.  **The use of 3D virtual spaces significantly accelerates production while ensuring consistency and coherence in the visual narrative.** This controlled environment enables the implementation of novel LLM-based multi-agent collaboration strategies which lead to superior results and a more efficient workflow. The pre-designed elements of these 3D spaces are crucial to FILMAGENT's success, showing how a structured virtual setting can improve the end-to-end film production process.

#### Collaborative Methods
The concept of collaborative methods in a research paper is multifaceted.  It could refer to **how multiple researchers worked together** throughout the project, detailing the division of labor, communication strategies, and conflict resolution processes. This is crucial for reproducibility and understanding the study's overall methodology.  Alternatively, it might describe **the use of collaborative techniques within the research itself**. For instance, a study exploring collaborative learning might analyze group dynamics and knowledge construction within collaborative groups.  In a computational setting, it might focus on **multi-agent systems or algorithms** that model or simulate human collaboration to achieve a research goal.  The in-depth analysis of the chosen collaborative methods should include the advantages and limitations of the approaches chosen, providing a critical assessment of their suitability and effectiveness for the specific research objectives and ensuring that the results are meaningfully interpreted in relation to those chosen methods.  Finally, comparing and contrasting different collaborative frameworks would strengthen the paper's analysis of the methods, establishing the study's significance in the broader research landscape.  **Understanding the context in which 'collaborative methods' is used is key** to understanding its significance within the paper.

#### Future of Filmmaking
The future of filmmaking is inextricably linked to advancements in artificial intelligence and virtual production.  **AI-powered tools** are rapidly transforming scriptwriting, cinematography, and even acting, automating many previously manual tasks.  This leads to increased efficiency and potentially lower production costs.  However, the creative process remains paramount.  While AI can assist in generating ideas and streamlining workflows, **human creativity and artistic vision** will continue to be crucial for the success of films. The challenge lies in finding the optimal balance between AI-driven automation and human oversight to ensure that technology enhances, not replaces, the art of storytelling.  Furthermore, **ethical considerations** surrounding AI-generated content, including issues of authorship and bias, will need careful attention. The future may see a rise in **hybrid models** blending human and AI capabilities to create innovative and engaging cinematic experiences.  The focus will likely be on tools that empower filmmakers, rather than replacing them entirely.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.12909/x1.png)

> 🔼 Figure 2 shows a top-down view of a virtual living room environment created in Unity for FilmAgent.  This 3D space is designed for film production and includes pre-set positions for actors and a variety of camera angles (both static and dynamic). Static camera positions offer different shot sizes (e.g., close-up, medium, long shot), while dynamic camera angles allow for shots that follow or circle actors during scenes.  Figure 8 provides a complete list of the camera positions and setups available in this living room environment.
> <details>
> <summary>read the caption</summary>
> Figure 2: A vertical view of one of the 3D spaces (the living room) in FilmAgent built with Unity. The environment is pre-configured with designated positions for actors and various camera setups for cinematography. These include static shots from multiple distances and dynamic shots that either follow or orbit around characters. Full camera setup of this space is provided in Figure 8.
> </details>



![](https://arxiv.org/html/2501.12909/x2.png)

> 🔼 The figure illustrates the FilmAgent workflow.  Starting with a story idea and pre-built 3D virtual spaces, a director generates character profiles and a scene outline.  Next, a collaborative scriptwriting process takes place between actors, a screenwriter, and the director, determining dialogue and character actions.  The cinematography stage involves annotating camera setups for each line of dialogue. Finally, the film is generated using the finalized script and 3D environment. The whole process utilizes multiple Large Language Model (LLM)-based agents, each representing a different film crew member and employing the Critique-Correct-Verify and Debate-Judge strategies for collaborative decision-making.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Workflow of FilmAgent. Given a story idea and 3D virtual spaces, the director creates character profiles and a scene outline. Actors, the screenwriter, and the director then collaborate on dialogue and movements. Cinematographers annotate camera setups for each line. Finally, the film is shot within the 3D spaces. LLM-based agents take on various film crew roles, collaborating through Critique-Correct-Verify and Debate-Judge strategies.
> </details>



![](https://arxiv.org/html/2501.12909/x3.png)

> 🔼 Figure 4 illustrates the multifaceted role of a screenwriter in the FILMAGENT framework.  It showcases that a screenwriter's responsibilities extend beyond simply writing dialogue.  They must also meticulously annotate each line of dialogue with a corresponding action from a predefined set of actions, ensuring that the script's visual representation in the 3D virtual space is fully realized and consistent with the story's narrative. This close integration of action and dialogue is crucial for automating the end-to-end film production process.
> <details>
> <summary>read the caption</summary>
> Figure 4: The responsibilities of a screenwriter extend beyond writing dialogues; they also involve annotating the corresponding action for each line.
> </details>



![](https://arxiv.org/html/2501.12909/x4.png)

> 🔼 This figure shows the results of a comparison between original and updated versions of scripts and camera choices after implementing multi-agent collaboration. The win rate represents instances where the updated version was preferred, the tie rate represents instances where both versions were equally preferred, and the lose rate represents instances where the original version was preferred.  The data is presented for the scriptwriting stages (Scriptwriting #2 and Scriptwriting #3) and the cinematography stage. This illustrates the effectiveness of the multi-agent collaboration in improving both script and cinematography quality.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Compared with the original version, the win, tie, and lose rates of the updated script and camera choices after multi-agent collaboration.
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Apartment_kitchen.png)

> 🔼 Figure 6 presents a comparison of video clips depicting a 'quarrel and breakup scene,' generated by two different AI systems: FilmAgent and Sora. The FilmAgent video showcases strong narrative coherence and realistic character interactions within a controlled 3D environment, adhering to physical laws.  In contrast, Sora's video demonstrates impressive adaptability in terms of visual style and scene variation but shows inconsistencies in adhering to narrative logic and physics, as well as occasional visual artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison of videos showing “a quarrel and breakup scene” produced by FilmAgent and Sora. Sora demonstrates excellent adaptability to various scenes, styles, and shots, while FilmAgent can produce coherent, physics-compliant videos with storytelling capabilities.
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Apartment_living_room.png)

> 🔼 A photograph depicting the apartment kitchen used in the virtual 3D environment of the FILMAGENT project.  The image showcases a realistic rendering of a kitchen, including appliances, cabinets, and countertops, designed to simulate a real-world setting for film production. This is one of the fifteen locations in the virtual environment used to create virtual film productions.
> <details>
> <summary>read the caption</summary>
> (a) Apartment kitchen
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Beverage_Room.png)

> 🔼 A top-down view of a virtual apartment living room, one of fifteen locations in the FILMAGENT 3D environment. The room is furnished and designed to serve as a versatile setting for film production, featuring various designated positions for actors and several pre-configured camera setups for filming.
> <details>
> <summary>read the caption</summary>
> (b) Apartment living room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Billiard_room.png)

> 🔼 The image shows a 3D rendered beverage room, part of a virtual film set designed for automated film production.  It is furnished with several tables and chairs, creating a space suitable for scenes set in a bar, cafe, or other social gathering.  The design aims to provide versatility for various cinematic shots and character movements within the virtual film production environment.
> <details>
> <summary>read the caption</summary>
> (c) Beverage room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Dining_Room.png)

> 🔼 A photograph depicting a billiard room within a virtual 3D environment constructed for use in the FILMAGENT project.  The room is furnished with a billiard table and other typical billiard room fixtures, showcasing the level of detail in the simulated 3D spaces. This is one of fifteen locations designed for virtual film production, demonstrating the range of settings available within the FILMAGENT system.
> <details>
> <summary>read the caption</summary>
> (d) Billiard room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Gaming_room.png)

> 🔼 A photograph depicting a 3D rendered virtual dining room, one of fifteen locations comprising a virtual film set within the FILMAGENT framework.  The room is furnished and styled to resemble a real-world dining space, and is designed to accommodate virtual actors and camera movements during virtual film production.  The image provides a perspective view suitable for showcasing the space as a potential setting for a virtual film.
> <details>
> <summary>read the caption</summary>
> (e) Dining room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Large_kitchen.png)

> 🔼 A photograph depicting a virtual 3D rendering of a gaming room, designed for use in virtual film production.  The image shows a space set up with gaming equipment, likely to be used as a location within a film.
> <details>
> <summary>read the caption</summary>
> (f) Gaming room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Meeting_room.png)

> 🔼 A photograph depicting a spacious kitchen area, seemingly part of a larger residence or perhaps a commercial establishment. The scene is well-lit, suggesting a modern design aesthetic.  Various kitchen appliances and cabinetry are visible, though specifics are unclear without higher resolution. The overall impression is one of cleanliness and ample space.
> <details>
> <summary>read the caption</summary>
> (g) Large kitchen
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Office.png)

> 🔼 A 3D rendering of a meeting room, designed as a virtual film set within the FILMAGENT framework.  The room is furnished with typical office furniture such as a long table, chairs, and possibly a whiteboard or projector screen.  The image depicts the virtual environment's realistic look and level of detail in order to facilitate the creation of virtual films within the simulation.
> <details>
> <summary>read the caption</summary>
> (h) Meeting room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Reception_Room.png)

> 🔼 The image shows a virtual 3D model of an office environment, designed for use in virtual film production.  It's one of fifteen locations within a larger 3D virtual space created for the FILMAGENT project. The office is furnished with typical office furniture and décor, providing a realistic setting for virtual actors to interact.  The office is one of several environments meticulously constructed for the FILMAGENT project to provide a variety of settings for the automated filmmaking process.
> <details>
> <summary>read the caption</summary>
> (i) Office
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Relaxing_Room.png)

> 🔼 A photograph depicting the reception room within the virtual 3D environment constructed for the FILMAGENT project. The reception room is one of fifteen meticulously designed locations in the 3D world, each pre-configured with designated actor positions and camera setups for diverse filming needs.
> <details>
> <summary>read the caption</summary>
> (j) Reception room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Roadside.png)

> 🔼 A 3D rendering of a relaxing room, one of fifteen locations included in the FILMAGENT virtual environment.  This room features furniture such as a sofa and side table, creating a comfortable and relaxed atmosphere for virtual film production. The room is designed to be versatile and adaptable for use in different film scenarios.  It represents a typical space that might be used in many film projects. 
> <details>
> <summary>read the caption</summary>
> (k) Relaxing room
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Sofa_Corner.png)

> 🔼 The image displays a roadside scene within the virtual 3D environment constructed for the FILMAGENT project.  This environment is designed to simulate various real-world settings for virtual film production, and this particular image shows one of the fifteen locations used for filming virtual scenes within the FILMAGENT framework. The roadside location features specific designated positions for actors and pre-configured camera setups for use in filming.  The level of detail seen in the image demonstrates the realism and attention to detail present in these virtual environments.
> <details>
> <summary>read the caption</summary>
> (l) Roadside
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Storehouse.png)

> 🔼 This image shows one of the fifteen 3D virtual spaces created for FILMAGENT, a multi-agent framework for end-to-end film automation.  Specifically, it depicts a sofa corner, one of the various locations used to simulate film sets. This space is pre-configured with designated actor positions and camera setups to support virtual filming.  The image showcases a detailed design, including furniture and other elements, to offer a realistic and immersive environment for virtual film production.
> <details>
> <summary>read the caption</summary>
> (m) Sofa corner
> </details>



![](https://arxiv.org/html/2501.12909/extracted/6148210/locations/Work_room.png)

> 🔼 The image shows a 3D rendering of a storehouse environment created for use in FILMAGENT, a virtual film production framework.  The storehouse is one of 15 diverse 3D locations available within the FILMAGENT system for filming virtual movies. The environment includes various furniture and props to enhance the realism and versatility of the virtual film set. This specific image provides a detailed visual representation of the storehouse's interior design and arrangement, which contributes to the immersive experience of virtual filmmaking in FILMAGENT.
> <details>
> <summary>read the caption</summary>
> (n) Storehouse
> </details>



![](https://arxiv.org/html/2501.12909/x5.png)

> 🔼 A photograph depicting a virtual 3D workroom environment, created using Unity game engine, designed for virtual film production. The room features desks, chairs, and other work-related objects, offering a realistic workspace for virtual actors and camera movements within the FILMAGENT system.
> <details>
> <summary>read the caption</summary>
> (o) Work room
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.1">
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.1">LLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1">Action</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.1">Plot</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.1">Profile</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T2.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.6.1">Camera</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.7.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.2.1">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.2.2">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.3">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.4">1.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.5">3.84</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.2.6">1.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.2.7">2.63</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.3.1">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.3.2">o1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.3">0.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.4">2.73</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.5">3.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.3.6">2.86</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.3.7">3.30</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4">
<td class="ltx_td ltx_align_left" id="S4.T2.1.4.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.4.1.1">FilmAgent</span> (Solo)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.4.2">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.3">0.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.4">1.87</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.5">4.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.4.6">2.07</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.4.7">3.04</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.5.1">
<span class="ltx_text ltx_font_smallcaps" id="S4.T2.1.5.1.1">FilmAgent</span> (Group)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.5.2">GPT-4o</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.5.3.1">0.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.4"><span class="ltx_text ltx_font_bold" id="S4.T2.1.5.4.1">3.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.1.5.5.1">4.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.1.5.6"><span class="ltx_text ltx_font_bold" id="S4.T2.1.5.6.1">3.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.1.5.7.1">3.98</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for automated film production, evaluated by human annotators.  The methods compared include a single agent method using chain-of-thought reasoning (CoT), a single agent version of the FILMAGENT model (Solo), and the full multi-agent FILMAGENT model (Group).  The evaluation considers four key aspects: the accuracy of actor actions (scored 0-1), plot coherence, alignment between dialogue and actor profiles, and appropriateness of camera settings (all scored on a 5-point Likert scale).  The results show the performance of each method across these aspects and demonstrate the advantage of multi-agent collaboration for automated film generation.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of baselines using human annotations for actor actions, overall plot coherence, script alignment with actor profiles, and appropriateness of camera settings. The evaluation metric for Action is accuracy (0-1), while the others use a 5-point Likert scale.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.2">
<tr class="ltx_tr" id="S4.T3.2.3">
<td class="ltx_td ltx_align_top ltx_border_tt" id="S4.T3.2.3.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.2.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.2.1">
<span class="ltx_p" id="S4.T3.2.3.2.1.1" style="width:174.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.2.1.1.1" style="color:#FF0000;">Before</span> Multi-Agent Collaboration</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T3.2.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.3.3.1">
<span class="ltx_p" id="S4.T3.2.3.3.1.1" style="width:174.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.3.3.1.1.1" style="color:#00CC00;">After</span> Multi-Agent Collaboration</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.4.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.1.1">
<span class="ltx_p" id="S4.T3.2.4.1.1.1" style="width:15.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.4.1.1.1.1">Case #1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.2.1">
<span class="ltx_p" id="S4.T3.2.4.2.1.1" style="width:174.9pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T3.2.4.2.1.1.1" style="width:174.9pt;">
<span class="ltx_p" id="S4.T3.2.4.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.4.2.1.1.1.1.1">Scene #1 (Roadside)</span></span>
<span class="ltx_p" id="S4.T3.2.4.2.1.1.1.2">Emma: I’d love that. Where should we meet?</span>
<span class="ltx_p" id="S4.T3.2.4.2.1.1.1.3"><span class="ltx_text" id="S4.T3.2.4.2.1.1.1.3.1" style="color:#FF0000;">Alex: (Standing suggest) There’s a cafe just around the corner from here. How about tomorrow at 3?</span></span>
<span class="ltx_p" id="S4.T3.2.4.2.1.1.1.4">Emma: (Standing happy) Perfect! See you tomorrow.</span>
<span class="ltx_p" id="S4.T3.2.4.2.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.4.2.1.1.1.5.1">Scene #2 (Alex’s living room)</span></span>
<span class="ltx_p" id="S4.T3.2.4.2.1.1.1.6">Alex: (Standing greeting) Welcome to my humble abode! Make yourself comfortable.</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.4.3.1">
<span class="ltx_p" id="S4.T3.2.4.3.1.1" style="width:174.9pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T3.2.4.3.1.1.1" style="width:174.9pt;">
<span class="ltx_p" id="S4.T3.2.4.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.4.3.1.1.1.1.1">Scene #1 (Roadside)</span></span>
<span class="ltx_p" id="S4.T3.2.4.3.1.1.1.2">Emma: I’d love that. Where should we meet?</span>
<span class="ltx_p" id="S4.T3.2.4.3.1.1.1.3"><span class="ltx_text" id="S4.T3.2.4.3.1.1.1.3.1" style="color:#00CC00;">Alex: (Standing thinking) How about at my place? Tomorrow at 3?</span></span>
<span class="ltx_p" id="S4.T3.2.4.3.1.1.1.4">Emma: (Standing happy) Perfect! See you tomorrow.</span>
<span class="ltx_p" id="S4.T3.2.4.3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.4.3.1.1.1.5.1">Scene #2 (Alex’s living room)</span></span>
<span class="ltx_p" id="S4.T3.2.4.3.1.1.1.6">Alex: (Standing greeting) Welcome to my humble abode! Make yourself comfortable.</span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" colspan="2" id="S4.T3.2.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.5.1.1">
<span class="ltx_p" id="S4.T3.2.5.1.1.1" style="width:365.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.5.1.1.1.1">Critiques from the Director</span>: For the reasonableness of actions, {"dialogue": "There’s a cafe …?", "correct_action": "Standing suggest", "suggested_revision": "Standing thinking"}.
For the fluency of the script, the dialogue in Scene 1 mentions meeting up in cafe, but Scene 2 shows them at Alex’s house instead. Consider changing Alex’s dialogue to mention catching up at his place to make Scene 2 more natural.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.6.1" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.1.1">
<span class="ltx_p" id="S4.T3.2.6.1.1.1" style="width:15.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.6.1.1.1.1">Case #2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.2.1">
<span class="ltx_p" id="S4.T3.2.6.2.1.1" style="width:174.9pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T3.2.6.2.1.1.1" style="width:174.9pt;">
<span class="ltx_p" id="S4.T3.2.6.2.1.1.1.1">Brooke: Alex said I was always overreacting. It really hurt me.</span>
<span class="ltx_p" id="S4.T3.2.6.2.1.1.1.2"><span class="ltx_text" id="S4.T3.2.6.2.1.1.1.2.1" style="color:#FF0000;">Dana: Sounds rough. There was a time I felt ignored too but I chose to let it go. Maybe we should all lay it out.</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.6.3.1">
<span class="ltx_p" id="S4.T3.2.6.3.1.1" style="width:174.9pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T3.2.6.3.1.1.1" style="width:174.9pt;">
<span class="ltx_p" id="S4.T3.2.6.3.1.1.1.1">Brooke: Alex said I was always overreacting. It really hurt me.</span>
<span class="ltx_p" id="S4.T3.2.6.3.1.1.1.2"><span class="ltx_text" id="S4.T3.2.6.3.1.1.1.2.1" style="color:#00CC00;">Dana: That must have been really tough for you. There was a time I felt overlooked too, but talking about it openly could help us all.</span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" colspan="2" id="S4.T3.2.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.7.1.1">
<span class="ltx_p" id="S4.T3.2.7.1.1.1" style="width:365.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.7.1.1.1.1">Dana’s profile:</span> {"name": "Dana","age": "34","gender": "female","occupation": "therapist","personality traits": "empathetic, patient","speaking style": "soothing, deliberate, therapeutic"}.
<span class="ltx_text ltx_font_bold" id="S4.T3.2.7.1.1.1.2">Critiques from the Actor Dana</span>: It would be more effective to say “That must have been really tough for you.” This reinforces my empathetic and patient traits.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.3.1">
<span class="ltx_p" id="S4.T3.2.2.3.1.1" style="width:15.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.3.1.1.1">Case #3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.1.1.1.1">
<span class="ltx_p" id="S4.T3.1.1.1.1.1" style="width:174.9pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="92" id="S4.T3.1.1.1.1.1.g1" src="extracted/6148210/pics_v2/modified_before.png" width="165"/></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.2.2.1">
<span class="ltx_p" id="S4.T3.2.2.2.1.1" style="width:174.9pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="92" id="S4.T3.2.2.2.1.1.g1" src="extracted/6148210/pics_v2/modified_after.png" width="165"/></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.8">
<td class="ltx_td ltx_align_top" id="S4.T3.2.8.1"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" colspan="2" id="S4.T3.2.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.8.2.1">
<span class="ltx_p" id="S4.T3.2.8.2.1.1" style="width:365.7pt;">
Here are <span class="ltx_text ltx_font_bold" id="S4.T3.2.8.2.1.1.1">the selected shots for the last line in Case #1. Debate from one Cinematographer:</span> Tracking Shot is not applicable as Alex is not moving, violating the guideline of Tracking Shot usage. Instead, the Medium Shot correctly shows Alex’s body language.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T3.2.9.1" rowspan="5">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.1.1">
<span class="ltx_p" id="S4.T3.2.9.1.1.1" style="width:15.9pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.9.1.1.1.1">Case #4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.9.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.2.1">
<span class="ltx_p" id="S4.T3.2.9.2.1.1" style="width:174.9pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T3.2.9.2.1.1.1" style="width:174.9pt;">
<span class="ltx_p" id="S4.T3.2.9.2.1.1.1.1">Mia: (Standing Arguing) What is this? I found messages between you and Lily. <span class="ltx_text ltx_font_italic" id="S4.T3.2.9.2.1.1.1.1.1">(<span class="ltx_text" id="S4.T3.2.9.2.1.1.1.1.1.1" style="color:#FF0000;">Medium Shot</span> of Mia)
<br class="ltx_break"/></span>Alex: (Standing Thinking) Mia, I can explain. These conversations were some unfinished matters from the past. <span class="ltx_text ltx_font_italic" id="S4.T3.2.9.2.1.1.1.1.2">(<span class="ltx_text" id="S4.T3.2.9.2.1.1.1.1.2.1" style="color:#FF0000;">Medium Shot</span> of Alex)</span></span>
<span class="ltx_p" id="S4.T3.2.9.2.1.1.1.2">Mia: (Standing Angry) Past? These are from just last week! How could you hide this from me? <span class="ltx_text ltx_font_italic" id="S4.T3.2.9.2.1.1.1.2.1">(<span class="ltx_text" id="S4.T3.2.9.2.1.1.1.2.1.1" style="color:#FF0000;">Medium Shot</span> of Mia)</span></span>
<span class="ltx_p" id="S4.T3.2.9.2.1.1.1.3">Alex: (Standing Deny) I didn’t think it was important. I didn’t want to upset you.<span class="ltx_text ltx_font_italic" id="S4.T3.2.9.2.1.1.1.3.1">(<span class="ltx_text" id="S4.T3.2.9.2.1.1.1.3.1.1" style="color:#FF0000;">Medium Shot</span> of Alex)</span></span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T3.2.9.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.9.3.1">
<span class="ltx_p" id="S4.T3.2.9.3.1.1" style="width:174.9pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="S4.T3.2.9.3.1.1.1" style="width:174.9pt;">
<span class="ltx_p" id="S4.T3.2.9.3.1.1.1.1">Mia: (Standing Arguing) What is this? I found messages between you and Lily. <span class="ltx_text ltx_font_italic" id="S4.T3.2.9.3.1.1.1.1.1">(<span class="ltx_text" id="S4.T3.2.9.3.1.1.1.1.1.1" style="color:#00CC00;">Medium Shot</span> of Mia)
<br class="ltx_break"/></span>Alex: (Standing Thinking) Mia, I can explain. These conversations were some unfinished matters from the past. <span class="ltx_text ltx_font_italic" id="S4.T3.2.9.3.1.1.1.1.2">(<span class="ltx_text" id="S4.T3.2.9.3.1.1.1.1.2.1" style="color:#00CC00;">Pan Shot</span> of Alex)</span></span>
<span class="ltx_p" id="S4.T3.2.9.3.1.1.1.2">Mia: (Standing Angry) Past? These are from just last week! How could you hide this from me? <span class="ltx_text ltx_font_italic" id="S4.T3.2.9.3.1.1.1.2.1">(<span class="ltx_text" id="S4.T3.2.9.3.1.1.1.2.1.1" style="color:#00CC00;">Pan Shot</span> of Mia)</span></span>
<span class="ltx_p" id="S4.T3.2.9.3.1.1.1.3">Alex: (Standing Deny) I didn’t think it was important. I didn’t want to upset you. <span class="ltx_text ltx_font_italic" id="S4.T3.2.9.3.1.1.1.3.1">(<span class="ltx_text" id="S4.T3.2.9.3.1.1.1.3.1.1" style="color:#00CC00;">Close-up Shot</span> of Alex)</span></span>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" colspan="2" id="S4.T3.2.10.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T3.2.10.1.1">
<span class="ltx_p" id="S4.T3.2.10.1.1.1" style="width:365.7pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.2.10.1.1.1.1">Debate from one Cinematographer</span> about the third line: The Medium Shot is used again to capture Mia’s body language. However, having consecutive static medium shots might make the scene feel dull. Consider replacing this shot with a Pan Shot to create some dynamic tension.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of how multi-agent collaboration improves scriptwriting and cinematography in virtual film production.  It presents four cases, each demonstrating a before-and-after comparison of the generated content (script lines and camera shots) and the discussion leading to the improvements. Cases 1 and 2 highlight the 'Critique-Correct-Verify' method used during scriptwriting (stages 2 and 3 respectively), while cases 3 and 4 illustrate the 'Debate-Judge' approach applied in the cinematography stage.
> <details>
> <summary>read the caption</summary>
> Table 3:  Comparisons of the scripts and camera settings before (left) and after (right) multi-agent collaboration, with excerpts from their discussion process. Case #1 and #2 are from the Critique-Correct-Verify method in Scriptwriting #2 and #3 stages respectively. Case #3 and #4 are from the Debate-Judge method in Cinematography.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_align_middle" id="A1.F7.1">
<tr class="ltx_tr" id="A1.F7.1.1">
<td class="ltx_td ltx_align_center" id="A1.F7.1.1.1"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.1.2"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.1.3"></td>
</tr>
<tr class="ltx_tr" id="A1.F7.1.2">
<td class="ltx_td ltx_align_center" id="A1.F7.1.2.1"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.2.2"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.2.3"></td>
</tr>
<tr class="ltx_tr" id="A1.F7.1.3">
<td class="ltx_td ltx_align_center" id="A1.F7.1.3.1"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.3.2"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.3.3"></td>
</tr>
<tr class="ltx_tr" id="A1.F7.1.4">
<td class="ltx_td ltx_align_center" id="A1.F7.1.4.1"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.4.2"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.4.3"></td>
</tr>
<tr class="ltx_tr" id="A1.F7.1.5">
<td class="ltx_td ltx_align_center" id="A1.F7.1.5.1"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.5.2"></td>
<td class="ltx_td ltx_align_center" id="A1.F7.1.5.3"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases six dynamic camera shot types used in the 3D virtual environment of the FILMAGENT system.  Each row describes a different shot type (Pan Shot, Zoom Shot, Tracking Shot, Curve Surround Shot, 360-Degree Arc Shot, Truck Shot), including a textual description of its characteristics and a visual representation from Figure 8 of the paper. The descriptions clarify the conditions under which each shot type is typically employed within the context of filmmaking.
> <details>
> <summary>read the caption</summary>
> Table 4: Examples of 6 types of dynamic shots in Figure 8.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.18">
<tr class="ltx_tr" id="A1.T4.18.19">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.18.19.1"><span class="ltx_text ltx_font_bold" id="A1.T4.18.19.1.1">No.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.18.19.2"><span class="ltx_text ltx_font_bold" id="A1.T4.18.19.2.1">Shot Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.18.19.3"><span class="ltx_text ltx_font_bold" id="A1.T4.18.19.3.1">Description</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.18.19.4"><span class="ltx_text ltx_font_bold" id="A1.T4.18.19.4.1">View</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.4" style="padding-bottom:14.22636pt;">④</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.5" style="padding-bottom:14.22636pt;">Pan Shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.6" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.3.3.6.1" style="width:128.0pt;">
<span class="ltx_p" id="A1.T4.3.3.6.1.1">A pan shot smoothly rotates horizontally from one side to the other while remaining stationary. The view follows the subject’s movement from A to D.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.3.3.3" style="padding-bottom:14.22636pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T4.3.3.3.3">
<tr class="ltx_tr" id="A1.T4.3.3.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.1.1.1.1"><span class="ltx_text" id="A1.T4.1.1.1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.1.1.1.1.1.1.1.g1" src="extracted/6148210/shots/Pan_Shot-1.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2.2.2.2"><span class="ltx_text" id="A1.T4.2.2.2.2.2.2.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.2.2.2.2.2.2.1.g1" src="extracted/6148210/shots/Pan_Shot-2.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.3.3.3.3"><span class="ltx_text" id="A1.T4.3.3.3.3.3.3.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.3.3.3.3.3.3.1.g1" src="extracted/6148210/shots/Pan_Shot-3.png" width="79"/></span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.6.6.4" style="padding-bottom:14.22636pt;">⑤</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.6.6.5" style="padding-bottom:14.22636pt;">Zoom Shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.6.6.6" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.6.6.6.1" style="width:128.0pt;">
<span class="ltx_p" id="A1.T4.6.6.6.1.1">Zooming brings the subject closer, effectively magnifying a specific focus point in the frame. The view shows the zoom shot from position B.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.6.6.3" style="padding-bottom:14.22636pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T4.6.6.3.3">
<tr class="ltx_tr" id="A1.T4.6.6.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.1.1.1.1"><span class="ltx_text" id="A1.T4.4.4.1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.4.4.1.1.1.1.1.g1" src="extracted/6148210/shots/Zoom_Shot-1.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.2.2.2.2"><span class="ltx_text" id="A1.T4.5.5.2.2.2.2.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.5.5.2.2.2.2.1.g1" src="extracted/6148210/shots/Zoom_Shot-2.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.6.6.3.3.3.3"><span class="ltx_text" id="A1.T4.6.6.3.3.3.3.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.6.6.3.3.3.3.1.g1" src="extracted/6148210/shots/Zoom_Shot-3.png" width="79"/></span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.9.9.4" style="padding-bottom:14.22636pt;">⑥</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.9.9.5" style="padding-bottom:14.22636pt;">Tracking Shot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.9.9.6" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.9.9.6.1" style="width:128.0pt;">
<span class="ltx_p" id="A1.T4.9.9.6.1.1">A tracking shot involves a moving camera that follows one or more characters. The view of the example follows the character’s back from position A to D.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.9.9.3" style="padding-bottom:14.22636pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T4.9.9.3.3">
<tr class="ltx_tr" id="A1.T4.9.9.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T4.7.7.1.1.1.1"><span class="ltx_text" id="A1.T4.7.7.1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.7.7.1.1.1.1.1.g1" src="extracted/6148210/shots/Follow_Shot-1.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.8.8.2.2.2.2"><span class="ltx_text" id="A1.T4.8.8.2.2.2.2.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.8.8.2.2.2.2.1.g1" src="extracted/6148210/shots/Follow_Shot-2.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.9.9.3.3.3.3"><span class="ltx_text" id="A1.T4.9.9.3.3.3.3.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.9.9.3.3.3.3.1.g1" src="extracted/6148210/shots/Follow_Shot-3.png" width="79"/></span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.12.12.4" style="padding-bottom:14.22636pt;">⑦</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.12.12.5" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.12.12.5.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T4.12.12.5.1.1">Curve Sur- round Shot</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.12.12.6" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.12.12.6.1" style="width:128.0pt;">
<span class="ltx_p" id="A1.T4.12.12.6.1.1">Curve Surround Shot is an Arc Shot orbiting the camera around a character from feet to head. The character often makes an entrance as the camera circles it.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.12.12.3" style="padding-bottom:14.22636pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T4.12.12.3.3">
<tr class="ltx_tr" id="A1.T4.12.12.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T4.10.10.1.1.1.1"><span class="ltx_text" id="A1.T4.10.10.1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.10.10.1.1.1.1.1.g1" src="extracted/6148210/shots/Curve_Surround_Shot-1.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.11.11.2.2.2.2"><span class="ltx_text" id="A1.T4.11.11.2.2.2.2.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.11.11.2.2.2.2.1.g1" src="extracted/6148210/shots/Curve_Surround_Shot-2.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.12.12.3.3.3.3"><span class="ltx_text" id="A1.T4.12.12.3.3.3.3.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.12.12.3.3.3.3.1.g1" src="extracted/6148210/shots/Curve_Surround_Shot-3.png" width="79"/></span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.15.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.15.15.4" style="padding-bottom:14.22636pt;">⑧</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.15.15.5" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.15.15.5.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T4.15.15.5.1.1">360-Degree Arc Shot</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.15.15.6" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.15.15.6.1" style="width:128.0pt;">
<span class="ltx_p" id="A1.T4.15.15.6.1.1">A 360-degree Arc Shot revolves the camera around a character at a fixed height, typically with the character stationary as the camera circles it.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.15.15.3" style="padding-bottom:14.22636pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T4.15.15.3.3">
<tr class="ltx_tr" id="A1.T4.15.15.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T4.13.13.1.1.1.1"><span class="ltx_text" id="A1.T4.13.13.1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.13.13.1.1.1.1.1.g1" src="extracted/6148210/shots/360_Degrees_Shot-1.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.14.14.2.2.2.2"><span class="ltx_text" id="A1.T4.14.14.2.2.2.2.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.14.14.2.2.2.2.1.g1" src="extracted/6148210/shots/360_Degrees_Shot-2.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.15.15.3.3.3.3"><span class="ltx_text" id="A1.T4.15.15.3.3.3.3.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.15.15.3.3.3.3.1.g1" src="extracted/6148210/shots/360_Degrees_Shot-3.png" width="79"/></span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.18.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.18.18.4" style="padding-bottom:14.22636pt;">⑨</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.18.18.5" style="padding-bottom:14.22636pt;">Truck Shot</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.18.18.6" style="padding-bottom:14.22636pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_middle" id="A1.T4.18.18.6.1" style="width:128.0pt;">
<span class="ltx_p" id="A1.T4.18.18.6.1.1">Trucking involves the camera moving side to side along a fixed point, effective for conveying scene dynamics. The view in the example provides a comprehensive view of the entire location.</span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T4.18.18.3" style="padding-bottom:14.22636pt;">
<table class="ltx_tabular ltx_align_middle" id="A1.T4.18.18.3.3">
<tr class="ltx_tr" id="A1.T4.18.18.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T4.16.16.1.1.1.1"><span class="ltx_text" id="A1.T4.16.16.1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.16.16.1.1.1.1.1.g1" src="extracted/6148210/shots/Track_Shot-1.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.17.17.2.2.2.2"><span class="ltx_text" id="A1.T4.17.17.2.2.2.2.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.17.17.2.2.2.2.1.g1" src="extracted/6148210/shots/Track_Shot-2.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.18.18.3.3.3.3"><span class="ltx_text" id="A1.T4.18.18.3.3.3.3.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.18.18.3.3.3.3.1.g1" src="extracted/6148210/shots/Track_Shot-3.png" width="79"/></span></td>
</tr>
</table>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the evaluation criteria used to assess the quality of the videos generated by the FILMAGENT system.  It uses a 5-point Likert scale to measure three key aspects: overall plot coherence, alignment between the script and actor profiles, and the appropriateness of camera settings. Each aspect is described and scored using the 5-point scale to provide a comprehensive evaluation of the generated videos' quality.
> <details>
> <summary>read the caption</summary>
> Table 5: Details of the 5-point Likert scale for overall plot coherence, script alignment with actor profiles, and appropriateness of camera settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.3.3.3.3">
<tr class="ltx_tr" id="A1.T4.3.3.3.3.3">
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.1.1.1.1"><span class="ltx_text" id="A1.T4.1.1.1.1.1.1.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.1.1.1.1.1.1.1.g1" src="extracted/6148210/shots/Pan_Shot-1.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2.2.2.2"><span class="ltx_text" id="A1.T4.2.2.2.2.2.2.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.2.2.2.2.2.2.1.g1" src="extracted/6148210/shots/Pan_Shot-2.png" width="79"/></span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.3.3.3.3"><span class="ltx_text" id="A1.T4.3.3.3.3.3.3.1" style="position:relative; bottom:-0.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="46" id="A1.T4.3.3.3.3.3.3.1.g1" src="extracted/6148210/shots/Pan_Shot-3.png" width="79"/></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the workflow of the FilmAgent framework, breaking down the film production process into three stages: Idea Development, Scriptwriting, and Cinematography.  For each stage, it lists the corresponding figure number in the paper that illustrates that stage, and it provides a brief description of what happens in that stage and the role each agent plays. This allows a clear understanding of how each stage contributes to the overall film generation.
> <details>
> <summary>read the caption</summary>
> Table 6: The stages, corresponding prompts, and their usage of FilmAgent.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.12909/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.12909/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}