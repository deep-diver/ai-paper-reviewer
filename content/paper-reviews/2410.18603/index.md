---
title: "AgentStore: Scalable Integration of Heterogeneous Agents As Specialized Generalist Computer Assistant"
summary: "AgentStore dynamically integrates diverse AI agents for superior task automation, outperforming previous systems by enhancing both generalization and specialization."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-29"]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.18603 {{< /keyword >}}

### TL;DR


{{< lead >}}

Current AI agent systems struggle with balancing generalization (handling diverse tasks) and specialization (mastering specific tasks).  Existing methods using single generalist or specialized agents often fall short in real-world scenarios involving open-ended computer tasks that require a combination of both skills.  This creates a need for flexible and scalable systems that can dynamically integrate diverse agents.

AgentStore is proposed as a solution; it leverages a novel MetaAgent with the AgentToken strategy to efficiently manage and utilize a wide range of heterogeneous agents.  The system’s scalability is showcased by dynamically integrating third-party agents, adapting to evolving OS environments.  Extensive experiments demonstrate AgentStore's superior performance, significantly improving upon existing methods by doubling previous success rates. This highlights the importance of AgentStore's adaptable architecture for addressing the challenges of open-ended tasks in real-world environments.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18603" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18603" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it presents **AgentStore**, a novel and scalable solution to the challenges of building specialized generalist AI assistants.  It directly addresses current limitations in agent generalization and specialization by dynamically integrating diverse agents, a significant advancement over existing single-agent or homogenous multi-agent systems.  The **AgentToken** strategy and self-instruct training method offer efficiency and scalability, opening new avenues for research in agent management and AI system development.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} AgentStore, a scalable platform, dynamically integrates heterogeneous AI agents for enhanced task automation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The AgentToken strategy efficiently manages diverse agents, improving training efficiency and enabling plug-and-play functionality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} AgentStore significantly outperforms existing systems in generalization and specialization, achieving state-of-the-art results on benchmark tasks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18603/figures_2_0.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, showing how they interact to manage and utilize diverse agents for task completion.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>





