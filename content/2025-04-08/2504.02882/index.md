---
title: "DiaTool-DPO: Multi-Turn Direct Preference Optimization for Tool-Augmented Large Language Models"
summary: "DiaTool-DPO: Enhances tool-augmented LLMs with direct preference optimization for multi-turn dialogue control!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Dialogue Systems", "🏢 Kakao Corp.",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02882 {{< /keyword >}}
{{< keyword icon="writer" >}} Sunghee Jung et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02882" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02882" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02882/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Tool-Augmented Large Language Models (TA-LLMs) struggle with incomplete queries and out-of-scope requests, relying on Supervised Fine-Tuning (SFT) with expert trajectories. Early benchmarks focused on successful tool calls, recent ones evaluate user conversations. Current research lacks TA-LLMs, yet reinforcement learning captures preferences in other LLM areas such as WebShop. 



This paper introduces DiaTool-DPO, which enhances TA-LLMs' dialogue via Direct Preference Optimization, modeling interactions as a Markov Decision Process. It categorizes user queries into three types based on dialogue states, automatically constructing paired trajectory datasets and introduces a specialized loss for dialogue control. This method matches GPT-4 performance, improving information gathering and tool call rejection with no human labeling.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DiaTool-DPO, a new DPO method, improves TA-LLM dialogue control. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} TA-LLM interactions are modeled as a Markov Decision Process with distinct states. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Performance benefits from exposure to varying difficulty levels in training data. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for TA-LLM researchers as it introduces a novel DPO method (DiaTool-DPO) that **enhances dialogue capabilities without relying on extensive human labeling**. The finding that slot-filling benefits from diverse difficulty levels and indirect learning between tool call actions opens new avenues for research in TA-LLM training.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02882/x1.png)

> 🔼 This figure visualizes the five internal states a tool-augmented large language model (TA-LLM) can be in during a conversation and how these states connect to create different conversational flows (trajectories) for three different types of user queries.  The states are represented by colored bubbles: green for user queries, blue for other conversational turns, and teal for the 'Tools' list (showing tools available to the system).  The diagram shows how the TA-LLM transitions between states, depending on whether it needs to ask for more information (slot filling), invoke a tool, or reject a tool call because no suitable tool exists for the given query.  Each trajectory shows the sequence of states visited during the conversation for each query type. The illustration highlights how the model determines whether to ask follow-up questions, make tool calls, or reject tool calls, showcasing its conversational control capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of five internal states of TA-LLMs and state trajectories for three different query types. User queries are shown in green message bubbles, while other conversational turns are displayed in blue. OOT (Out-of-Tools) queries represent requests for functionality not available in the teal-colored 'Tools' list. Slot-Filling QAs denote conversational turns aimed at gathering required fields for tool execution. Tool calls represent messages where the assistant invokes a tool, tool responses show the returned execution results, and completion messages demonstrate the assistant’s final response using the tool output. For optimal visualization of the state transitions and message types, we recommend viewing this figure in color. Icons from Flaticon222http://www.flaticon.comare used in this diagram.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.15">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.15.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.15.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.15.1.1.1.1">Query</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.15.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.15.1.1.2.1">Chosen traj.</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.15.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.15.1.1.3.1">Rejected traj.</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.15.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.15.1.1.4.1">Learning lesson</span></td>
<td class="ltx_td ltx_align_right ltx_border_tt" id="S3.T1.15.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.15.1.1.5.1">Count</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.15.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.15.1.1.6.1">Included</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.2.2.1" rowspan="4"><span class="ltx_text" id="S3.T1.15.2.2.1.1">Type 1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.2.2.2" rowspan="4"><span class="ltx_text" id="S3.T1.15.2.2.2.1">1→3→4→5</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.2.2.3">1→2→3→4→5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.2.2.4">Prevent redundant slot-filling</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.15.2.2.5">2,089</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.15.2.2.6">Easy</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.3.3">
<td class="ltx_td ltx_align_left" id="S3.T1.15.3.3.1">1→(2*N)→3→4→5</td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.3.3.2">Prevent redundant slot-filling</td>
<td class="ltx_td ltx_align_right" id="S3.T1.15.3.3.3">562</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.15.3.3.4">Hard</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.4.4">
<td class="ltx_td ltx_align_left" id="S3.T1.15.4.4.1">1→(2*M)→3→4→5</td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.4.4.2">Prevent redundant slot-filling</td>
<td class="ltx_td ltx_align_right" id="S3.T1.15.4.4.3">2,530</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.15.4.4.4">Hard</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.15.5.5.1">1→1</td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.5.5.2">Tool call accept</td>
<td class="ltx_td ltx_align_right" id="S3.T1.15.5.5.3">2,090/562</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.15.5.5.4">Easy, Hard</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.6.6.1" rowspan="4"><span class="ltx_text" id="S3.T1.15.6.6.1.1">Type 2</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.6.6.2">1→2→3→4→5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.6.6.3">1→3→4→5</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.6.6.4">Prevent slot hallucination</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.15.6.6.5">2,089</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.15.6.6.6">Easy</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.7.7">
<td class="ltx_td ltx_align_left" id="S3.T1.15.7.7.1">1→(2*N)→3→4→5</td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.7.7.2">1→3→4→5</td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.7.7.3">Prevent slot hallucination</td>
<td class="ltx_td ltx_align_right" id="S3.T1.15.7.7.4">562</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.15.7.7.5">Hard</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.8.8">
<td class="ltx_td" id="S3.T1.15.8.8.1"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.8.8.2">1→(2*M)→3→4→5</td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.8.8.3">Prevent slot hallucination</td>
<td class="ltx_td ltx_align_right" id="S3.T1.15.8.8.4">2,530</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.15.8.8.5">Hard</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.9.9">
<td class="ltx_td" id="S3.T1.15.9.9.1"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.9.9.2">1→1</td>
<td class="ltx_td ltx_align_left" id="S3.T1.15.9.9.3">Tool call accept</td>
<td class="ltx_td ltx_align_right" id="S3.T1.15.9.9.4">2,089/562</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T1.15.9.9.5">Easy, Hard</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.10.10">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.15.10.10.1" rowspan="2"><span class="ltx_text" id="S3.T1.15.10.10.1.1">Type 3</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.15.10.10.2" rowspan="2"><span class="ltx_text" id="S3.T1.15.10.10.2.1">1→1</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.10.10.3">1→3→4</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.15.10.10.4">Tool call reject</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S3.T1.15.10.10.5">567</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.15.10.10.6">Hard</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.11.11">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.15.11.11.1">1→(2*N)→3→4</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.15.11.11.2">Tool call reject</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S3.T1.15.11.11.3">562</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.15.11.11.4">Hard</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the composition of the training dataset used for the DiaTool-DPO model, categorized by query type and difficulty level (Easy and Hard).  It shows the different state transition trajectories (sequences of states a TA-LLM goes through during a conversation) associated with each query type. The notation (2*N) signifies that state 2 (Tool Selected without Complete Slots) is visited N times, representing N unknown required fields needing to be filled through a sequence of questions and answers before a tool can be called.  The 'Learning lesson' column highlights the specific aspect of dialogue management that each trajectory-pair is designed to improve. The 'Count' column indicates the number of examples included in the dataset for each category.  For instance, a combined Easy and Hard category shows the number of Easy examples followed by a slash and then the number of Hard examples.
> <details>
> <summary>read the caption</summary>
> Table 1: Training data composition and corresponding learning objectives. Each query type is defined in Section 3.2. In the trajectory notation, (2∗N)2𝑁(2*N)( 2 ∗ italic_N ) denotes that state 2 is visited N𝑁Nitalic_N consecutive times (e.g., 2→2→2→22→22\to 2\to 22 → 2 → 2 for N=3𝑁3N=3italic_N = 3), where N𝑁Nitalic_N represents the number of total unknown required fields. M𝑀Mitalic_M denotes the size of a subset of total unknown required fields (N>M>1𝑁𝑀1N>M>1italic_N > italic_M > 1). In the Count column, when both difficulty levels are included, values are presented as 'number of Easy examples/number of Hard examples'
> </details>





