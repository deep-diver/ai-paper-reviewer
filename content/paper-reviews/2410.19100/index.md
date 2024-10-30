---
title: "VideoWebArena: Evaluating Long Context Multimodal Agents with Video Understanding Web Tasks"
summary: "VideoWebArena benchmark evaluates long-context multimodal agents' video understanding abilities via 2021 web tasks, revealing significant performance gaps compared to humans and highlighting key areas..."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-29"]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.19100 {{< /keyword >}}

### TL;DR


{{< lead >}}

Current AI agent benchmarks often lack the capacity to evaluate long-context video understanding. This limits our understanding of how well these models function in real-world settings.  Many existing benchmarks focus solely on text or static images, overlooking the unique challenges and opportunities presented by video data. Videos provide rich information that goes beyond what text or images alone can offer, involving spatial and temporal dynamics essential for comprehending complex tasks.

To address this issue, the researchers introduce VideoWebArena, a new benchmark specifically designed to evaluate long-context multimodal agents using video understanding web tasks.  The benchmark comprises 2,021 tasks based on video tutorials, categorized into skill and factual retention tasks. Results indicate that current state-of-the-art models significantly underperform compared to human capabilities.  This gap emphasizes the need for advanced AI agents capable of handling long-context videos effectively. VideoWebArena provides a valuable resource for the future development of these models, facilitating further research in this critical area.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.19100" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.19100" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces **VideoWebArena**, a novel benchmark for evaluating long-context multimodal agents using video understanding web tasks. This addresses a critical gap in existing benchmarks, which often neglect long-context video understanding. The benchmark's findings highlight the need to improve the agentic abilities of long-context multimodal models and provides a valuable testbed for future research in video-based AI agents.  This is highly relevant to current trends in multimodal AI and opens up new avenues for researching advanced AI systems that can effectively process and understand complex, real-world video data.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VideoWebArena benchmark provides a novel and rigorous evaluation framework for long-context video understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Long-context models underperform compared to human abilities, particularly in factual retention and skill retention tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The benchmark reveals significant performance gaps, highlighting the need for improved agentic abilities in long-context multimodal models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.19100/figures_2_0.png)

> 🔼 Figure 1 is an overview of the VideoWebArena benchmark, showing its various domains, video-based tasks, and automatic evaluation process.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of VideoWebArena. VideoWebArena is a visually grounded benchmark that tests the video understanding of agentic models across various realistic domains and environments, mirroring real-life tasks. All tasks require video input and consist of Q/A to test agentic abilities in video information retrieval, video understanding, and more.
> </details>





![](https://ai-paper-reviewer.com/2410.19100/charts_4_0.png)

> 🔼 The chart shows the distribution of video and agent difficulty levels across tasks in the VideoWebArena benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: Left: VideoWebArena Video Difficulty Task Distribution. Right: VideoWebArena Agent Difficulty Task Distribution.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Variable</td><td>Value</td></tr><tr><td># Videos</td><td>74</td></tr><tr><td>Total Duration</td><td>03:48:19</td></tr><tr><td>Min Duration</td><td>01:16</td></tr><tr><td>Max Duration</td><td>10:41</td></tr><tr><td>Avg. Duration</td><td>03:05</td></tr><tr><td>Avg. # Factual Retention Tasks per Video</td><td>5.4</td></tr><tr><td>Avg. # Skill Retention Tasks per Video</td><td>19.6</td></tr><tr><td>Avg. # Videos per Domain</td><td>12.3</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents video statistics for the VideoWebArena benchmark, including the number of videos, total duration, and average number of tasks per video.
> <details>
> <summary>read the caption</summary>
> Table 1: Video statistics for VideoWebArena.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.19100/figures_8_0.png)

