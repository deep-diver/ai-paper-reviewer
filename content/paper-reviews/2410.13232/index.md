---
title: "Web Agents with World Models: Learning and Leveraging Environment Dynamics in Web Navigation"
summary: "Boosting LLM-based web agents: This work introduces world models, improving efficiency and cost in web navigation by simulating action outcomes before execution."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-21"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

This research tackles the problem of LLMs struggling with long-horizon tasks in web navigation, particularly their inability to anticipate the consequences of their actions.  The core idea is to equip LLMs with 'world models' – essentially, the ability to predict the outcomes of actions before executing them.  To achieve this, the authors propose a new training method that focuses on the transition between different states of the website (rather than the entire website) and uses natural language descriptions instead of raw HTML.  Experiments show that incorporating world models significantly improves decision-making. The resulting World-Model-Augmented (WMA) agent outperforms existing methods in terms of task success rate and efficiency, notably showing improvements when compared to tree-search based approaches that use a much larger number of trials.  The code for the WMA agent is publicly available, encouraging further research and development in this area.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13232" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13232" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on autonomous web agents. It addresses the critical limitation of current LLMs in handling long-horizon tasks by introducing the concept of world models.  The proposed framework improves agent performance and efficiency, opening avenues for future research in LLM-based web agents and more generally in improving decision-making in complex, dynamic environments.  The public availability of the code further enhances its impact.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LLMs lack world models, hindering performance in long-horizon web tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A World-Model-Augmented (WMA) agent simulates action outcomes, improving policy selection without retraining. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} WMA agents demonstrate superior cost- and time-efficiency compared to tree-search-based agents. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_4_0.png)

> 🔼 This figure illustrates the overall framework of the World-Model-Augmented (WMA) web agent, showing the training process of the world model and the inference-time policy optimization using the trained model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Framework overview. We first collect training data for world models (top). After training, we perform policy optimization by selecting the action leading to an optimal next state (bottom).
> </details>





![](charts/charts_3_0.png)

> 🔼 The chart displays the performance of several LLMs and humans in predicting the next state of a webpage after an action.
> <details>
> <summary>read the caption</summary>
> Figure 1: LLMs' performance in next state prediction.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Policy LLMs</td><td rowspan="2">Methods</td><td rowspan="2">Max Actions</td><td colspan="2">Success Rate (SR)</td><td rowspan="2"></td></tr><tr><td>No Policy Opt.</td><td>+ Policy Opt.</td></tr><tr><td rowspan="4">GPT-4</td><td>AutoEval Pan et al. 2024</td><td rowspan="4">30</td><td>20.2%</td><td>-</td><td>-</td></tr><tr><td>BrowserGym Drouin et al. 2024</td><td>23.5%</td><td>-</td><td>-</td></tr><tr><td>SteP Sodhi et al. 2023</td><td>35.8%</td><td>-</td><td>-</td></tr><tr><td>AWM Wang et al. 2024b</td><td>35.5%</td><td>-</td><td>-</td></tr><tr><td rowspan="3">GPT-4o</td><td>Vanilla CoT Zhou et al. 2023</td><td>30</td><td>13.1%</td><td>-</td><td>-</td></tr><tr><td>Tree search agent Koh et al., 2024</td><td>5</td><td>15.0%</td><td>19.2%</td><td>+28.0%</td></tr><tr><td>WMA web agent (ours)</td><td>5</td><td>12.8%</td><td>16.6%</td><td>+29.7%</td></tr><tr><td>GPT-4o-mini</td><td>WMA web agent (ours)</td><td>5</td><td>9.4%</td><td>13.5%</td><td>+43.6%</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the success rates of various web agents on the WebArena benchmark, comparing their performance with and without policy optimization using world models.
> <details>
> <summary>read the caption</summary>
> Table 1: Agent performance in WebArena. Δ: relative performance gains from policy optimization.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_4_1.png)

> 🔼 The figure illustrates the World-Model-Augmented (WMA) web agent framework, showing the training process for world models and the inference-time policy optimization using the world model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Framework overview. We first collect training data for world models (top). After training, we perform policy optimization by selecting the action leading to an optimal next state (bottom).
> </details>



![](figures/figures_6_0.png)

> 🔼 This figure illustrates the process of transition-focused observation abstraction, showing how the Hungarian algorithm matches elements between consecutive observations and how an LLM generates a free-form natural language description highlighting the key differences.
> <details>
> <summary>read the caption</summary>
> Figure 5: The overview of transition-focused observation abstraction.
> </details>



![](figures/figures_6_1.png)

