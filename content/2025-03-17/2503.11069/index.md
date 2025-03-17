---
title: "API Agents vs. GUI Agents: Divergence and Convergence"
summary: "API vs. GUI Agents: Understanding the divergence and convergence in LLM-based automation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Robotics", "🏢 Microsoft",]
showSummary: true
date: 2025-03-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.11069 {{< /keyword >}}
{{< keyword icon="writer" >}} Chaoyun Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.11069" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.11069" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.11069/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are used in software agents, and this leads to two distinct paradigms: API-based and GUI-based agents. API-based agents use direct connections and GUI-based agents interact like humans. While both help with automation, their designs, development, and user interactions vary significantly. This paper shows the key differences and looks at how they might come together in the future.



This paper offers the first complete study comparing these two types of LLM agents. It looks at their differences and convergence, focusing on important aspects and hybrid solutions. It provides guidelines and real-world examples to help researchers and developers choose, combine, or switch between these designs. The goal is to help create more flexible and adaptable solutions in real-world situations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} API-based agents offer efficiency, security, and reliability due to well-defined endpoints. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} GUI-based agents provide broad applicability and user-like workflows, enhancing user experience. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Hybrid approaches combine the strengths of both paradigms, enabling more comprehensive and adaptive automation solutions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **systematically analyzes API-based and GUI-based LLM agents**, offering clear decision criteria for selecting the right approach. It **bridges the gap between theoretical understanding and practical application**, guiding future research and development in LLM-driven automation and human-computer interaction, and addressing the evolving needs in software ecosystems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.11069/x1.png)