### In-depth insights


#### DiaTool-DPO
DiaTool-DPO centers around **improving tool-augmented language models (TA-LLMs)**, with a focus on dialogue capabilities. It introduces a novel method using **Direct Preference Optimization** to address challenges like incomplete queries. A key idea is modeling TA-LLM interactions as a **Markov Decision Process** with distinct dialogue states and query categorization based on transition trajectories. Paired trajectory datasets of correct and incorrect dialogue flows are automatically constructed. The effort includes a specialized objective loss function for dialogue control. Evaluations show the approach improves performance on tasks like information gathering and tool call rejection, suggesting a method to handle diverse scenarios without expert demonstrations. The **DiaTool-DPO dataset and algorithm** enhance conversational abilities by controlling dialogue flow through contrasts between chosen and rejected trajectories.

#### TA-LLMs States
**TA-LLMs internal states are formulated as Markov Decision Process(MDP)**. There are 5 internal states defined in this work. The **TA-LLMs move from initial state to tool selected with complete slots, and finally complete the task**. The states are traversed based on the query type as not all states are visited in every interaction. The initial state starts without any context, whereas complete occurs after receiving output. There also exists some intermediate states such as tool selected without complete slots, and wait for tool response.

#### Data Creation
The paper introduces a novel data creation methodology for training tool-augmented language models using Direct Preference Optimization. They construct the DiaTool-DPO dataset, which consists of paired trajectories of correct and incorrect dialogue flows. **A key aspect is the automatic generation of rejected trajectories by pairing user queries with mismatched conversation trajectories.**  The dataset is designed to improve the model's ability to handle incomplete queries and out-of-scope requests by learning which conversation flow to choose in specific situations, rather than relying solely on expert trajectories. **The data is stratified by difficulty, with Easy and Hard subsets targeting different aspects of conversational abilities.** The process involves modifying existing dialogues and creating new ones to reflect various types of interactions, including those requiring slot-filling and tool call rejection.

#### Objective Loss
The objective loss function, denoted as L_align, is designed to optimize the alignment between a reference model (π_ref) and a trained model (π_θ) using Direct Preference Optimization (DPO). **It aims to control the conversation flow in TA-LLMs.** This loss function is formulated based on paired trajectories, contrasting chosen trajectories (T_c) with rejected trajectories (T_r), weighted by β(t,T_c) and β(t,T_r).  Key innovations include the normalization term ψ(T) which accounts for disparities in turn counts between chosen and rejected trajectories, addressing the inherent bias towards longer chosen rewards in slot-filling scenarios and larger rejected rewards for relevant cases. Additionally, a reward gap margin subtraction strategy using the arbitrary margin p, seeks to more effectively facilitate the learning by focusing more on the harder examples. **The objective function provides a structured way to tune TA-LLMs, balancing preferences for different dialogue management strategies by considering trajectory data.**

#### Ablation Study
The ablation study meticulously examines the impact of each component in DiaTool-DPO on performance metrics. **Removing individual components reveals their specific contributions to the overall system performance.** The study contrasts DiaTool-DPO with SFT models, demonstrating the benefit of contrastive learning for contextual differences between actions like slot-filling and tool calls. Key findings include that normalization improves slot scores by reducing artificially inflated reward gaps. However, reward scaling shows minimal impact, potentially due to the teacher-forcing evaluation methodology that mitigates error accumulation. Further investigation shows **improved slot performance by combining both easy and hard datasets** and demonstrates the need for pretraining to establish basic LLM tool calling abilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02882/extracted/6322723/figures/subplot_horizontal.png)

> 🔼 This figure displays the effects of three hyperparameters (β, γ, ρ) on the performance of a model.  Each hyperparameter is varied across a range of values, and the resulting performance is measured using six metrics: call accuracy, completion accuracy, slot accuracy, relevance accuracy, micro-averaged score, and macro-averaged score.  Subplots (a), (b), and (c) show the impact of β, γ, and ρ respectively. The results illustrate how adjusting these hyperparameters can affect the model's performance across multiple dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Effects of hyperparameters on model performance metrics. (a) Impact of DPO regularization parameter (β𝛽\betaitalic_β) ranging from 0.1 to 0.5. (b) Impact of reward scaling factor (γ𝛾\gammaitalic_γ) from 0.1 to 0.9. (c) Impact of reward gap margin (ρ𝜌\rhoitalic_ρ) from 0 to 5. All experiments measure six different performance metrics: call accuracy, completion accuracy, slot accuracy, relevance accuracy, and micro/macro-averaged scores.
> </details>



