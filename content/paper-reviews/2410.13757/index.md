---
title: "MobA: A Two-Level Agent System for Efficient Mobile Task Automation"
summary: "MobA, a novel two-level agent system, significantly improves mobile task automation efficiency by combining multimodal LLMs with a sophisticated task planning and reflection mechanism."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13757 {{< /keyword >}}

### TL;DR


{{< lead >}}

Current mobile assistants struggle with complex, dynamic interfaces and instructions.  This paper introduces MobA, a two-level agent system powered by multimodal large language models (MLLMs).  The high-level Global Agent plans and decomposes tasks, while the low-level Local Agent executes actions.  A unique double-reflection mechanism allows MobA to verify task completion and correct errors efficiently.  MobA uses a multi-aspect memory module to improve its performance over time.  Extensive experiments on real-world tasks show that MobA significantly outperforms state-of-the-art baselines in task completion rate and efficiency.  The paper details MobA's architecture, workflow, and memory mechanisms, along with a thorough evaluation demonstrating its effectiveness.  The findings suggest a promising path towards creating more intelligent and adaptable mobile assistants.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13757" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13757" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is significant for researchers working on mobile agents, multimodal large language models (MLLMs), and human-computer interaction.  It introduces a novel architecture that addresses current limitations in mobile assistant capabilities, offering a new benchmark and directions for future research in efficient task automation and human-centered AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MobA uses a two-level agent architecture (Global and Local Agents) for efficient task management and execution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A double-reflection mechanism enhances task completion accuracy by verifying sub-goal completion before and after execution. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MobA outperforms existing mobile assistants in real-world evaluations, achieving a higher task completion rate and milestone score. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13757/figures_1_0.png)

> 🔼 The figure illustrates the system overview of MobA, a two-level agent system for efficient mobile task automation, showing the interactions between the user, global agent, local agent, memory module, and optional expert.
> <details>
> <summary>read the caption</summary>
> Fig. 1. The Illustration of System Overview of MobA. (1) The User give a command and receive the response from MOBA if further instructions are required or the task is completed. (2) The Global Agent (GA) acts as the user's interpreter, which comprehends the user's command and decomposes the task into several easier and clearer sub-tasks through the Plan Module. (3) The Local Agent (LA) acts as the controller of the screen, decides and executes the action with the Action Module. (4) The Reflection Module verifies whether the sub-task is completed by previous execution, and it also reflects whether the sub-goal can be completed after planned and before executed by LA. (5) The Memory Module provides and updates in-context information, such as the relevant historical experience of previous commands and knowledge about the user and installed applications. (6) The optional Expert is a human that initializes several basic memories for the warm startup.
> </details>





![](https://ai-paper-reviewer.com/2410.13757/charts_11_0.png)

> 🔼 The chart displays a comparison of the performance of several GUI agents across different task types (easy, medium, hard, indirect, cross-app) in terms of completed tasks, milestone score ratio, and execution efficiency.
> <details>
> <summary>read the caption</summary>
> Fig. 3. Performance on MOBBENCH Categorized by Task Type. While the performance of all models is relatively similar on simpler tasks, MobA demonstrates superior results in more challenging tasks, outperforming other models except for Human and GPT-40 + Human. This suggests that MobA is more efficient in handling complex cases. Additionally, the incorporation of both the Memory Module and Plan Module enhances performance, highlighting their respective contributions to the system's overall capability.
> </details>





{{< table-caption >}}
<table id='4' style='font-size:20px'><tr><td>Action</td><td>Type</td><td>Usage</td><td>Description</td></tr><tr><td>Click</td><td>single</td><td>Click(element_ index: int)</td><td>This function clicks the center of the UI element with the specified element index.</td></tr><tr><td>Click by Coordinate</td><td>single</td><td>Click_by_ Coordinate(x: double, y: double)</td><td>This function simulates a click at the specified x and y coordinates on the screen.</td></tr><tr><td>Double Click</td><td>single</td><td>Double_ Click(element_index: int)</td><td>This function double clicks the center of the UI element with the specified element index.</td></tr><tr><td>Long Press</td><td>single</td><td>Long_ Press(element_index: int)</td><td>This function long-presses the center of the UI element with the specified element index.</td></tr><tr><td>Scroll</td><td>single</td><td>Scroll(element_ index: int, direction: str, distance: str or int)</td><td>This function swipes from the center of the UI element with the specified element index.</td></tr><tr><td>Swipe</td><td>single</td><td>Swipe(direction: str, distance: str)</td><td>This function swipes from the center of the screen.</td></tr><tr><td>Type</td><td>single</td><td>Type(text: str)</td><td>This function inputs text on the current input box.</td></tr><tr><td>Back</td><td>single</td><td>Back()</td><td>This function presses the back key to return to the previous screen or status.</td></tr><tr><td>Box Input</td><td>combination</td><td>Box Input(element_index: int, text: str)</td><td>This function clicks the input box, inputs given text, and confirms it.</td></tr><tr><td>Open App</td><td>system</td><td>Open_App(description: Optional[str])</td><td>This function locates and opens an app with a short description.</td></tr><tr><td>Close App</td><td>system</td><td>Close_App(package_ name: Optional[str])</td><td>This function closes the specified app by its package name.</td></tr><tr><td>Error</td><td>system</td><td>Failed()</td><td>This function indicates that the task cannot be completed.</td></tr><tr><td>Finish</td><td>system</td><td>Finish()</td><td>This function indicates that the task is completed.</td></tr></table>{{< /table-caption >}}

> 🔼 This table lists and describes the available actions used in the MobA system, categorized by type (single, combination, system) and including usage and description for each.
> <details>
> <summary>read the caption</summary>
> Table 1. Available Actions and Descriptions
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13757/figures_4_0.png)