![](https://ai-paper-reviewer.com/2410.18603/charts_8_0.png)

> 🔼 The chart illustrates the impact of incrementally adding agents to AgentStore on overall performance, comparing two strategies: random agent addition versus adding agents categorized by GUI or CLI type.
> <details>
> <summary>read the caption</summary>
> Figure 3: The performance curve as the number of agents increases, with the y-axis representing the success rate (%) on OSWorld and the horizontal x-axis representing the number of agents.
> </details>





{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td rowspan="2">Agent</td><td rowspan="2">Base</td><td colspan="10">Success Rate (%)</td></tr><tr><td>OS*</td><td>Calc</td><td>Impress</td><td>Writer</td><td>VLC</td><td>TB</td><td>Chrome</td><td>VSC</td><td>GIMP</td><td>AVG</td></tr><tr><td>CogAgent</td><td>GogVLM</td><td>1.60</td><td>2.17</td><td>0.00</td><td>4.35</td><td>6.53</td><td>0.00</td><td>2.17</td><td>0.00</td><td>0.00</td><td>1.32</td></tr><tr><td>MMAgent</td><td>GPT-4o</td><td>14.44</td><td>4.26</td><td>6.81</td><td>8.70</td><td>9.50</td><td>6.67</td><td>15.22</td><td>30.43</td><td>0.00</td><td>11.21</td></tr><tr><td>CRADLE</td><td>GPT-4o</td><td>8.00</td><td>0.00</td><td>4.65</td><td>8.70</td><td>6.53</td><td>0.00</td><td>8.70</td><td>0.00</td><td>38.46</td><td>7.81</td></tr><tr><td>Friday*</td><td>GPT-4o</td><td>15.20</td><td>25.50</td><td>0.00</td><td>21.73</td><td>0.00</td><td>0.00</td><td>0.00</td><td>17.39</td><td>15.38</td><td>11.11</td></tr><tr><td>Open-Inter*</td><td>GPT-4o</td><td>12.80</td><td>12.76</td><td>0.00</td><td>13.04</td><td>0.00</td><td>0.00</td><td>0.00</td><td>17.39</td><td>15.38</td><td>8.94</td></tr><tr><td>AgentStore(GT)</td><td>Hybrid</td><td>20.00</td><td>36.17</td><td>10.63</td><td>47.83</td><td>47.06</td><td>40.00</td><td>34.78</td><td>47.82</td><td>38.46</td><td>29.54</td></tr><tr><td>AgentStore(ICL)</td><td>Hybrid</td><td>9.60</td><td>0.00</td><td>2.13</td><td>4.34</td><td>35.29</td><td>33.33</td><td>30.43</td><td>30.43</td><td>15.38</td><td>13.55</td></tr><tr><td>AgentStore(FT)</td><td>Hybrid</td><td>8.80</td><td>27.65</td><td>4.26</td><td>13.04</td><td>41.17</td><td>40.00</td><td>34.78</td><td>8.60</td><td>15.38</td><td>17.34</td></tr><tr><td>AgentStore(AT)</td><td>Hybrid</td><td>13.86</td><td>31.91</td><td>8.51</td><td>39.13</td><td>47.06</td><td>40.00</td><td>32.61</td><td>39.13</td><td>30.77</td><td>23.85</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance comparison between AgentStore and previous methods on the OSWorld benchmark, categorized by application domains.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed success rates of previous methods and AgentStore on OSWorld, divided by apps (domains). Methods marked with * represent our re-implementation of the corresponding agents to ensure their applicability. Additionally, due to the significant overlap of operations between the OS and Workflow domains in the original division, we have merged these two domains into OS*.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.18603/figures_4_0.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, and how they interact to manage and utilize diverse agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_4_1.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, showing how they work together to manage and utilize various agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_10_0.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, and how they interact to manage and utilize heterogeneous agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_16_1.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, showing how they interact to manage and utilize diverse agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_17_0.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, showing how they work together to manage and utilize diverse agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_18_0.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, and how they interact to dynamically manage agents and execute tasks.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_19_1.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, showing how they interact to dynamically integrate and manage heterogeneous agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_20_0.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, and how they interact to manage and utilize heterogeneous agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_20_1.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, and how they interact to manage and utilize diverse agents for task completion.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_21_0.png)

> 🔼 The figure illustrates the three main components of AgentStore: AgentPool, AgentEnroll, and MetaAgent, showing how they interact to manage and utilize diverse agents for task automation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration on the main components in AgentStore.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_24_0.png)

> 🔼 The figure illustrates the OSWorld environment's architecture, detailing how a multimodal agent interacts with various applications and interfaces to execute complex tasks within a real-world OS context.
> <details>
> <summary>read the caption</summary>
> Figure 9: OSWorld can serve as a unified environment for evaluating open-ended computer tasks in the real-world computer environment.
> </details>



![](https://ai-paper-reviewer.com/2410.18603/figures_25_0.png)

> 🔼 The figure shows specific steps involved in executing three tasks (setting up email forwarding, calculating annual changes in a spreadsheet, and boosting the contrast of a photo) using different specialized agents in AgentStore.
> <details>
> <summary>read the caption</summary>
> Figure 5: Specific steps involved in executing three tasks mentioned in the qualitative analysis.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.18603/charts_9_0.png)

> 🔼 The chart shows the routing and executing accuracy of the MetaAgent as router increase with the number of training data for one agent.
> <details>
> <summary>read the caption</summary>
> Figure 4: The accuracy curves with increasing training data corresponding to one agent. The x-axis represents the demonstration set size corresponding to each agent. The left y-axis represents the routing accuracy while the right y-axis indicates the executing accuracy.
> </details>