> 🔼 This figure illustrates the framework used to evaluate three different baseline agents in the VideoWebArena benchmark, showcasing how video data (summary, frames, or full video) is processed with webpage information to generate actions.
> <details>
> <summary>read the caption</summary>
> Figure 4: VideoWebArena Baseline Agent Framework: We use 3 baseline agents: 1.) Video Summary Agent, where the video summary is fed in-context. 2.) Video Frame Agent, where a set number of frames and audio transcription is fed in-context. 3.) Video Agent, where the video is fed in as an .mov file in-context. The video information is put in-context along with the Set-of-Marks state representation to generate a singular action, following the multimodal SoM agent in VisualWebArena (Koh et al., 2024a).
> </details>



![](https://ai-paper-reviewer.com/2410.19100/figures_13_0.png)

> 🔼 The figure illustrates the process of creating the VideoWebArena dataset, starting from existing WebArena and VisualWebArena tasks and creating video tutorials to generate new video-based and skill retention tasks.
> <details>
> <summary>read the caption</summary>
> Figure 5: Dataset Creation Process A walkthrough of the VideoWebArena dataset creation. From 1641 existing tasks in WebArena and VisualWebArena, the authors grouped these tasks by their intent templates. For each intent template, the authors created a new video tutorial showing how to perform the tasks. For each video, the authors made at minimum 4 factual retention tasks. This led to 1641 skill retention and 400 factual retention tasks.
> </details>



![](https://ai-paper-reviewer.com/2410.19100/figures_14_0.png)

> 🔼 The figure shows a taxonomy of video-based agent tasks, categorized into skill retention and factual retention, with further sub-categories for factual retention.
> <details>
> <summary>read the caption</summary>
> Figure 6: VideoWebArena Task Taxonomy We define a taxonomy for all the tasks in our benchmark, namely splitting them into a factual and skill retention groups. Under the factual retention group, there are 4 types of tasks: Visual Perception, Audio Perception, Full Video Understanding, and Temporal Reasoning.
> </details>



![](https://ai-paper-reviewer.com/2410.19100/figures_16_0.png)

> 🔼 The figure illustrates the framework for three baseline agents used to evaluate the VideoWebArena benchmark, showing how video data (summary, frames, or full video) and website information are processed to generate actions.
> <details>
> <summary>read the caption</summary>
> Figure 4: VideoWebArena Baseline Agent Framework: We use 3 baseline agents: 1.) Video Summary Agent, where the video summary is fed in-context. 2.) Video Frame Agent, where a set number of frames and audio transcription is fed in-context. 3.) Video Agent, where the video is fed in as an .mov file in-context. The video information is put in-context along with the Set-of-Marks state representation to generate a singular action, following the multimodal SoM agent in VisualWebArena (Koh et al., 2024a).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td>Domain</td><td># Factual Tasks</td><td># Skill Tasks</td><td># Total Tasks</td></tr><tr><td>Reddit</td><td>87 (22%)</td><td>206 (13%)</td><td>293 (14%)</td></tr><tr><td>Classifieds</td><td>60 (15%)</td><td>320 (20%)</td><td>380 (19%)</td></tr><tr><td>Shopping</td><td>121 (30%)</td><td>654 (40%)</td><td>775 (38%)</td></tr><tr><td>Shopping (Admin)</td><td>47 (12%)</td><td>182 (11%)</td><td>229 (11%)</td></tr><tr><td>GitLab</td><td>70 (18%)</td><td>191 (12%)</td><td>261 (13%)</td></tr><tr><td>Map</td><td>15 (4%)</td><td>68 (4%)</td><td>83 (4%)</td></tr><tr><td>Total</td><td>400 (100%)</td><td>1621 (100%)</td><td>2021 (100%)</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents video statistics for the VideoWebArena benchmark, including the number of videos per domain, total video duration, average video duration, and the average number of factual and skill retention tasks per video.
> <details>
> <summary>read the caption</summary>
> Table 1: Video statistics for VideoWebArena.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Action Type a</td><td>Description</td></tr><tr><td>click [elem]</td><td>Click on element el em.</td></tr><tr><td>hover [elem]</td><td>Hover on element elem.</td></tr><tr><td>type [elem] [text]</td><td>Type text on element elem.</td></tr><tr><td>press [key_comb]</td><td>Press a key combination.</td></tr><tr><td>new_tab</td><td>Open a new tab.</td></tr><tr><td>tab_focus [index]</td><td>Focus on the i-th tab.</td></tr><tr><td>tab_close</td><td>Close current tab.</td></tr><tr><td>goto [url]</td><td>Open url.</td></tr><tr><td>go_back</td><td>Click the back button.</td></tr><tr><td>go_forward</td><td>Click the forward button.</td></tr><tr><td>scroll [up] down]</td><td>Scroll up or down the page.</td></tr><tr><td>clear [elem]</td><td>Clear a text box element.</td></tr><tr><td>upload [file path] [elem]</td><td>Upload a local file using a upload button.</td></tr><tr><td>stop [answer]</td><td>End the task with an output.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the video statistics for the VideoWebArena benchmark, including the number of videos, total duration, and average duration for each domain.
> <details>
> <summary>read the caption</summary>
> Table 1: Video statistics for VideoWebArena.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Domain</td><td>Video Tutorial</td><td>Task Category</td><td>Intent</td><td>Intermediate Intent</td></tr><tr><td>OneStopShop</td><td>Buy Cheapest Item</td><td>Skill Retention</td><td>Buy the cheapest red blanket from Blankets & Throws.</td><td>N/A</td></tr><tr><td>reddit</td><td>Leave a Comment</td><td>Audio Perception</td><td>Search for the company the person said they work at in the video and find the first post , s comments.</td><td>What company did the person in the video say they work for?</td></tr><tr><td>GitLab</td><td>How to Star a Repo</td><td>Full Video Understanding</td><td>Follow all the repos visited in the video.</td><td>What are the names of all the visited repos?</td></tr><tr><td>Map</td><td>Find Optimal Route</td><td>Temporal Reasoning</td><td>Find the page that shows the zipcode of the 2nd destination in the video.</td><td>What was the name of the 2nd destination used in the video?</td></tr><tr><td>OsClass</td><td>See Listing Ratings What are you lookdry for coday!</td><td>Visual Reasoning</td><td>Take me to the first red vehicle listing that appears in the video.</td><td>What was the name of the first red vehicle listing that appears in the video?</td></tr></table>{{< /table-caption >}}
> 🔼 This table provides examples of tasks in the VideoWebArena benchmark, illustrating the intent of each task and, for factual retention tasks, the intermediate intent required to complete the task.
> <details>
> <summary>read the caption</summary>
> Table 4: Examples of Each Task in the VideoWebArena Taxonomy: Given a video tutorial, the agent is asked to perform the intent. The intermediate intent tests the multimodal agent, s ability to extract the necessary information to perform the task from the video. Skill retention tasks do not have intermediate intents as they do not require recalling specific information that factual retention tasks will require.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Model</td><td>Task Domain</td><td>Final Score</td><td>Intermediate Score</td><td># Steps (Avg)</td></tr><tr><td rowspan="7">Gemini 1.5 Pro Video Agent</td><td>Classifieds</td><td>6.7%</td><td>41.7%</td><td>17.1</td></tr><tr><td>Gitlab</td><td>5.7%</td><td>35.7%</td><td>18.5</td></tr><tr><td>Map</td><td>6.7%</td><td>73.3%</td><td>9.9</td></tr><tr><td>Reddit</td><td>3.4%</td><td>39.0%</td><td>18.2</td></tr><tr><td>Shopping (admin)</td><td>8.5%</td><td>48.9%</td><td>23.7</td></tr><tr><td>Shopping</td><td>10.0%</td><td>24.7%</td><td>21.6</td></tr><tr><td>Total</td><td>7.0%</td><td>37.0%</td><td>19.4</td></tr><tr><td rowspan="7">GPT4-o Summary Agent</td><td>Classifieds</td><td>10.0%</td><td>40.0%</td><td>9.7</td></tr><tr><td>Gitlab</td><td>14.2%</td><td>34.7%</td><td>13.0</td></tr><tr><td>Map</td><td>26.7%</td><td>66.7%</td><td>3.8</td></tr><tr><td>Reddit</td><td>11.5%</td><td>39.0%</td><td>13.8</td></tr><tr><td>Shopping (admin)</td><td>8.5%</td><td>29.1%</td><td>13.7</td></tr><tr><td>Shopping</td><td>15.7%</td><td>33.8%</td><td>14.3</td></tr><tr><td>Total</td><td>13.3%</td><td>36.8%</td><td>12.8</td></tr><tr><td rowspan="7">GPT4-o Frame Agent (30 Frames)</td><td>Classifieds</td><td>18.3%</td><td>46.6%</td><td>9.3</td></tr><tr><td>Gitlab</td><td>5.7%</td><td>50.0%</td><td>11.8</td></tr><tr><td>Map</td><td>26.7%</td><td>73.3%</td><td>4.7</td></tr><tr><td>Reddit</td><td>6.9%</td><td>42.5%</td><td>11.6</td></tr><tr><td>Shopping (admin)</td><td>8.5%</td><td>57.4%</td><td>16.8</td></tr><tr><td>Shopping</td><td>12.4%</td><td>37.2%</td><td>19.5</td></tr><tr><td>Total</td><td>11.0%</td><td>45.8%</td><td>14.0</td></tr><tr><td rowspan="7">GPT4-o Frame Agent (60 Frames)</td><td>Classifieds</td><td>10.0%</td><td>30.0%</td><td>9.5</td></tr><tr><td>Gitlab</td><td>5.7%</td><td>55.7%</td><td>13.4</td></tr><tr><td>Map</td><td>26.7%</td><td>60.0%</td><td>3.5</td></tr><tr><td>Reddit</td><td>2.3%</td><td>44.8%</td><td>11.2</td></tr><tr><td>Shopping (admin)</td><td>4.3%</td><td>48.9%</td><td>13.6</td></tr><tr><td>Shopping</td><td>5.0%</td><td>38.0%</td><td>16.9</td></tr><tr><td>Total</td><td>6.0%</td><td>43.5%</td><td>13.0</td></tr><tr><td rowspan="7">GPT4-o Frame Agent (100 Frames)</td><td>Classifieds</td><td>13.3%</td><td>41.6%</td><td>7.64</td></tr><tr><td>Gitlab</td><td>7.1%</td><td>58.6%</td><td>14.8</td></tr><tr><td>Map</td><td>20.0%</td><td>53.3%</td><td>3.8</td></tr><tr><td>Reddit</td><td>5.7%</td><td>43.7%</td><td>11.6</td></tr><tr><td>Shopping (admin)</td><td>8.5%</td><td>51%</td><td>14.4</td></tr><tr><td>Shopping</td><td>10.7%</td><td>38.8%</td><td>16.4</td></tr><tr><td>Total</td><td>9.5%</td><td>45.8%</td><td>13.0</td></tr><tr><td rowspan="7">Human Performance</td><td>Classifieds</td><td>61.5%</td><td>69.2%</td><td>7.9</td></tr><tr><td>Gitlab</td><td>81.3%</td><td>81.3%</td><td>7.1</td></tr><tr><td>Map</td><td>69.2%</td><td>76.9%</td><td>4.8</td></tr><tr><td>Reddit</td><td>81.8%</td><td>86.4%</td><td>9.0</td></tr><tr><td>Shopping (admin)</td><td>68.4%</td><td>73.7%</td><td>5.1</td></tr><tr><td>Shopping</td><td>75.0%</td><td>82.1%</td><td>5.0</td></tr><tr><td>Total</td><td>73.9%</td><td>79.3%</td><td>6.4</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the performance of different models on factual retention tasks in VideoWebArena, showing final task success rates, intermediate intent success rates, and the average number of steps taken.
> <details>
> <summary>read the caption</summary>
> Table 5: Results on VideoWebArena Factual Retention Tasks. Performance of GPT4-0, Gemini 1.5 Pro, and human performance on 400 factual retention tasks broken down by task domain. Final scores indicate the overall task performance (i.e., if the task is completed successfully in its entirety), while intermediate scores measure the performance on the intermediate intents.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Model</td><td>WebArena Final Score</td><td>Steps</td><td>VisualWebArena Final Score</td><td>Steps</td></tr><tr><td>GPT4-o (No Tutorial)</td><td>14.9%</td><td>-</td><td>19.8%</td><td>-</td></tr><tr><td>GPT4-o Summary Agent (Tutorial)</td><td>13.8%</td><td>13.9</td><td>11.6%</td><td>12.4</td></tr><tr><td>GPT4-o Frame Agent (Tutorial)</td><td>9.9%</td><td>11.4</td><td>9.5%</td><td>12.5</td></tr><tr><td>Human Performance (No Tutorial)</td><td>82.6%</td><td>12.0</td><td>72.7%</td><td>12.4</td></tr><tr><td>Human Performance (Tutorial)</td><td>93.1%</td><td>6.1</td><td>88.6%</td><td>8.2</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of the overall performance of GPT-40 and human participants on skill retention tasks within the VideoWebArena benchmark, highlighting the impact of providing tutorials in-context.
> <details>
> <summary>read the caption</summary>
> Table 6: Results on VideoWebArena Skill Retention Tasks. Overall performance comparison of GPT4-0 and human performance on skill retention tasks. Human performance shows tutorials should help task performance success and efficiency. However, adding tutorials in-context to the model does not necessarily help, but in fact hurts performance by a significant margin. See the failure modes in Appendix B for more analysis. Dashes (-) indicate that data is unavailable for that particular metric.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Task Category</td><td>GPT-4o Summary</td><td>GPT-4o (30 Frames)</td><td>GPT-4o (60 Frames)</td><td>GPT-4o (100 Frames)</td><td>Gemini 1.5 Pro</td></tr><tr><td>Visual Perception Task Success Rate</td><td>14.1 %</td><td>11.1%</td><td>6.8%</td><td>9.3%</td><td>7.7%</td></tr><tr><td>Audio Perception Task Success Rate</td><td>14.8%</td><td>18.1 %</td><td>7.7%</td><td>12.5%</td><td>11.1%</td></tr><tr><td>Full Video Understanding Task Success Rate</td><td>15.5%</td><td>10.0%</td><td>7.2%</td><td>10.5%</td><td>6.5%</td></tr><tr><td>Temporal Reasoning Task Success Rate</td><td>13.7%</td><td>12.4%</td><td>6.2%</td><td>10.4%</td><td>8.8%</td></tr><tr><td>Agentic Easy Task Success Rate</td><td>19.5%</td><td>12.8%</td><td>9.0%</td><td>13.0%</td><td>8.3%</td></tr><tr><td>Agentic Medium Task Success Rate</td><td>14.2%</td><td>13.4%</td><td>5.7%</td><td>9.4%</td><td>7.7%</td></tr><tr><td>Agentic Hard Task Success Rate</td><td>10.8%</td><td>8.1%</td><td>6.2%</td><td>9.1%</td><td>6.9%</td></tr><tr><td>Visual Perception Intermediate Success Rate</td><td>32.7</td><td>43.9%</td><td>43.0%</td><td>43.5%</td><td>34.0%</td></tr><tr><td>Audio Perception Intermediate Success Rate</td><td>50.0%</td><td>60.2%</td><td>62.8%</td><td>62.5%</td><td>67.9%</td></tr><tr><td>Full Video Understanding Intermediate Success Rate</td><td>34.2</td><td>40.0%</td><td>40.9%</td><td>41.2%</td><td>26.2%</td></tr><tr><td>Temporal Reasoning Intermediate Success Rate</td><td>35.9</td><td>50.5%</td><td>50.9%</td><td>50.0%</td><td>38.9%</td></tr><tr><td>Video Easy Intermediate Success Rate</td><td>39.5%</td><td>52.9%</td><td>52.2%</td><td>53.2%</td><td>47.1%</td></tr><tr><td>Video Medium Intermediate Success Rate</td><td>39.4%</td><td>46.2%</td><td>50.4%</td><td>48.3%</td><td>46.6%</td></tr><tr><td>Video Hard Intermediate Success Rate</td><td>32.2%</td><td>42.4%</td><td>40.7%</td><td>41.0%</td><td>26.1%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents a breakdown of the performance of different baseline agents across various task categories and difficulty levels within the factual retention task set of the VideoWebArena benchmark.
> <details>
> <summary>read the caption</summary>
> Table 7: Factual Retention Results Breakdown: Overall performance breakdown of the baseline agents across all task categories and difficulties in the factual retention set. The summary agent has the best task performance, even without having any visual aspect of the video in context. However, it lags behind in the intermediate VQA intents, as the video frame and video agents all perform very similarly on intermediate tasks.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Evaluator Functions</td><td>Reward Condition</td></tr><tr><td>exact_match(�, a)</td><td>1 if a is exactly a.</td></tr><tr><td>must_include(a, a)</td><td>1 if a is in the set a.</td></tr><tr><td>fuzzy_match(a, a)</td><td>lif a and a are deemed semantically equal by an LLM.</td></tr><tr><td>must_exclude(a, a)</td><td>lif a is not in the set a.</td></tr><tr><td>eval_vqa(img, question, a)</td><td>1 if the output of VQA_Model(img, question) contains a.</td></tr><tr><td>eval_fuzzy_image_match(img, img)</td><td>1 if the SSIM Wang et al. 2004 between img, img is higher than a given threshold.</td></tr></table>{{< /table-caption >}}
> 🔼 This table lists the reward functions used in VideoWebArena, specifying their names, inputs, and conditions for returning a reward of 1.
> <details>
> <summary>read the caption</summary>
> Table 8: List of VideoWebArena evaluator functions and descriptions: All rewards are binary. We adopt our evaluators from WebArena (Zhou et al., 2024) and VisualWebArena (Koh et al., 2024a).
> </details>

