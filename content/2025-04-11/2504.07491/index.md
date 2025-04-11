---
title: "Kimi-VL Technical Report"
summary: "Kimi-VL: An efficient vision-language model achieving strong performance with only 2.8B active parameters by using MoE, long-context and high-resolution."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Moonshot.ai",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07491 {{< /keyword >}}
{{< keyword icon="writer" >}} Kimi Team et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07491" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07491" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07491/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing VLMs often face challenges such as limited scalability, high computational costs, and inadequate reasoning capabilities, especially in long contexts. To address these limitations, Kimi-VL is presented as an efficient open-source Mixture-of-Experts (MoE) vision-language model that offers advanced multimodal reasoning, long-context understanding, and strong agent capabilities, all while activating only 2.8B parameters in its language decoder (Kimi-VL-A3B).



This paper introduces Kimi-VL, a vision-language model featuring a Moonlight MoE language model with only 2.8B activated parameters and a 400M native-resolution MoonViT vision encoder. By employing MoE and long-CoT techniques, it achieves impressive results across various challenging tasks and benchmarks, including general vision-language understanding, OCR, multi-image processing, and agent tasks. **Kimi-VL effectively competes with cutting-edge efficient VLMs while surpassing others in key domains, demonstrating strong multimodal reasoning with minimal activated parameters.**

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Kimi-VL achieves state-of-the-art performance on several multimodal benchmarks, outperforming larger models with significantly fewer activated parameters. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Kimi-VL demonstrates strong capabilities in long-context understanding and high-resolution visual perception. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The long-thinking variant, Kimi-VL-Thinking, further enhances reasoning abilities through long chain-of-thought and reinforcement learning. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
Kimi-VL offers a new efficient VLM that balances performance and efficiency, outperforming larger models in key areas and opening new avenues for low-resource multimodal reasoning and agent applications, especially for high-resolution and long-context tasks. **It also makes this research more accessible to researchers with fewer resources.**

------
#### Visual Insights



![](https://arxiv.org/html/2504.07491/x1.png)

> 🔼 This figure compares the performance of Kimi-VL-Thinking against several state-of-the-art open-source Vision-Language Models (VLMs) on the MathVision benchmark.  It highlights that despite having only 2.8 billion activated parameters in its Language Model (LLM), Kimi-VL-Thinking achieves strong multimodal reasoning capabilities.  The comparison includes both short-thinking VLMs (like those in the Gemma-3 and Qwen-2.5-VL series) and long-thinking VLMs (like QVQ-72B-Preview) to demonstrate Kimi-VL-Thinking's competitive performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between Kimi-VL-Thinking and frontier open-source VLMs, including short-thinking VLMs (e.g. Gemma-3 series, Qwen2.5-VL series) and long-thinking VLMs (QVQ-72B-Preview), on MathVision benchmark. Our model achieves strong multimodal reasoning with just 2.8B LLM activated parameters.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S2.T1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1">Stages</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1">ViT Training</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1">Joint Pre-training</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1">Joint Cooldown</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1">Joint Long-context</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.2.2.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.2.1.1">Data</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.2">Alt text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.3">+</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.4">+</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.2.2.5">+</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3.3">
<th class="ltx_td ltx_th ltx_th_row" id="S2.T1.1.3.3.1"></th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.2">Synthesis Caption</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.3">Text, Knowledge</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.4">High-quality Text</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.3.3.5">Long Text</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4.4">
<th class="ltx_td ltx_th ltx_th_row" id="S2.T1.1.4.4.1"></th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.2">Grounding</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.3">Interleaving</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.4">High-quality Multimodal</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.4.4.5">Long Video</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5.5">
<th class="ltx_td ltx_th ltx_th_row" id="S2.T1.1.5.5.1"></th>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.2">OCR</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.3">Video, Agent</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.4">Academic Sources</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.5.5.5">Long Document</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.6.6.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.6.1.1">Tokens</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.6.6.2">2T + 0.1T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.6.6.3">1.4T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.6.6.4">0.6T</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.6.6.5">0.3T</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S2.T1.1.7.7.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.7.7.1.1">Sequence length</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.7.7.2">8192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.7.7.3">8192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.7.7.4">8192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.7.7.5">32768-&gt;131072</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S2.T1.1.8.8.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.8.8.1.1">Training</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.8.8.2">ViT</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.8.8.3">ViT &amp; LLM</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.8.8.4">ViT &amp; LLM</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.8.8.5">ViT &amp; LLM</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table details the four pre-training stages of the Kimi-VL model.  For each stage, it shows the type of data used (text only, text and multimodal, etc.), the total number of tokens processed, the sequence length used during training, and which model components were trained (vision transformer only, or both vision transformer and language model). The table provides a concise overview of the model's training pipeline, highlighting the evolution of data types, model size and training objectives.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of training stages: data composition, token volumes, sequence lengths, and trainable components.
> </details>





### In-depth insights


#### MoE Vision-LLM
The concept of a MoE (Mixture of Experts) Vision-LLM is intriguing. It **suggests a model where different experts within the architecture specialize in processing specific types of visual information**, allowing for more efficient scaling and potentially better performance compared to dense models. In such a model, **the LLM would likely be responsible for high-level reasoning and language generation**, while the vision experts would handle feature extraction, object recognition, and scene understanding. The MoE architecture could enable the model to handle a wider range of visual tasks and modalities, as new experts could be added or fine-tuned for specific applications without retraining the entire model. This approach also allows for better resource allocation, as only the relevant experts are activated for a given input. **The challenge lies in effectively routing inputs to the appropriate experts and ensuring seamless integration between the vision and language components**.

#### Native Resolution
Based on the context, the term 'Native Resolution' seems to point towards a key architectural design choice of the proposed Kimi-VL model. This means it can directly process images at their original resolutions, **eliminating the need for resizing or splitting images** into smaller, fixed-size segments. This approach contrasts with other models that require complex pre-processing steps like sub-image splitting and splicing operations, which can introduce artifacts or lose fine-grained details. Native resolution processing, facilitated by the MoonViT vision encoder, allows Kimi-VL to handle diverse visual inputs more efficiently. It helps in retaining critical information for tasks like OCR and fine-grained visual tasks. Retaining these features of interest will help in visual reasoning. **By incorporating packing methods from NaViT** we can flatten images for effective pre-processing.

#### Thinking CoT
Based on the document, 'Thinking CoT' appears to be a crucial element for enhancing model reasoning. It likely refers to **Chain-of-Thought prompting**, a technique where the model generates intermediate reasoning steps before arriving at a final answer. This process, possibly enhanced through supervised fine-tuning (SFT) and reinforcement learning (RL), as mentioned elsewhere in the document, would enable the model to tackle more complex, multi-step problems. Activating 'Thinking CoT' improves performance particularly in difficult multimodal scenarios requiring deeper understanding and inference. It provides explainability and improved reliability, and boosts tasks like math and visual problem-solving. Thus, activating 'Thinking CoT' offers an advancement in model architecture and training methodologies.

#### Joint Training
**Joint training** in multimodal learning, as depicted in the paper, seems crucial for aligning different modalities (vision and language). The approach involves training a model with a combination of text-only and multimodal data. It appears the initial stages might focus on text pre-training to establish a robust language model foundation, then incorporating visual information gradually. The paper highlights the use of progressive multimodal ratio. This ensures that the model doesn't lose its initial text understanding capabilities while effectively integrating visual information. This joint training allows the model to learn correlations and dependencies across different modalities, leading to a more coherent and contextually rich understanding of the input data. It is necessary to filter QA pairs during coodown stage to avoid overfiting.

#### Long Context RL
While 'Long Context RL' isn't explicitly a heading, the intersection of long context models and Reinforcement Learning presents intriguing possibilities.  In RL, agents learn via interaction, optimizing behavior based on reward. Incorporating long contexts enables agents to consider **more extensive histories** of interaction, potentially capturing **long-term dependencies** crucial for optimal decision-making.  Imagine an agent navigating a complex simulated environment; a long context allows it to recall actions and their consequences far into the past, adapting its strategy accordingly. Challenges include efficiently processing these vast contexts and mitigating the **credit assignment problem** (determining which actions, far in the past, contributed to current rewards). Furthermore, **stability in RL training** becomes a concern, as subtle changes in policy may have unpredictable consequences in environments with long-range dependencies. Exploration strategies must also be adapted; efficient exploration requires agents to understand which parts of their long experience are most relevant to future learning, thereby improving agent intelligence in decision making and allowing agents to **reason over extended timelines**.

#### Scalable VLM
This paper introduces **Kimi-VL**, a vision-language model(**VLM**) that is designed with a balanced approach which is designed to be efficient in many ways. The Model employs a **Mixture-of-Experts**(MoE) that helps to be scalable. Its **128K** extended context enables precise retrieval in lengthy texts and videos, while the native-resolution encoder MoonViT helps maintain high accuracy with low computational overhead in ultra-high-resolution visual tasks. Additionally, Kimi-VL-Thinking facilitates effective long-chain reasoning in complex image and video inference. Overall, Kimi-VL demonstrates robust adaptability and efficiency across multimodal, long-context, and high-resolution tasks. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.07491/x3.png)