> 🔼 This figure illustrates the contrasting approaches of API-based and GUI-based LLM agents in scheduling a meeting. The API agent uses a single API call to directly create the event, highlighting its efficiency and reliance on well-defined interfaces.  Conversely, the GUI agent mimics human actions, visually navigating the Google Calendar interface and interacting with its elements (clicking buttons, filling in text fields) before successfully scheduling the meeting. This demonstrates the GUI agent's adaptability but also its slower, more error-prone approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: The difference between an API agent and a GUI agent in completing the task “Schedule a 1-hour meeting on Google Calendar for LLM Agent at 4:00 PM on March 8”.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1.1" style="width:79.7pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1.1">Dimension</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.2.1">
<span class="ltx_p" id="S3.T1.1.1.1.2.1.1" style="width:156.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.2.1.1.1">API Agents</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.3.1">
<span class="ltx_p" id="S3.T1.1.1.1.3.1.1" style="width:156.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.3.1.1.1">GUI Agents</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.1.1.1">
<span class="ltx_p" id="S3.T1.1.2.1.1.1.1" style="width:79.7pt;">Modality</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.1.2.1">
<span class="ltx_p" id="S3.T1.1.2.1.2.1.1" style="width:156.5pt;">Rely on text-based API calls</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.2.1.3.1">
<span class="ltx_p" id="S3.T1.1.2.1.3.1.1" style="width:156.5pt;">Depend on screenshots or accessibility trees</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.2.1.1">
<span class="ltx_p" id="S3.T1.1.3.2.1.1.1" style="width:79.7pt;">Reliability</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.2.2.1">
<span class="ltx_p" id="S3.T1.1.3.2.2.1.1" style="width:156.5pt;">Generally higher with well-defined endpoints</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.3.2.3.1">
<span class="ltx_p" id="S3.T1.1.3.2.3.1.1" style="width:156.5pt;">Lower due to visual parsing and layout changes</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.3.1.1">
<span class="ltx_p" id="S3.T1.1.4.3.1.1.1" style="width:79.7pt;">Efficiency</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.3.2.1">
<span class="ltx_p" id="S3.T1.1.4.3.2.1.1" style="width:156.5pt;">Achieve complex tasks in a single call</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.4.3.3.1">
<span class="ltx_p" id="S3.T1.1.4.3.3.1.1" style="width:156.5pt;">Require multiple user-like actions</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.5.4.1.1">
<span class="ltx_p" id="S3.T1.1.5.4.1.1.1" style="width:79.7pt;">Availability</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.5.4.2.1">
<span class="ltx_p" id="S3.T1.1.5.4.2.1.1" style="width:156.5pt;">Limited to published or pre-defined APIs</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.5.4.3.1">
<span class="ltx_p" id="S3.T1.1.5.4.3.1.1" style="width:156.5pt;">Can operate on any visible UI element</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.6.5.1.1">
<span class="ltx_p" id="S3.T1.1.6.5.1.1.1" style="width:79.7pt;">Flexibility</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.6.5.2.1">
<span class="ltx_p" id="S3.T1.1.6.5.2.1.1" style="width:156.5pt;">Constrained by existing APIs</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.6.5.3.1">
<span class="ltx_p" id="S3.T1.1.6.5.3.1.1" style="width:156.5pt;">Highly adaptable to new or unexposed features</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.7.6.1.1">
<span class="ltx_p" id="S3.T1.1.7.6.1.1.1" style="width:79.7pt;">Security</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.7.6.2.1">
<span class="ltx_p" id="S3.T1.1.7.6.2.1.1" style="width:156.5pt;">Manageable via granular endpoint controls</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.7.6.3.1">
<span class="ltx_p" id="S3.T1.1.7.6.3.1.1" style="width:156.5pt;">Riskier due to broad access to UI elements</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.8.7.1.1">
<span class="ltx_p" id="S3.T1.1.8.7.1.1.1" style="width:79.7pt;">Maintainability</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.8.7.2.1">
<span class="ltx_p" id="S3.T1.1.8.7.2.1.1" style="width:156.5pt;">Stable if APIs remain versioned</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.8.7.3.1">
<span class="ltx_p" id="S3.T1.1.8.7.3.1.1" style="width:156.5pt;">Prone to breakage on UI redesigns</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.9.8.1.1">
<span class="ltx_p" id="S3.T1.1.9.8.1.1.1" style="width:79.7pt;">Transparency</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.9.8.2.1">
<span class="ltx_p" id="S3.T1.1.9.8.2.1.1" style="width:156.5pt;">Often hidden, back-end driven</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.9.8.3.1">
<span class="ltx_p" id="S3.T1.1.9.8.3.1.1" style="width:156.5pt;">Step-by-step, visually traceable</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.10.9.1.1">
<span class="ltx_p" id="S3.T1.1.10.9.1.1.1" style="width:79.7pt;">Human-Like Interaction</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.10.9.2.1">
<span class="ltx_p" id="S3.T1.1.10.9.2.1.1" style="width:156.5pt;">Purely programmatic</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T1.1.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.10.9.3.1">
<span class="ltx_p" id="S3.T1.1.10.9.3.1.1" style="width:156.5pt;">Simulates user actions on a screen</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides a detailed comparison of API-based and GUI-based Large Language Model (LLM) agents across several key dimensions.  These dimensions help to understand the strengths and weaknesses of each approach in terms of modality (how they interact with software), reliability (consistency of performance), efficiency (speed and resource usage), availability (accessibility of the tools or interfaces they use), flexibility (adaptability to changes and new tasks), security (protection against unauthorized access), maintainability (ease of updating and managing the agent), transparency (visibility into how the agent performs its work), and whether the interaction with the agent resembles human actions.  This comparison is crucial for selecting the most appropriate agent type for specific applications.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of API vs. GUI agents across key dimensions.
> </details>





### In-depth insights


#### API vs. GUI Agents
The strategic considerations for deploying API-based versus GUI-based agents depend on the nature of the target software, the level of integration or validation required, and long-term sustainability concerns. **API agents excel when stable, documented endpoints exist, offering a reliable and performant mode of automation.** GUI agents are advantageous in contexts where interfaces are the only means of access or where visual confirmation is essential. Finally, hybrid approaches strike a balance between these strengths, allowing organizations to adapt as their software ecosystems evolve. By taking these factors into account, decision-makers can ensure they select the agent paradigm—API, GUI, or both—that best aligns with their specific requirements.