{{< table-caption >}}
<table id='5' style='font-size:16px'><tr><td>Category</td><td>GPT-4o Summary</td><td>GPT-4o (30 Frames)</td><td>GPT-4o (60 Frames)</td><td>GPT-4o (100 Frames)</td><td>Gemini 1.5 Pro</td></tr><tr><td>Visual Perception</td><td>12.9</td><td>14.5</td><td>13.7</td><td>13.2</td><td>19.7</td></tr><tr><td>Audio Perception</td><td>10.5</td><td>10.5</td><td>10.2</td><td>10.5</td><td>17.0</td></tr><tr><td>Full Video Understanding</td><td>12.5</td><td>14.4</td><td>13.6</td><td>13.0</td><td>20.3</td></tr><tr><td>Temporal Reasoning</td><td>14.9</td><td>14.6</td><td>13.9</td><td>14.5</td><td>20.1</td></tr><tr><td>Agentic Easy</td><td>12.6</td><td>10.1</td><td>10.1</td><td>10.2</td><td>20.6</td></tr><tr><td>Agentic Medium</td><td>11.6</td><td>14.7</td><td>13.5</td><td>12.5</td><td>19.2</td></tr><tr><td>Agentic Hard</td><td>14.3</td><td>15.6</td><td>14.9</td><td>15.4</td><td>19.4</td></tr><tr><td>Video Easy</td><td>11.8</td><td>13.4</td><td>11.9</td><td>13.4</td><td>19.5</td></tr><tr><td>Video Medium</td><td>13.1</td><td>13.2</td><td>12.9</td><td>11.8</td><td>19.5</td></tr><tr><td>Video Hard</td><td>13.2</td><td>15.5</td><td>14.6</td><td>13.8</td><td>19.6</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents a comparison of the average number of steps taken by different models across various task types in the VideoWebArena benchmark.
> <details>
> <summary>read the caption</summary>
> Table 9: Model Comparison - Average Steps per Task Type
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.19100/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19100/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}