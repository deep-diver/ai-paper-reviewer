---
title: "The Dawn of GUI Agent: A Preliminary Case Study with Claude 3.5 Computer Use"
summary: "Claude 3.5 Computer Use: A groundbreaking AI model offering public beta graphical user interface (GUI) agent for computer use is comprehensively analyzed in this research. This study provides an out-o..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Human-AI Interaction", "🏢 Show Lab, National University of Singapore",]
showSummary: true
date: 2024-11-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2411.10323 {{< /keyword >}}
{{< keyword icon="writer" >}} Siyuan Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-11-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2411.10323" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2411.10323" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/the-dawn-of-gui-agent-a-preliminary-case" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2411.10323/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

This research delves into the capabilities and limitations of Claude 3.5 Computer Use, a pioneering AI model enabling computer use via a graphical user interface (GUI).  Existing GUI automation research largely relies on LLMs interacting with GUIs via general interaction; however, Claude 3.5 Computer Use stands out by offering an end-to-end solution through API calls, using only visual GUI states for generating actions, without external knowledge.  This unique approach necessitates a comprehensive analysis, and this case study fulfills that need. 

The study evaluates Claude 3.5 Computer Use across three dimensions: planning (generating executable plans from user queries), action (accurately executing actions), and critic (adapting to changing environments).  Using a diverse range of real-world tasks across varied software domains, researchers assess model performance in depth, offering valuable insights and revealing limitations.  To improve accessibility for the wider research community, the researchers also release a user-friendly, cross-platform framework that eliminates the need for a Docker Linux environment, allowing easy implementation and benchmarking of similar API-based GUI automation models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} First comprehensive case study on Claude 3.5 Computer Use, highlighting its capabilities and limitations across diverse tasks and domains. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} An out-of-the-box framework facilitates easy implementation and benchmarking of API-based GUI automation models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} In-depth analysis of the model's performance across three dimensions: planning, action, and critic, offering valuable insights into the capabilities and limitations of API-based GUI automation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in AI and GUI automation.  It presents **the first comprehensive case study** on Claude 3.5 Computer Use, a groundbreaking model for GUI interaction.  The **open-source framework** accompanying the study significantly advances accessibility for broader research and benchmarking, thus **accelerating progress** in the field.  The identified limitations also pave the way for future improvements and exciting research directions.

------
#### Visual Insights





{{< table-caption >}}
| Domain | Site / Software | Task | Outcome |
|---|---|---|---|
| Web Search | Amazon | Find ANC Headphones Under Budget $100 on Amazon | Success |
| Web Search | Apple Official Site | Browse Apple Official Site for Display with Accessories | Success |
| Web Search | Fox Sport | Fox Sports Subscription | Failed |
| Workflow | Apple Music | Find Latest & Local Trending Music and Add to Playlist | Success |
| Workflow | Amazon & Excel | Search for Products on Amazon and Record Prices in Excel | Success |
| Workflow | Google Sheet & Excel | Export and Download Online Document to Open Locally | Success |
| Workflow | App Store | Install App from App Store and Report Storage Usage | Success |
| Office Productivity | Outlook | Forward a Specific Email and CC Another Recipient | Success |
| Office Productivity | Word | Change Document Layout to A3 in Landscape Orientation | Success |
| Office Productivity | Word | Two Columns Document | Success |
| Office Productivity | Word | Update Name and Phone Number on Resume Template | Failed |
| Office Productivity | PowerPoint | Gradient Fill Background | Success |
| Office Productivity | PowerPoint | Modify Slide Title and Draw a Triangle | Success |
| Office Productivity | PowerPoint | Insert Numbering Symbol | Failed |
| Office Productivity | Excel | Find and Replacement in Worksheet | Success |
| Office Productivity | Excel | Insert a Sum Equation over Cells | Failed |
| Video Games | *Hearthstone* | Create and Rename a New Deck for Battle | Success |
| Video Games | *Hearthstone* | Hero Power | Success |
| Video Games | *Honkai: Star Rail* | Warp Automation | Success |
| Video Games | *Honkai: Star Rail* | Daily Mission Clean up Automation | Success |{{< /table-caption >}}

> 🔼 This table summarizes the results of 20 case studies designed to evaluate the capabilities of Claude 3.5 Computer Use in various desktop tasks.  Each row represents a single task, specifying the domain (Web Search, Workflow, Office Productivity, or Video Games), the software or website used, the specific task performed, and the outcome (Success or Failed). The table provides a concise overview of the model's performance across different application types and software domains. Clicking on the task description links to the corresponding section in the paper for more detailed analysis.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of case studies in the report. Click on tasks to navigate to corresponding sections.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2411.10323/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2411.10323/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}