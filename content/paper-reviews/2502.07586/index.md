---
title: "We Can't Understand AI Using our Existing Vocabulary"
summary: "To understand AI, we need new words! This paper argues that developing neologisms—new words for human & machine concepts—is key to bridging the communication gap and achieving better AI control."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Google DeepMind",]
showSummary: true
date: 2025-02-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.07586 {{< /keyword >}}
{{< keyword icon="writer" >}} John Hewitt et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.07586" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.07586" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.07586/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current AI interpretability research often struggles with the inherent differences in how humans and machines conceptualize the world.  This leads to difficulties in communicating human intentions to AI and understanding AI's internal processes. Existing methods often fail to address issues like confirmation bias and struggle to find the right level of abstraction when explaining AI's behavior. The paper proposes using neologisms, which are newly coined words to represent concepts, to improve human-machine communication.  This addresses the limitations of using existing words that may not precisely capture the nuances of both human and machine concepts. By creating a shared vocabulary, researchers can more effectively communicate instructions to AI, analyze its behavior, and understand the underlying reasoning behind its actions.

The paper proposes a novel method called "neologism embedding learning" where new word embeddings are trained using preference data from human evaluators. This approach allows for the incorporation of both human and machine concepts into a shared language. The research provides a proof of concept by showing how neologisms, such as "length" and "diversity," can be used to control the length and variability of AI responses, respectively. The study demonstrates a significant improvement in controlling and understanding AI’s behavior when compared to traditional approaches. The method provides a new pathway for future research to better understand and communicate with advanced AI models.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Existing vocabulary is insufficient for understanding AI; we need neologisms. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Neologisms can bridge the communication gap between humans and machines, improving AI interpretability and control. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A proof-of-concept demonstrates the effectiveness of neologism embedding learning in controlling LLM response length and diversity. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it **challenges the existing paradigm** in AI interpretability. By proposing the use of neologisms, it **opens up new avenues for research** focusing on how to better bridge the communication gap between humans and machines, which is critical for developing more reliable, understandable, and controllable AI systems.  It also **addresses crucial challenges** like confirmation bias and abstraction level problems in current approaches. 

------
#### Visual Insights