> 🔼 Figure 2 presents a comprehensive overview of Kimi-VL's performance across diverse benchmark categories.  It showcases the model's capabilities in general-purpose vision-language tasks (MMMU and MMBench), optical character recognition (OCR) (InfoVQA), multi-image understanding (BLINK), long video comprehension (LongVideoBench and Video-MME), long document processing (MMLongBench-Doc), and agent capabilities (ScreenSpot-Pro and OSWorld). The bar chart visually compares Kimi-VL's performance against several other state-of-the-art vision-language models, offering a concise summary of its strengths across various modalities. For detailed numerical results, refer to Table 3.
> <details>
> <summary>read the caption</summary>
> Figure 2: Highlights of Kimi-VL performance for a wide range of benchmarks like, general benchmarks (MMMU, MMBench), OCR (InfoVQA), multi-image (BLINK), long video (LongVideoBench, Video-MME), long document (MMLongBench-Doc), and agent (ScreenSpot-Pro and OSWorld). Detailed results are presented in Table 3.
> </details>



![](https://arxiv.org/html/2504.07491/x4.png)

> 🔼 This figure illustrates the architecture of both Kimi-VL and its enhanced version, Kimi-VL-Thinking.  The core components are a native-resolution vision encoder called MoonViT, an MLP projector, and a Mixture-of-Experts (MoE) language decoder. MoonViT's ability to handle images at their native resolutions eliminates the need for resizing or downsampling, improving efficiency and potentially preserving fine-grained details. The MLP projector acts as a bridge, transforming the visual features from MoonViT into a format suitable for processing by the MoE decoder. The MoE decoder is the language model, employing a Mixture-of-Experts architecture for better efficiency and scalability.  The diagram highlights the data flow through these components and shows example input types such as small images, fine-grained images, long videos, and OCR screenshots, illustrating the model's diverse multimodal capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 3: The model architecture of Kimi-VL and Kimi-VL-Thinking, consisting of a MoonViT that allows native-resolution images, an MLP projector, and a Mixture-of-Experts (MoE) language decoder.
> </details>



![](https://arxiv.org/html/2504.07491/x5.png)

> 🔼 This figure illustrates the pre-training pipeline for the Kimi-VL model.  The process begins with text-only pre-training of the language model using 5.2 trillion tokens of text data. This step establishes a strong foundation in language understanding before incorporating multimodal data. Subsequent stages involve joint pre-training of the language model and vision encoder, progressively increasing the proportion of multimodal data to gradually align the vision and language modalities.  A total of 4.4 trillion tokens are consumed across these stages. To maintain the high-quality text capabilities established during the initial text-only pre-training phase, all subsequent stages that modify the language model are conducted as joint training stages, ensuring that vision-language understanding and textual competence are developed in parallel.
> <details>
> <summary>read the caption</summary>
> Figure 4: The pre-training stages of Kimi-VL consume a total of 4.4T tokens after text-only pre-training of its language model. To preserve text abilities, all stages that update the language model are joint training stages.
> </details>



![](https://arxiv.org/html/2504.07491/x6.png)

> 🔼 This figure illustrates the post-training process for both the Kimi-VL and Kimi-VL-Thinking models.  It details a multi-stage approach involving supervised fine-tuning (SFT) at two different context window sizes (32K and 128K tokens). This is followed by further refinement using long chain-of-thought (long-CoT) SFT, aiming to encourage more comprehensive and logical reasoning.  Finally, reinforcement learning (RL) is applied to optimize the model's reasoning abilities, resulting in the Kimi-VL-Thinking model which is designed for enhanced long-term thinking capabilities. The diagram visually shows the flow of these stages and highlights the key techniques used to improve the model's reasoning performance.
> <details>
> <summary>read the caption</summary>
> Figure 5: The post-training stages of Kimi-VL and Kimi-VL-Thinking, including two stages of joint SFT in 32K and 128K context, and further long-CoT SFT and RL stages to activate and enhance long thinking abilities.
> </details>



![](https://arxiv.org/html/2504.07491/x7.png)

> 🔼 This figure showcases Kimi-VL-Thinking's ability to perform historical and scientific inference.  The model analyzes a handwritten manuscript step-by-step, identifying Albert Einstein as the author based on handwriting style, the content of the equations (related to gravitational fields), and the presence of German terminology.  The model's reasoning process demonstrates its capacity for detailed analysis of visual and textual information to reach conclusions about the author and the subject matter of the document, highlighting its advanced multimodal reasoning capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 6: Manuscript reasoning visualization. Kimi-VL-Thinking demonstrates the ability to perform historical and scientific inference by analyzing handwritten manuscripts step by step. In this example, our model identifies the author as Albert Einstein based on handwriting style, content analysis, and language cues. It reasons that the manuscripts relate to gravitational field equations, consistent with Einstein’s contributions to general relativity.
> </details>



![](https://arxiv.org/html/2504.07491/x8.png)

> 🔼 Figure 7 showcases Kimi-VL's capacity for visual reasoning by demonstrating its ability to connect visual information with spatial, contextual, and cultural understanding.  The examples highlight three key capabilities:  First, the model correctly identifies similar urban areas based solely on their structural and layout similarities. Second, the model demonstrates an understanding of visual style by accurately interpreting a scene from the video game Cyberpunk 2077.  Third, the model recognizes real-world landmarks like the Rogers Centre in Toronto.  These examples illustrate the model's advanced visual reasoning skills and its ability to integrate diverse sources of information.
> <details>
> <summary>read the caption</summary>
> Figure 7: Kimi-VL exhibits strong visual reasoning capabilities by grounding visual content in spatial, contextual, and cultural knowledge. It accurately identifies matching urban locations based on structural and layout features, interprets scenes from video games like Cyberpunk 2077 using stylistic cues, and recognizes real-world landmarks such as the Rogers Centre in Toronto.
> </details>



![](https://arxiv.org/html/2504.07491/x9.png)

> 🔼 Figure 8 showcases Kimi-VL's ability to solve a geometry problem step by step, demonstrating its symbolic reasoning and geometric inference capabilities.  The problem involves finding the measure of angle ACO in a circle where AB is the diameter, points C and D are on the circle, and angle D is given.  Kimi-VL systematically analyzes the given information (AB is the diameter, C and D are on the circle, and the measure of angle D), applies relevant geometric theorems (inscribed angle theorem and properties of triangle angles), and correctly calculates the measure of the target angle (angle ACO). This figure highlights the model's ability to perform multi-step reasoning and accurate mathematical derivations using visual and textual inputs.
> <details>
> <summary>read the caption</summary>
> Figure 8: Kimi-VL demonstrates its capability to perform symbolic reasoning and geometric inference by solving a circle geometry problem step by step. The model analyzes given conditions, applies geometric theorems such as the inscribed angle theorem and properties of triangle angles, and accurately derives the target angle.
> </details>



![](https://arxiv.org/html/2504.07491/x10.png)

> 🔼 Figure 9 showcases Kimi-VL's robust Optical Character Recognition (OCR) capabilities across diverse data types.  It accurately converts structured financial tables into Markdown format, translates complex mathematical formulas into LaTeX code, and transcribes handwritten Chinese text, demonstrating contextual understanding in its transcriptions.  This highlights the model's versatility in extracting and interpreting multimodal text data, showcasing its ability to handle a wide range of input formats.
> <details>
> <summary>read the caption</summary>
> Figure 9: Diverse OCR visualization. Kimi-VL demonstrates strong OCR capabilities across varied content types, including structured financial tables, complex mathematical formulas, and handwritten Chinese text. The model accurately parses tabular data into markdown, converts formulas to LaTeX, and transcribes handwritten paragraphs with contextual understanding, showcasing its versatility in multimodal text extraction and interpretation.
> </details>



![](https://arxiv.org/html/2504.07491/x11.png)

> 🔼 This figure demonstrates Kimi-VL's ability to perform complex, multi-step interactions within a graphical user interface (GUI).  It showcases the model's step-by-step reasoning process, as it successfully enables the 'Do Not Track' privacy setting in the Chrome web browser.  For each step, the figure shows the visual state of the GUI (a screenshot), the model's reasoned thought process, the action it takes, and the corresponding API call used to implement that action. This illustrates how Kimi-VL interprets the visual information on the screen, identifies relevant UI elements (buttons, menus, etc.), and executes the necessary actions sequentially to achieve a goal, all while maintaining a clear, logical thought process.
> <details>
> <summary>read the caption</summary>
> Figure 10: Kimi-VL is capable of following multi-step reasoning processes to complete complex GUI tasks. In this example, it successfully enables the “Do Not Track” feature in the Chrome browser to enhance online privacy. The agent interprets each screen, identifies relevant UI elements, and performs the appropriate actions sequentially with clear thoughts, actions, and API calls.
> </details>



![](https://arxiv.org/html/2504.07491/x12.png)

> 🔼 Figure 11 showcases Kimi-VL's capacity for detailed video understanding.  A long video is processed, automatically divided into individual scenes, each with a precise start and end time.  Furthermore, Kimi-VL generates a comprehensive natural language description for each scene, summarizing its key events and visual details. This demonstrates the model's ability to not only segment videos temporally but also to reason about visual content and provide human-like summaries.
> <details>
> <summary>read the caption</summary>
> Figure 11: Video scene splitting. Kimi-VL processes a long-form video by segmenting it into coherent scenes and providing detailed start/end timestamps along with fine-grained natural language descriptions for each scene.‡‡footnotemark: ‡
> </details>



![](https://arxiv.org/html/2504.07491/x13.png)

> 🔼 Figure 12 showcases Kimi-VL's ability to understand and summarize key concepts from a lengthy video.  The video in question is an hour-long instructional course.  The figure demonstrates that Kimi-VL can analyze the video's frame sequences to extract a conceptual progression over time. The example highlights Kimi-VL's ability to not only understand the familiar proverb 'Teach a man to fish, and you feed him for a lifetime,' but also to grasp a more nuanced interpretation presented in the video: 'Teach him the taste of fish, and make him hungry.' This nuanced interpretation emphasizes the importance of fostering a desire for continued learning and self-improvement, beyond simply acquiring a specific skill.
> <details>
> <summary>read the caption</summary>
> Figure 12: Catching and understanding key details from an hour-long video course. Kimi-VL demonstrates its ability to comprehend and interpret instructional video content by analyzing frame sequences and extracting conceptual progression over time. In this case, the model identifies a deepening of the traditional saying “Teach a man to fish, and you feed him for a lifetime” into a more nuanced idea: “Teach him the taste of fish and make him hungry.”¶¶footnotemark: ¶
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S2.T2.7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S2.T2.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S2.T2.7.7.7.8">Haystack Length</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.1.1.1.1"><math alttext="(0,2048]" class="ltx_Math" display="inline" id="S2.T2.1.1.1.1.m1.2"><semantics id="S2.T2.1.1.1.1.m1.2a"><mrow id="S2.T2.1.1.1.1.m1.2.3.2" xref="S2.T2.1.1.1.1.m1.2.3.1.cmml"><mo id="S2.T2.1.1.1.1.m1.2.3.2.1" stretchy="false" xref="S2.T2.1.1.1.1.m1.2.3.1.cmml">(</mo><mn id="S2.T2.1.1.1.1.m1.1.1" xref="S2.T2.1.1.1.1.m1.1.1.cmml">0</mn><mo id="S2.T2.1.1.1.1.m1.2.3.2.2" xref="S2.T2.1.1.1.1.m1.2.3.1.cmml">,</mo><mn id="S2.T2.1.1.1.1.m1.2.2" xref="S2.T2.1.1.1.1.m1.2.2.cmml">2048</mn><mo id="S2.T2.1.1.1.1.m1.2.3.2.3" stretchy="false" xref="S2.T2.1.1.1.1.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.1.1.1.1.m1.2b"><interval closure="open-closed" id="S2.T2.1.1.1.1.m1.2.3.1.cmml" xref="S2.T2.1.1.1.1.m1.2.3.2"><cn id="S2.T2.1.1.1.1.m1.1.1.cmml" type="integer" xref="S2.T2.1.1.1.1.m1.1.1">0</cn><cn id="S2.T2.1.1.1.1.m1.2.2.cmml" type="integer" xref="S2.T2.1.1.1.1.m1.2.2">2048</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.1.1.1.1.m1.2c">(0,2048]</annotation><annotation encoding="application/x-llamapun" id="S2.T2.1.1.1.1.m1.2d">( 0 , 2048 ]</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.2.2.2.2"><math alttext="(2048,4096]" class="ltx_Math" display="inline" id="S2.T2.2.2.2.2.m1.2"><semantics id="S2.T2.2.2.2.2.m1.2a"><mrow id="S2.T2.2.2.2.2.m1.2.3.2" xref="S2.T2.2.2.2.2.m1.2.3.1.cmml"><mo id="S2.T2.2.2.2.2.m1.2.3.2.1" stretchy="false" xref="S2.T2.2.2.2.2.m1.2.3.1.cmml">(</mo><mn id="S2.T2.2.2.2.2.m1.1.1" xref="S2.T2.2.2.2.2.m1.1.1.cmml">2048</mn><mo id="S2.T2.2.2.2.2.m1.2.3.2.2" xref="S2.T2.2.2.2.2.m1.2.3.1.cmml">,</mo><mn id="S2.T2.2.2.2.2.m1.2.2" xref="S2.T2.2.2.2.2.m1.2.2.cmml">4096</mn><mo id="S2.T2.2.2.2.2.m1.2.3.2.3" stretchy="false" xref="S2.T2.2.2.2.2.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.2.2.2.2.m1.2b"><interval closure="open-closed" id="S2.T2.2.2.2.2.m1.2.3.1.cmml" xref="S2.T2.2.2.2.2.m1.2.3.2"><cn id="S2.T2.2.2.2.2.m1.1.1.cmml" type="integer" xref="S2.T2.2.2.2.2.m1.1.1">2048</cn><cn id="S2.T2.2.2.2.2.m1.2.2.cmml" type="integer" xref="S2.T2.2.2.2.2.m1.2.2">4096</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.2.2.2.2.m1.2c">(2048,4096]</annotation><annotation encoding="application/x-llamapun" id="S2.T2.2.2.2.2.m1.2d">( 2048 , 4096 ]</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.3.3.3.3"><math alttext="(4096,8192]" class="ltx_Math" display="inline" id="S2.T2.3.3.3.3.m1.2"><semantics id="S2.T2.3.3.3.3.m1.2a"><mrow id="S2.T2.3.3.3.3.m1.2.3.2" xref="S2.T2.3.3.3.3.m1.2.3.1.cmml"><mo id="S2.T2.3.3.3.3.m1.2.3.2.1" stretchy="false" xref="S2.T2.3.3.3.3.m1.2.3.1.cmml">(</mo><mn id="S2.T2.3.3.3.3.m1.1.1" xref="S2.T2.3.3.3.3.m1.1.1.cmml">4096</mn><mo id="S2.T2.3.3.3.3.m1.2.3.2.2" xref="S2.T2.3.3.3.3.m1.2.3.1.cmml">,</mo><mn id="S2.T2.3.3.3.3.m1.2.2" xref="S2.T2.3.3.3.3.m1.2.2.cmml">8192</mn><mo id="S2.T2.3.3.3.3.m1.2.3.2.3" stretchy="false" xref="S2.T2.3.3.3.3.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.3.3.3.3.m1.2b"><interval closure="open-closed" id="S2.T2.3.3.3.3.m1.2.3.1.cmml" xref="S2.T2.3.3.3.3.m1.2.3.2"><cn id="S2.T2.3.3.3.3.m1.1.1.cmml" type="integer" xref="S2.T2.3.3.3.3.m1.1.1">4096</cn><cn id="S2.T2.3.3.3.3.m1.2.2.cmml" type="integer" xref="S2.T2.3.3.3.3.m1.2.2">8192</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.3.3.3.3.m1.2c">(4096,8192]</annotation><annotation encoding="application/x-llamapun" id="S2.T2.3.3.3.3.m1.2d">( 4096 , 8192 ]</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.4.4.4.4"><math alttext="(8192,16384]" class="ltx_Math" display="inline" id="S2.T2.4.4.4.4.m1.2"><semantics id="S2.T2.4.4.4.4.m1.2a"><mrow id="S2.T2.4.4.4.4.m1.2.3.2" xref="S2.T2.4.4.4.4.m1.2.3.1.cmml"><mo id="S2.T2.4.4.4.4.m1.2.3.2.1" stretchy="false" xref="S2.T2.4.4.4.4.m1.2.3.1.cmml">(</mo><mn id="S2.T2.4.4.4.4.m1.1.1" xref="S2.T2.4.4.4.4.m1.1.1.cmml">8192</mn><mo id="S2.T2.4.4.4.4.m1.2.3.2.2" xref="S2.T2.4.4.4.4.m1.2.3.1.cmml">,</mo><mn id="S2.T2.4.4.4.4.m1.2.2" xref="S2.T2.4.4.4.4.m1.2.2.cmml">16384</mn><mo id="S2.T2.4.4.4.4.m1.2.3.2.3" stretchy="false" xref="S2.T2.4.4.4.4.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.4.4.4.4.m1.2b"><interval closure="open-closed" id="S2.T2.4.4.4.4.m1.2.3.1.cmml" xref="S2.T2.4.4.4.4.m1.2.3.2"><cn id="S2.T2.4.4.4.4.m1.1.1.cmml" type="integer" xref="S2.T2.4.4.4.4.m1.1.1">8192</cn><cn id="S2.T2.4.4.4.4.m1.2.2.cmml" type="integer" xref="S2.T2.4.4.4.4.m1.2.2">16384</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.4.4.4.4.m1.2c">(8192,16384]</annotation><annotation encoding="application/x-llamapun" id="S2.T2.4.4.4.4.m1.2d">( 8192 , 16384 ]</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.5.5.5.5"><math alttext="(16384,32768]" class="ltx_Math" display="inline" id="S2.T2.5.5.5.5.m1.2"><semantics id="S2.T2.5.5.5.5.m1.2a"><mrow id="S2.T2.5.5.5.5.m1.2.3.2" xref="S2.T2.5.5.5.5.m1.2.3.1.cmml"><mo id="S2.T2.5.5.5.5.m1.2.3.2.1" stretchy="false" xref="S2.T2.5.5.5.5.m1.2.3.1.cmml">(</mo><mn id="S2.T2.5.5.5.5.m1.1.1" xref="S2.T2.5.5.5.5.m1.1.1.cmml">16384</mn><mo id="S2.T2.5.5.5.5.m1.2.3.2.2" xref="S2.T2.5.5.5.5.m1.2.3.1.cmml">,</mo><mn id="S2.T2.5.5.5.5.m1.2.2" xref="S2.T2.5.5.5.5.m1.2.2.cmml">32768</mn><mo id="S2.T2.5.5.5.5.m1.2.3.2.3" stretchy="false" xref="S2.T2.5.5.5.5.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.5.5.5.5.m1.2b"><interval closure="open-closed" id="S2.T2.5.5.5.5.m1.2.3.1.cmml" xref="S2.T2.5.5.5.5.m1.2.3.2"><cn id="S2.T2.5.5.5.5.m1.1.1.cmml" type="integer" xref="S2.T2.5.5.5.5.m1.1.1">16384</cn><cn id="S2.T2.5.5.5.5.m1.2.2.cmml" type="integer" xref="S2.T2.5.5.5.5.m1.2.2">32768</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.5.5.5.5.m1.2c">(16384,32768]</annotation><annotation encoding="application/x-llamapun" id="S2.T2.5.5.5.5.m1.2d">( 16384 , 32768 ]</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.6.6.6.6"><math alttext="(32768,65536]" class="ltx_Math" display="inline" id="S2.T2.6.6.6.6.m1.2"><semantics id="S2.T2.6.6.6.6.m1.2a"><mrow id="S2.T2.6.6.6.6.m1.2.3.2" xref="S2.T2.6.6.6.6.m1.2.3.1.cmml"><mo id="S2.T2.6.6.6.6.m1.2.3.2.1" stretchy="false" xref="S2.T2.6.6.6.6.m1.2.3.1.cmml">(</mo><mn id="S2.T2.6.6.6.6.m1.1.1" xref="S2.T2.6.6.6.6.m1.1.1.cmml">32768</mn><mo id="S2.T2.6.6.6.6.m1.2.3.2.2" xref="S2.T2.6.6.6.6.m1.2.3.1.cmml">,</mo><mn id="S2.T2.6.6.6.6.m1.2.2" xref="S2.T2.6.6.6.6.m1.2.2.cmml">65536</mn><mo id="S2.T2.6.6.6.6.m1.2.3.2.3" stretchy="false" xref="S2.T2.6.6.6.6.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.6.6.6.6.m1.2b"><interval closure="open-closed" id="S2.T2.6.6.6.6.m1.2.3.1.cmml" xref="S2.T2.6.6.6.6.m1.2.3.2"><cn id="S2.T2.6.6.6.6.m1.1.1.cmml" type="integer" xref="S2.T2.6.6.6.6.m1.1.1">32768</cn><cn id="S2.T2.6.6.6.6.m1.2.2.cmml" type="integer" xref="S2.T2.6.6.6.6.m1.2.2">65536</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.6.6.6.6.m1.2c">(32768,65536]</annotation><annotation encoding="application/x-llamapun" id="S2.T2.6.6.6.6.m1.2d">( 32768 , 65536 ]</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S2.T2.7.7.7.7"><math alttext="(65536,131072]" class="ltx_Math" display="inline" id="S2.T2.7.7.7.7.m1.2"><semantics id="S2.T2.7.7.7.7.m1.2a"><mrow id="S2.T2.7.7.7.7.m1.2.3.2" xref="S2.T2.7.7.7.7.m1.2.3.1.cmml"><mo id="S2.T2.7.7.7.7.m1.2.3.2.1" stretchy="false" xref="S2.T2.7.7.7.7.m1.2.3.1.cmml">(</mo><mn id="S2.T2.7.7.7.7.m1.1.1" xref="S2.T2.7.7.7.7.m1.1.1.cmml">65536</mn><mo id="S2.T2.7.7.7.7.m1.2.3.2.2" xref="S2.T2.7.7.7.7.m1.2.3.1.cmml">,</mo><mn id="S2.T2.7.7.7.7.m1.2.2" xref="S2.T2.7.7.7.7.m1.2.2.cmml">131072</mn><mo id="S2.T2.7.7.7.7.m1.2.3.2.3" stretchy="false" xref="S2.T2.7.7.7.7.m1.2.3.1.cmml">]</mo></mrow><annotation-xml encoding="MathML-Content" id="S2.T2.7.7.7.7.m1.2b"><interval closure="open-closed" id="S2.T2.7.7.7.7.m1.2.3.1.cmml" xref="S2.T2.7.7.7.7.m1.2.3.2"><cn id="S2.T2.7.7.7.7.m1.1.1.cmml" type="integer" xref="S2.T2.7.7.7.7.m1.1.1">65536</cn><cn id="S2.T2.7.7.7.7.m1.2.2.cmml" type="integer" xref="S2.T2.7.7.7.7.m1.2.2">131072</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="S2.T2.7.7.7.7.m1.2c">(65536,131072]</annotation><annotation encoding="application/x-llamapun" id="S2.T2.7.7.7.7.m1.2d">( 65536 , 131072 ]</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S2.T2.7.7.8.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S2.T2.7.7.8.1.1"><span class="ltx_text ltx_font_italic" id="S2.T2.7.7.8.1.1.1">- text haystack</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.8.1.2">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.8.1.3">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.8.1.4">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.8.1.5">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.8.1.6">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.8.1.7">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T2.7.7.8.1.8">87.0</td>
</tr>
<tr class="ltx_tr" id="S2.T2.7.7.9.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S2.T2.7.7.9.2.1"><span class="ltx_text ltx_font_italic" id="S2.T2.7.7.9.2.1.1">- video haystack</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.7.7.9.2.2">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.7.7.9.2.3">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.7.7.9.2.4">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.7.7.9.2.5">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.7.7.9.2.6">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.7.7.9.2.7">100.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T2.7.7.9.2.8">91.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a Needle-in-a-Haystack (NIAH) experiment designed to evaluate the model's ability to locate specific information (the 'needle') within large amounts of text or video data (the 'haystack').  The needles were placed randomly throughout the haystack, and the model was tested on its ability to find the needle at various haystack lengths, ranging from short (under 2048 tokens) to very long (up to 131,072 tokens, or 128K tokens). The table shows the recall accuracy (percentage of correctly identified needles) for different haystack lengths, allowing for assessment of how well the model scales to long-context tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Needle-in-a-Haystack (NIAH) test on text/video haystacks, where needles are uniformly distributed at various positions within the haystack. We report recall accuracy across different haystack lengths up to 131,072 tokens (128K).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.6.7.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="S3.T3.6.7.1.1" style="padding:2pt 1.8pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_tt" id="S3.T3.6.7.1.2" rowspan="2" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.2.1">Benchmark (Metric)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.6.7.1.3" rowspan="2" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.3.1">GPT-4o</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.6.7.1.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.4.1">GPT-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.6.7.1.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.5.1">Qwen2.5-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.6.7.1.6" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.6.1">Llama3.2-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.6.7.1.7" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.7.1">Gemma3-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.6.7.1.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.8.1">DeepSeek-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S3.T3.6.7.1.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.7.1.9.1">Kimi-VL-</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.8.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T3.6.8.2.1" style="padding:2pt 1.8pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.8.2.2" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.8.2.2.1">4o-mini</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.8.2.3" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.8.2.3.1">VL-7B</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.8.2.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.8.2.4.1">11B-Inst.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.8.2.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.8.2.5.1">12B-IT</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.8.2.6" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.8.2.6.1">VL2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.8.2.7" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.8.2.7.1">A3B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.9.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="S3.T3.6.9.3.1" style="padding:2pt 1.8pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.9.3.2" style="padding:2pt 1.8pt;">Architecture</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.9.3.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.9.3.4" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.9.3.5" style="padding:2pt 1.8pt;">Dense</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.9.3.6" style="padding:2pt 1.8pt;">Dense</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.9.3.7" style="padding:2pt 1.8pt;">Dense</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.9.3.8" style="padding:2pt 1.8pt;">MoE</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.9.3.9" style="padding:2pt 1.8pt;">MoE</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T3.1.1.2" style="padding:2pt 1.8pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.1.1.1" style="padding:2pt 1.8pt;"># Act. Params <math alttext="{}_{\text{(LLM+VT)}}" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><msub id="S3.T3.1.1.1.m1.1.1" xref="S3.T3.1.1.1.m1.1.1.cmml"><mi id="S3.T3.1.1.1.m1.1.1a" xref="S3.T3.1.1.1.m1.1.1.cmml"></mi><mtext id="S3.T3.1.1.1.m1.1.1.1" xref="S3.T3.1.1.1.m1.1.1.1a.cmml">(LLM+VT)</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><apply id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1"><ci id="S3.T3.1.1.1.m1.1.1.1a.cmml" xref="S3.T3.1.1.1.m1.1.1.1"><mtext id="S3.T3.1.1.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.1.1.1.m1.1.1.1">(LLM+VT)</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">{}_{\text{(LLM+VT)}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">start_FLOATSUBSCRIPT (LLM+VT) end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.1.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.1.4" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.1.5" style="padding:2pt 1.8pt;">7.6B+0.7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.1.6" style="padding:2pt 1.8pt;">8B+2.6B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.1.1.7" style="padding:2pt 1.8pt;">12B+0.4B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.1.8" style="padding:2pt 1.8pt;">4.1B+0.4B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.1.1.9" style="padding:2pt 1.8pt;">2.8B+0.4B</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.10.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="S3.T3.6.10.4.1" style="padding:2pt 1.8pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.10.4.2" style="padding:2pt 1.8pt;"># Total Params</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.10.4.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.10.4.4" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.10.4.5" style="padding:2pt 1.8pt;">8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.10.4.6" style="padding:2pt 1.8pt;">11B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.10.4.7" style="padding:2pt 1.8pt;">12B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.10.4.8" style="padding:2pt 1.8pt;">28B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.10.4.9" style="padding:2pt 1.8pt;">16B</td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.2" rowspan="3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.2.2.2.1">College-level</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.2.2.1" style="padding:2pt 1.8pt;">MMMU<math alttext="{}_{\text{val}}" class="ltx_Math" display="inline" id="S3.T3.2.2.1.m1.1"><semantics id="S3.T3.2.2.1.m1.1a"><msub id="S3.T3.2.2.1.m1.1.1" xref="S3.T3.2.2.1.m1.1.1.cmml"><mi id="S3.T3.2.2.1.m1.1.1a" xref="S3.T3.2.2.1.m1.1.1.cmml"></mi><mtext id="S3.T3.2.2.1.m1.1.1.1" xref="S3.T3.2.2.1.m1.1.1.1a.cmml">val</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.1.m1.1b"><apply id="S3.T3.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.1.m1.1.1"><ci id="S3.T3.2.2.1.m1.1.1.1a.cmml" xref="S3.T3.2.2.1.m1.1.1.1"><mtext id="S3.T3.2.2.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.2.2.1.m1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.1.m1.1c">{}_{\text{val}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.1.m1.1d">start_FLOATSUBSCRIPT val end_FLOATSUBSCRIPT</annotation></semantics></math> (Pass@1)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.2.2.3.1" style="color:#808080;">69.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.2.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.4.1">60.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.5" style="padding:2pt 1.8pt;">58.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.6" style="padding:2pt 1.8pt;">48</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.2.7" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.2.2.7.1">59.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.8" style="padding:2pt 1.8pt;">51.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.2.2.9" style="padding:2pt 1.8pt;">57.0</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.11.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.11.5.1" style="padding:2pt 1.8pt;">VideoMMMU (Pass@1)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.11.5.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.11.5.2.1" style="color:#808080;">61.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.11.5.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.11.5.4" style="padding:2pt 1.8pt;">47.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.11.5.5" style="padding:2pt 1.8pt;">41.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.11.5.6" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.11.5.6.1">57.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.11.5.7" style="padding:2pt 1.8pt;">44.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.11.5.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.11.5.8.1">52.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.3.3.1" style="padding:2pt 1.8pt;">MMVU<math alttext="{}_{\text{val}}" class="ltx_Math" display="inline" id="S3.T3.3.3.1.m1.1"><semantics id="S3.T3.3.3.1.m1.1a"><msub id="S3.T3.3.3.1.m1.1.1" xref="S3.T3.3.3.1.m1.1.1.cmml"><mi id="S3.T3.3.3.1.m1.1.1a" xref="S3.T3.3.3.1.m1.1.1.cmml"></mi><mtext id="S3.T3.3.3.1.m1.1.1.1" xref="S3.T3.3.3.1.m1.1.1.1a.cmml">val</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.1.m1.1b"><apply id="S3.T3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.1.m1.1.1"><ci id="S3.T3.3.3.1.m1.1.1.1a.cmml" xref="S3.T3.3.3.1.m1.1.1.1"><mtext id="S3.T3.3.3.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.3.3.1.m1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.1.m1.1c">{}_{\text{val}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.1.m1.1d">start_FLOATSUBSCRIPT val end_FLOATSUBSCRIPT</annotation></semantics></math> (Pass@1)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.3.3.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.3.3.2.1" style="color:#808080;">67.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.3.3.3" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.3.1">61.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.3.3.4" style="padding:2pt 1.8pt;">50.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.3.3.5" style="padding:2pt 1.8pt;">44.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.3.3.6" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.3.3.6.1">57.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.3.3.7" style="padding:2pt 1.8pt;">52.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.3.3.8" style="padding:2pt 1.8pt;">52.2</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.12.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.12.6.1" rowspan="5" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.12.6.1.1">General</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.12.6.2" style="padding:2pt 1.8pt;">MMBench-EN-v1.1 (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.12.6.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.12.6.3.1" style="color:#808080;">83.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.12.6.4" style="padding:2pt 1.8pt;">77.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.12.6.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.12.6.5.1">82.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.12.6.6" style="padding:2pt 1.8pt;">65.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.12.6.7" style="padding:2pt 1.8pt;">74.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.12.6.8" style="padding:2pt 1.8pt;">79.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.12.6.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.12.6.9.1">83.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.13.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.13.7.1" style="padding:2pt 1.8pt;">MMStar (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.13.7.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.13.7.2.1" style="color:#808080;">64.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.13.7.3" style="padding:2pt 1.8pt;">54.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.13.7.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.13.7.4.1">63.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.13.7.5" style="padding:2pt 1.8pt;">49.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.13.7.6" style="padding:2pt 1.8pt;">56.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.13.7.7" style="padding:2pt 1.8pt;">55.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.13.7.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.13.7.8.1">61.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.14.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.14.8.1" style="padding:2pt 1.8pt;">MMVet (Pass@1)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.14.8.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.14.8.2.1" style="color:#808080;">69.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.14.8.3" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.14.8.3.1">66.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.14.8.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.14.8.4.1">67.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.14.8.5" style="padding:2pt 1.8pt;">57.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.14.8.6" style="padding:2pt 1.8pt;">64.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.14.8.7" style="padding:2pt 1.8pt;">60.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.14.8.8" style="padding:2pt 1.8pt;">66.7</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.15.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.15.9.1" style="padding:2pt 1.8pt;">RealWorldQA (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.15.9.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.15.9.2.1" style="color:#808080;">75.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.15.9.3" style="padding:2pt 1.8pt;">67.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.15.9.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.15.9.4.1">68.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.15.9.5" style="padding:2pt 1.8pt;">63.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.15.9.6" style="padding:2pt 1.8pt;">59.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.15.9.7" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.15.9.7.1">68.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.15.9.8" style="padding:2pt 1.8pt;">68.1</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.16.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.16.10.1" style="padding:2pt 1.8pt;">AI2D (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.16.10.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.16.10.2.1" style="color:#808080;">84.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.16.10.3" style="padding:2pt 1.8pt;">77.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.16.10.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.16.10.4.1">83.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.16.10.5" style="padding:2pt 1.8pt;">77.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.16.10.6" style="padding:2pt 1.8pt;">78.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.16.10.7" style="padding:2pt 1.8pt;">81.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.16.10.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.16.10.8.1">84.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.17.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.17.11.1" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.17.11.1.1">Multi-image</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.17.11.2" style="padding:2pt 1.8pt;">BLINK (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.17.11.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.17.11.3.1" style="color:#808080;">68.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.17.11.4" style="padding:2pt 1.8pt;">53.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.17.11.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.17.11.5.1">56.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.17.11.6" style="padding:2pt 1.8pt;">39.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.17.11.7" style="padding:2pt 1.8pt;">50.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.17.11.8" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.17.11.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.17.11.9.1">57.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.18.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.18.12.1" rowspan="2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.18.12.1.1">Math</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.18.12.2" style="padding:2pt 1.8pt;">MathVista (Pass@1)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.18.12.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.18.12.3.1" style="color:#808080;">63.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.18.12.4" style="padding:2pt 1.8pt;">52.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.18.12.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.18.12.5.1">68.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.18.12.6" style="padding:2pt 1.8pt;">47.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.18.12.7" style="padding:2pt 1.8pt;">56.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.18.12.8" style="padding:2pt 1.8pt;">62.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.18.12.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.18.12.9.1">68.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.19.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.19.13.1" style="padding:2pt 1.8pt;">MathVision (Pass@1)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.19.13.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.19.13.2.1" style="color:#808080;">30.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.19.13.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.19.13.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.19.13.4.1">25.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.19.13.5" style="padding:2pt 1.8pt;">13.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.19.13.6" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.19.13.6.1">32.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.19.13.7" style="padding:2pt 1.8pt;">17.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.19.13.8" style="padding:2pt 1.8pt;">21.4</td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.20.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.20.14.1" rowspan="2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.20.14.1.1">OCR</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.20.14.2" style="padding:2pt 1.8pt;">InfoVQA (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.20.14.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.20.14.3.1" style="color:#808080;">80.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.20.14.4" style="padding:2pt 1.8pt;">57.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.20.14.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.20.14.5.1">82.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.20.14.6" style="padding:2pt 1.8pt;">34.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.20.14.7" style="padding:2pt 1.8pt;">43.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.20.14.8" style="padding:2pt 1.8pt;">78.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.20.14.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.20.14.9.1">83.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.21.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.21.15.1" style="padding:2pt 1.8pt;">OCRBench (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.21.15.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.21.15.2.1" style="color:#808080;">815</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.21.15.3" style="padding:2pt 1.8pt;">785</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.21.15.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.21.15.4.1">864</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.21.15.5" style="padding:2pt 1.8pt;">753</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.21.15.6" style="padding:2pt 1.8pt;">702</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.21.15.7" style="padding:2pt 1.8pt;">811</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.21.15.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.21.15.8.1">867</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.22.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.22.16.1" rowspan="4" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.22.16.1.1">OS Agent</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.22.16.2" style="padding:2pt 1.8pt;">ScreenSpot-V2 (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.22.16.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.22.16.3.1" style="color:#808080;">18.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.22.16.4" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.22.16.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.22.16.5.1">86.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.22.16.6" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.22.16.7" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.22.16.8" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.22.16.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.22.16.9.1">92.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.23.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.23.17.1" style="padding:2pt 1.8pt;">ScreenSpot-Pro (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.23.17.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.23.17.2.1" style="color:#808080;">0.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.23.17.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.23.17.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.23.17.4.1">29.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.23.17.5" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.23.17.6" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.23.17.7" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.23.17.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.23.17.8.1">34.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.24.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.24.18.1" style="padding:2pt 1.8pt;">OSWorld (Pass@1)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.24.18.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.24.18.2.1" style="color:#808080;">5.03</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.24.18.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.24.18.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.24.18.4.1">2.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.24.18.5" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.24.18.6" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.24.18.7" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.24.18.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.24.18.8.1">8.22</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.25.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.25.19.1" style="padding:2pt 1.8pt;">WindowsAgentArena (Pass@1)<span class="ltx_note ltx_role_footnotemark" id="footnote1"><sup class="ltx_note_mark">*</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">*</sup><span class="ltx_note_type">footnotemark: </span><span class="ltx_tag ltx_tag_note">*</span></span></span></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.25.19.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.25.19.2.1" style="color:#808080;">9.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.25.19.3" style="padding:2pt 1.8pt;">2.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.25.19.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.25.19.4.1">3.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.25.19.5" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.25.19.6" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.25.19.7" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.25.19.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.25.19.8.1">10.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.26.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.26.20.1" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.26.20.1.1">Long Document</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.26.20.2" style="padding:2pt 1.8pt;">MMLongBench-Doc (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.26.20.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.26.20.3.1" style="color:#808080;">42.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.26.20.4" style="padding:2pt 1.8pt;">29.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.26.20.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.26.20.5.1">29.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.26.20.6" style="padding:2pt 1.8pt;">13.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.26.20.7" style="padding:2pt 1.8pt;">21.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.26.20.8" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.26.20.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.26.20.9.1">35.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.27.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.27.21.1" rowspan="3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.27.21.1.1">Long Video</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.27.21.2" style="padding:2pt 1.8pt;">Video-MME (w/o sub. / w/ sub.)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.27.21.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.27.21.3.1" style="color:#808080;">71.9/77.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.27.21.4" style="padding:2pt 1.8pt;">64.8/68.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.27.21.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.27.21.5.1">65.1/71.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.27.21.6" style="padding:2pt 1.8pt;">46.0/49.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.27.21.7" style="padding:2pt 1.8pt;">58.2/62.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.27.21.8" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.27.21.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.27.21.9.1">67.8/72.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.4.4.1" style="padding:2pt 1.8pt;">MLVU<math alttext="{}_{\text{MCQ}}" class="ltx_Math" display="inline" id="S3.T3.4.4.1.m1.1"><semantics id="S3.T3.4.4.1.m1.1a"><msub id="S3.T3.4.4.1.m1.1.1" xref="S3.T3.4.4.1.m1.1.1.cmml"><mi id="S3.T3.4.4.1.m1.1.1a" xref="S3.T3.4.4.1.m1.1.1.cmml"></mi><mtext id="S3.T3.4.4.1.m1.1.1.1" xref="S3.T3.4.4.1.m1.1.1.1a.cmml">MCQ</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.1.m1.1b"><apply id="S3.T3.4.4.1.m1.1.1.cmml" xref="S3.T3.4.4.1.m1.1.1"><ci id="S3.T3.4.4.1.m1.1.1.1a.cmml" xref="S3.T3.4.4.1.m1.1.1.1"><mtext id="S3.T3.4.4.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.4.4.1.m1.1.1.1">MCQ</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.1.m1.1c">{}_{\text{MCQ}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.1.m1.1d">start_FLOATSUBSCRIPT MCQ end_FLOATSUBSCRIPT</annotation></semantics></math> (Acc)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.4.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.4.4.2.1" style="color:#808080;">64.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.4.4.3" style="padding:2pt 1.8pt;">48.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.4.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.4.4.4.1">70.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.4.5" style="padding:2pt 1.8pt;">44.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.4.4.6" style="padding:2pt 1.8pt;">52.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.4.7" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.4.4.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.4.8.1">74.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.5.5.1" style="padding:2pt 1.8pt;">LongVideoBench<math alttext="{}_{\text{val}}" class="ltx_Math" display="inline" id="S3.T3.5.5.1.m1.1"><semantics id="S3.T3.5.5.1.m1.1a"><msub id="S3.T3.5.5.1.m1.1.1" xref="S3.T3.5.5.1.m1.1.1.cmml"><mi id="S3.T3.5.5.1.m1.1.1a" xref="S3.T3.5.5.1.m1.1.1.cmml"></mi><mtext id="S3.T3.5.5.1.m1.1.1.1" xref="S3.T3.5.5.1.m1.1.1.1a.cmml">val</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.1.m1.1b"><apply id="S3.T3.5.5.1.m1.1.1.cmml" xref="S3.T3.5.5.1.m1.1.1"><ci id="S3.T3.5.5.1.m1.1.1.1a.cmml" xref="S3.T3.5.5.1.m1.1.1.1"><mtext id="S3.T3.5.5.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.5.5.1.m1.1.1.1">val</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.1.m1.1c">{}_{\text{val}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.1.m1.1d">start_FLOATSUBSCRIPT val end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.5.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.5.5.2.1" style="color:#808080;">66.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.5.5.3" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.5.5.3.1">58.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.5.4" style="padding:2pt 1.8pt;">56.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.5.5" style="padding:2pt 1.8pt;">45.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.5.5.6" style="padding:2pt 1.8pt;">51.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.5.7" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.5.5.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.5.5.8.1">64.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.6.6.2" rowspan="3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.6.2.1">Video Perception</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.6.6.1" style="padding:2pt 1.8pt;">EgoSchema<math alttext="{}_{\text{full}}" class="ltx_Math" display="inline" id="S3.T3.6.6.1.m1.1"><semantics id="S3.T3.6.6.1.m1.1a"><msub id="S3.T3.6.6.1.m1.1.1" xref="S3.T3.6.6.1.m1.1.1.cmml"><mi id="S3.T3.6.6.1.m1.1.1a" xref="S3.T3.6.6.1.m1.1.1.cmml"></mi><mtext id="S3.T3.6.6.1.m1.1.1.1" xref="S3.T3.6.6.1.m1.1.1.1a.cmml">full</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.1.m1.1b"><apply id="S3.T3.6.6.1.m1.1.1.cmml" xref="S3.T3.6.6.1.m1.1.1"><ci id="S3.T3.6.6.1.m1.1.1.1a.cmml" xref="S3.T3.6.6.1.m1.1.1.1"><mtext id="S3.T3.6.6.1.m1.1.1.1.cmml" mathsize="70%" xref="S3.T3.6.6.1.m1.1.1.1">full</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.1.m1.1c">{}_{\text{full}}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.1.m1.1d">start_FLOATSUBSCRIPT full end_FLOATSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.6.3" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.6.3.1" style="color:#808080;">72.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.6.4" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.6.5" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.6.5.1">65.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.6.6" style="padding:2pt 1.8pt;">54.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.6.6.7" style="padding:2pt 1.8pt;">56.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.6.8" style="padding:2pt 1.8pt;">38.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S3.T3.6.6.9" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.9.1">78.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.28.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S3.T3.6.28.22.1" style="padding:2pt 1.8pt;">VSI-Bench</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.28.22.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.28.22.2.1" style="color:#808080;">34.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.28.22.3" style="padding:2pt 1.8pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.28.22.4" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.28.22.4.1">34.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.28.22.5" style="padding:2pt 1.8pt;">20.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="S3.T3.6.28.22.6" style="padding:2pt 1.8pt;">32.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.28.22.7" style="padding:2pt 1.8pt;">21.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S3.T3.6.28.22.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.28.22.8.1">37.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.6.29.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb ltx_border_r" id="S3.T3.6.29.23.1" style="padding:2pt 1.8pt;">TOMATO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.6.29.23.2" style="padding:2pt 1.8pt;"><span class="ltx_text" id="S3.T3.6.29.23.2.1" style="color:#808080;">37.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.6.29.23.3" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.6.29.23.3.1">28.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.6.29.23.4" style="padding:2pt 1.8pt;">27.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.6.29.23.5" style="padding:2pt 1.8pt;">21.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.6.29.23.6" style="padding:2pt 1.8pt;">28.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.6.29.23.7" style="padding:2pt 1.8pt;">27.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S3.T3.6.29.23.8" style="padding:2pt 1.8pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.6.29.23.8.1">31.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive comparison of Kimi-VL's performance against several state-of-the-art vision-language models (VLMs), including both proprietary models (like GPT-4) and open-source models.  The comparison is conducted across a wide range of benchmark tasks, evaluating various capabilities such as general-purpose VLM performance,  OCR, multi-image understanding, long video and document comprehension, and agent capabilities.  The table highlights Kimi-VL's performance relative to other models, noting its efficiency in terms of activated parameters (a measure of computational cost).  The best and second-best performing models for each benchmark are clearly indicated. Note that some results are missing for certain models on specific tasks due to limitations in the models' capabilities or context length.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of Kimi-VL against proprietary and open-source efficient VLMs; performance of GPT-4o is also listed in gray for reference. Top and second-best models are in boldface and underline respectively. Some results of competing models are unavailable due to limitation of model ability on specific tasks or model context length.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.1" style="padding:2.5pt 4.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="6" id="S4.T4.1.1.1.2" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Non-Thinking Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S4.T4.1.1.1.3" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1">Thinking Model</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.2.1.1" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.1.1">Benchmark (Metric)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.2.1.2" rowspan="2" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.2.1">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.2.1.3" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.3.1">GPT-</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T4.1.2.1.4" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.4.1">Qwen2.5-VL-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T4.1.2.1.5" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.5.1">Gemma-3-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.2.1.6" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.6.1">o1-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.2.1.7" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.7.1">QVQ-72B-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.2.1.8" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.8.1">Kimi-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.2.1.9" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.2.1.9.1">Kimi-VL-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3.2">
<td class="ltx_td ltx_border_r" id="S4.T4.1.3.2.1" style="padding:2.5pt 4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.2" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.2.1">4o-mini</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.3" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.3.1">72B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.4" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.4.1">7B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.5" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.5.1">27B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.3.2.6" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.6.1">12B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.7" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.7.1">1217</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.8" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.8.1">Preview</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.3.2.9" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.9.1">k1.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2.10" style="padding:2.5pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.3.2.10.1">Thinking-A3B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.4.3.1" style="padding:2.5pt 4.0pt;">MathVision (full) (Pass@1)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.2" style="padding:2.5pt 4.0pt;">30.4</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.3" style="padding:2.5pt 4.0pt;">-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.4" style="padding:2.5pt 4.0pt;">38.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.5" style="padding:2.5pt 4.0pt;">25.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.6" style="padding:2.5pt 4.0pt;">35.5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.4.3.7" style="padding:2.5pt 4.0pt;">32.1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.8" style="padding:2.5pt 4.0pt;">-</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.9" style="padding:2.5pt 4.0pt;">35.9</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T4.1.4.3.10" style="padding:2.5pt 4.0pt;">38.6</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T4.1.4.3.11" style="padding:2.5pt 4.0pt;">36.8</th>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.1.5.4.1" style="padding:2.5pt 4.0pt;">MathVista (mini) (Pass@1)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.2" style="padding:2.5pt 4.0pt;">63.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.3" style="padding:2.5pt 4.0pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.4" style="padding:2.5pt 4.0pt;">74.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.5" style="padding:2.5pt 4.0pt;">68.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.6" style="padding:2.5pt 4.0pt;">62.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.5.4.7" style="padding:2.5pt 4.0pt;">56.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.8" style="padding:2.5pt 4.0pt;">71.0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.9" style="padding:2.5pt 4.0pt;">71.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.1.5.4.10" style="padding:2.5pt 4.0pt;">74.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4.11" style="padding:2.5pt 4.0pt;">71.3</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T4.1.6.5.1" style="padding:2.5pt 4.0pt;">MMMU (val) (Pass@1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.2" style="padding:2.5pt 4.0pt;">69.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.3" style="padding:2.5pt 4.0pt;">60.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.4" style="padding:2.5pt 4.0pt;">74.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.5" style="padding:2.5pt 4.0pt;">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.6" style="padding:2.5pt 4.0pt;">64.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.1.6.5.7" style="padding:2.5pt 4.0pt;">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.8" style="padding:2.5pt 4.0pt;">77.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.9" style="padding:2.5pt 4.0pt;">70.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.1.6.5.10" style="padding:2.5pt 4.0pt;">70.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.6.5.11" style="padding:2.5pt 4.0pt;">61.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparative analysis of the Kimi-VL-Thinking model against several other open-source and proprietary vision-language models (VLMs) across three benchmark tasks: MathVista (mini), MMMU (val), and MathVision (full).  The performance metric used is Pass@1, representing the percentage of times the model correctly predicted the answer in the top-ranked position. This table specifically highlights the performance difference between VLMs that incorporate long-chain-of-thought (CoT) reasoning ('Thinking' models) and those that do not ('Non-thinking' models).  The results demonstrate the improved reasoning and problem-solving capabilities of the Kimi-VL-Thinking model, especially when compared to its non-thinking counterpart, across various domains and scales of problem complexity.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance of the Kimi-VL-Thinking against various open-source and proprietary models across different benchmarks. The metrics evaluated include MathVista (mini), MMMU (val), and MathVision (full), with results expressed in terms of Pass@1. The Kimi-VL-Thinking outperforms the non-thinking models in most cases, showcasing the enhanced reasoning and processing capabilities of the “thinking” variant across different domains and scales.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07491/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07491/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}