#### Hybrid Approach
The "Hybrid Approach" represents a significant shift in how we conceptualize and implement agent-based automation, moving beyond the traditional dichotomy of API-based and GUI-based systems. It acknowledges that neither approach is universally superior and that the optimal solution often involves strategically combining their respective strengths. This necessitates a nuanced understanding of the task at hand, the capabilities of the underlying systems, and the desired user experience. **The essence of the hybrid approach lies in its adaptability, allowing developers to tailor solutions that leverage the efficiency and reliability of APIs for data-intensive operations while utilizing the flexibility and human-like interaction of GUIs for tasks such as visual validation or legacy system integration.** This convergence is facilitated by emerging technologies and frameworks. **The potential benefits of a hybrid approach include broader coverage of use cases, enhanced efficiency, and a more intuitive user experience.** However, realizing these benefits requires careful consideration of the trade-offs involved and a robust understanding of how to effectively orchestrate API and GUI interactions. **Ultimately, the "Hybrid Approach" signifies a more mature and sophisticated approach to agent-based automation, paving the way for more versatile and powerful solutions.**

#### Strategic Criteria
When deciding between API and GUI agents, **stable, well-documented APIs strongly favor API agents** due to their speed, reliability, and controlled access. This minimizes maintenance. However, **GUI agents excel with legacy systems or limited API access**, enabling automation without backend changes and allowing visual validation. **Hybrid approaches offer adaptability by blending both paradigms**, using APIs for data-intensive tasks and GUIs for specialized front-end interactions. The choice depends on factors like integration level, software nature, and sustainability. Ultimately, this decision should align with specific project requirements, emphasizing a tailored strategy for optimal performance and adaptability within diverse software ecosystems, ensuring a well-balanced and effective automation solution that addresses both technical and user-centric considerations for successful implementation.

#### Divergence Factors
Divergence factors between API and GUI agents stem from their core interaction methods. **API agents rely on structured, programmatic access**, offering efficiency and security through predefined endpoints. However, this approach limits flexibility, as agents are confined to exposed functionalities. **GUI agents, conversely, interact with software like humans**, using visual or multimodal inputs. This grants broader applicability, automating tasks even without formal APIs, but introduces challenges in visual parsing, reliability, and maintainability due to interface changes. The modality of interaction dictates differences in efficiency, with API agents often completing tasks faster and with less overhead. However, GUI agents offer greater transparency and human-like interaction, simulating user actions on-screen. Security also diverges, as API agents provide granular control via endpoint security, while GUI agents risk unintended access to privileged operations.

#### LLM Integration
LLM integration represents a pivotal shift in software agent development, moving beyond traditional programming paradigms. **API-based agents** initially demonstrated the power of LLMs by automating tasks through direct interaction with software interfaces, offering efficiency and reliability. However, their limitations in flexibility and adaptability to evolving interfaces became apparent. **GUI-based agents** emerged as an alternative, leveraging LLMs' multimodal capabilities to 'see' and interact with software interfaces like humans. While offering greater flexibility and accessibility, they face challenges in visual parsing and reliability. The trend is converging towards **hybrid approaches**, combining the strengths of both paradigms. This involves API wrappers for GUI workflows and unified orchestration tools that dynamically select the optimal interaction method. The strategic integration of LLMs necessitates careful consideration of the target software's nature, required level of integration, and long-term maintainability. These considerations ensure the right paradigm is selected to aligns with specific requirements.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.11069/x2.png)

> 🔼 This figure illustrates the key difference between API and GUI agents in how they receive input and produce output.  API agents rely solely on text-based API calls as input and produce actions based on those calls.  GUI agents, however, rely on visual or multimodal inputs such as application screenshots and use actions mimicking human interactions (mouse clicks, keyboard inputs) to manipulate the GUI and produce actions. This highlights the fundamental difference in modality and interaction between the two types of agents.
> <details>
> <summary>read the caption</summary>
> Figure 2: The difference between an API agent and a GUI agent in input and output.
> </details>