![](https://arxiv.org/html/2502.07586/x1.png)

> 🔼 The figure illustrates the communication challenges between humans and AI stemming from differing conceptualizations of the world.  Humans and machines possess unique sets of concepts, leading to misinterpretations when using standard human language for communication.  To effectively understand and control AI, the proposed solution involves creating new words (neologisms) that precisely represent both human and machine concepts, facilitating more accurate communication and control.
> <details>
> <summary>read the caption</summary>
> Figure 1: Humans and machines conceptualize the world differently from each other. Mismatches in communication occur, which lead to misunderstandings. To understand and control AI, we must bridge this gap by developing new words corresponding to human and machine concepts, and use these words to control machines.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.2.3.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S5.T1.2.3.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.3.1.1.1">
<span class="ltx_p" id="S5.T1.2.3.1.1.1.1" style="width:213.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.3.1.1.1.1.1" style="font-size:90%;">Gemma responses for </span><span class="ltx_text ltx_font_italic" id="S5.T1.2.3.1.1.1.1.2" style="font-size:90%;">Give me a recipe for tiramisu.</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.1.1.1.1">
<span class="ltx_p" id="S5.T1.1.1.1.1.1" style="width:213.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.1.1.1" style="font-size:90%;">+ Give me a response that is extremely good<math alttext="{}^{m}_{w}" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.1.1.m1.1a"><mmultiscripts id="S5.T1.1.1.1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S5.T1.1.1.1.1.1.1.m1.1.1.2.2" xref="S5.T1.1.1.1.1.1.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S5.T1.1.1.1.1.1.1.m1.1.1a" xref="S5.T1.1.1.1.1.1.1.m1.1.1.cmml"></mprescripts><mi id="S5.T1.1.1.1.1.1.1.m1.1.1.3" xref="S5.T1.1.1.1.1.1.1.m1.1.1.3.cmml">w</mi><mrow id="S5.T1.1.1.1.1.1.1.m1.1.1b" xref="S5.T1.1.1.1.1.1.1.m1.1.1.cmml"></mrow><mrow id="S5.T1.1.1.1.1.1.1.m1.1.1c" xref="S5.T1.1.1.1.1.1.1.m1.1.1.cmml"></mrow><mi id="S5.T1.1.1.1.1.1.1.m1.1.1.2.3" xref="S5.T1.1.1.1.1.1.1.m1.1.1.2.3.cmml">m</mi></mmultiscripts><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.1.1.m1.1b"><apply id="S5.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.1.1.1.1.1.1.m1.1.1">subscript</csymbol><apply id="S5.T1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.1.1.1.1.1.1.m1.1.1.2.1.cmml" xref="S5.T1.1.1.1.1.1.1.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S5.T1.1.1.1.1.1.1.m1.1.1.2.2.cmml" xref="S5.T1.1.1.1.1.1.1.m1.1.1.2.2">absent</csymbol><ci id="S5.T1.1.1.1.1.1.1.m1.1.1.2.3.cmml" xref="S5.T1.1.1.1.1.1.1.m1.1.1.2.3">𝑚</ci></apply><ci id="S5.T1.1.1.1.1.1.1.m1.1.1.3.cmml" xref="S5.T1.1.1.1.1.1.1.m1.1.1.3">𝑤</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.1.1.m1.1c">{}^{m}_{w}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT italic_m end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT</annotation></semantics></math>.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T1.2.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.4.1.1.1">
<span class="ltx_p" id="S5.T1.2.4.1.1.1.1" style="width:213.4pt;"><span class="ltx_text" id="S5.T1.2.4.1.1.1.1.1" style="font-size:90%;">## Classic Tiramisu Recipe</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.5.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T1.2.5.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.5.2.1.1">
<span class="ltx_p" id="S5.T1.2.5.2.1.1.1" style="width:213.4pt;"><span class="ltx_text" id="S5.T1.2.5.2.1.1.1.1" style="font-size:90%;">Ingredients:*</span></span>
<span class="ltx_p" id="S5.T1.2.5.2.1.1.2"><span class="ltx_text" id="S5.T1.2.5.2.1.1.2.1" style="font-size:90%;">**For the ladyfingers:**</span></span>
<span class="ltx_p" id="S5.T1.2.5.2.1.1.3"><span class="ltx_text" id="S5.T1.2.5.2.1.1.3.1" style="font-size:90%;">- 250g ladyfingers, softened</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.6.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T1.2.6.3.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.6.3.1.1">
<span class="ltx_p" id="S5.T1.2.6.3.1.1.1" style="width:213.4pt;"><span class="ltx_text" id="S5.T1.2.6.3.1.1.1.1" style="font-size:90%;">- 150g caster sugar</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.7.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S5.T1.2.7.4.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.7.4.1.1">
<span class="ltx_p" id="S5.T1.2.7.4.1.1.1" style="width:213.4pt;"><span class="ltx_text" id="S5.T1.2.7.4.1.1.1.1" style="font-size:90%;">- 50ml all-purpose flour
</span><span class="ltx_text" id="S5.T1.2.7.4.1.1.1.2" style="font-size:90%;color:#FF0000;"> […truncated]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.2.1.1">
<span class="ltx_p" id="S5.T1.2.2.1.1.1" style="width:213.4pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.2.2.1.1.1.1" style="font-size:90%;">+ Give me a response that is extremely not good<math alttext="{}^{m}_{w}" class="ltx_Math" display="inline" id="S5.T1.2.2.1.1.1.1.m1.1"><semantics id="S5.T1.2.2.1.1.1.1.m1.1a"><mmultiscripts id="S5.T1.2.2.1.1.1.1.m1.1.1" xref="S5.T1.2.2.1.1.1.1.m1.1.1.cmml"><mi id="S5.T1.2.2.1.1.1.1.m1.1.1.2.2" xref="S5.T1.2.2.1.1.1.1.m1.1.1.2.2.cmml"></mi><mprescripts id="S5.T1.2.2.1.1.1.1.m1.1.1a" xref="S5.T1.2.2.1.1.1.1.m1.1.1.cmml"></mprescripts><mi id="S5.T1.2.2.1.1.1.1.m1.1.1.3" xref="S5.T1.2.2.1.1.1.1.m1.1.1.3.cmml">w</mi><mrow id="S5.T1.2.2.1.1.1.1.m1.1.1b" xref="S5.T1.2.2.1.1.1.1.m1.1.1.cmml"></mrow><mrow id="S5.T1.2.2.1.1.1.1.m1.1.1c" xref="S5.T1.2.2.1.1.1.1.m1.1.1.cmml"></mrow><mi id="S5.T1.2.2.1.1.1.1.m1.1.1.2.3" xref="S5.T1.2.2.1.1.1.1.m1.1.1.2.3.cmml">m</mi></mmultiscripts><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.1.1.1.1.m1.1b"><apply id="S5.T1.2.2.1.1.1.1.m1.1.1.cmml" xref="S5.T1.2.2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.2.2.1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.2.2.1.1.1.1.m1.1.1">subscript</csymbol><apply id="S5.T1.2.2.1.1.1.1.m1.1.1.2.cmml" xref="S5.T1.2.2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.2.2.1.1.1.1.m1.1.1.2.1.cmml" xref="S5.T1.2.2.1.1.1.1.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="S5.T1.2.2.1.1.1.1.m1.1.1.2.2.cmml" xref="S5.T1.2.2.1.1.1.1.m1.1.1.2.2">absent</csymbol><ci id="S5.T1.2.2.1.1.1.1.m1.1.1.2.3.cmml" xref="S5.T1.2.2.1.1.1.1.m1.1.1.2.3">𝑚</ci></apply><ci id="S5.T1.2.2.1.1.1.1.m1.1.1.3.cmml" xref="S5.T1.2.2.1.1.1.1.m1.1.1.3">𝑤</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.1.1.1.1.m1.1c">{}^{m}_{w}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT italic_m end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT</annotation></semantics></math>.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.8.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T1.2.8.5.1">
<span class="ltx_inline-block ltx_align_top" id="S5.T1.2.8.5.1.1">
<span class="ltx_p" id="S5.T1.2.8.5.1.1.1" style="width:213.4pt;"><span class="ltx_text" id="S5.T1.2.8.5.1.1.1.1" style="font-size:90%;">I am unable to provide recipes that are unsafe or inappropriate. Cooking with hazardous ingredients or recipes that could result in harm is not recommended.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table displays example responses generated by the Gemma language model for the prompt: 'Give me a recipe for tiramisu.'  Two variations of this prompt are shown, each including a neologism (a newly coined word): 'extremely good<sup>m</sup><sub>w</sub>' and 'extremely not good<sup>m</sup><sub>w</sub>'.  These neologisms represent the model's own internal evaluation of response quality, where 'm' denotes machine and 'w' denotes word. Gemma's internal scores for each response type are provided, showing that 'extremely good<sup>m</sup><sub>w</sub>' responses receive an average score of 3.8, while 'extremely not good<sup>m</sup><sub>w</sub>' responses receive an average score of 3.2, illustrating the effectiveness of these neologisms in eliciting desired response qualities from the model.
> <details>
> <summary>read the caption</summary>
> Table 1: Gemma responses for the instruction Give me a recipe for tiramisu and a request for an extremely goodwmsubscriptsuperscriptabsent𝑚𝑤{{}^{m}_{w}}start_FLOATSUPERSCRIPT italic_m end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT or not goodwmsubscriptsuperscriptabsent𝑚𝑤{{}^{m}_{w}}start_FLOATSUPERSCRIPT italic_m end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT response, using Gemma’s response quality neologism. ‘Extremely goodmwsuperscriptsubscriptabsent𝑤𝑚{}_{w}^{m}start_FLOATSUBSCRIPT italic_w end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT italic_m end_POSTSUPERSCRIPT’ responses on average are scored 3.8 by Gemma, whereas ‘Extremely not goodmwsuperscriptsubscriptabsent𝑤𝑚{}_{w}^{m}start_FLOATSUBSCRIPT italic_w end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT italic_m end_POSTSUPERSCRIPT’ are scored 3.2.
> </details>





### In-depth insights


#### AI's Vocabulary Gap
The concept of "AI's Vocabulary Gap" highlights the crucial mismatch between human and artificial intelligence in understanding and representing concepts.  **Humans rely on nuanced, context-rich language**, often implicit and multifaceted, while AI systems operate with numerical representations derived from data.  This discrepancy leads to difficulties in interpreting AI behavior, controlling its actions, and effectively communicating intentions.  **Bridging this gap requires not simply improving AI's capacity to process existing language, but also developing new ways to represent concepts that are readily understandable by both humans and AI.** This might involve creating a shared, simplified vocabulary of neologisms or exploring novel symbolic systems that capture the essential aspects of concepts relevant to interaction.  Successfully addressing this gap is key to building trust and enabling more effective collaboration between humans and AI systems, ultimately fostering a better understanding of AI capabilities and limitations.

#### Neologism Approach
The proposed "Neologism Approach" offers a novel solution to the communication barrier between humans and AI.  It posits that **existing vocabulary is insufficient to bridge the conceptual gap** between how humans and machines understand the world. The core idea is to **introduce new words (neologisms) to represent both human and machine concepts**, creating a shared language that facilitates better understanding and control. This approach tackles the problem of interpretability by framing it as a communication problem rather than a purely technical one.  **Successful neologisms need to strike a balance between abstraction and detail**, being reusable across contexts yet specific enough to convey precise meaning.  The authors argue that by introducing these new terms, we can better control AI systems, avoid confirmation biases, and overcome the challenges of low or high-level abstraction in existing interpretability methods.  The approach suggests that **defining and utilizing neologisms allows for more effective communication and control, ultimately advancing our understanding of AI.**

#### Concept-Based Control
Concept-based control, in the context of AI, proposes a paradigm shift from traditional methods that focus on manipulating low-level parameters to directly influencing high-level concepts.  Instead of tweaking individual neurons or weights, this approach leverages **abstracted concepts** to guide an AI's behavior.  This requires establishing a shared understanding of concepts between humans and the AI.   The paper highlights that developing **new words (neologisms)**, to represent these precise human or AI concepts, is crucial for effective communication and control. The effectiveness of this approach lies in the ability to establish **useful levels of abstraction**, avoiding overly detailed or high-level explanations that hinder both understanding and control.  It enables humans to directly specify desired behaviors by using these newly defined concepts, overcoming the limitations of our existing vocabulary in describing AI functionality.  **This framework promotes greater control by creating a more intuitive, human-friendly interface for influencing AI processes.**  The paper also points out the significant advantage of neologisms in reducing confirmation bias, promoting unbiased evaluations by introducing new terms that avoid preconceived notions and anthropomorphism.

#### Abstraction Challenges
The concept of abstraction presents significant challenges in understanding AI.  **Humans and machines conceptualize the world differently**, leading to a mismatch in how concepts are represented and processed.  Finding the right level of abstraction for effective communication is crucial; too high a level risks oversimplification and loss of valuable information, while too low a level may lead to an overwhelming complexity. The **confirmation bias**, where researchers seek out human-like features, further complicates this by potentially obscuring the unique ways machines process information.  **Bridging this gap requires careful consideration of the balance between detail and usability.** New methods are needed to enable effective communication between humans and AI systems, and these methods must address the differing levels of understanding and the inherent biases that can cloud interpretations.

#### Future Directions
Future research should **focus on refining neologism creation and evaluation methods**.  Developing more sophisticated techniques for identifying and defining concepts that bridge the human-machine gap is crucial.  This includes exploring methods for **measuring the effectiveness of neologisms in improving communication and control**.  Additionally, research should investigate the **scalability and generalizability of neologism-based approaches** to diverse AI systems and domains.  **Integrating neologisms with existing interpretability techniques** like probing and feature attribution warrants further exploration.  Finally, it's important to consider the ethical implications of creating new words and concepts in the context of AI, particularly regarding potential biases or unintended consequences.  The development of a robust framework for responsible neologism creation and usage is essential.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.07586/x2.png)

> 🔼 The figure illustrates the conceptual differences between how humans and machines understand the world.  It highlights that humans and machines possess unique sets of concepts (represented by the overlapping and non-overlapping regions of two circles). The non-overlapping parts represent concepts understood only by humans or only by machines, showcasing the limitations of using human language to fully grasp machine intelligence and the need for a shared language bridging this gap. The areas of overlap indicate shared concepts, but even these can differ subtly between humans and machines. This illustrates the communication challenges in AI interpretability and the necessity for new terminology to address this communication gap.
> <details>
> <summary>read the caption</summary>
> Figure 2: Machine and humans may fundamentally understand the world differently, enabling different concepts, knowledge and capabilities. Figure reproduced from Kim (2022); Schut et al. (2023) with permission.
> </details>



![](https://arxiv.org/html/2502.07586/x3.png)

> 🔼 The figure illustrates the position of concept-based neologisms within the spectrum of AI interpretability methods.  Mechanistic interpretability, focusing on low-level details of the model's internal workings, is shown on one end. On the other end is behavioral testing, which only assesses the model's output without considering the internal processes.  Concept-based neologisms are presented as an intermediate approach that bridges this gap by focusing on high-level concepts and their relationship to both the model's internal mechanisms and its observable behavior.
> <details>
> <summary>read the caption</summary>
> Figure 3: Concept-based neologisms sit in-between mechanistic interpretability (which is closer to mechanistic details) and behavioral experiments/capability benchmarking (which is only concerned with the model’s output, not how it arrived there).
> </details>



![](https://arxiv.org/html/2502.07586/x4.png)

> 🔼 The figure illustrates the neologism embedding learning process.  It shows that only the embeddings of newly introduced words are updated during training, leaving the original model's weights unchanged.  This ensures that when the new words aren't used in prompts, the model generates responses identically to how it would before the introduction of these new words. The core idea is to add new words to the model's vocabulary and learn their embeddings to influence model behavior without altering the original model's core functionality.
> <details>
> <summary>read the caption</summary>
> Figure 4: Our neologism embedding learning only updates new word embedding, preserving the original model’s responses when the new word is not used.
> </details>



![](https://arxiv.org/html/2502.07586/extracted/6195662/figures/length3.png)

> 🔼 The bar chart visualizes the outcome of a controlled experiment.  Two groups of responses from a language model are compared: one group prompted without a newly-defined word (neologism), and one with the neologism included. Both groups were given the same instructions but the neologism-enhanced prompts were specifically designed to control the length of the generated text.  The chart displays the distribution of response lengths, showing that the baseline model (without the neologism) significantly underperforms in generating responses of the target lengths, while the neologism-augmented prompts successfully guide the model to produce responses at the desired length.
> <details>
> <summary>read the caption</summary>
> Figure 5: Base models prompted for length control fail to generate specified long generations (blue), but with a neologism (orange), they consistently generate longer responses.
> </details>



![](https://arxiv.org/html/2502.07586/x5.png)

> 🔼 The figure displays the results of an experiment using a 'diversity neologism' to improve the variety of responses from a language model in a number guessing game.  The x-axis represents the number of samples (guesses), and the y-axis shows the probability of finding the correct number. Multiple lines compare different conditions: a baseline model, a model with the diversity neologism, and a theoretical perfect random guesser. The neologism significantly increases the model's probability of success and reduces the bias observed in the baseline model.
> <details>
> <summary>read the caption</summary>
> Figure 6: Adding a “diversity neologism” diversehwsuperscriptsubscriptabsent𝑤ℎ{}_{w}^{h}start_FLOATSUBSCRIPT italic_w end_FLOATSUBSCRIPT start_POSTSUPERSCRIPT italic_h end_POSTSUPERSCRIPT to a prompt substantially increases a model’s response variety, as exemplified in a number guessing game. The setup is explained in Section 5.4; higher = more response variety (better).
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T2.1.2.1">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T2.1.2.1.1.1" style="font-size:90%;">Instruction: Give me a recipe for tiramisu.</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T2.1.3.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T2.1.3.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.3.1.1.1">
<span class="ltx_p" id="A2.T2.1.3.1.1.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T2.1.3.1.1.1.1.1" style="font-size:90%;">Baseline (Prompted Gemma)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T2.1.3.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.3.1.2.1">
<span class="ltx_p" id="A2.T2.1.3.1.2.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T2.1.3.1.2.1.1.1" style="font-size:90%;">Ours (Length Neologism)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.1.2.1">
<span class="ltx_p" id="A2.T2.1.1.2.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_italic" id="A2.T2.1.1.2.1.1.1" style="font-size:90%;">Ensure that the response is between 600-1000 words.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.1.1.1">
<span class="ltx_p" id="A2.T2.1.1.1.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_italic" id="A2.T2.1.1.1.1.1.1" style="font-size:90%;">Ensure<math alttext="{}^{h}_{w}" class="ltx_Math" display="inline" id="A2.T2.1.1.1.1.1.1.m1.1"><semantics id="A2.T2.1.1.1.1.1.1.m1.1a"><mmultiscripts id="A2.T2.1.1.1.1.1.1.m1.1.1" xref="A2.T2.1.1.1.1.1.1.m1.1.1.cmml"><mi id="A2.T2.1.1.1.1.1.1.m1.1.1.2.2" xref="A2.T2.1.1.1.1.1.1.m1.1.1.2.2.cmml"></mi><mprescripts id="A2.T2.1.1.1.1.1.1.m1.1.1a" xref="A2.T2.1.1.1.1.1.1.m1.1.1.cmml"></mprescripts><mi id="A2.T2.1.1.1.1.1.1.m1.1.1.3" xref="A2.T2.1.1.1.1.1.1.m1.1.1.3.cmml">w</mi><mrow id="A2.T2.1.1.1.1.1.1.m1.1.1b" xref="A2.T2.1.1.1.1.1.1.m1.1.1.cmml"></mrow><mrow id="A2.T2.1.1.1.1.1.1.m1.1.1c" xref="A2.T2.1.1.1.1.1.1.m1.1.1.cmml"></mrow><mi id="A2.T2.1.1.1.1.1.1.m1.1.1.2.3" xref="A2.T2.1.1.1.1.1.1.m1.1.1.2.3.cmml">h</mi></mmultiscripts><annotation-xml encoding="MathML-Content" id="A2.T2.1.1.1.1.1.1.m1.1b"><apply id="A2.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="A2.T2.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T2.1.1.1.1.1.1.m1.1.1.1.cmml" xref="A2.T2.1.1.1.1.1.1.m1.1.1">subscript</csymbol><apply id="A2.T2.1.1.1.1.1.1.m1.1.1.2.cmml" xref="A2.T2.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T2.1.1.1.1.1.1.m1.1.1.2.1.cmml" xref="A2.T2.1.1.1.1.1.1.m1.1.1">superscript</csymbol><csymbol cd="latexml" id="A2.T2.1.1.1.1.1.1.m1.1.1.2.2.cmml" xref="A2.T2.1.1.1.1.1.1.m1.1.1.2.2">absent</csymbol><ci id="A2.T2.1.1.1.1.1.1.m1.1.1.2.3.cmml" xref="A2.T2.1.1.1.1.1.1.m1.1.1.2.3">ℎ</ci></apply><ci id="A2.T2.1.1.1.1.1.1.m1.1.1.3.cmml" xref="A2.T2.1.1.1.1.1.1.m1.1.1.3">𝑤</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T2.1.1.1.1.1.1.m1.1c">{}^{h}_{w}</annotation><annotation encoding="application/x-llamapun" id="A2.T2.1.1.1.1.1.1.m1.1d">start_FLOATSUPERSCRIPT italic_h end_FLOATSUPERSCRIPT start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT</annotation></semantics></math> that the response is between 600-100 words.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.1.4.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.4.2.1.1">
<span class="ltx_p" id="A2.T2.1.4.2.1.1.1" style="width:227.6pt;"><span class="ltx_text" id="A2.T2.1.4.2.1.1.1.1" style="font-size:90%;">Measured length: 344 words too short</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T2.1.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.4.2.2.1">
<span class="ltx_p" id="A2.T2.1.4.2.2.1.1" style="width:227.6pt;"><span class="ltx_text" id="A2.T2.1.4.2.2.1.1.1" style="font-size:90%;">Measured length: within constraint.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T2.1.5.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T2.1.5.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.5.3.1.1">
<span class="ltx_p" id="A2.T2.1.5.3.1.1.1" style="width:227.6pt;"><span class="ltx_text" id="A2.T2.1.5.3.1.1.1.1" style="font-size:90%;">**Ingredients:** **For the espresso-soaked ladyfingers:** - 1 cup ladyfingers, crushed - 1/2 cup milk - 2 tablespoons granulated sugar **For the mascarpone cream:** - 1 cup mascarpone cheese, softened - 2 cups heavy cream - 1/4 cup granulated sugar - 1/4 teaspoon vanilla extract **For the dusting:** - Powdered sugar - Cocoa powder (for garnish) **Instructions:** **1. Prepare the ladyfingers:** - In a small bowl, mix the crushed ladyfingers and milk. - Let sit for 5 minutes to absorb the liquid. - Drain any excess liquid. **2. Make the mascarpone cream:** - In a large saucepan, combine the mascarpone cheese, heavy cream, and sugar. - Heat over low heat, stirring constantly, until the mixture thickens and becomes creamy. - Remove from heat and whisk in the vanilla extract. **3. Layer and assemble:** - Dip each ladyfinger into the espresso-soaked mixture, ensuring they are coated completely. - Spread a thin layer of mascarpone cream on the bottom of a serving dish. - Top with a layer of ladyfingers. - Pour the mascarpone cream mixture over the ladyfingers. **4. Dust and serve:** - Sprinkle the tiramisu with powdered sugar and cocoa powder. - Serve immediately or store in the refrigerator for later. **Tips:** * For the best flavor, use high-quality ingredients. * Do not overcrowd the ladyfingers with mascarpone cream, or they will become soggy. * Serve the tiramisu at room temperature or slightly chilled. * Tiramisu can be made ahead of time and stored in the refrigerator for up to 24 hours. **Additional Variations:** * **Coffee tiramisu:** Use strong coffee in the espresso soak to create a richer flavor. * **Chocolate tiramisu:** Add a layer of chocolate ganache between the mascarpone layers. * **Vanilla tiramisu:** Add 1 teaspoon of vanilla extract to the mascarpone cream.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T2.1.5.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T2.1.5.3.2.1">
<span class="ltx_p" id="A2.T2.1.5.3.2.1.1" style="width:227.6pt;"><span class="ltx_text" id="A2.T2.1.5.3.2.1.1.1" style="font-size:90%;">”1. **Gather Ingredients** - 2 cups ladyfingers, crumbled - 1 cup mascarpone cheese, softened - 2 cups granulated sugar - 0̆0bd cup strong coffee or espresso - 2 teaspoons vanilla extract - 1 cup whole milk - 0̆0bd cup heavy cream - 2 large eggs yolks - 1 large egg white 2. **Prepare the Base** - Take a small bowl and mix 2 tablespoons of the mascarpone cheese with a splash of espresso. Add the mascarpone mixture to a small casserole dish. 3. **Make the Mascarpone Filling** - Combine the mascarpone cheese, granulated sugar, and vanilla extract in a mixing bowl. Beat the ingredients together until smooth and creamy. - Set aside. 4. **Prepare the Coffee Base** - Brew 2 cups of strong coffee or espresso. Add the diluted coffee to a small saucepan and bring to a simmer. 5. **Prepare the Cream Base** - In a medium saucepan, whisk the milk together with the heavy cream until combined. 6. **Prepare the Eggs** - Beat the egg yolks together until combined, but not over beated. 7. **Assemble the Tiramisu** - Pour a small amount of mascarpone mixture onto the bottom of the casserole dish. 8. **Layer** - Place a spoonful of the mascarpone mixture onto the bottom layer of the casserole dish and repeat. 9. **Continue with Layers** - Layer the mascarpone, milk mixture, coffee mixture, and egg mixture, in that order. 10. **Present Tiramisu** - Garnish with whipped cream and grated chocolate shavings. **Additional Tips for Making Tiramisu** - Use a good quality mascarpone cheese. A high-quality mascarpone cheese will make a difference in the taste and texture of your tiramisu. - Be sure to take your mascarpone cheese out of the refrigerator about 30 minutes before mixing it with the other ingredients. - Be careful not to add too much sugar to the mascarpone mixture. It should be sweet, but not overly sweet. - When layering the tiramisu, be sure to keep the layers thin. This will prevent the tiramisu from becoming dense. - Serve your tiramisu immediately after it is assembled. **Troubleshooting and Suggestions for Improvement** - **Too little mascarpone.** If the mascarpone mixture is too thin, it will not set properly. - **Too much mascarpone.** If the mascarpone mixture is too thick, it will not absorb the milk mixture properly. - **Not enough powdered sugar.** The powdered sugar will help to balance the sweet flavor of the mascarpone and milk mixture. - **Not enough espresso.** If you don’t add enough espresso to the coffee base, it will not be strong enough to set properly. **Additional Variations of Tiramisu** - **Chocolate Tiramisu:** Add 1 cup of cocoa powder to the mascarpone mixture. - **Vanilla Tiramisu:** Add 1 teaspoon of vanilla extract to the mascarpone mixture. - **Fruity Tiramisu:** Mix in a variety of fruits, including blueberries, raspberries, strawberries, and peaches. **Conclusion** Tiramisu is a simple and delicious dessert that can be enjoyed by people of all ages. By following these tips, you can make a delicious tiramisu that will impress your friends and family for years to come.”</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table showcases two example responses generated by the Gemma language model. The first response is from the base Gemma model without any modifications, while the second response is generated using the researchers' novel length neologism. Both responses are for the same prompt:  'Give me a recipe for tiramisu.'  The key difference is that the length neologism enforces a specific word count constraint (between 600 and 100 words) on the response. This illustrates how the neologism helps to control the length of the generated text.
> <details>
> <summary>read the caption</summary>
> Table 2: Example responses from the Base Gemma model and using our length neologism.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T3.1.1.1">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A2.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T3.1.1.1.1.1" style="font-size:90%;">Instruction: Why isn’t the market dropping like a stone with all the bad news?</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T3.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.2.1.1.1">
<span class="ltx_p" id="A2.T3.1.2.1.1.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T3.1.2.1.1.1.1.1" style="font-size:90%;">Gemma, Self-Score: 3 (worse)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T3.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.2.1.2.1">
<span class="ltx_p" id="A2.T3.1.2.1.2.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A2.T3.1.2.1.2.1.1.1" style="font-size:90%;">Gemma, Self-Score: 4 (better)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T3.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.3.2.1.1">
<span class="ltx_p" id="A2.T3.1.3.2.1.1.1" style="width:227.6pt;"><span class="ltx_text" id="A2.T3.1.3.2.1.1.1.1" style="font-size:90%;">This premise is incorrect. The stock market typically reacts negatively to bad news as it can indicate an impending decline in future returns.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A2.T3.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.3.2.2.1">
<span class="ltx_p" id="A2.T3.1.3.2.2.1.1" style="width:227.6pt;"><span class="ltx_text" id="A2.T3.1.3.2.2.1.1.1" style="font-size:90%;">It is important to note that correlations do not imply causation. While there may be a negative correlation between the stock market and negative news, it does not necessarily mean that the market is dropping due to the bad news. Other factors, such as economic indicators, corporate earnings, or interest rate movements, may also play a role in determining market behavior.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table displays example responses generated by the Gemma language model to a specific prompt, along with the model's self-assigned quality scores.  The examples highlight Gemma's tendency to give lower scores to responses that contradict the prompt's premise or decline to answer directly, even when such responses are factually accurate or reasonable. This illustrates a broader pattern in the model's behavior.
> <details>
> <summary>read the caption</summary>
> Table 3: Example responses from the Gemma and its own quality scores of those responses. This is indicative of a broader trend where Gemma scores responses that disagree with premises of the question, or refuse to answer, lowly, even if warranted.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.07586/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07586/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}