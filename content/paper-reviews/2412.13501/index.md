---
title: "GUI Agents: A Survey"
summary: "A comprehensive survey of GUI agents, categorizing benchmarks, architectures, training methods, and open challenges, providing a unified framework for researchers."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Human-AI Interaction", "🏢 University of Maryland",]
showSummary: true
date: 2024-12-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.13501 {{< /keyword >}}
{{< keyword icon="writer" >}} Dang Nguyen et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.13501" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.13501" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/gui-agents-a-survey" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.13501/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large Foundation Models (LFMs)** are increasingly used not just for text, but to interact with digital systems via **Graphical User Interfaces (GUIs)**, like humans do.  This approach, using **GUI agents**, is promising but faces challenges like adapting to dynamic layouts and diverse GUI designs across platforms, as well as correctly identifying visual elements within a page.  These elements can be small, numerous, scattered, and visually different between websites and apps. **Existing GUI agents struggle with complex and nuanced GUI interactions**, limiting their practical applications. They may fail to interpret the state of GUI elements or perform actions accurately. Existing benchmarks lack diversity, do not sufficiently reflect real-world scenarios, and haven't established standardized evaluation metrics.  Furthermore, privacy concerns arise from dealing with potentially sensitive information in GUIs. 

This paper provides a comprehensive survey of **GUI agents**, establishing a **unified framework to categorize research**.  It examines **benchmarks, evaluation metrics, architectures (perception, reasoning, planning, acting), and training methods (prompt-based, training-based)**. By clearly defining the problems and current approaches, the survey aims to **facilitate research and development of more robust and efficient GUI agents.** It also highlights open challenges like **intent understanding, security and privacy, and inference latency**, offering directions for future research and aiming to guide the development of more sophisticated GUI agents capable of reliably automating complex tasks in diverse digital environments.  It emphasizes the importance of developing standardized evaluation metrics and more realistic benchmarks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GUI agents powered by LFMs automate human-computer interaction through GUIs, mimicking human actions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Key challenges include handling dynamic layouts, grounding issues, and diverse graphical designs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The survey categorizes benchmarks, architectures, and training methods and identifies open problems and future directions {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This survey is crucial for AI researchers** due to the rising importance of GUI agents.  It provides a **comprehensive overview of current progress, challenges, and future directions** in the field, offering valuable insights for both newcomers and experienced researchers. It highlights the potential impact of GUI agents on **automating human-computer interaction** and opens new avenues for research in areas such as **robust intent understanding, security, real-time responsiveness, and personalization** of these agents.

------
#### Visual Insights







### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.13501/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.13501/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}