![](https://arxiv.org/html/2503.11069/x3.png)

> 🔼 This figure illustrates how an API wrapper can be used to interact with a GUI application.  Instead of directly manipulating GUI elements, the API wrapper acts as an intermediary, translating high-level function calls into a sequence of GUI interactions (like clicks and text entry). This simplifies the process of automating GUI workflows by allowing developers to interact with the application using a more programmatic, API-based approach. The example shows an API wrapper handling the generation of a financial report, a task that might normally require multiple steps within the GUI. This shows the potential of API wrappers in allowing developers to leverage the functionality of GUI-based applications in a more manageable and streamlined manner.
> <details>
> <summary>read the caption</summary>
> Figure 3: An example of a API wapper over a GUI workflow.
> </details>



![](https://arxiv.org/html/2503.11069/x4.png)

> 🔼 This figure illustrates a unified orchestrator that manages both API and GUI actions.  It shows a hybrid approach where an orchestrator decides whether to use API calls or GUI interactions depending on the task's requirements and system capabilities.  This orchestrator uses a workflow, and based on the input, it can make decisions to leverage both API and GUI agents for different parts of the workflow, combining their strengths.
> <details>
> <summary>read the caption</summary>
> Figure 4: An example of a unified orchestrator to manage both API and GUI actions.
> </details>



![](https://arxiv.org/html/2503.11069/x5.png)

> 🔼 Figure 5 illustrates a no-code platform's workflow design incorporating both API calls and GUI agents.  The workflow visually represents the various stages of an order processing system. It starts with an 'Order Received' event, initiating actions by an API agent that interacts with a 'Payment Gateway' (API call).  Subsequently, an API agent interacts with a 'Shipping Service' (API call). Then a GUI agent performs 'Verification' through visual GUI interaction, before finally reaching 'Completion'. This figure highlights how a no-code platform enables users to integrate both API-driven automation and GUI-driven interactions within a unified workflow, simplifying the development of complex automated processes. 
> <details>
> <summary>read the caption</summary>
> Figure 5: One example of a no-code platform to create workflows integrating both API calls and GUI agents.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.1.1">
<span class="ltx_p" id="S3.T2.1.1.1.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1.1.1">Approach</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S3.T2.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.2.1">
<span class="ltx_p" id="S3.T2.1.1.1.2.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1.1.1">Key Benefit</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.1.1.3.1">
<span class="ltx_p" id="S3.T2.1.1.1.3.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1.1.1">Primary Challenge</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.1.1.1">
<span class="ltx_p" id="S3.T2.1.2.1.1.1.1" style="width:99.6pt;">API Wrappers Over GUI Tools</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.1.2.1">
<span class="ltx_p" id="S3.T2.1.2.1.2.1.1" style="width:142.3pt;">Provides a quasi-API experience for GUI-only software</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.2.1.3.1">
<span class="ltx_p" id="S3.T2.1.2.1.3.1.1" style="width:142.3pt;">Still relies on underlying GUI elements that may change</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.1.1">
<span class="ltx_p" id="S3.T2.1.3.2.1.1.1" style="width:99.6pt;">Unified Orchestration Tools</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T2.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.2.1">
<span class="ltx_p" id="S3.T2.1.3.2.2.1.1" style="width:142.3pt;">Hides agent-type details from the user</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T2.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.3.2.3.1">
<span class="ltx_p" id="S3.T2.1.3.2.3.1.1" style="width:142.3pt;">Complex logic to choose between API and GUI in real time</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.3.1.1">
<span class="ltx_p" id="S3.T2.1.4.3.1.1.1" style="width:99.6pt;">Low-Code / No-Code Solutions</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S3.T2.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.3.2.1">
<span class="ltx_p" id="S3.T2.1.4.3.2.1.1" style="width:142.3pt;">Simplifies design of advanced workflows</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S3.T2.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T2.1.4.3.3.1">
<span class="ltx_p" id="S3.T2.1.4.3.3.1.1" style="width:142.3pt;">May introduce hidden dependencies and abstractions</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares different approaches to creating hybrid agent systems that combine the strengths of API-based and GUI-based agents. It lists three approaches: using API wrappers over GUI workflows, employing unified orchestration tools, and leveraging low-code/no-code solutions.  For each approach, it highlights the key benefits, the primary challenges, and potential solutions.
> <details>
> <summary>read the caption</summary>
> Table 2: Examples of convergence paths in hybrid agent systems.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T3.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.1.1.1.1">
<span class="ltx_p" id="S5.T3.1.1.1.1.1.1" style="width:99.6pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.1.1.1.1">Scenario</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S5.T3.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.1.1.2.1">
<span class="ltx_p" id="S5.T3.1.1.1.2.1.1" style="width:122.3pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.2.1.1.1">Recommended Approach</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.1.1.3.1">
<span class="ltx_p" id="S5.T3.1.1.1.3.1.1" style="width:170.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.1.1.1.3.1.1.1">Rationale</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.2.1.1.1">
<span class="ltx_p" id="S5.T3.1.2.1.1.1.1" style="width:99.6pt;">Stable, well-documented APIs</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.2.1.2.1">
<span class="ltx_p" id="S5.T3.1.2.1.2.1.1" style="width:122.3pt;">API Agents</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.2.1.3.1">
<span class="ltx_p" id="S5.T3.1.2.1.3.1.1" style="width:170.7pt;">Exploit robust endpoints for speed and reliability</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.3.2.1.1">
<span class="ltx_p" id="S5.T3.1.3.2.1.1.1" style="width:99.6pt;">Performance-critical operations</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.3.2.2.1">
<span class="ltx_p" id="S5.T3.1.3.2.2.1.1" style="width:122.3pt;">API Agents</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.3.2.3.1">
<span class="ltx_p" id="S5.T3.1.3.2.3.1.1" style="width:170.7pt;">Reduce latency and overhead via direct function calls</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.4.3.1.1">
<span class="ltx_p" id="S5.T3.1.4.3.1.1.1" style="width:99.6pt;">Controlled access to applications</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.4.3.2.1">
<span class="ltx_p" id="S5.T3.1.4.3.2.1.1" style="width:122.3pt;">API Agents</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.4.3.3.1">
<span class="ltx_p" id="S5.T3.1.4.3.3.1.1" style="width:170.7pt;">Ensure safety and security</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.5.4.1.1">
<span class="ltx_p" id="S5.T3.1.5.4.1.1.1" style="width:99.6pt;">Legacy or proprietary software</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.5.4.2.1">
<span class="ltx_p" id="S5.T3.1.5.4.2.1.1" style="width:122.3pt;">GUI Agents</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.5.4.3.1">
<span class="ltx_p" id="S5.T3.1.5.4.3.1.1" style="width:170.7pt;">Automate tasks without requiring new backend integration</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.6.5.1.1">
<span class="ltx_p" id="S5.T3.1.6.5.1.1.1" style="width:99.6pt;">Visual validation or UI testing</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.6.5.2.1">
<span class="ltx_p" id="S5.T3.1.6.5.2.1.1" style="width:122.3pt;">GUI Agents</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.6.5.3.1">
<span class="ltx_p" id="S5.T3.1.6.5.3.1.1" style="width:170.7pt;">Verify on-screen text or elements directly</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.7.6.1.1">
<span class="ltx_p" id="S5.T3.1.7.6.1.1.1" style="width:99.6pt;">Interactive or graphical manipulation</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.7.6.2.1">
<span class="ltx_p" id="S5.T3.1.7.6.2.1.1" style="width:122.3pt;">GUI Agents</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.7.6.3.1">
<span class="ltx_p" id="S5.T3.1.7.6.3.1.1" style="width:170.7pt;">Seamlessly replicate human-like interactions with visual elements</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.8.7.1.1">
<span class="ltx_p" id="S5.T3.1.8.7.1.1.1" style="width:99.6pt;">Partial API coverage</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S5.T3.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.8.7.2.1">
<span class="ltx_p" id="S5.T3.1.8.7.2.1.1" style="width:122.3pt;">Hybrid</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T3.1.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.8.7.3.1">
<span class="ltx_p" id="S5.T3.1.8.7.3.1.1" style="width:170.7pt;">Combine UI-based steps where APIs are unavailable with direct calls for data-heavy tasks</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.9.8.1.1">
<span class="ltx_p" id="S5.T3.1.9.8.1.1.1" style="width:99.6pt;">Future-proofing</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S5.T3.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.9.8.2.1">
<span class="ltx_p" id="S5.T3.1.9.8.2.1.1" style="width:122.3pt;">Hybrid</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T3.1.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="S5.T3.1.9.8.3.1">
<span class="ltx_p" id="S5.T3.1.9.8.3.1.1" style="width:170.7pt;">Facilitate switching from GUI to API as endpoints evolve</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table provides strategic guidelines for choosing between API-based and GUI-based LLM agents.  It outlines various scenarios and the recommended agent type for each based on factors like the availability of well-documented APIs, performance requirements, the nature of the software (legacy vs. modern), the need for visual interaction or validation, and the degree of API coverage.  The rationale behind each recommendation is also explained.
> <details>
> <summary>read the caption</summary>
> Table 3: Strategic criteria for selecting agent paradigms.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.11069/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11069/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}