> 🔼 The figure illustrates the transition-focused observation abstraction process, showing how the Hungarian algorithm matches elements between consecutive observations to generate a free-form description highlighting important state differences.
> <details>
> <summary>read the caption</summary>
> Figure 5: The overview of transition-focused observation abstraction.
> </details>



![](figures/figures_6_2.png)

> 🔼 The figure illustrates the process of transition-focused observation abstraction, showing how the Hungarian algorithm matches elements between consecutive observations to highlight state differences, which are then used to generate a free-form natural language description of the next observation.
> <details>
> <summary>read the caption</summary>
> Figure 5: The overview of transition-focused observation abstraction.
> </details>



![](figures/figures_20_0.png)

> 🔼 The figure shows the interface used for human annotation in the preliminary analysis I, which involved a binary classification task to evaluate LLMs' ability to predict next states based on current states and actions.
> <details>
> <summary>read the caption</summary>
> Figure 8: Human annotation interface for preliminary analysis I in §3.1.
> </details>



![](figures/figures_20_1.png)

> 🔼 The figure shows an example of a counterfactual imagination error in the world model's prediction, where non-existent products are predicted to appear in the next observation.
> <details>
> <summary>read the caption</summary>
> Figure 10: Erroneous example (Counterfactual imagination). The model predicts that specific products (96 TY CITY86 Bmw 740i Limited Collector Hoodie Men's Close; Toyota 86 Bad Institute Monkey Champagne Cup, Volkswagen A9 Bug Pick Dead Red) will appear in the next observation, while this specific page does not list them as the products for sell.
> </details>



![](figures/figures_21_0.png)

> 🔼 The figure shows an example of an erroneous prediction where the model generates overly generic and unclear descriptions of the next observation, failing to capture specific details about the changes.
> <details>
> <summary>read the caption</summary>
> Figure 11: Erroneous example (Correct yet overly generic statements). “Comprehensive layout” and “various order-related functionalities” are ambiguous and unclear expressions.
> </details>



![](figures/figures_21_1.png)

> 🔼 The figure shows an example of an erroneous prediction by the world model where the predicted next state is several steps away from the actual next state.
> <details>
> <summary>read the caption</summary>
> Figure 12: Erroneous example (Others). The predicted next state (i.e., contributions and activities) is actually several steps further away from the current time step.
> </details>



![](figures/figures_22_0.png)

> 🔼 The figure shows a successful example of the WMA web agent performing a task on the Mind2Web benchmark by leveraging its learned environment dynamics to select the optimal action.
> <details>
> <summary>read the caption</summary>
> Figure 13: Successful example (Mind2Web). WMA web agent successfully inferences on the Mind2Web benchmark (menards task #0). Using the policy model (i.e., GPT-40), WMA web agent selects the most proper action click [208] by leveraging its learned environment dynamics.
> </details>



![](figures/figures_23_0.png)

> 🔼 The figure shows a successful example of WMA web agent in WebArena benchmark, where the agent correctly selects the action by leveraging its learned environment dynamics.
> <details>
> <summary>read the caption</summary>
> Figure 14: Successful example (WebArena). WMA web agent successfully infers on Gitlab domain in the WebArena benchmark (instance #175). Using the policy model (i.e., GPT-40), WMA web agent selects the most proper action click [88] by leveraging its learned environment dynamics.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_3_1.png "🔼 Figure 2: LLMs' performance in action selection (w/ and w/o next states).")

> 🔼 The chart compares LLMs' performance in differentiating the golden action from negative actions when they are/are not provided with the resulting next state of each action candidate.
> <details>
> <summary>read the caption</summary>
> Figure 2: LLMs' performance in action selection (w/ and w/o next states).
> </details>


![](charts/charts_5_0.png "🔼 Figure 4: Sequence length distribution of different observation representations.")

> 🔼 The chart displays the distribution of token counts for three different observation representations: original observations, transition-focused observations, and transition descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 4: Sequence length distribution of different observation representations.
> </details>


![](charts/charts_9_0.png "🔼 Figure 6: Ablation on the number of sampled actions (k).")

> 🔼 The chart displays the success rate of the WMA web agent and a baseline (no exploration) across varying numbers of sampled actions (k) during inference-time policy optimization, showing performance gains from increasing exploration.
> <details>
> <summary>read the caption</summary>
> Figure 6: Ablation on the number of sampled actions (k).
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Methods / Domains</td><td>Shopping</td><td>CMS</td><td>Reddit</td><td>Gitlab</td><td>Map</td><td>Overall</td></tr><tr><td>Vanilla CoT (max actions = 5)</td><td>18.8%</td><td>8.2%</td><td>5.3%</td><td>3.1%</td><td>11.6%</td><td>9.4%</td></tr><tr><td>WMA web agent (ours)</td><td>19.3%</td><td>11.5%</td><td>7.9%</td><td>8.7%</td><td>22.3%</td><td>13.5%</td></tr><tr><td></td><td>+3%</td><td>+40%</td><td>+49%</td><td>+181%</td><td>+92%</td><td>+44%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents a breakdown of the domain-specific performance of agents using GPT-40-mini as policy models, showing the success rates for each domain and the overall improvement achieved by the WMA web agent compared to the vanilla CoT method.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Methods</td><td colspan="4">Cross-Task</td><td colspan="4">Cross- Website</td><td colspan="4">Cross-Domain</td></tr><tr><td>EA</td><td>AF1</td><td>Step SR</td><td>SR</td><td>EA</td><td>AF1</td><td>Step SR</td><td>SR</td><td>EA</td><td>AF1</td><td>Step SR</td><td>SR</td></tr><tr><td>Synapse*</td><td>34.4%</td><td>-</td><td>30.6%</td><td>2.0%</td><td>28.8%</td><td>-</td><td>23.4%</td><td>1.1%</td><td>29.4%</td><td>-</td><td>25.9%</td><td>1.6%</td></tr><tr><td>HTML-T5-XL*</td><td>60.6%</td><td>81.7%</td><td>57.8%</td><td>10.3%</td><td>47.6%</td><td>71.9%</td><td>42.9%</td><td>5.6%</td><td>50.2%</td><td>74.9%</td><td>48.3%</td><td>5.1%</td></tr><tr><td>MindAct*</td><td>41.6%</td><td>60.6%</td><td>36.2%</td><td>2.0%</td><td>35.8%</td><td>51.1%</td><td>30.1%</td><td>2.0%</td><td>21.6%</td><td>52.8%</td><td>18.6%</td><td>1.0%</td></tr><tr><td>AWM (w/ EF)*</td><td>50.6%</td><td>57.3%</td><td>45.1%</td><td>4.8%</td><td>41.4%</td><td>46.2%</td><td>33.7%</td><td>2.3%</td><td>36.4%</td><td>41.6%</td><td>32.6%</td><td>0.7%</td></tr><tr><td>AWM (w/o EF)</td><td>78.3%</td><td>74.1%</td><td>62.8%</td><td>15.3%</td><td>74.7%</td><td>70.1%</td><td>58.6%</td><td>6.2%</td><td>74.8%</td><td>71.2%</td><td>60.7%</td><td>9.5%</td></tr><tr><td>AWM+WMA (ours)</td><td>79.9%</td><td>75.8%</td><td>67.0%</td><td>25.4%</td><td>75.7%</td><td>72.1%</td><td>61.3%</td><td>8.5%</td><td>75.9%</td><td>72.6%</td><td>63.4%</td><td>10.1%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 presents the success rates of different methods on the Mind2Web benchmark, comparing element accuracy, action accuracy, step success rate, and overall success rate.


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Methods</td><td>Shopping</td><td>CMS</td><td>Reddit</td><td>Gitlab</td><td>Map</td><td>API cost</td><td>Inference time (sec)</td></tr><tr><td>Tree search agent</td><td>28.1%</td><td>16.5%</td><td>10.5%</td><td>13.3%</td><td>25.8%</td><td>$2.7</td><td>748.3</td></tr><tr><td>WMA (ours)</td><td>20.8%</td><td>14.3%</td><td>10.5%</td><td>13.3%</td><td>26.8%</td><td>$0.4</td><td>140.3</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 compares the performance of the proposed WMA web agent and the Tree search agent in terms of success rate, API cost, and inference time on the WebArena benchmark.


{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td rowspan="2">Settings</td><td colspan="2">World Model</td><td colspan="4">Success Rate (SR)</td></tr><tr><td>Use</td><td>Training</td><td>Shopping</td><td>Gitlab</td><td>Map</td><td>Overall</td></tr><tr><td>w/o next states in reward estimation (§4.2</td><td>X</td><td>X</td><td>28.0%</td><td>6.0%</td><td>19.0%</td><td>18.0%</td></tr><tr><td>w/o training world models (§4 1</td><td></td><td>X</td><td>30.0%</td><td>10.0%</td><td>15.0%</td><td>17.5%</td></tr><tr><td>w/o abstracting observations ($4. T 2</td><td></td><td></td><td>22.0%</td><td>6.0%</td><td>15.0%</td><td>14.5%</td></tr><tr><td>WMA (ours)</td><td></td><td></td><td>32.0%</td><td>14.0%</td><td>21.0%</td><td>22.0%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 5 presents the results of an ablation study conducted in the WebArena environment, evaluating the impact of different components of the proposed World-Model-Augmented (WMA) web agent on its overall success rate.


{{< table-caption >}}
<table id='10' style='font-size:14px'><tr><td>Function</td><td>Training</td><td>SR</td></tr><tr><td></td><td>X</td><td>12.7%</td></tr><tr><td></td><td>V</td><td>13.5%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares the success rate of web agents using different value functions (a fine-tuned LLM vs. GPT-40-mini) for policy optimization.


{{< table-caption >}}
<br><table id='6' style='font-size:14px'><tr><td>Methods</td><td>SR</td></tr><tr><td>Vanilla CoT</td><td>11.6%</td></tr><tr><td>Self-refine w/ our world model</td><td>13.4%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the success rate (SR) achieved by vanilla CoT and two variations of the proposed WMA web agent (with and without self-refinement) in the Map domain of the WebArena benchmark.


{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Input : States Ot = [et, · · · , en-1], Ot+1 = [et+1 , · . · , ett11]. Each ei ni, role Vi,</td></tr><tr><td>has name location li⌀ Weights Wn, Wr, WI⌀ Output: STao U ← ⌀ if len(ot+1) ≤ T . len(ot) then # Construct cost matrix for Hungarian matching Ci,j ← Wn · 1nt=nt+1 + Wr · 1rt=rt+1 + WI · 陵 - It+11 # Apply Hungarian algorithm to find optimal matching M* ← argmin Ei,j Ci,j · Mi,j M # Identify unmatched elements U ← {j\M*,j = 0, Vi E {0, . · . , n - 1}} end if len(U) ≥ m - n or U = ⌀ then St+1 ← Ot+1 else # Construct TaO state based on unmatched and nearby elements St+1 ← [et+1|j E U or (len(U) ≤ x and minuEU |u - jl ≤ y)] end</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the success rate of different web agents on the WebArena benchmark, comparing their performance with and without policy optimization, highlighting the relative improvement achieved by policy optimization.


{{< table-caption >}}
<table id='24' style='font-size:20px'><tr><td>Prompt for preliminary analysis 1: next state prediction</td></tr><tr><td>Select the next state according to the current state and the current action. Clearly state which option (A to J) you are selecting. Please generate the final answer after the identifier "[Answer]" as "[Answer] <only_alphabet_of_your_answer> ". [Input] OBSERVATION: {observation} URL: {url} OBJECTIVE: {objective} CURRENT ACTION: {gold_action} NEXT STATE CHOICES: {choices} [Output]</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the performance of various agents on the WebArena benchmark, showing the success rate with and without policy optimization, and the relative gain achieved through optimization.


{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>agent a web browser.</td></tr><tr><td>You are an autonomous intelligent tasked with navigating You will be given web-based tasks. These tasks will be accomplished by selecting the most appropriate action and the resulting next state transition from a list of choices.</td></tr><tr><td>Here's the information you'll have:</td></tr><tr><td>The user's objective: This is the task you're trying to complete.</td></tr><tr><td>The current web page's accessibility tree: This is a simplified representation of the webpage, providing key information. The current web page's URL: This is the page you're currently navigating.</td></tr><tr><td>The open tabs: These are the tabs you have open.</td></tr><tr><td>The previous action: This is the action you just performed. It may be helpful to track your progress.</td></tr><tr><td>For each step, you will be presented with 10 possible actions (A to J). Your task is to select the most appropriate action to progress towards completing the user's objective.</td></tr><tr><td>The actions fall into several categories:</td></tr><tr><td>Page Operation Actions:</td></tr><tr><td>Click: This action clicks on an element with a specific id on the webpage.</td></tr><tr><td>Type: Use this to type content into a field with a specific id. By default, the "Enter" key is pressed after typing unless specified otherwise.</td></tr><tr><td>Hover: Hover over an element with a specific id.</td></tr><tr><td>Press: Simulates the pressing of a key combination on the keyboard (e.g., Ctrl+v).</td></tr><tr><td>Scroll: Scroll the page up or down.</td></tr><tr><td>Tab Management Actions:</td></tr><tr><td>New tab: Open a new, empty browser tab.</td></tr><tr><td>Tab focus: Switch the browser's focus to a specific tab using its index.</td></tr><tr><td>Close tab: Close the currently active tab. URL Navigation Actions:</td></tr><tr><td>Goto: Navigate to a specific URL.</td></tr><tr><td>Go back: Navigate to the previously viewed page.</td></tr><tr><td>Go forward: Navigate to the next page (if a previous 'go_back' action was performed).</td></tr><tr><td>Completion Action:</td></tr><tr><td>Stop: Select this action when you believe the task is complete. If the objective is to find a text-based answer, the answer will be included in the action description.</td></tr><tr><td>Additional information:</td></tr><tr><td>If you want to visit other websites, check out the homepage at http://homepage.com. It has a list of websites you can visit.</td></tr><tr><td>http://homepage.com/password.html lists all the account names and passwords for the websites. You can use them to log in to the websites.</td></tr><tr><td>To be successful, it is very important to follow these rules:</td></tr><tr><td>- Choose only an action that is valid given the current observation.</td></tr><tr><td>- Select only one action at a time.</td></tr><tr><td>- Follow the examples to reason step by step before selecting the next action.</td></tr><tr><td>- When you believe you have achieved the objective, select the "stop" action if it's available among the choices.</td></tr><tr><td>Your response should be structured as follows:</td></tr><tr><td>- You have to choose to proceed to the next state that best aligns with the user's objective.</td></tr><tr><td>- First think about the most promising next state provided after each action, separeted by "-".</td></tr><tr><td>- Then, you choose the action that leads to the promising state.</td></tr><tr><td>- Clearly state which action (A to J) you are selecting.</td></tr><tr><td>- Please generate the final answer the identifier "[Answer]" as "[Answer] <alphabet_of_your_answer_choice>".</td></tr><tr><td>[Input]</td></tr><tr><td>OBSERVATION:</td></tr><tr><td>{observation}</td></tr><tr><td>URL: {url}</td></tr><tr><td>OBJECTIVE: {objective}</td></tr><tr><td>PREVIOUS ACTION: {previous_action}</td></tr><tr><td>ACTION CHOICES: {choices}</td></tr><tr><td></td></tr><tr><td>[Output]</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents a comparison of different web agent methods' success rates in the WebArena benchmark, showing the relative performance improvement achieved through policy optimization.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt for refining TaO output</td></tr><tr><td>Summarize the key changes in the web page based on the following information:</td></tr><tr><td>New items: {new_items}</td></tr><tr><td>Updated items: {updated_ items}</td></tr><tr><td>Deleted items: {deleted_items}</td></tr><tr><td>When summarizing, follow these output format:</td></tr><tr><td>1. [First key change]</td></tr><tr><td>2. [Second key change]</td></tr><tr><td>3. [Third key change]</td></tr><tr><td>・・・</td></tr><tr><td>10. [Tenth key change]</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents a comparison of different web agents' success rates in WebArena, showing the relative performance improvement achieved through policy optimization.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt for Transition-focused observation abstraction during training time</td></tr><tr><td>You are an intelligent agent that predicts next state from the given current action, with your own logical reasoning. You will be given a web-based task.</td></tr><tr><td>Here's the information you'll have: This is the task you're trying to complete.\nThe current observation: This is a simplified representation of page's URL: This is the page you're currently navigating. The This is a simplified a Refer actual next state</td></tr><tr><td>The user's objective: the webpage, providing key information. observation guide your prediction, with The key changes in next state observation: A summary of the key changes between the current observation and the actual next state observation.</td></tr><tr><td>The current web</td></tr><tr><td>The previous actions: These are the action you just performed in the previous step. It may be helpful to track your progress. The current action: This is the current action that you performed to achieve the user's objective in the current observation. actual next state observation: representation of the webpage as result of the given current action.</td></tr><tr><td>to this provided to ensuring that your predicted state closely aligns the observed changes.</td></tr><tr><td></td></tr><tr><td>The format of previous actions and current action can fall into several categories: Operation</td></tr><tr><td>Page Actions: [id]' : This action clicks an element with a specific id on the webpage.</td></tr><tr><td>`click on `type [id] [content]` : Use this to type the content into the field with id. By default, the "Enter" key is pressed after typing unless press_enter_ after is set to 0, i.e., `type [id] [content] [0]`. `hover [id]' : Hover over an element with id. press [key_comb]' : Simulates the pressing of a key combination on the keyboard (e.g., Ctrl+v). `scroll [down]' or `scroll [up]` : Scroll the page up or down.</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>Tab Management Actions:</td></tr><tr><td>`new_tab : Open a new, empty browser tab. tab_focus [tab_index]' : Switch the browser's focus to a specific tab using its index. close_ tab` : Close the currently active tab.</td></tr><tr><td></td></tr><tr><td>URL Navigation Actions:</td></tr><tr><td>goto [url]' : Navigate to a specific URL.</td></tr><tr><td>go_back` : Navigate to the previously viewed page. go_forward` : Navigate to the next page (if a previous 'go_back' action was performed)</td></tr><tr><td>Completion Action:</td></tr><tr><td>`stop [answer]` : Issue this action when you believe the task is complete. If the objective is to find a text-based answer, provide in the bracket</td></tr><tr><td>the answer effect of current state the</td></tr><tr><td>To be successful, it is very important to understand the action on the next of webpage.</td></tr><tr><td>Follow the following rules for reasoning on next state prediction.</td></tr><tr><td>1. Please generate your answer starting with Let's think step by step, with your logical REASONING (after "[Rationale]"). 2. When you generate your logical reasoning, you must mention the key changes in next state observation given as input. of the next based the changed parts you mentioned.</td></tr><tr><td>then, state on</td></tr><tr><td>3. And you must generate a description</td></tr><tr><td>Start expected is that · ·· "</td></tr><tr><td>4. Generate the state prediction in the correct format. with a "[Next State] The effect phrase.</td></tr><tr><td>Demonstrations: ... (omitted)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the performance of various web agents on the WebArena benchmark, comparing their success rates with and without policy optimization, and showing the relative performance gains achieved through policy optimization.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt for Transition-focused observation abstraction during inference time</td></tr><tr><td>You are an intelligent agent that predict next state from given current action, with your own logical reasoning. You will be given web-based tasks.</td></tr><tr><td>Here's the information you'll have:</td></tr><tr><td>The user's objective: This is the task you're trying to complete.</td></tr><tr><td>The current web page's accessibility tree: This is a simplified representation of the webpage, providing key information. The current web page's URL: This is the page you're currently navigating.</td></tr><tr><td>The previous action: This is the action you just performed. It may be helpful to track your progress.</td></tr><tr><td>The current action: This is the current action that you will perform to achieve the user's objective in the current web page's accessibility tree.</td></tr><tr><td>The format of previous actions and current action can fall into several categories:</td></tr><tr><td>Operation Actions:</td></tr><tr><td>Page  click [id]' : This action clicks on an element with a specific id on the webpage. `type [id] [content]` : Use this to type the content into the field with id. By default, the "Enter" key is pressed after typing unless press_enter_after is set to 0, i.e., `type [id] [content] [0]'.</td></tr><tr><td>`hover [id]' : Hover over an element with id. press [key_ comb]` : Simulates the pressing of a key combination on the keyboard (e.g., Ctrl+v). [down]` or `scroll [up]' : Scroll the page up or down.</td></tr><tr><td>scroll</td></tr><tr><td>Tab Management Actions:</td></tr><tr><td>`new_tab : Open a new, empty browser tab. tab_focus [tab_index]' : Switch the browser's focus to a specific tab using its index. close_tab` : Close the currently active tab.</td></tr><tr><td>URL Navigation Actions:</td></tr><tr><td>goto [url]' : Navigate to a specific URL.</td></tr><tr><td>go_back` : Navigate to the previously viewed page. go_forward` : Navigate to the next page (if a previous 'go_back' action was performed)</td></tr><tr><td>Completion Action:</td></tr><tr><td>`stop [answer]` : Issue this action when you believe the task is complete. If the objective is to find a text-based answer, provide the answer in the bracket</td></tr><tr><td></td></tr><tr><td>To be successful, it is very important to understand the effect of current action on the next state of the webpage. You need to verify whether the current action is successful to make an intended effect on the webpage. If so, please explicitly mention the evidence, otherwise describe why it was not successful.</td></tr><tr><td></td></tr><tr><td>Follow the following rules for reasoning on next state prediction. 1. Please generate your answer starting with Let's think step by step, with your logical REASONING. identify and the changed parts of the [accessibility next state on the given current action.</td></tr><tr><td>2. When you generate your logical reasoning, you must mention only tree] for the based And then, you must generate a description of the next state based on the changed parts you identified.</td></tr><tr><td>State]</td></tr><tr><td>Generate the state a "[Next The expected effect is that · phrase.". "</td></tr><tr><td>prediction with · ·</td></tr><tr><td>the</td></tr><tr><td>3. 4. in correct format. Start . ··</td></tr><tr><td>examples: (omitted)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents a comparison of the success rates of different web agents on the WebArena benchmark, highlighting the relative performance improvement achieved through policy optimization.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt for value function Response Format: 1. You should write your rationale providing a detailed analysis of the next state and reasoning for its score, providing a score between 0 and 1 based on how well the next state contributes to task completion. Output Format: [Rationale] <your thought> [Score] <a value between 0 and 1></td></tr><tr><td>You are an expert in evaluating and guiding a web navigation agent. Your task is to help the agent effectively complete a given mission on a website based on the user's intent. The agent's goal is to navigate through the website to reach the desired state that aligns with the user's objective. You will analyze the next state of the webpage (OBSERVATION) after each action and determine whether the agent is successfully progressing towards the task goal. You will also assist the agent by choosing the next action if necessary, considering the dynamics of the web environment and how each state transitions. Key Points: 1. Understand the intent: - Identify the user's goal (e.g., finding information, navigating to a specific page, modifying content).\n- Make sure the next state of the webpage aligns with achieving that goal based on the current state and user's intent. 2. Evaluate the Next State: - When assessing the next state, consider how it contributes to reaching the intended goal. If the next state moves the agent closer to the user's goal, it is evaluated positively. - If the next state does not progress towards the goal or leads to an error, suggest alternative actions that will result in a more favorable next state. 3. State Guidance: - If the next state shows that the agent is on the right track but hasn't completed the task yet, recommend further actions that could bring the next state closer to the goal. Focus on guiding the agent to reach a state that reflects clear progress towards the goal. 4. Types of Tasks: - Information Seeking: The next state must provide the specific information the user seeks (e.g., product price, reviews). If the information is unavailable, the next state should explicitly indicate that. - Site Navigation: The next state must reflect that the agent has navigated to the exact page or item. Check if the state includes content based on the user's intent. - Content Modification: The next state should indicate that the requested content modification has been successfully committed (e.g., form submission, comment posting). - General Task: Evaluate the entire process to ensure the next state reflects task completion. Stop actions should only be issued when the objective is met. 5. Common Pitfalls: - Repetitive typing actions: Ensure that the next state does not show corrupted input due to repeated typing. - Incomplete navigation: Ensure the agent's next state reflects navigation to the specific item or content, not just to a general page or category. Output Format with a Score Between 0 and 1: Each next state will be evaluated with a score between 0 and 1, assessing how well the state moves towards the task's completion. This score provides nuanced feedback on the state's effectiveness. 0: The next state is a failure or leads away from the task. Values closer to 0 (e.g., 0.1, 0.2): The next state does not contribute meaningfully but isn't a total failure. 0.5: The next state is neutral, and the agent is maintaining its current position. Values closer to 1 (e.g., 0.7, 0.8): The next state is helpful and moves the agent closer to the task goal. 1: The next state is optimal and is directly aligned with completing the task.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the success rates of various web agents on the WebArena benchmark, comparing performance with and without policy optimization.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt for baseline CoT</td></tr><tr><td>You are an autonomous intelligent agent tasked with navigating a web browser. You will be given web-based tasks. These tasks will be accomplished through the use of specific actions you can issue.</td></tr><tr><td>Here's the information you'll have:</td></tr><tr><td>The user's objective: This is the task you're trying to complete. simplified representation of</td></tr><tr><td>The current web page's accessibility tree: This is a the webpage, providing key information. The current web page's URL: This is the page you're currently navigating.</td></tr><tr><td>The open tabs: These are the tabs you have open.</td></tr><tr><td>The previous action: This is the action you just performed. It may be helpful to track your progress.</td></tr><tr><td>The actions you can perform fall into several categories:</td></tr><tr><td>Page Operation Actions:</td></tr><tr><td>`click [id]' : This action clicks on an element with a specific id on the webpage. `type [id] [content] [press_enter_ after=0|1]: Use this to type the content into the field with id. By default, the "Enter" key is pressed after typing unless press_enter_after is set to 0. `hover [id]' : Hover over an element with id. [key_ comb]` : Simulates the pressing of a key combination on the keyboard (e.g., Ctrl+v). [direction=down|up]` : Scroll the page up or down.</td></tr><tr><td>press scroll</td></tr><tr><td></td></tr><tr><td>Tab Management Actions:</td></tr><tr><td>`new_tab` : Open a new, empty browser tab. tab_focus [tab_index]` : Switch the browser's focus to a specific tab using its index. close_tab` : Close the currently active tab.</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>URL Navigation Actions: goto [url]' : Navigate to a specific URL. go_back` : Navigate to the previously viewed page. : Navigate to the next page (if a previous 'go_back' action was performed).</td></tr><tr><td>go_forward`</td></tr><tr><td></td></tr><tr><td>Completion Action: `stop [answer]` : Issue this action when you believe the task is complete. If the objective is to find a text-based answer, provide the answer in the bracket.</td></tr><tr><td></td></tr><tr><td>Homepage:</td></tr><tr><td>websites, homepage</td></tr><tr><td>If you want to visit other check out the at http://homepage.com. It has a list of websites you can visit. http://homepage.com/password.html lists all the account name and password for the websites. You can use them to log in to the websites.</td></tr><tr><td>To be successful, it is very important to follow the following rules:</td></tr><tr><td>1. You should only issue an action that is valid given the current observation 2. You should only issue one action at a time. the reason step by step and then issue the next action. action will perform is" phrase, followed by</td></tr><tr><td>3. You should follow examples to 4. Generate the action in the correct format. Start with a "In summary, the next I action inside ······ For example, "In summary, the next action I will perform is " click [1234]````. Issue stop action when you think you have achieved the objective. Don't generate anything after stop.</td></tr><tr><td></td></tr><tr><td>5.</td></tr><tr><td></td></tr><tr><td>"examples"</td></tr><tr><td></td></tr><tr><td>(omitted)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents a comparison of different web agents' performance on the WebArena benchmark, showing their success rates with and without policy optimization, and the relative performance gains achieved through policy optimization.


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt for self-refine</td></tr><tr><td>You are an autonomous intelligent agent tasked with navigating a web browser to achieve the user's objective. Based on your next state prediction, you need to decide whether to refine your current action to better accomplish the user's intent.</td></tr><tr><td>The format of previous actions and current action can fall into several categories:</td></tr><tr><td>Page Operation Actions: `click [id]' : This action clicks on an element with a specific id on the webpage. `type [id] [content]` : Use this to type the content into the field with id. By default, the "Enter" key is pressed after typing unless press enter_ after is set to 0, i.e., `type [id] [content] [0]`. `hover [id]' : Hover over an element with id. press [key_comb]' : Simulates the pressing of a key combination on the keyboard (e.g., Ctrl+v). scroll [down]` or `scroll [up]' : Scroll the page up or down. Tab Management Actions: `new_tab : Open a new, empty browser tab. tab_focus [tab] _index]' : Switch the browser's focus to a specific tab using its index. close_tab : Close the currently active tab.</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>URL Navigation Actions:</td></tr><tr><td>`goto [url]' : Navigate to a specific URL. go_back` : Navigate to the previously viewed page. go_forward` : Navigate to the next page (if a previous 'go_back' action was performed)</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>Completion Action: `stop [answer]` : Issue this action when you believe the task is complete. If the objective is to find a text-based answer, provide answer in the bracket.</td></tr><tr><td>the</td></tr><tr><td>When you refine the current action, let's think step-by-step. 1. Evaluate the Current Action: Review your current action and the reasoning behind it. prediction to assess how effectively the action contributes to the user's objective. necessary step. 2.</td></tr><tr><td>- - Utilize the next state -</td></tr><tr><td>Consider the overall progress toward the user's goal, and whether the action is a</td></tr><tr><td></td></tr><tr><td>Decide on Refinement:</td></tr><tr><td>Only refine</td></tr><tr><td>- your action if it does not meaningfully progress toward the user's intent or if it can be improved to better align with the objective. - If the action is a necessary step in the overall progress, proceed with the current action as is. 3. Refine the Action (if necessary):</td></tr><tr><td>- Think through the problem step-by-step to determine how to improve the action using insights from the next state prediction. - Re-express your reasoning, focusing on how to enhance the action. - a new action that is valid given the current observation and more effectively advances the 4. the Action</td></tr><tr><td>Generate user's goal. Follow Formatting Rules: - Only issue one action at a time. generating</td></tr><tr><td>After your reasoning, by inside</td></tr><tr><td>- start with a "In summary, the next action I will perform is" phrase, followed action 、 ····· For example, "<your thought>, In summary, the next action I will perform is " `click [1234]  stop action when you the objective. generate</td></tr><tr><td>5. Issue you think have achieved Don't anything after stop.</td></tr><tr><td></td></tr><tr><td></td></tr><tr><td>Remember:</td></tr><tr><td>When evaluating and refining the action, make sure to leverage the next state prediction, but also consider whether the action is an essential step toward achieving the user's goal. Only refine your action when it is truly necessary to better align with the user's intent.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the success rates of various web agents on the WebArena benchmark, comparing performance with and without policy optimization using world models.


</details>


### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}