![](https://arxiv.org/html/2504.02882/x2.png)

> 🔼 This figure compares the responses of two different models, SFT-Only and SFT + DiaTool-DPO, to a user query that requires a tool call.  The 'Messages' section displays the conversation between the user and each model. The 'Tools' section shows the available tools and their specifications, including required parameters. The user's query only provides the minimum value for the input range ('min'), while the tool requires both minimum and maximum values ('min' and 'max'). The SFT-Only model ignores the missing 'max' value and proceeds with the tool call using only the provided 'min' value. In contrast, the SFT + DiaTool-DPO model demonstrates more robust behavior by engaging in slot-filling; it asks the user for the missing 'max' value before initiating the tool call.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of responses between SFT-Only and SFT + DiaTool-DPO models. The ‘Messages’ shows the user’s initial query, and ‘Tools’ presents the tool specification required to resolve the user’s query. For brevity, we omit the remaining 4-6 candidate tools in Tools. While the tool specification includes ‘min’ and ‘max’ as required fields, the user only specifies the ‘min’ value in the query. The SFT-Only model proceeds to call the tool using only the min value, whereas SFT + DiaTool-DPO model engages in slot-filling by asking for the missing ‘max’ value.
> </details>



![](https://arxiv.org/html/2504.02882/x3.png)

> 🔼 This figure compares the responses of two models, one trained with only supervised fine-tuning (SFT) and another trained with SFT and the DiaTool-DPO method, to a user query requiring a currency conversion.  The tool requires 'amount', 'from_currency', and 'to_currency' as inputs. The user's query omits the 'amount'.  The SFT-only model incorrectly assumes an amount of 1000, while the SFT + DiaTool-DPO model correctly engages in a slot-filling dialogue to obtain the missing information from the user. This highlights DiaTool-DPO's ability to handle incomplete queries.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of responses between SFT-Only and SFT + DiaTool-DPO models. The ‘Messages’ shows the user’s initial query, and ‘Tools’ presents the tool specification required to resolve the user’s query. For brevity, we omit the remaining 4-6 candidate tools in Tools. While the tool specification lists ‘amount’, ‘from_currency’, and ‘to_currency’ as required fields, the user’s query lacks the ‘amount’ information. The SFT-Only model hallucinates a value of 1,000 for the amount field, whereas the SFT + DiaTool-DPO model engages in slot-filling by asking a question to determine the missing amount value.
> </details>



![](https://arxiv.org/html/2504.02882/x4.png)

> 🔼 This figure compares the responses of two different models, one trained using only supervised fine-tuning (SFT) and another trained using SFT combined with the DiaTool-DPO method.  The user asks to calculate a tip given a bill amount, but omits the necessary tip percentage.  The SFT-only model assumes a 10% tip without asking for clarification, while the SFT + DiaTool-DPO model correctly identifies the missing information and requests the tip percentage from the user, demonstrating the improvement in handling incomplete user queries.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison of responses between SFT-Only and SFT + DiaTool-DPO models. The ‘Messages’ shows the user’s initial query, and ‘Tools’ presents the tool specification required to resolve the user’s query. For brevity, we omit the remaining 4-6 candidate tools in Tools. While the tool specification lists ‘bill_amount’ and ‘tip_percentage’ as required fields, the user’s query does not specify the ‘tip_percentage’. The SFT-Only model generates a comment assuming a 10% tip percentage, whereas the SFT + DiaTool-DPO model generates a slot-filling question to determine the tip percentage value.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1">Difficulty</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T2.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1">Trajectory</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1">Slot</span></th>
<th class="ltx_td ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1">Relevance</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.2.1.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.2.1.1.1">Easy</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.2.1.2">Chosen</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.3">3.05</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.2.1.4">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.3.2.1">Rejected</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.2">2.00</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.3.2.3">N/A</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.4.3.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.4.3.1.1">Hard</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.4.3.2">Chosen</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.3">4.83</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.4.3.4">1.00</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T2.1.5.4.1">Rejected</th>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.2">3.17</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.5.4.3">2.33</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S3.T2.1.6.5.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.6.5.1.1">All</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T2.1.6.5.2">Chosen</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.3">4.11</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T2.1.6.5.4">1.00</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T2.1.7.6.1">Rejected</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.2">2.80</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.3">2.33</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the length of dialogue turns (i.e., exchanges between the user and the TA-LLM) in the DiaTool-DPO dataset.  It compares the average number of turns for both *chosen* (successful) and *rejected* (unsuccessful) conversation trajectories across different difficulty levels (Easy and Hard).  The 'Chosen' trajectories represent ideal, expert-demonstrated conversation flows, while 'Rejected' trajectories showcase suboptimal or incorrect interactions. The analysis is broken down by whether the trajectories are chosen or rejected. Note that relevance metrics are only meaningful and applicable for the harder difficulty levels (Hard and All) because simpler conversations usually lack relevant rejection cases.
> <details>
> <summary>read the caption</summary>
> Table 2: Average number of turns for chosen and rejected trajectories across different difficulty levels. Note that relevance metrics are only applicable for Hard and All difficulty samples.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.7">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T3.7.8.1.1"><span class="ltx_text ltx_font_bold" id="S5.T3.7.8.1.1.1">Description</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.8.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.7.8.1.2.1">Call</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.8.1.3"><span class="ltx_text ltx_font_bold" id="S5.T3.7.8.1.3.1">Completion</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.8.1.4"><span class="ltx_text ltx_font_bold" id="S5.T3.7.8.1.4.1">Slot</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.8.1.5"><span class="ltx_text ltx_font_bold" id="S5.T3.7.8.1.5.1">Relevance</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.8.1.6"><span class="ltx_text ltx_font_bold" id="S5.T3.7.8.1.6.1">Micro Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.7.8.1.7"><span class="ltx_text ltx_font_bold" id="S5.T3.7.8.1.7.1">Macro Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.7.9.2.1">SFT-only</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.9.2.2">0.843</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.9.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.7.9.2.3.1">0.957</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.9.2.4">0.639</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.9.2.5">0.826</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.9.2.6">0.844</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.9.2.7">0.816</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.10.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.7.10.3.1">SFT w/ preferred responses</th>
<td class="ltx_td ltx_align_center" id="S5.T3.7.10.3.2">0.457</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.10.3.3">0.900</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.10.3.4">0.806</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.10.3.5">0.913</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.10.3.6">0.725</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.10.3.7">0.769</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.3.3">DiaTool-DPO w/o {<math alttext="\phi" class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><mi id="S5.T3.1.1.1.m1.1.1" xref="S5.T3.1.1.1.m1.1.1.cmml">ϕ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1">italic-ϕ</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">\phi</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">italic_ϕ</annotation></semantics></math>, <math alttext="\psi" class="ltx_Math" display="inline" id="S5.T3.2.2.2.m2.1"><semantics id="S5.T3.2.2.2.m2.1a"><mi id="S5.T3.2.2.2.m2.1.1" xref="S5.T3.2.2.2.m2.1.1.cmml">ψ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.m2.1b"><ci id="S5.T3.2.2.2.m2.1.1.cmml" xref="S5.T3.2.2.2.m2.1.1">𝜓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.m2.1c">\psi</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.m2.1d">italic_ψ</annotation></semantics></math>, <math alttext="\rho" class="ltx_Math" display="inline" id="S5.T3.3.3.3.m3.1"><semantics id="S5.T3.3.3.3.m3.1a"><mi id="S5.T3.3.3.3.m3.1.1" xref="S5.T3.3.3.3.m3.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.m3.1b"><ci id="S5.T3.3.3.3.m3.1.1.cmml" xref="S5.T3.3.3.3.m3.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.m3.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.m3.1d">italic_ρ</annotation></semantics></math>}</th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.4">0.857</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.5">0.943</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.6">0.806</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.7">0.870</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.8">0.879</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.9">0.869</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.2">DiaTool-DPO w/o {<math alttext="\psi" class="ltx_Math" display="inline" id="S5.T3.4.4.1.m1.1"><semantics id="S5.T3.4.4.1.m1.1a"><mi id="S5.T3.4.4.1.m1.1.1" xref="S5.T3.4.4.1.m1.1.1.cmml">ψ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.1.m1.1b"><ci id="S5.T3.4.4.1.m1.1.1.cmml" xref="S5.T3.4.4.1.m1.1.1">𝜓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.1.m1.1c">\psi</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.1.m1.1d">italic_ψ</annotation></semantics></math> <math alttext="\rho" class="ltx_Math" display="inline" id="S5.T3.5.5.2.m2.1"><semantics id="S5.T3.5.5.2.m2.1a"><mi id="S5.T3.5.5.2.m2.1.1" xref="S5.T3.5.5.2.m2.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.2.m2.1b"><ci id="S5.T3.5.5.2.m2.1.1.cmml" xref="S5.T3.5.5.2.m2.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.2.m2.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.2.m2.1d">italic_ρ</annotation></semantics></math>}</th>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.3">0.857</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.4">0.943</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.5">0.778</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.6">0.870</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.7">0.874</td>
<td class="ltx_td ltx_align_center" id="S5.T3.5.5.8">0.862</td>
</tr>
<tr class="ltx_tr" id="S5.T3.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.6.6.1">DiaTool-DPO w/o <math alttext="\rho" class="ltx_Math" display="inline" id="S5.T3.6.6.1.m1.1"><semantics id="S5.T3.6.6.1.m1.1a"><mi id="S5.T3.6.6.1.m1.1.1" xref="S5.T3.6.6.1.m1.1.1.cmml">ρ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.1.m1.1b"><ci id="S5.T3.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.1.m1.1.1">𝜌</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.1.m1.1c">\rho</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.1.m1.1d">italic_ρ</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.2">0.843</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.3">0.929</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.4">0.833</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.5">0.870</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.6">0.874</td>
<td class="ltx_td ltx_align_center" id="S5.T3.6.6.7">0.869</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.7.7.1">DiaTool-DPO w/o <math alttext="\psi" class="ltx_Math" display="inline" id="S5.T3.7.7.1.m1.1"><semantics id="S5.T3.7.7.1.m1.1a"><mi id="S5.T3.7.7.1.m1.1.1" xref="S5.T3.7.7.1.m1.1.1.cmml">ψ</mi><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.1.m1.1b"><ci id="S5.T3.7.7.1.m1.1.1.cmml" xref="S5.T3.7.7.1.m1.1.1">𝜓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.1.m1.1c">\psi</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.1.m1.1d">italic_ψ</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.2"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.2.1">0.886</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.3"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.3.1">0.957</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.4">0.778</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.5"><span class="ltx_text ltx_font_bold" id="S5.T3.7.7.5.1">0.913</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.6">0.894</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.7.7">0.883</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.11.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.7.11.4.1">DiaTool-DPO (Ours)</th>
<td class="ltx_td ltx_align_center" id="S5.T3.7.11.4.2">0.857</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.11.4.3">0.929</td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.11.4.4"><span class="ltx_text ltx_font_bold" id="S5.T3.7.11.4.4.1">0.917</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.11.4.5"><span class="ltx_text ltx_font_bold" id="S5.T3.7.11.4.5.1">0.913</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.11.4.6"><span class="ltx_text ltx_font_bold" id="S5.T3.7.11.4.6.1">0.905</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.7.11.4.7"><span class="ltx_text ltx_font_bold" id="S5.T3.7.11.4.7.1">0.904</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.12.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.7.12.5.1">GPT-4o-mini-2024-07-18</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.12.5.2"><span class="ltx_text ltx_font_bold" id="S5.T3.7.12.5.2.1">0.929</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.12.5.3"><span class="ltx_text ltx_font_bold" id="S5.T3.7.12.5.3.1">0.971</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.12.5.4"><span class="ltx_text ltx_font_bold" id="S5.T3.7.12.5.4.1">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.12.5.5">0.739</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.12.5.6">0.920</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.7.12.5.7">0.903</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.13.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.7.13.6.1">GPT-4o-2024-08-06</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.13.6.2">0.914</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.13.6.3">0.926</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.13.6.4"><span class="ltx_text ltx_font_bold" id="S5.T3.7.13.6.4.1">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.13.6.5"><span class="ltx_text ltx_font_bold" id="S5.T3.7.13.6.5.1">1.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.13.6.6"><span class="ltx_text ltx_font_bold" id="S5.T3.7.13.6.6.1">0.925</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.7.13.6.7"><span class="ltx_text ltx_font_bold" id="S5.T3.7.13.6.7.1">0.953</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing various configurations of the DiaTool-DPO model against a baseline model trained only with supervised fine-tuning (SFT).  It shows the impact of different components of the DiaTool-DPO training objective function on several metrics, including call accuracy, completion accuracy, slot accuracy, relevance accuracy, and micro/macro-averaged scores.  Specifically, it demonstrates the effect of removing reward scaling, total turn-length normalization, and the reward gap threshold, individually and in combination.  The results are compared against the performance of GPT-4 models to provide a benchmark.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study results of DiaTool-DPO comparing different model variants. “SFT-only” represents the model before DPO training, and “SFT w/ preferred responses” indicates training with only chosen responses from the DPO dataset. We systematically remove key components (ϕitalic-ϕ\phiitalic_ϕ: reward scaling, ψ𝜓\psiitalic_ψ: total turn-length normalization, ρ𝜌\rhoitalic_ρ: reward gap threshold) from our full model to analyze their individual contributions. GPT-4 models are included as reference points.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.1.1">Dataset Difficulty</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.2.1">Call</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.3.1">Completion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.4.1">Slot</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.5.1">relevance</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.6.1">Micro Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T4.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S6.T4.1.1.1.7.1">Macro Avg.</span></th>
</tr>
<tr class="ltx_tr" id="S6.T4.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S6.T4.1.2.2.1">Baseline</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.2.2.2">0.843</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.2.2.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.2.2.3.1">0.957</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.2.2.4">0.639</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.2.2.5">0.826</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.2.2.6">0.844</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S6.T4.1.2.2.7">0.816</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T4.1.3.1.1">Easy</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.3.1.2.1">0.871</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.3.1.3">0.943</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.3.1.4">0.778</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.3.1.5"><span class="ltx_text ltx_font_bold" id="S6.T4.1.3.1.5.1">0.913</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.3.1.6">0.850</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T4.1.3.1.7">0.876</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T4.1.4.2.1">Hard</th>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.2.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.4.2.2.1">0.871</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.2.3"><span class="ltx_text ltx_font_bold" id="S6.T4.1.4.2.3.1">0.957</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.2.4">0.778</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.2.5"><span class="ltx_text ltx_font_bold" id="S6.T4.1.4.2.5.1">0.913</span></td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.2.6">0.840</td>
<td class="ltx_td ltx_align_center" id="S6.T4.1.4.2.7">0.880</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T4.1.5.3.1">All</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.5.3.2">0.857</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.5.3.3">0.929</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.5.3.4"><span class="ltx_text ltx_font_bold" id="S6.T4.1.5.3.4.1">0.917</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.5.3.5"><span class="ltx_text ltx_font_bold" id="S6.T4.1.5.3.5.1">0.913</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.5.3.6"><span class="ltx_text ltx_font_bold" id="S6.T4.1.5.3.6.1">0.905</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T4.1.5.3.7"><span class="ltx_text ltx_font_bold" id="S6.T4.1.5.3.7.1">0.904</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of a language model trained on different datasets.  The datasets vary in difficulty, with 'Easy' representing simpler, less complex conversational scenarios, 'Hard' representing more complex scenarios, and 'All' combining both 'Easy' and 'Hard' datasets. The model's performance is evaluated across four key metrics: tool call accuracy (how often the model correctly uses tools when needed), completion rate (how often the model successfully completes the task using the tool), slot-filling accuracy (how well the model fills the necessary information slots), and relevance scores (how relevant the model's response is to the user's query). All metrics are normalized to a 0-1 scale for easy comparison, with 1 indicating perfect performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Model performance across different training dataset configurations (Baseline, Easy-only, Hard-only, and All). Evaluation metrics include tool call accuracy, completion rate, slot-filling accuracy, and relevance scores, all reported on a scale of 0 to 1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S6.T5.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.2.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.3.1">Call</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.4.1">Completion</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.5.1">Slot</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.6.1">relevance</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.7.1">Micro Avg.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S6.T5.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S6.T5.1.1.1.8.1">Macro Avg.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.1.2.1.1" rowspan="3"><span class="ltx_text" id="S6.T5.1.2.1.1.1">Prop.-8B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.1.2.1.2">DiaTool-DPO-only</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.3">0.314</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.4">0.700</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.2.1.5.1">0.833</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.6">0.609</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.7">0.575</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.2.1.8">0.614</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.3.2.1">SFT-only</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S6.T5.1.3.2.2.1">0.900</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.3">0.916</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.4">0.694</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.3.2.5.1">0.913</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.6">0.870</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.3.2.7">0.856</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.4.3.1">SFT + DiaTool-DPO</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.2">0.886</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S6.T5.1.4.3.3.1">0.929</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.4"><span class="ltx_text ltx_font_bold" id="S6.T5.1.4.3.4.1">0.833</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.5">0.826</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.6"><span class="ltx_text ltx_font_bold" id="S6.T5.1.4.3.6.1">0.884</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.4.3.7"><span class="ltx_text ltx_font_bold" id="S6.T5.1.4.3.7.1">0.868</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.1.5.4.1" rowspan="3"><span class="ltx_text" id="S6.T5.1.5.4.1.1">Prop.-3.1B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.1.5.4.2">DiaTool-DPO-only</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.5.4.3">0.357</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.5.4.4">0.551</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.5.4.5">0.528</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.5.4.6">0.391</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.5.4.7">0.455</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.5.4.8">0.457</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.6.5.1">SFT-only</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.2"><span class="ltx_text ltx_font_bold" id="S6.T5.1.6.5.2.1">0.771</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.3">0.817</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.4">0.750</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.6.5.5.1">0.826</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.6"><span class="ltx_text ltx_font_bold" id="S6.T5.1.6.5.6.1">0.790</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.6.5.7">0.791</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.7.6.1">SFT + DiaTool-DPO</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.2">0.743</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.3"><span class="ltx_text ltx_font_bold" id="S6.T5.1.7.6.3.1">0.871</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S6.T5.1.7.6.4.1">0.833</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.7.6.5.1">0.826</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.6">0.765</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.7.6.7"><span class="ltx_text ltx_font_bold" id="S6.T5.1.7.6.7.1">0.818</span></td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S6.T5.1.8.7.1" rowspan="3"><span class="ltx_text" id="S6.T5.1.8.7.1.1">LLaMA-3-8B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T5.1.8.7.2">DiaTool-DPO-only</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.8.7.3">0.029</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.8.7.4">0.449</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.8.7.5">0.056</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.8.7.6">0.261</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.8.7.7">0.205</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T5.1.8.7.8">0.199</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T5.1.9.8.1">SFT-only</th>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.2">0.843</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.3"><span class="ltx_text ltx_font_bold" id="S6.T5.1.9.8.3.1">0.957</span></td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.4">0.639</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.5">0.826</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.6">0.844</td>
<td class="ltx_td ltx_align_center" id="S6.T5.1.9.8.7">0.816</td>
</tr>
<tr class="ltx_tr" id="S6.T5.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T5.1.10.9.1">SFT + DiaTool-DPO</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.10.9.2"><span class="ltx_text ltx_font_bold" id="S6.T5.1.10.9.2.1">0.857</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.10.9.3">0.929</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.10.9.4"><span class="ltx_text ltx_font_bold" id="S6.T5.1.10.9.4.1">0.917</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.10.9.5"><span class="ltx_text ltx_font_bold" id="S6.T5.1.10.9.5.1">0.913</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.10.9.6"><span class="ltx_text ltx_font_bold" id="S6.T5.1.10.9.6.1">0.905</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T5.1.10.9.7"><span class="ltx_text ltx_font_bold" id="S6.T5.1.10.9.7.1">0.904</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of three different large language models (LLMs) - Proprietary-8B-Instruct, Proprietary-3.1B-Instruct, and Meta-LLaMA-8B-Instruct - across three training methods: DiaTool-DPO-only, SFT-only, and SFT followed by DiaTool-DPO.  The results show the impact of adding DiaTool-DPO training on top of standard supervised fine-tuning (SFT).  The metrics evaluated include call accuracy, completion accuracy, slot-filling accuracy, relevance, micro-average, and macro-average.  This allows for a comprehensive analysis of how the different LLMs and training methods affect the various aspects of tool-augmented language model performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison across different base models and training methods. Results show the impact of DiaTool-DPO training on Proprietary-8B-Instruct, Proprietary-3.1B-Instruct, and Meta-LLaMA-8B-Instruct models. For each model, we compare DiaTool-DPO-only, SFT-only, and SFT followed by DiaTool-DPO.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T6.1.1.1.1" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1" style="width:411.9pt;">In the first dialogue turn of source sample, the user provides all the information to extract the ‘required’ field of corresponding function.
Thus, in the second dialogue turn of source sample, the assistant had all the argument information to call the ‘calculate_tip’ function in tool_calls.
If the user had uttered the utterance in the first turn such that there was missing information about any argument in the ‘required’ fields, the conversation scenario would have been the same as the target sample.
In other words, a couple of more dialogue turns must have been made between the user and assistant to clarify the missing arguments to make the tool call with the ‘required’ arguments filled.
Note that only ‘required’ fields in the function definition needs to be asked. Other arguments are optional and assistant must not ask about optional arguments.
For the following input sample,</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.2.1.1">
<span class="ltx_p" id="A2.T6.1.2.2.1.1.1" style="width:411.9pt;">1. Modify the user utterance in the first dialogue turn so that there is not enough information about one or more arguments among the ‘required’ fields.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.3.1.1">
<span class="ltx_p" id="A2.T6.1.3.3.1.1.1" style="width:411.9pt;">2. Generate following assistant question and user answer utterances accordingly.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.4.1.1">
<span class="ltx_p" id="A2.T6.1.4.4.1.1.1" style="width:411.9pt;">3. Your answer MUST be in strict JSON format.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.5.5.1.1">
<span class="ltx_p" id="A2.T6.1.5.5.1.1.1" style="width:411.9pt;">4. As you can see from the example target sample, generate only “messages” part, not, “tools” part.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.6.6.1.1">
<span class="ltx_p" id="A2.T6.1.6.6.1.1.1" style="width:411.9pt;">5. The generated conversation MUST be in Korean</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.7.7.1" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.7.7.1.1">
<span class="ltx_p" id="A2.T6.1.7.7.1.1.1" style="width:411.9pt;">6. Do not change any detail of the conversation if not mentioned otherwise</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T6.1.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.8.8.1.1">
<span class="ltx_p" id="A2.T6.1.8.8.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T6.1.8.8.1.1.1.1">### Source sample</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.9.9">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T6.1.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.9.9.1.1">
<span class="ltx_p" id="A2.T6.1.9.9.1.1.1" style="width:411.9pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A2.T6.1.9.9.1.1.1.1" style="width:411.9pt;"><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T6.1.9.9.1.1.1.1.1">
{
  "messages": [
    {
      "role": "user",
      "content": "Hi, I need to calculate my BMI. I weigh 70 kg and my height is 1.75 m."
    },
    {
      "role": "assistant",
      "content": "Sure, I can help you with that. Let’s calculate your BMI.",
      "tool_calls": [
        {
          "id": null,
          "type": "function",
          "function": {
            "name": "calculate_bmi",
            "arguments": "{\"weight\": 70, \"height\": 1.75}"
          }
        }
      ]
    }</pre>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used for generating Type 2 data from Type 1 data in the DiaTool-DPO Easy subset.  The goal is to augment the dataset by creating examples where the user's initial request lacks sufficient information, requiring the assistant to ask clarifying questions (slot filling) before executing the tool call.  The prompt instructs a large language model to modify a given Type 1 conversation to introduce missing argument information in the user's initial query, then to generate the subsequent dialogue turns simulating the assistant's slot-filling questions and the user's responses.  The final response must be in JSON format, following specific guidelines for message structure and content.
> <details>
> <summary>read the caption</summary>
> Table 6: The prompt for Type 1 to Type 2 data augmentation in DiaTool-DPO Easy subset (Part 1).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T7.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A2.T7.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1.1">
<span class="ltx_p" id="A2.T7.1.1.1.1.1.1" style="width:411.9pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A2.T7.1.1.1.1.1.1.1" style="width:411.9pt;"><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T7.1.1.1.1.1.1.1.1">
    {
      "role": "tool",
      "content": "{\"bmi\": 22.86}",
      "tool_call_id": null,
      "name": "calculate_bmi"
    },
    {
      "role": "assistant",
      "content": "Your Body Mass Index (BMI) is 22.86. This is considered a healthy weight
                  for your height."
    }
  ],
  "tools": [
    {
      "type": "function",
      "function": {
        "name": "calculate_bmi",
        "description": "Calculate the Body Mass Index (BMI)",
        "parameters": {
          "type": "object",
          "required": ["weight", "height"],
          "properties": [
            {
              "type": "number",
              "description": "The weight in kilograms"
            },
            {
              "type": "number",
              "description": "The height in meters"
            }
          ]
        }
      }
    }
  ]
}</pre>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the prompt used to instruct a large language model (LLM) to convert Type 1 conversation examples into Type 2 examples within the DiaTool-DPO Easy dataset.  Type 1 conversations contain all necessary information for a tool call in the initial user query, while Type 2 conversations require slot filling before making a tool call. This prompt guides the LLM to modify existing Type 1 conversations by removing necessary information from the initial user query, generating subsequent turns to gather missing information (slot-filling), and producing complete, correct conversations that align with Type 2 characteristics.  The prompt is designed to create a balanced and representative dataset for training the DiaTool-DPO model.
> <details>
> <summary>read the caption</summary>
> Table 7: The prompt for Type 1 to Type 2 data augmentation in DiaTool-DPO Easy subset (Part 2).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T8.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T8.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1.1">
<span class="ltx_p" id="A2.T8.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.1.1.1.1.1">### Target sample</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T8.1.2.2.1" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.2.2.1.1">
<span class="ltx_p" id="A2.T8.1.2.2.1.1.1" style="width:411.9pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A2.T8.1.2.2.1.1.1.1" style="width:411.9pt;"><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T8.1.2.2.1.1.1.1.1">
{
  "messages": [
    {
      "role": "user",
      "content": "Hi, I need to calculate my BMI. My height is 1.75 m."
    },
    {
      "role": "assistant",
      "content": "How much do you weigh?"
    },
    {
      "role": "user",
      "content": "I weigh 70 kg."
    },
    {
      "role": "assistant",
      "content": "Sure, I can help you with that. Let’s calculate your BMI.",
      "tool_calls": [
        {
          "id": null,
          "type": "function",
          "function": {
            "name": "calculate_bmi",
            "arguments": "{\"weight\": 70, \"height\": 1.75}"
          }
        }
      ]
    },
    {
      "role": "tool",
      "content": "{\"bmi\": 22.86}",
      "tool_call_id": null,
      "name": "calculate_bmi"
    },
    {
      "role": "assistant",
      "content": "Your Body Mass Index (BMI) is 22.86. This is considered a healthy weight
                  for your height."
    }
  ]
}</pre>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T8.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.3.3.1.1">
<span class="ltx_p" id="A2.T8.1.3.3.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.1.3.3.1.1.1.1">### Source sample</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used for data augmentation in the DiaTool-DPO Easy subset (Part 3).  Specifically, it shows a source conversation example (Type 1) where the user provides complete information for a tool call in their initial message, and the target conversation (Type 2) where the user's initial message lacks some required information, necessitating follow-up questions from the assistant to gather the missing details before making the tool call.  The goal is to create training data pairs of complete and incomplete conversations, teaching the model how to handle requests that require multiple turns to collect the needed information.
> <details>
> <summary>read the caption</summary>
> Table 8: The prompt for Type 1 to Type 2 data augmentation in DiaTool-DPO Easy subset (Part 3).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T9.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T9.1.1.1.1" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.1.1.1.1">
<span class="ltx_p" id="A2.T9.1.1.1.1.1.1" style="width:411.9pt;">You are an AI tasked with transforming conversations between a tool-augmented LLM assistant and a user that lack slot-filling conversations (Source) into conversations that include slot-filling conversations (Target).</span>
<span class="ltx_p" id="A2.T9.1.1.1.1.1.2">To understand what slot-filling conversation is, you need to know the following rule for tool-augmented LLMs:
"If the user hasn’t mentioned any of the required fields for a corresponding function in the first turn of conversation, the assistant must ask questions to determine all required field values before calling the function. It is prohibited to call the function by arbitrarily filling in required fields or calling the function with empty required fields without discovering all required fields."</span>
<span class="ltx_p" id="A2.T9.1.1.1.1.1.3">A slot-filling question is a question that the assistant asks the user to determine all required fields for a function in a tool-augmented LLM.
The user’s answer to this question is called a slot-filling answer.
And together, slot-filling questions and answers are called slot-filling conversation.</span>
<span class="ltx_p" id="A2.T9.1.1.1.1.1.4">When we say slot-filling conversation is unnecessary in the Source, it specifically means that in the first turn of the Source conversation, the user provided all required fields for the function, allowing the assistant to immediately call the appropriate function in the second turn.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.2.2.1" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.2.2.1.1">
<span class="ltx_p" id="A2.T9.1.2.2.1.1.1" style="width:411.9pt;">You must generate Target conversations, so please thoroughly understand all the following rules.
Generate your response in strict JSON format.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.3.3.1.1">
<span class="ltx_p" id="A2.T9.1.3.3.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.3.3.1.1.1.1">Rules</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.4.4.1.1">
<span class="ltx_p" id="A2.T9.1.4.4.1.1.1" style="width:411.9pt;">1. In the first conversation turn, the user makes a request to the assistant without including any information about required fields.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.5.5.1.1">
<span class="ltx_p" id="A2.T9.1.5.5.1.1.1" style="width:411.9pt;">2. In the second turn, since there are 3 required field arguments but the user’s first turn contained 0 arguments, the assistant asks questions about 3-0=3 arguments in the order they appear in the required fields.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.6.6.1.1">
<span class="ltx_p" id="A2.T9.1.6.6.1.1.1" style="width:411.9pt;">3. In the third turn, the user randomly answers only 1 out of the 3 questions asked by the assistant.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.7.7.1.1">
<span class="ltx_p" id="A2.T9.1.7.7.1.1.1" style="width:411.9pt;">4. In the fourth turn, the assistant asks about the remaining 2 required fields.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.8.8.1.1">
<span class="ltx_p" id="A2.T9.1.8.8.1.1.1" style="width:411.9pt;">5. In the fifth turn, the user randomly answers only 1 out of the 2 questions asked by the assistant.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.9.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.9.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.9.9.1.1">
<span class="ltx_p" id="A2.T9.1.9.9.1.1.1" style="width:411.9pt;">6. In the sixth turn, the assistant asks about the remaining 1 question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.10.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.10.10.1" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.10.10.1.1">
<span class="ltx_p" id="A2.T9.1.10.10.1.1.1" style="width:411.9pt;">7. In the seventh turn, the user answers this final question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.11.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.11.11.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.11.11.1.1">
<span class="ltx_p" id="A2.T9.1.11.11.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.11.11.1.1.1.1">#### Example</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.12.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T9.1.12.12.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.12.12.1.1">
<span class="ltx_p" id="A2.T9.1.12.12.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T9.1.12.12.1.1.1.1"># Source</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.13.13">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T9.1.13.13.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.13.13.1.1">
<span class="ltx_p" id="A2.T9.1.13.13.1.1.1" style="width:411.9pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A2.T9.1.13.13.1.1.1.1" style="width:411.9pt;"><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T9.1.13.13.1.1.1.1.1">
{
  "messages": [
    {
      "role": "user",
      "content": "Hi, please translate this French sentence into English.
      \"Je suis vraiment heureux de te rencontrer\""
    },
    {
      "role": "assistant",
      "content": "Translation begins.",
      "tool_calls": [
        {
          "id": null,
          "type": "function",
          "function": {
            "name": "translate_text",
            "arguments": "{\"text\": \"Je suis vraiment heureux de te rencontrer\",
            \"source_language\": \"French\",
            \"target_language\": \"English\"}"
          }
        }
      ]
    },</pre>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This prompt instructs a large language model (LLM) to convert a dialogue where a user requests translation without specifying all necessary details (source) into a dialogue with slot-filling (target). The goal is to create training data for a tool-augmented LLM by showing examples of how to appropriately ask for missing information before making a tool call.  The prompt outlines the rules the LLM must follow for creating the target dialogue, emphasizing the necessity of slot-filling questions and answers to complete required information before calling the translation function. It provides a source example and indicates that the target output should be in JSON format.
> <details>
> <summary>read the caption</summary>
> Table 9: The prompt for Type 1 to Type 2 data augmentation in DiaTool-DPO Hard subset (Part 1).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T10.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_t" id="A2.T10.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T10.1.1.1.1.1">
<span class="ltx_p" id="A2.T10.1.1.1.1.1.1" style="width:411.9pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A2.T10.1.1.1.1.1.1.1" style="width:411.9pt;"><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T10.1.1.1.1.1.1.1.1">
    {
      "role": "tool",
      "content": "{\"translated_text\": \"I’m really happy to meet you\"}",
      "tool_call_id": null,
      "name": "translate_text"
    },
    {
      "role": "assistant",
      "content": "\"Je suis vraiment heureux de te rencontrer\" translates into
                  \"I’m really happy to meet you\"
      in English",
      "tool_calls": null
    }
  ],
  "tools": [
    {
      "type": "function",
      "function": {
        "name": "translate_text",
        "description": "Text translation from one language to another.",
        "parameters": {
          "type": "object",
          "required": [
            "text",
            "source_language",
            "target_language"
          ],
          "properties": {
            "text": {
              "type": "string",
              "description": "Text to translate"
            },
            "source_language": {
              "type": "string",
              "description": "Source langauge of the text"
            },
            "target_language": {
              "type": "string",
              "description": "Target language to translate into"
            }
          }
        }
      }
    }
  ]
}</pre>
</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This prompt instructs a large language model to convert a dialogue example from a single-turn interaction (Type 1) to a multi-turn interaction (Type 2) by simulating a scenario where the user initially omits some required information for a function call. The model should generate dialogue turns where the assistant asks clarifying questions about the missing information before making the tool call, following a specific pattern defined in the prompt. The output should be in JSON format, conforming to the structure of the original examples in the dataset. The goal is to augment the training data by creating pairs of similar dialogues with and without slot-filling interactions, thus improving the model's ability to handle incomplete user requests.
> <details>
> <summary>read the caption</summary>
> Table 10: The prompt for Type 1 to Type 2 data augmentation in DiaTool-DPO Hard subset (Part 2).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T11.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T11.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T11.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T11.1.1.1.1.1">
<span class="ltx_p" id="A2.T11.1.1.1.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.1.1.1.1.1.1.1"># Target</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T11.1.2.2.1" style="padding-bottom:4.30554pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T11.1.2.2.1.1">
<span class="ltx_p" id="A2.T11.1.2.2.1.1.1" style="width:411.9pt;">
<span class="ltx_inline-block ltx_minipage ltx_align_middle" id="A2.T11.1.2.2.1.1.1.1" style="width:411.9pt;"><pre class="ltx_verbatim ltx_font_typewriter" id="A2.T11.1.2.2.1.1.1.1.1">
{
  "messages": [
    {
      "role": "user",
      "content": "Hi, I have something to translate."
    },
    {
      "role": "assistant",
      "content": "Please tell me the sentence you want to translate, the source language,
                  and the target language."
    },
    {
      "role": "user",
      "content": "Translate this into English"
    },
    {
      "role": "assistant",
      "content": "Please tell me the sentence you want to translate and the source language."
    },
    {
      "role": "user",
      "content": "The sentence is \"Je suis vraiment heureux de te rencontrer\"."
    },
    {
      "role": "assistant",
      "content": "Please tell me the source language."
    },
    {
      "role": "user",
      "content": "The source language is French."
    },
    {
      "role": "assistant",
      "content": "Let’s start translating.",
      "tool_calls": [
        {
          "id": null,
          "type": "function",
          "function": {
            "name": "translate_text",
            "arguments": "{\"text\": \"Je suis vraiment heureux de te rencontrer\",
                           \"source_language\": \"French\",
                           \"target_language\": \"English\"}"
          }
        }
      ]
    },
    {
      "role": "tool",
      "content": "{\"translated_text\": \"I’m really happy to meet you\"}",
      "tool_call_id": null,
      "name": "translate_text"
    },
    {
      "role": "assistant",
      "content": "\"Je suis vraiment heureux de te rencontrer\" translates into
                  \"I’m really happy to meet you\" in English",
      "tool_calls": null
    }
  ]
}</pre>
</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T11.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b" id="A2.T11.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T11.1.3.3.1.1">
<span class="ltx_p" id="A2.T11.1.3.3.1.1.1" style="width:411.9pt;"><span class="ltx_text ltx_font_bold" id="A2.T11.1.3.3.1.1.1.1"># Source</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the prompt used to generate a Type 2 dataset from a Type 1 dataset for the DiaTool-DPO Hard subset (Part 3).  The prompt instructs a large language model to transform a conversation where the user provides all necessary information in the first turn into a multi-turn conversation involving slot-filling.  Specifically, the model needs to modify the initial user query to omit essential information, then generate subsequent turns where the assistant asks clarifying questions about the missing information and the user answers, creating a more realistic multi-turn dialogue scenario for training the DiaTool-DPO model. The target conversation is also provided as an example.
> <details>
> <summary>read the caption</summary>
> Table 11: The prompt for Type 1 to Type 2 data augmentation in DiaTool-DPO Hard subset (Part 3).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T12.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T12.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A3.T12.1.1.1.1">Stage</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A3.T12.1.1.1.2">Dataset Name</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.1.1.1.3">Train Set Size</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.1.1.1.4">Language</td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T12.1.2.2.1" rowspan="3"><span class="ltx_text" id="A3.T12.1.2.2.1.1">CPT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T12.1.2.2.2">glaive2.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.3">110K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.2.2.4">English</td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T12.1.3.3.1">xlam-function-calling-60k</th>
<td class="ltx_td ltx_align_center" id="A3.T12.1.3.3.2">60K</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.3.3.3">English</td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T12.1.4.4.1">schema_guided_dstc8</th>
<td class="ltx_td ltx_align_center" id="A3.T12.1.4.4.2">16K</td>
<td class="ltx_td ltx_align_center" id="A3.T12.1.4.4.3">English</td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="A3.T12.1.5.5.1" rowspan="2"><span class="ltx_text" id="A3.T12.1.5.5.1.1">SFT</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T12.1.5.5.2">glaive2.0</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.5.5.3">47K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.1.5.5.4">Korean</td>
</tr>
<tr class="ltx_tr" id="A3.T12.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A3.T12.1.6.6.1">schema_guided_dstc8</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.1.6.6.2">16K</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.1.6.6.3">Korean</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the datasets used in the training process of the model, broken down by stage.  The initial stage, Continual Pretraining (CPT), uses English datasets for training. The subsequent stage, Supervised Fine-Tuning (SFT), utilizes Korean datasets.  The table indicates the name of each dataset, the size of the training set in thousands of examples (K), and the language used. This distinction highlights the different language focus in the two training stages.
> <details>
> <summary>read the caption</summary>
> Table 12: Training datasets used in each stage. English datasets are employed for CPT while Korean datasets are used for SFT. Dataset sizes are reported in thousands (K) of examples.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02882/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02882/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}