> 🔼 The figure illustrates the detailed workflow of the MobA system, showing how tasks are decomposed into sub-tasks and processed through various modules including task decomposition, action execution, and reflection.
> <details>
> <summary>read the caption</summary>
> Fig. 2. The Illustration of System Workflow of MobA. These dashed lines indicate how a task is completed by decomposed into multiple sub-tasks.
> </details>



![](https://ai-paper-reviewer.com/2410.13757/figures_14_0.png)

> 🔼 The figure illustrates the workflow of MobA in handling a complex task by decomposing it into several sub-tasks, executing them sequentially, and using reflection mechanisms to ensure accuracy.
> <details>
> <summary>read the caption</summary>
> Fig. 4. The First Example Case of MobA. MobA decompose the task into several sub-tasks and solve them in sequence. Please note that several unimportant stages during the execution of a sub-task are omitted for clarity. The key features for each part are as follows. Task: Decompose task. Sub-task 1: Execute a sub-task and reflect. Sub-task 2: Re-split sub-task invoked by feasibility assessment. Sub-task 3: Execute a sub-task. Sub-task 4: Re-split sub-task invoked by result reflection.
> </details>



![](https://ai-paper-reviewer.com/2410.13757/figures_15_0.png)

> 🔼 The figure illustrates an example workflow of MobA handling a complex task involving multiple applications and demonstrates the use of memory and reflection mechanisms.
> <details>
> <summary>read the caption</summary>
> Fig. 5. The Second Example Case of MobA. Please note that several unimportant stages during the execution of a sub-task are omitted for clarity. The key features for each part are as follows. Task: MOBA supports cross-application tasks and can interpret indirect commands. Sub-task 1: Memories are retrieved to select target applications and updated to track the trace. Sub-task 3: MOBA will reflect and try other approaches if the attempt is failed. Sub-task 9 and sub-task 13: Memories are used to choose correct actions.
> </details>



![](https://ai-paper-reviewer.com/2410.13757/figures_26_0.png)

> 🔼 The figure illustrates the process of view-hierarchy processing, showing how redundant information is removed to improve efficiency.
> <details>
> <summary>read the caption</summary>
> Fig. 6. An Example Diagram of View-Hierarchy Processing. From left to right are the original image, unprocessed image and processed image. The underlined parts are the properties that are retained after the merge.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Type</td><td>Application</td><td>Task</td><td>Preparation</td><td>Scoring Milestones</td><td>Steps</td></tr><tr><td>Easy</td><td>McDonald's</td><td>Switch the language of the McDonald's app to English.</td><td>Switch to Chinese.</td><td>1. Task completion.</td><td>6.7</td></tr><tr><td>Medium</td><td>12306 (China Railway)</td><td>Check the schedule for train G104 from Shanghai to Beijing tomorrow, and find out what time it is expected to arrive in Nanjing.</td><td>-</td><td>1. Enter the timetable screen, 2. Correct train number, 3. Task completion.</td><td>11.7</td></tr><tr><td>Hard</td><td>Douban</td><td>Search for the movie "The Shawshank Redemption" on Douban, mark it as "watched", rate it five stars, and leave a positive review.</td><td>Remove the previous mark, rating, and review of this movie.</td><td>1. Correct movie, 2. Correct mark, 3. Correct rating, 4. Positive review.</td><td>9.7</td></tr><tr><td>Indirect</td><td>BiliBili</td><td>IfI'm out of mobile data, what videos can I still watch on the phone?</td><td>Download several videos in advance.</td><td>1. Open BiliBili, 2. Check downloads.</td><td>3.3</td></tr><tr><td>Cross-APP</td><td>JD.com, WeChat</td><td>Share the product link of the most recent JD.com order with a WeChat friend, and write a recommendation message.</td><td>There is an existing order.</td><td>1. Enter the order list, 2. Correct order, 3. Suitable message, 4. Task completion.</td><td>10.3</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 shows five example tasks from the MOBBENCH dataset, illustrating the task type, application used, task description, preparation needed, scoring milestones, and the number of steps involved in completing each task.
> <details>
> <summary>read the caption</summary>
> Table 2. Several example tasks in MOBBENCH. The content is translated from Chinese. The complete table can be found in Appendix A.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:18px'><tr><td>Task Type</td><td># Tasks</td><td>Avg. MS</td><td>Avg. Steps per Task</td><td>Avg. Steps per MS (EE)</td></tr><tr><td>Easy</td><td>10</td><td>1.0</td><td>4.3</td><td>4.30</td></tr><tr><td>Medium</td><td>10</td><td>2.2</td><td>7.3</td><td>3.32</td></tr><tr><td>Hard</td><td>10</td><td>4.1</td><td>15.2</td><td>3.71</td></tr><tr><td>Indirect</td><td>10</td><td>2.8</td><td>9.4</td><td>3.36</td></tr><tr><td>Cross-App</td><td>10</td><td>3.1</td><td>10.8</td><td>3.48</td></tr><tr><td>Overall</td><td>50</td><td>2.7</td><td>9.4</td><td>3.56</td></tr></table>{{< /table-caption >}}
> 🔼 The table summarizes the average milestone scores, average steps per task, and average steps per milestone score for different task types in the MOBBENCH dataset.
> <details>
> <summary>read the caption</summary>
> Table 3. Average scores and expert execution steps for different task types of MOBBENCH.
> </details>

{{< table-caption >}}
<table id='7' style='font-size:20px'><tr><td>Model</td><td>CR</td><td>MS</td><td>EE</td></tr><tr><td>Human</td><td>50/50</td><td>133</td><td>3.56</td></tr><tr><td>GPT-4o + Human</td><td>49/50</td><td>130 (97.7%)</td><td>3.82 (107.2%)</td></tr><tr><td>AppAgent[65]</td><td>6/50</td><td>35 (28.6%)</td><td>4.43 (124.4%)</td></tr><tr><td>MobileAgent (v2)[ ]</td><td>17/50</td><td>63 (48.9%)</td><td>4.84 (136.0%)</td></tr><tr><td>MOBA w/o Memory and Plan</td><td>13/50</td><td>52 (39.1%)</td><td>4.42 (124.2%)</td></tr><tr><td>MOBA w/o Plan</td><td>15/50</td><td>65 (48.9%)</td><td>4.17 (117.1%)</td></tr><tr><td>MOBA w/o Memory</td><td>22/50</td><td>72 (54.1%)</td><td>3.81 (106.9%)</td></tr><tr><td>MOBA</td><td>28/50</td><td>88 (66.2%)</td><td>3.44 (96.7%)</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the overall performance of different models (including baselines and variants of the proposed MOBA model) on the MOBBENCH dataset, comparing their completion rates, milestone scores, and execution efficiency.
> <details>
> <summary>read the caption</summary>
> Table 4. Overall Performance on MOBBENCH.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>[1]</td><td>Gati Aher, Rosa I. Arriaga, and Adam Tauman Kalai. 2023. Using large language models to simulate multiple humans and replicate human subject studies. In Proceedings of the 40th International Conference on Machine Learning (Honolulu, Hawaii, USA) (ICML'23). JMLR.org, Article 17, 35 pages.</td></tr><tr><td>[2]</td><td>Chongyang Bai, Xiaoxue Zang, Ying Xu, Srinivas Sunkara, Abhinav Rastogi, Jindong Chen, and Blaise Aguera y Arcas. 2021. UIBert: Learning Generic Multimodal Representations for UI Understanding. arXiv:2107.13731 [cs.CV] https://arxiv.org/abs/2107.13731</td></tr><tr><td>[3]</td><td>Tom Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared D Kaplan, Prafulla Dhariwal, Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, Sandhini Agarwal, Ariel Herbert-Voss, Gretchen Krueger, Tom Henighan, Rewon Child, Aditya Ramesh, Daniel Ziegler, Jeffrey Wu, Clemens Winter, Chris Hesse, Mark Chen, Eric Sigler, Mateusz Litwin, Scott Gray, Benjamin Chess, Jack Clark, Christopher Berner, Sam McCandlish, Alec Radford, Ilya Sutskever, and Dario Amodei. 2020. Language Models are Few-Shot Learners. In Advances in Neural Information Processing Systems, H. Larochelle, M. Ranzato, R. Hadsell, M.F. Balcan, and H. Lin (Eds.), Vol. 33. Curran Associates, Inc., 1877-1901. Insyrcable.org/spr.jayon/Ofl/ciMid-Stifieg-State?</td></tr><tr><td>[4]</td><td>Jun Chen, Deyao Zhu, Xiaoqian Shen, Xiang Li, Zechun Liu, Pengchuan Zhang, Raghuraman Krishnamoorthi, Vikas Chandra, Yunyang Xiong, and Mohamed Elhoseiny. 2023. MiniGPT-v2: large language model as a unified interface for vision-language multi-task learning. arXiv:2310.09478 [cs.CV] https://arxiv.org/abs/2310.09478</td></tr><tr><td>[5]</td><td>Zhe Chen, Jiannan Wu, Wenhai Wang, Weijie Su, Guo Chen, Sen Xing, Muyan Zhong, Qinglong Zhang, Xizhou Zhu, Lewei Lu, Bin Li, Ping Luo, Tong Lu, Yu Qiao, and Jifeng Dai. 2024. InternVL: Scaling up Vision Foundation Models and Aligning for Generic Visual-Linguistic Tasks. arXiv:2312.14238 [cs.CV] https://arxiv.org/abs/2312.14238</td></tr><tr><td>[6]</td><td>Zhanpeng Chen, Chengjin Xu, Yiyan Qi, and Jian Guo. 2024. MLLM Is a Strong Reranker: Advancing Multimodal Retrieval-augmented Generation via Knowledge-enhanced Reranking and Noise-injected Training. arXiv:2407.21439 [cs.AI] https://arxiv.org/abs/2407.21439</td></tr><tr><td>[7]</td><td>Wenliang Dai, Junnan Li, DONGXU LI, Anthony Tiong, Junqi Zhao, Weisheng Wang, Boyang Li, Pascale N Fung, and Steven Hoi. 2023. InstructBLIP: Towards General-purpose Vision-Language Models with Instruction Tuning. In Advances in Neural Information Processing Systems, A. Oh, T. Naumann, A. Globerson, K. Saenko, M. Hardt, and S. Levine (Eds.), Vol. 36. Curran Associates, Inc., 49250-49267. https://proceedings.neurips.cc/ hatplespectivistatorateshoPpn/ABer/Shicadif</td></tr><tr><td>[8]</td><td>Jingwen Fu, Xiaoyi Zhang, Yuwang Wang, Wenjun Zeng, and Nanning Zheng. 2024. Understanding mobile GUI: From pixel-words to screen-sentences. Neurocomputing 601 (2024), 128200.</td></tr><tr><td>[9]</td><td>Difei Gao, LeiJi, Zechen Bai, Mingyu Ouyang, Peiran Li, Dongxing Mao, Qinchen Wu, Weichen Zhang, Peiyi Wang, Xiangwu Guo, et al. 2024. AssistGUI: Task-Oriented PC Graphical User Interface Automation. In Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition. 13289-13298.</td></tr><tr><td>[10]</td><td>Yuying Ge, Sijie Zhao, Chen Li, Yixiao Ge, and Ying Shan. 2024. SEED-Data-Edit Technical Report: A Hybrid Dataset for Instructional Image Editing. arXiv:2405.04007 [cs.CV] https://arxiv.org/abs/2405.04007</td></tr><tr><td>[11]</td><td>Zecheng He, Srinivas Sunkara, Xiaoxue Zang, Ying Xu, Lijuan Liu, Nevan Wichers, Gabriel Schubiner, Ruby Lee, and Jindong Chen. 2021. Actionbert: Leveraging user actions for semantic understanding of user interfaces. In Proceedings of the AAAI Conference on Artificial Intelligence, Vol. 35. 5931-5938.</td></tr><tr><td>[12]</td><td>Jinyi Hu, Yuan Yao, Chongyi Wang, SHAN WANG, Yinxu Pan, Qianyu Chen, Tianyu Yu, Hanghao Wu, Yue Zhao, Haoye Zhang, Xu Han, Yankai Lin, Jiao Xue, dahai li, Zhiyuan Liu, and Maosong Sun. 2024. Large Multilingual Models Pivot Zero-Shot Multimodal Learning across Languages. In The Twelfth International Conference on Learning Representations. https://openneview.met/form/id=Knh50gOGOGOGOGOp</td></tr><tr><td>[13]</td><td>Xu Huang, Weiwen Liu, Xiaolong Chen, Xingmei Wang, Hao Wang, Defu Lian, Yasheng Wang, Ruiming Tang, and Enhong Chen. 2024. Understanding the planning of LLM agents: A survey. arXiv:2402.02716 [cs.AI] https://arxiv.org/abs/2402.02716</td></tr><tr><td>[14]</td><td>Eunkyung Jo, Daniel A. Epstein, Hyunhoon Jung, and Young-Ho Kim. 2023. Understanding the Benefits and Challenges of Deploying Conversational AI Leveraging Large Language Models for Public Health Intervention. In Proceedings of the 2023 CHI Conference on Human Factors in Computing Systems (Hamburg, Germany) (CHI '23). Association for Computing Machinery, New York, NY, USA, Article 18, 16 pages. https://doi.org/10.1145/ 3544548.3581503</td></tr><tr><td>[15]</td><td>Kunyao Lan, Bingui Jin, Zichen Zhu, Siyuan Chen, Shu Zhang, Kenny Q. Zhu, and Mengyue Wu. 2024. Depression Diagnosis Dialogue Simulation: Self-improving Psychiatrist with Tertiary Memory. arXiv:2409.15084 [cs.CL] https://arxiv.org/abs/2409.15084</td></tr><tr><td>[16]</td><td>Sunjae Lee, Junyoung Choi, Jungjae Lee, Munim Hasan Wasi, Hojun Choi, Steven Y. Ko, Sangeun Oh, and Insik Shin. 2024. Explore, Select, Derive, and Recall: Augmenting LLM with Human-like Memory for Mobile Task Automation. arXiv:2312.03003 [cs.HC] https://arxiv.org/abs/2312.03003</td></tr><tr><td>[17]</td><td>Unggi Lee, MinjiJeon, Yunseo Lee, Gyuri Byun, Yoorim Son, Jaeyoon Shin, Hongkyu Ko, and Hyeoncheol Kim. 2024. LLaVA-Docent: Instruction Tuning with Multimodal Large Language Model to Support Art Appreciation Education. arXiv:2402.06264 [cs.AI] https://arxiv.org/abs/2402.06264</td></tr><tr><td>[18]</td><td>Gang Li and Yang Li. 2023. Spotlight: Mobile UI Understanding using Vision-Language Models with a Focus. In The Eleventh International Conference on Learning Representations.</td></tr><tr><td>[19]</td><td>Toby Jia-Jun Li, Amos Azaria, and Brad A. Myers. 2017. SUGILITE: Creating Multimodal Smartphone Automation by Demonstration. In Proceedings of the 2017 CHI Conference on Human Factors in Computing Systems (Denver, Colorado, USA) (CHI '17). Association for Computing Machinery, New York, NY, USA, 6038-6049. https://doi.org/10.1145/3025453.3025483</td></tr></table>{{< /table-caption >}}
> 🔼 This table lists and describes the available actions used in the MOBA system, categorized by type (single, combination, system) and including usage and description for each.
> <details>
> <summary>read the caption</summary>
> Table 1. Available Actions and Descriptions
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>[40]</td><td>Liangtai Sun, Xingyu Chen, Lu Chen, Tianle Dai, Zichen Zhu, and Kai Yu. 2022. META-GUI: Towards Multi-modal Conversational Agents on Mobile GUI. In Proceedings of the 2022 Conference on Empirical Methods in Natural Language Processing, Yoav Goldberg, Zornitsa Kozareva, and Yue Zhang (Eds.). Association for Computational Linguistics, Abu Dhabi, United Arab Emirates, 6699-6712. https://dod.org/10.18653/v1/2022.emmlp- main.449</td></tr><tr><td>[41]</td><td>Quan Sun, Yufeng Cui, Xiaosong Zhang, Fan Zhang, Qiying Yu, Zhengxiong Luo, Yueze Wang, Yongming Rao, Jingjing Liu, Tiejun Huang, and Xinlong Wang. 2024. Generative Multimodal Models are In-Context Learners. arXiv:2312.13286 [cs.CV] https://arxiv.org/abs/2312.13286</td></tr><tr><td>[42]</td><td>Simeng Sun, Yang Liu, Shuohang Wang, Dan Iter, Chenguang Zhu, and Mohit Iyyer. 2024. PEARL: Prompting Large Language Models to Plan and Execute Actions Over Long Documents. In Proceedings of the 18th Conference of the European Chapter of the Association for Computational Linguistics (Volume 1: Long Papers), Yvette Graham and Matthew Purver (Eds.). Association for Computational Linguistics, St. Julian's, Malta, 469-486. https://aclanthology.org/2024.cad-long29</td></tr><tr><td>[43]</td><td>Gemini Team. 2024. Gemini: A Family of Highly Capable Multimodal Models. arXiv:2312.11805 [cs.CL] https://arxiv.org/abs/2312.11805</td></tr><tr><td>[44]</td><td>Bryan Wang, Gang Li, Xin Zhou, Zhourong Chen, Tovi Grossman, and Yang Li. 2021. Screen2Words: Automatic Mobile UI Summarization with Multimodal Learning. In The 34th Annual ACM Symposium on User Interface Software and Technology (Virtual Event, USA) (UIST '21). Association for Computing Machinery, New York, NY, USA, 498-510. https://doi.org/10.1145/3472749.3474765</td></tr><tr><td>[45]</td><td>Guanzhi Wang, Yuqi Xie, Yunfan Jiang, Ajay Mandlekar, Chaowei Xiao, Yuke Zhu, Linxi Fan, and Anima Anandkumar. 2023. Voyager: An Open-Ended Embodied Agent with Large Language Models. arXiv:2305.16291 [cs.AI] https://arxiv.org/abs/2305.16291</td></tr><tr><td>[46]</td><td>Junyang Wang, Haiyang Xu, Haitao Jia, Xi Zhang, Ming Yan, Weizhou Shen,Ji Zhang, FeiHuang, and Jitao Sang. 2024. Mobile-Agent-v2: Mobile Device Operation Assistant with Effective Navigation via Multi-Agent Collaboration. (2024). arXiv:2406.01014 [cs.CL] https://arxiv.org/abs/2406.01014</td></tr><tr><td>[47]</td><td>Junyang Wang, Haiyang Xu, Jiabo Ye, Ming Yan, Weizhou Shen, Ji Zhang, Fei Huang, and Jitao Sang. 2024. Mobile-Agent: Autonomous Multi-Modal Mobile Device Agent with Visual Perception. arXiv:2401.16158 [cs.CL] https://arxiv.org/abs/2401.16158</td></tr><tr><td>[48]</td><td>Xuezhi Wang, Jason Wei, Dale Schuurmans, Quoc V Le, Ed H. Chi, Sharan Narang, Aakanksha Chowdhery, and Denny Zhou. 2023. Self- Consistency Improves Chain of Thought Reasoning in Language Models. In The Eleventh International Conference on Learning Representations. https://operneview.me/from/3d=1PL1PL1XIMIMW</td></tr><tr><td>[49]</td><td>Yiqi Wang, Wentao Chen, Xiaotian Han, Xudong Lin, Haiteng Zhao, Yongfei Liu, Bohan Zhai, Jianbo Yuan, Quanzeng You, and Hongxia Yang. 2024. Exploring the Reasoning Abilities of Multimodal Large Language Models (MLLMs): A Comprehensive Survey on Emerging Trends in Multimodal Reasoning. arXiv:2401.06805 [cs.CL] https://arxiv.org/abs/2401.06805</td></tr><tr><td>[50]</td><td>Yuqing Wang and Yun Zhao. 2023. Gemini in Reasoning: Unveiling Commonsense in Multimodal Large Language Models. arXiv:2312.17661 [cs.CL] https://arxiv.org/abs/2312.17661</td></tr><tr><td>[51]</td><td>Jason Wei, Xuezhi Wang, Dale Schuurmans, Maarten Bosma, brian ichter, Fei Xia, Ed Chi, Quoc V Le, and Denny Zhou. 2022. Chain-of-Thought Prompting Elicits Reasoning in Large Language Models. In Advances in Neural Information Processing Systems, S. Koyejo, S. Mohamed, A. Agarwal, D. Belgrave, K. Cho, and A. Oh (Eds.), Vol. 35. Curran Associates, Inc., 24824-24837. https://procecling.nou/psco.jpper_fishaape2fEs/ edistratesaded40falth30aloces-Paper-Comentercenti</td></tr><tr><td>[52]</td><td>Hao Wen, Yuanchun Li, Guohong Liu, Shanhui Zhao, Tao Yu, Toby Jia-Jun Li, Shiqi Jiang, Yunhao Liu, Yaqin Zhang, and Yunxin Liu. 2024. AutoDroid: LLM-powered Task Automation in Android. In Proceedings of the 30th Annual International Conference on Mobile Computing and Networking (Washington D.C., DC, USA) (ACM MobiCom '24). Association for Computing Machinery, New York, NY, USA, 543-557. https: //dai.org/10.1145/3636534.3649379</td></tr><tr><td>[53]</td><td>Jiannan Wu, Muyan Zhong, Sen Xing, Zeqiang Lai, Zhaoyang Liu, Wenhai Wang, Zhe Chen, Xizhou Zhu, Lewei Lu, Tong Lu, Ping Luo, Yu Qiao, and Jifeng Dai. 2024. VisionLLM v2: An End-to-End Generalist Multimodal Large Language Model for Hundreds of Vision-Language Tasks. arXiv:2406.08394 [cs.CV] https://arxiv.org/abs/2406.08394</td></tr><tr><td>[54]</td><td>Zhenyu Wu, Ziwei Wang, XiuweiXu,Jiwen Lu, and Haibin Yan. 2023. Embodied Task Planning with Large Language Models. arXiv:2307.01848 [cs.CV] https://arxiv.org/abs/2307.01848</td></tr><tr><td>[55]</td><td>Zhiheng Xi, Wenxiang Chen, Xin Guo, Wei He, Yiwen Ding, Boyang Hong, Ming Zhang, Junzhe Wang, Senjie Jin, Enyu Zhou, Rui Zheng, Xiaoran Fan, Xiao Wang, Limao Xiong, Yuhao Zhou, Weiran Wang, Changhao Jiang, Yicheng Zou, Xiangyang Liu, Zhangyue Yin, Shihan Dou, Rongxiang Weng, Wensen Cheng, Qi Zhang, Wenjuan Qin, Yongyan Zheng, Xipeng Qiu, Xuanjing Huang, and Tao Gui. 2023. The Rise and Potential of Large Language Model Based Agents: A Survey. arXiv:2309.07864 [cs.AI] https://arxiv.org/abs/2309.07864</td></tr><tr><td>[56]</td><td>Mingzhe Xing, Rongkai Zhang, Hui Xue, Qi Chen, Fan Yang, and Zhen Xiao. 2024. Understanding the Weakness of Large Language Model Agents within a Complex Android Environment. In Proceedings of the 30th ACM SIGKDD Conference on Knowledge Discovery and Data Mining (Barcelona, Spain) (KDD '24). Association for Computing Machinery, New York, NY, USA, 6061-6072. https://doi.cog/10.1145/3637528.3671650</td></tr><tr><td>[57]</td><td>Hongshen Xu, Zichen Zhu, Situo Zhang, Da Ma, Shuai Fan, Lu Chen, and Kai Yu. 2024. Rejection Improves Reliability: Training LLMs to Refuse Unknown Questions Using RL from Knowledge Feedback. arXiv:2403.18349 [cs.CL] https://arxiv.org/abs/2403.18349</td></tr><tr><td>[58]</td><td>An Yan, Zhengyuan Yang, Wanrong Zhu, Kevin Lin, Linjie Li, Jianfeng Wang, Jianwei Yang, Yiwu Zhong, Julian McAuley, Jianfeng Gao, Zicheng Liu, and Lijuan Wang. 2023. GPT-4V in Wonderland: Large Multimodal Models for Zero-Shot Smartphone GUI Navigation. arXiv:2311.07562 [cs.CV] https://arxiv.org/abs/2311.07562</td></tr><tr><td>[59]</td><td>Shunyu Yao, Jeffrey Zhao, Dian Yu, Nan Du, Izhak Shafran, Karthik R Narasimhan, and Yuan Cao. 2023. ReAct: Synergizing Reasoning and Acting in Language Models. In The Eleventh International Conference on Learning Representations. https://openreview.netficmunfild=WE_vui-X</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents a complete list of 50 tasks in the MOBBENCH dataset, detailing the application, task description, preparation steps, and scoring milestones for each.
> <details>
> <summary>read the caption</summary>
> Table 5. Complete list of tasks in MOBBENCH. The content is translated from Chinese.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Type</td><td>Application</td><td>Task</td><td>Preparation</td><td>Scoring Milestones</td></tr><tr><td>Easy</td><td>12306 (China Railway)</td><td>Go to the 'My' page in the 12306 app, and switch the app from standard mode to senior mode under common functions.</td><td>Switch to standard mode.</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>Bilibili</td><td>Search 'Advanced Mathematics' in Bilibili and play the first video.</td><td>-</td><td>1. Task completion. 2. Skip the ad if applicable.</td></tr><tr><td>Easy</td><td>Camera</td><td>Take a photo using the camera's night mode.</td><td>-</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>Clock</td><td>Turn off the earliest opened alarm.</td><td>Set and turn on several alarms.</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>Douban</td><td>Check the Douban rating of the movie 'Artificial Intelligence'.</td><td>-</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>Google Calendar</td><td>Create a new task on Google Calendar titled 'Thesis Writing'.</td><td>-</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>H World</td><td>Help me check how much discount my H World membership has.</td><td>Logging in.</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>JD.com</td><td>Search for an assigned store on JD and add the first product to the cart.</td><td>-</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>McDonald's</td><td>Switch the language of the McDonald's app to English.</td><td>Switch to Chinese.</td><td>1. Task completion.</td></tr><tr><td>Easy</td><td>Weather</td><td>Check tomorrow's weather.</td><td>-</td><td>1. Task completion.</td></tr><tr><td>Medium</td><td>12306 (China Railway)</td><td>Check the schedule for train G104 from Shanghai to Beijing tomorrow, and find out what time it is expected to arrive in Nanjing.</td><td>-</td><td>1. Enter the timetable query interface. 2. Train number correct. 3. Task completed.</td></tr><tr><td>Medium</td><td>Bilibili</td><td>From the "Hot" page of Bilibili, go to the leaderboard, play the top-ranked video, follow the account, and add the video to the favorites.</td><td>Cancel following this account</td><td>1. Enter the leaderboard. 2. Play the video. 3. Follow the account. 4. Add to favorites.</td></tr><tr><td>Medium</td><td>Camera</td><td>Set the timer selfie with the longest delay.</td><td>Switch to the front camera.</td><td>1. Set delay. 2. Switch to the front camera.</td></tr><tr><td>Medium</td><td>Clock</td><td>Add Hong Kong in World Clock.</td><td>There is no Hong Kong in world time.</td><td>1. Enter the addition interface. 2. Task completion.</td></tr><tr><td>Medium</td><td>Douban</td><td>Search "Douban Movie Top 250" and like the top comment of the second-ranked movie.</td><td>-</td><td>1. Enter the list. 2. Task completed.</td></tr><tr><td>Medium</td><td>Google Calendar</td><td>Create a new all-day event on Google Calendar for tomorrow titled 'Company Annual Meeting'.</td><td>-</td><td>1. Correct date. 2. Correct time. 3. Task completion.</td></tr><tr><td>Medium</td><td>H World</td><td>On the 'H World' app, search for the starting price of the nearest Hanting Hotel to me.</td><td>-</td><td>1. Distance priority sorting. 2. Task completion.</td></tr><tr><td>Medium</td><td>JD.com</td><td>Find the most recent product awaiting review on JD app, give it a full five-star rating, write a review, and add two photos.</td><td>There are orders that have not been evaluated.</td><td>1. Enter review interface. 2. Task completion.</td></tr><tr><td>Medium</td><td>McDonald's</td><td>Invoice the most recent McDonald's order.</td><td>There is an order and no invoice has been issued.</td><td>1. Enter order interface. 2. Select the first order to invoice. 3. Task completion.</td></tr><tr><td>Medium</td><td>Weather</td><td>Check the sunset time tonight.</td><td></td><td>1. Task completion.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 shows a complete list of 50 tasks used in the MOBBENCH test set, categorized by type and including application, task description, preparation steps and scoring milestones.
> <details>
> <summary>read the caption</summary>
> Table 5. Complete list of tasks in MOBBENCH. The content is translated from Chinese.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Type</td><td>Application</td><td>Task</td><td>Preparation</td><td>Scoring Milestones</td></tr><tr><td>Hard</td><td>12306 (China Railway)</td><td>Buy a high-speed rail ticket for tomorrow from Shanghai to Beijing, with departure time between 9 am and 11 am.</td><td>Departure and arrival stations differ from those on the homepage, and direct tickets must be available.</td><td>1. Correct date. 2. Correct station. 3. Correct train selection. 4. Add passenger. 5. Complete task.</td></tr><tr><td>Hard</td><td>BiliBili</td><td>Search in Bilibili and follow the assigned account, play the newest video and write a friendly comment.</td><td>Unfollow the account, and disable the 'auto-play next video' setting.</td><td>1. Enter the account homepage. 2. Follow account. 3. Play video. 4. Write comment.</td></tr><tr><td>Hard</td><td>Clock</td><td>Create an alarm at 10 o'clock titled 'Work' with vibration reminders on every Monday to Thursday.</td><td>-</td><td>1. Time correct. 2. Title correct. 3. Period repetition is correct. 4. Turn off the ringtone and turn on the vibration. 5. Task completed.</td></tr><tr><td>Hard</td><td>Camera</td><td>Switch the camera to video mode, turn on the fill light, set the video quality to 'FHD 30FPS', and stop recording after more than twenty seconds.</td><td>Switch to non-video mode.</td><td>1. Turn on the fill light. 2. Switch video quality. 3. Complete 20s recording.</td></tr><tr><td>Hard</td><td>Douban</td><td>Search for the movie 'The Shawshank Redemption' on Douban, mark it as 'watched', rate it five stars, and leave a positive review.</td><td>Remove the previous mark, rating, and review of this movie.</td><td>1. Enter the movie details interface. 2. Successfully marked. 3. Successfully rated. 4. Leave a review.</td></tr><tr><td>Hard</td><td>Google Calendar</td><td>Create a recurring event on Google Calendar titled 'Computer Vision Course' scheduled for every Wednesday from 6 PM to 8 PM, starting this week and repeating eight times.</td><td>-</td><td>1. Correct time title. 2. Correct period repetition. 3. Task completed.</td></tr><tr><td>Hard</td><td>H World</td><td>On the H World app, book a hotel in Chengdu for today's check-in and the day after tomorrow's check-out, near Tianfu Square. Choose the second cheapest hotel listed when sorted by price, and use WeChat to pay.</td><td>-</td><td>1. Date correct. 2. City location is correct. 3. Price correct. 4. Enter order interface. 5. Submit order. 6. Payment method correct.</td></tr><tr><td>Hard</td><td>JD.com</td><td>Search for assigned store on JD.com, find and buy the cheapest item in the store, choose the light-colored style, and buy two.</td><td>-</td><td>1. Enter the store interface. 2. Correct product selection. 3. Task completed.</td></tr><tr><td>Hard</td><td>McDonald's</td><td>Order a '1+1 Mix & Match' for immediate in-store pickup, choose McChicken and Mini Chocolate Sundae, add to cart, place your order, and choose Alipay to pay.</td><td>-</td><td>1. Find the set meal. 2. Select the set meal. 3. Settle the order. 4. Payment method correct. 5. Task completed.</td></tr><tr><td>Hard</td><td>Weather</td><td>Add 'Chengdu' in the weather app and tell me the temperature range for tomorrow.</td><td>Ensure that Chengdu is not listed in the city list.</td><td>1. Enter the city list. 2. Successfully added. 3. Task completed.</td></tr></table>{{< /table-caption >}}
> 🔼 The table lists 50 real-world tasks used to evaluate the performance of the MOBA agent system across various mobile applications, categorized by difficulty level and with detailed scoring milestones for each task.
> <details>
> <summary>read the caption</summary>
> Table 5. Complete list of tasks in MOBBENCH. (Cont.)
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Type</td><td>Application</td><td>Task</td><td>Preparation</td><td>Scoring Milestones</td></tr><tr><td>Indirect</td><td>12306 (China Railway)</td><td>Book a high-speed train ticket for the day after tomorrow, returning to Beijing before 6:00 PM.</td><td>-</td><td>1. Correct train. 2. Correct date selection. 2. Add passenger details. 3. Task completion.</td></tr><tr><td>Indirect</td><td>Bilibili</td><td>I'm out of mobile data, what videos can I still watch on the phone?</td><td>Caching multiple videos in advance.</td><td>1. Open Bilibili. 2. Watch saved videos.</td></tr><tr><td>Indirect</td><td>Camera</td><td>Delete the last photo taken recently.</td><td>-</td><td>1. Delete photo. 2. Task completion.</td></tr><tr><td>Indirect</td><td>Clock</td><td>Remind me in two hours.</td><td>-</td><td>1. Enter the timer interface. 2. Task completion.</td></tr><tr><td>Indirect</td><td>Douban</td><td>Help me check which is the most popular movie among the upcoming releases in theaters.</td><td>-</td><td>1. Open Douban. 2. Task completion.</td></tr><tr><td>Indirect</td><td>Google Calendar</td><td>Record that I have a 'Natural Language Processing' class from 10 AM to 12 PM tomorrow at campus.</td><td>-</td><td>1. Enter the calendar creation interface. 2. select the correct time. 3. select the correct location correctly. 4. Task completion.</td></tr><tr><td>Indirect</td><td>H World</td><td>Tell me about the nearest available hotel nearby and book it for me.</td><td>-</td><td>1. Select current location. 2. Confirm the selection. 3. Submit the booking. 4. Task completion.</td></tr><tr><td>Indirect</td><td>JD.com</td><td>Ask customer service if there is any discount for the top item in the shopping cart.</td><td>-</td><td>1. Select the correct item. 2. Enter customer service page. 3. Task completion.</td></tr><tr><td>Indirect</td><td>McDonald's</td><td>Order a McSpicy Chicken Filet Burger Combo for dine-in.</td><td>-</td><td>1. Find the combo. 2. Checkout. 3. Task completion.</td></tr><tr><td>Indirect</td><td>Weather</td><td>Do I need to bring an umbrella tomorrow?</td><td>-</td><td>1. Task completion.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents a complete list of 50 real-world tasks used to evaluate the performance of the MOBA agent system, categorized by type and difficulty level.
> <details>
> <summary>read the caption</summary>
> Table 5. Complete list of tasks in MOBBENCH. (Cont.)
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Type</td><td>Application</td><td>Task</td><td>Preparation</td><td>Scoring Milestones</td></tr><tr><td>Cross-APP</td><td>12306 (China Railway), Google Calendar</td><td>Help me add my latest train journey to the schedule, titled '{Departure Station}--{Train Number}--{Arrival Station}', and set exact time range.</td><td>-</td><td>1. Enter ticket list. 2. Correct title. 3. Correct time.</td></tr><tr><td>Cross-APP</td><td>BiliBili, Douban</td><td>Play the movie ranked third in the "Douban Movie Top 250" on Bilibili.</td><td>-</td><td>1. Correct movie. 2. Successful play.</td></tr><tr><td>Cross-APP</td><td>Camera, JD.com</td><td>Open the camera and tell me what item is in front of the lens, search for this type of product on JD.com, and select a similar item to add to the shopping cart.</td><td>Point the rear camera at a common object</td><td>1. Correct answer. 2. Successfully search. 3. Add to shopping cart.</td></tr><tr><td>Cross-APP</td><td>Camera, WeChat</td><td>Take a photo with a telephoto lens and share it on WeChat Moments, write a few words with the note 'This is an automatically posted Moments by MobA' in the end.</td><td>Log in to WeChat in advance, the camera must face a bright area, and click to keep the interface unchanged.</td><td>1. Take a photo. 2. Enter share menu from gallery. 3. Correct caption. 4. Successfully send to Moments.</td></tr><tr><td>Cross-APP</td><td>Google Calendar, Clock</td><td>What time is my meeting tomorrow? Set an alarm for two hours before the meeting to remind me.</td><td>Set a meeting schedule that starts at 10 a.m tomorrow morning.</td><td>1. Correct answer. 2.Successful alarm addition.</td></tr><tr><td>Cross-APP</td><td>Google Calendar, Weather</td><td>Check my calendar for the schedule of my trip to Shenzhen and tell me the weather forecast for that day.</td><td>Create a new all day schedule for the day after tomorrow in the calendar, named 'Shenzhen Tour'.</td><td>1. Enter Google Calendar. 2. Correct date retrieval. 3. Enter weather. 4. Successful weather query.</td></tr><tr><td>Cross-APP</td><td>H World, BiliBili</td><td>Check the address of my most recent order in H World application and search for travel guides for that area on Bilibili.</td><td>There is an order (which can be in unpaid or canceled payment status).</td><td>1. Retrieve order. 2. Enter Bilibili. 3. Successful video play.</td></tr><tr><td>Cross-APP</td><td>JD.com, WeChat</td><td>Share the product link of the most recent JD.com order with a WeChat friend, and write a recommendation message.</td><td>There is an order (which can be in unpaid or canceled payment status).</td><td>1. Enter order interface. 2. Select order. 3. Suitable recommendation message. 4. Successful sharing.</td></tr><tr><td>Cross-APP</td><td>McDonald's, Weather</td><td>Order a dine-in Spicy McWings at McDonald's. If the current weather is not suitable for going out, order delivery instead.</td><td>-</td><td>1. Check weather. 2. Select meal. 3. Checkout. 4. Correct dining option.</td></tr><tr><td>Cross-APP</td><td>Weather, Clock</td><td>Ifit rains tomorrow, set an alarm for 10 a.m. to wake me up; otherwise, set the alarm for 8 a.m.</td><td>-</td><td>1. Successfully judge tomorrow's weather. 2. Successfully set the alarm.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 provides a complete list of 50 tasks used in the MOBBENCH evaluation set, categorized by type and difficulty level, including application, task description, preparation steps, and milestone scoring criteria.
> <details>
> <summary>read the caption</summary>
> Table 5. Complete list of tasks in MOBBENCH. (Cont.)
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13757/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13757/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}