![](https://ai-paper-reviewer.com/2410.18603/charts_14_0.png)

> 🔼 The chart displays the distribution of agents in AgentPool across four categories: GUI vs CLI, single-modal vs multi-modal, open vs close, and extension vs no-extension.
> <details>
> <summary>read the caption</summary>
> Figure 6: The agent distribution across different types.
> </details>


![](https://ai-paper-reviewer.com/2410.18603/charts_22_0.png)

> 🔼 The chart displays the distribution of BertScore values across different domains, showing the range of maximum and minimum scores.
> <details>
> <summary>read the caption</summary>
> Figure 7: BertScore distribution across different domains.
> </details>


![](https://ai-paper-reviewer.com/2410.18603/charts_23_0.png)

> 🔼 The chart shows the distribution of task instructions in the OS-World benchmark across different categories.
> <details>
> <summary>read the caption</summary>
> Figure 8: Task instructions distribution in OS-World (Xie et al., 2024)
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='8' style='font-size:18px'><tr><td rowspan="2">Agent</td><td rowspan="2">Base</td><td colspan="10">Success Rate (%)</td></tr><tr><td>Maps</td><td>x</td><td>TG</td><td>Temu</td><td>YT</td><td>Spotify</td><td>Yelp</td><td>Gmail</td><td>Clock</td><td>AVG</td></tr><tr><td>AppAgent*</td><td>Qwen-VL</td><td>20.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>20.0</td><td>4.4</td></tr><tr><td>AppAgent*</td><td>GPT-4o</td><td>60.0</td><td>20.0</td><td>20.0</td><td>0.0</td><td>40.0</td><td>20.0</td><td>20.0</td><td>20.0</td><td>40.0</td><td>26.7</td></tr><tr><td>AgentStore(GT)</td><td>GPT-4o</td><td>80.0</td><td>60.0</td><td>40.0</td><td>40.0</td><td>60.0</td><td>80.0</td><td>80.0</td><td>60.0</td><td>60.0</td><td>66.7</td></tr><tr><td>AgentStore(AT)</td><td>GPT-4o</td><td>80.0</td><td>40.0</td><td>40.0</td><td>40.0</td><td>60.0</td><td>60.0</td><td>80.0</td><td>60.0</td><td>60.0</td><td>57.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance comparison between a single generalist agent and AgentStore on the APPAgent benchmark across nine mobile applications.
> <details>
> <summary>read the caption</summary>
> Table 2: Success rates of generalist agents and AgentStore. Methods marked with '*' indicate the re-implementation of the APPAgent without app-specific knowledge. Due to differences between the original paper and the publicly available benchmark, the results may vary. Additionally, while enhanced Appagent also generated app-specific agents, it did not integrate them into a complete system, instead only evaluating individual apps, and thus it is not included in the comparison.
> </details>

{{< table-caption >}}
<br><table id='15' style='font-size:18px'><tr><td rowspan="2">Agent</td><td rowspan="2">Base</td><td colspan="10">Success Rate (%)</td></tr><tr><td>OS</td><td>Calc</td><td>Impress</td><td>Writer</td><td>VLC</td><td>TB</td><td>Chrome</td><td>VSC</td><td>GIMP</td><td>AVG</td></tr><tr><td>ICL</td><td>GPT-4o</td><td>58.33</td><td>14.89</td><td>12.77</td><td>13.04</td><td>88.24</td><td>100</td><td>97.83</td><td>60.87</td><td>53.85</td><td>49.63</td></tr><tr><td>ICL</td><td>InternVL</td><td>37.50</td><td>6.38</td><td>21.28</td><td>8.70</td><td>35.29</td><td>33.33</td><td>52.17</td><td>30.43</td><td>30.77</td><td>41.57</td></tr><tr><td>FT-LoRA</td><td>InternVL</td><td>50.00</td><td>74.47</td><td>55.32</td><td>13.04</td><td>88.23</td><td>100</td><td>89.13</td><td>30.43</td><td>34.61</td><td>60.82</td></tr><tr><td>AgentToken</td><td>InternVL</td><td>75.00</td><td>80.85</td><td>72.34</td><td>43.47</td><td>100</td><td>100</td><td>95.65</td><td>91.30</td><td>73.08</td><td>80.60</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison between AgentStore and previous methods on the OSWorld benchmark, categorized by application domains.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed success rates of previous methods and AgentStore on OSWorld, divided by apps (domains). Methods marked with '*' represent our re-implementation of the corresponding agents to ensure their applicability. Additionally, due to the significant overlap of operations between the OS and Workflow domains in the original division, we have merged these two domains into 'OS*'.
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:14px'><tr><td></td><td>Params</td><td>Memory</td><td>Time</td></tr><tr><td></td><td>7.78B</td><td>>80G</td><td>-</td></tr><tr><td></td><td>86K</td><td>26G</td><td>-</td></tr><tr><td></td><td>38M</td><td>28G</td><td>2.5 hours</td></tr><tr><td></td><td>86K</td><td>17G</td><td>0.2 hours</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison between AgentStore and previous methods on the OSWorld benchmark, categorized by application domains, showing AgentStore's significant performance improvement.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed success rates of previous methods and AgentStore on OSWorld, divided by apps (domains). Methods marked with '*' represent our re-implementation of the corresponding agents to ensure their applicability. Additionally, due to the significant overlap of operations between the OS and Workflow domains in the original division, we have merged these two domains into 'OS*'.
> </details>

{{< table-caption >}}
<br><table id='13' style='font-size:16px'><tr><td>Method</td><td>Base</td><td>Agent Match</td><td>Subtask Acc</td><td>Execution Acc</td></tr><tr><td>ICL</td><td>GPT-4o</td><td>28.71%</td><td>51.72%</td><td>14.85%</td></tr><tr><td>ICL</td><td>Intern VL</td><td>24.75%</td><td>40.00%</td><td>9.90%</td></tr><tr><td>FT</td><td>Intern VL</td><td>-</td><td>-</td><td>-</td></tr><tr><td>AT</td><td>InternVL</td><td>36.63%</td><td>62.16%</td><td>22.77%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents a performance comparison of collaborative task processing using different methods (ICL, FT, and AT) on a new benchmark, showing the effectiveness of the AgentToken strategy.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison of collaborative task processing across different methods.
> </details>

{{< table-caption >}}
<br><table id='7' style='font-size:20px'><tr><td></td><td>CLI or GUI?</td><td>Single or Multi Modal?</td><td>Open or Close Base Model?</td><td>Domain for OSworld</td><td>Support Extension?</td></tr><tr><td>OSAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>OS</td><td>V</td></tr><tr><td>Friday (Wu et al., 2024)</td><td>CLI</td><td>Single</td><td>Close</td><td>OS</td><td>V</td></tr><tr><td>SheetAgent</td><td>CLI</td><td>Single</td><td>Close</td><td>Calc</td><td>X</td></tr><tr><td>CalcAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>Calc</td><td>V</td></tr><tr><td>SlideAgent</td><td>CLI</td><td>Single</td><td>Close</td><td>Impress</td><td>X</td></tr><tr><td>ImPressAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>Impress</td><td>V</td></tr><tr><td>WordAgent</td><td>CLI</td><td>Single</td><td>Close</td><td>Writer</td><td>X</td></tr><tr><td>WriterAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>Writer</td><td>V</td></tr><tr><td>VLCAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>VLC</td><td></td></tr><tr><td>MailAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>TB</td><td></td></tr><tr><td>ChromeAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>Chrome</td><td></td></tr><tr><td>WebAgent (He et al., 2024)</td><td>GUI</td><td>Multi</td><td>Close</td><td>Chrome</td><td>X</td></tr><tr><td>VSAgent</td><td>GUI</td><td>Multi</td><td>Open</td><td>VSC</td><td>X</td></tr><tr><td>VSGUIAgent</td><td>CLI</td><td>Single</td><td>Close</td><td>VSC</td><td>V</td></tr><tr><td>GimpAgent</td><td>GUI</td><td>Multi</td><td>Close</td><td>GIMP</td><td></td></tr><tr><td>ImageAgent</td><td>CLI</td><td>Single</td><td>Open</td><td>GIMP</td><td></td></tr><tr><td>Searcher</td><td>CLI</td><td>Single</td><td>Close</td><td>-</td><td>X</td></tr><tr><td>GoogleDrive</td><td>CLI</td><td>Single</td><td>Close</td><td>-</td><td>X</td></tr><tr><td>CoderAgent</td><td>CLI</td><td>Single</td><td>Open</td><td>-</td><td>X</td></tr><tr><td>VisionAgent</td><td>CLI</td><td>Multi</td><td>Open</td><td></td><td>X</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison between AgentStore and previous methods on the OSWorld benchmark, broken down by application domains.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed success rates of previous methods and AgentStore on OSWorld, divided by apps (domains). Methods marked with '*' represent our re-implementation of the corresponding agents to ensure their applicability. Additionally, due to the significant overlap of operations between the OS and Workflow domains in the original division, we have merged these two domains into 'OS*'.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Related App(s)</td><td>Task Instruction</td><td>Screenshot of Initial State</td><td>Abilities Needed</td></tr><tr><td>Chrome</td><td>Can you help me clean up my computer by getting rid of all the tracking things that Amazon might have saved? I want to make sure my brows- ing is private and those sites don't remember me.</td><td>amazon Exploes our In-Jections www.Landangange 비용 ⌀45mm  the Fore hates Cholver WHI ⌀14� - 41�</td><td>specialized knowledge of Chrome browser, proficient GUI operations</td></tr><tr><td>VLC</td><td>Hey, could you turn this video the right way up for me? And once it's flipped around, could you save it for me with the name '1984 Apple.mp4' on the main screen where all my files are?</td><td>--- 대회 350 bon</td><td>software knowledge; spatial judgment ability</td></tr><tr><td>Thunderbird</td><td>Create a local folder called "Promotions" and create a filter to auto move the inbox emails whose subject con- tains "discount" to the new folder</td><td>m-s11140mm:10mm Siverinessum / NNE Set Mo Am  Lacial Publers -</td><td>Knowledge of the Thunderbird mail system; GUI operations</td></tr><tr><td>VS Code</td><td>Please modify VS Code's settings to disable error re- porting for Python missing imports.</td><td>Editing evol⌀ed Visual Studio Code M Maillicedio = - Learn ine Funduman</td><td>software knowledge to deal with settings; reasoning to understand the cause and solution</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison between AgentStore and previous methods on the OSWorld benchmark, categorized by application domains.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed success rates of previous methods and AgentStore on OSWorld, divided by apps (domains). Methods marked with * represent our re-implementation of the corresponding agents to ensure their applicability. Additionally, due to the significant overlap of operations between the OS and Workflow domains in the original division, we have merged these two domains into OS*. 
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Related App(s)</td><td>Task Instruction</td><td>Screenshot of Initial State</td><td>Abilities Needed</td></tr><tr><td>GIMP</td><td>Help me choose the yellow triangle and position it at the center of my picture.</td><td></td><td>spatial perception and **** reasoning, as well as precise control of actions</td></tr><tr><td>Multiple (VLC+GIMP)</td><td>Could you help me create an Animated GIF from a video file using VLC and GIMP from the source of video "src.mp4", 5-second clip beginning at 00:03?</td><td>Ham TM 最佳等</td><td>specialized software knowledge; generalization ability to process multi-step procedure successfully</td></tr><tr><td>Multiple (Chrome+Calc)</td><td>Could you help me extract data in the table from a new invoice uploaded to my Google Drive, then export it to a Libreoffice calc .xlsx file in the desktop?</td><td>0 보 ① My Drive = -</td><td>specialized ability to do table data; generalization ability to process multi-step procedure successfully</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the success rates of various methods (including AgentStore) on the OSWorld benchmark, categorized by application domains.
> <details>
> <summary>read the caption</summary>
> Table 1: Detailed success rates of previous methods and AgentStore on OSWorld, divided by apps (domains). Methods marked with '*' represent our re-implementation of the corresponding agents to ensure their applicability. Additionally, due to the significant overlap of operations between the OS and Workflow domains in the original division, we have merged these two domains into 'OS*'.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18603/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18603/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}