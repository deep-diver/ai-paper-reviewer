---
title: "Task Vectors are Cross-Modal"
summary: "Vision-language models surprisingly use similar internal representations for similar tasks regardless of input type (image or text) or specification (example or instruction)."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 UC Berkeley",]
showSummary: true
date: 2024-10-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.22330 {{< /keyword >}}
{{< keyword icon="writer" >}} Grace Luo et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.22330" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.22330" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Vision-and-language models (VLMs) are increasingly used for various tasks, but their internal mechanisms remain a mystery.  Understanding how VLMs encode task information is critical for improving their performance and enabling more efficient use of resources.  Previous research has identified task vectors in language-only and vision-only models, but their cross-modal properties are largely unknown. This lack of understanding limits our ability to build more robust and efficient cross-modal systems, particularly as more multi-modal applications become prevalent.

This paper investigates how VLMs encode task representations using a variety of input modalities and specifications. The researchers discovered that similar tasks are consistently mapped to similar task vectors within the model, irrespective of the input's type or how the task was described. They found that the process of generating an answer in the model consists of three phases: input processing, task representation, and final answer generation. Their key contribution is the discovery of the cross-modal nature of task vectors, enabling efficient transfer of task representations between different modalities.  Furthermore, they show that combining exemplar and instruction-based task vectors significantly improves performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VLMs encode tasks in a shared embedding space, irrespective of modality or specification. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Task representations in VLMs evolve through three consistent phases: input, task, and answer. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Cross-modal transfer of task vectors improves VLM performance and efficiency. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial** for researchers working on vision-and-language models (VLMs) and mechanistic interpretability.  It reveals the surprising cross-modal consistency of task representations in VLMs, offering insights into their underlying mechanisms and suggesting new approaches for improving efficiency and transferability.  The findings open avenues for research in cross-modal learning and more efficient VLM design, impacting numerous downstream applications.

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.22330/figures_1_0.png)

> 🔼 The figure illustrates how vision-and-language models (VLMs) generate consistent task representations from various input modalities and specifications.
> <details>
> <summary>read the caption</summary>
> Figure 1: Vision-and-language models (VLMs) map inputs to abstract task representations that are consistent across modalities and specifications. For example, the task of mapping a country to its capital can be expressed in various ways (a), all of which lead to similar task representations (b).
> </details>





![](https://ai-paper-reviewer.com/2410.22330/charts_4_1.png)

> 🔼 The chart visualizes the evolution of token representations across model layers, showing the transition from input to task to answer.
> <details>
> <summary>read the caption</summary>
> Figure 13: We show a continuous visualization of how the token representation evolves across layers for all tasks. Each line shows the representational similarity with a pre-defined token, aggregated over 100 sets of examples. We use the token auf for the input, one of {capital, currency, species, baby, color, flavor} for the task, and each run’s ground-truth label for the answer.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Task</td><td>Instruction</td><td>Text ICL Example</td><td>Image ICL Example</td></tr><tr><td>Country-Capital</td><td>The capital city of the country:</td><td>{Greece : Athens}</td><td>: Athens}</td></tr><tr><td>Country-Currency</td><td>The last word of the official currency of the country:</td><td>{Italy : Euro}</td><td>{ : Euro}</td></tr><tr><td>Animal-Latin</td><td>The scientific name of the animal's species in latin:</td><td>{Gray Wolf : Canis lupus}</td><td>{ : Canis lupus}</td></tr><tr><td>Animal- Young</td><td>The term for the baby of the animal:</td><td>{Common Dolphin : calf}</td><td>: calf}</td></tr><tr><td>Food-Color</td><td>The color of the food:</td><td>{Persimmon : orange}</td><td>{ : orange}</td></tr><tr><td>Food-Flavor</td><td>The flavor descriptor of the food:</td><td>{Strawberry : sweet}</td><td>{ : sweet}</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 shows six tasks that can be specified using text instructions, text examples, or image examples, illustrating the cross-modal nature of the tasks.
> <details>
> <summary>read the caption</summary>
> Table 1: Cross-modal tasks. We design six tasks inspired by the text examples in prior work (Hendel et al., 2023; Todd et al., 2024), where we add alternative specifications such as instructions and image examples.
> </details>





### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.22330/figures_1_1.png)

> 🔼 The figure illustrates how vision-and-language models (VLMs) generate consistent task representations across different input modalities and specifications.
> <details>
> <summary>read the caption</summary>
> Figure 1: Vision-and-language models (VLMs) map inputs to abstract task representations that are consistent across modalities and specifications. For example, the task of mapping a country to its capital can be expressed in various ways (a), all of which lead to similar task representations (b).
> </details>



![](https://ai-paper-reviewer.com/2410.22330/figures_2_0.png)

> 🔼 The figure illustrates how task representations learned from one modality (text or image examples) can be transferred to improve the performance of a vision-language model on queries from a different modality.
> <details>
> <summary>read the caption</summary>
> Figure 2: Cross-modal transfer. Task representations can be computed in one modality (left) and patched to guide VLMs to perform a task on queries from a different modality (right). We observe that certain tasks are more effectively represented in one modality and therefore benefit from transfer.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.22330/charts_19_0.png)

> 🔼 The chart displays the probability of the last token representation decoding to input, task, or answer vectors across different layers of the model for both text and image ICL.
> <details>
> <summary>read the caption</summary>
> Figure 3: The output evolves in three distinct phases that are shared for text and image ICL. Each line corresponds to the probability that the last token representation decodes to a pre-defined input, task, or answer vector. We display visualizations of specific layers in Figure 4 and further visualize the task representation phase in Table 2.
> </details>


![](https://ai-paper-reviewer.com/2410.22330/charts_19_2.png)

> 🔼 The chart displays the evolution of token representations across model layers for various tasks, showing three distinct phases: input, task, and answer.
> <details>
> <summary>read the caption</summary>
> Figure 13: We show a continuous visualization of how the token representation evolves across layers for all tasks. Each line shows the representational similarity with a pre-defined token, aggregated over 100 sets of examples. We use the token auf for the input, one of {capital, currency, species, baby, color, flavor} for the task, and each run’s ground-truth label for the answer.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Model</td><td>Country-Capital</td><td>Country-Currency</td><td>Animal-Latin</td><td>Animal-Young</td><td>Food-Color</td><td>Food-Flavor</td><td>Avg.</td></tr><tr><td>Random</td><td>0.00</td><td>0.12</td><td>0.00</td><td>0.18</td><td>0.24</td><td>0.31</td><td>0.14</td></tr><tr><td>LLaVA-v1.5</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>No Context</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>Image ICL Base</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Image ICL Patch</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Text ICL xBase</td><td>0.02</td><td>0.18</td><td>0.03</td><td>0.23</td><td>0.28</td><td>0.37</td><td>0.18</td></tr><tr><td>Text ICL xPatch</td><td>0.31</td><td>0.30</td><td>0.26</td><td>0.18</td><td>0.53</td><td>0.31</td><td>0.32</td></tr><tr><td>Mantis-Fuyu</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>No Context</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.00</td></tr><tr><td>Image ICL Base</td><td>0.11</td><td>0.13</td><td>0.24</td><td>0.05</td><td>0.34</td><td>0.23</td><td>0.18</td></tr><tr><td>Image ICL Patch</td><td>0.17</td><td>0.03</td><td>0.16</td><td>0.05</td><td>0.50</td><td>0.31</td><td>0.20</td></tr><tr><td>Text ICL xBase</td><td>0.09</td><td>0.06</td><td>0.08</td><td>0.02</td><td>0.23</td><td>0.04</td><td>0.09</td></tr><tr><td>Text ICL xPatch</td><td>0.32</td><td>0.23</td><td>0.36</td><td>0.09</td><td>0.51</td><td>0.36</td><td>0.31</td></tr><tr><td>Idefics2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>No Context</td><td>0.03</td><td>0.00</td><td>0.03</td><td>0.00</td><td>0.01</td><td>0.01</td><td>0.01</td></tr><tr><td>Image ICL Base</td><td>0.71</td><td>0.57</td><td>0.43</td><td>0.12</td><td>0.41</td><td>0.35</td><td>0.43</td></tr><tr><td>Image ICL Patch</td><td>0.58</td><td>0.32</td><td>0.40</td><td>0.03</td><td>0.39</td><td>0.17</td><td>0.31</td></tr><tr><td>Text ICL xBase</td><td>0.11</td><td>0.03</td><td>0.41</td><td>0.13</td><td>0.21</td><td>0.18</td><td>0.18</td></tr><tr><td>Text ICL xPatch</td><td>0.61</td><td>0.40</td><td>0.48</td><td>0.62</td><td>0.53</td><td>0.39</td><td>0.51</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the accuracy results of cross-modal transfer experiments across six tasks using different vision-language models and methods for specifying tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Cross-modal transfer results. We display the accuracy across six tasks on an unseen test set. For image queries, patching cross-modal task vectors (Text ICL xPatch) outperforms text ICL in the same context window (Text ICL xBase) and the strong unimodal image ICL baseline (Image ICL Base, Patch). The best method per task is underlined and overall is bolded.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:20px'><tr><td></td><td>LLaVA-v1.5 (Liu et al., 2023a)</td><td>Mantis-Fuyu (Jiang et al., 2024)</td><td>Idefics2 (Lauren�on et al., 2024)</td></tr><tr><td>Text Model</td><td>Vicuna (Chiang et al., 2023)</td><td>Fuyu (Bavishi et al., 2023)</td><td>Mistral (Jiang et al., 2023)</td></tr><tr><td>Vision Model</td><td>CLIP (Radford et al., 2019)</td><td>Fuyu (Bavishi et al., 2023)</td><td>SigLIP (Zhai et al., 2023)</td></tr><tr><td>Paradigm</td><td>Late-Fusion</td><td>Early-Fusion</td><td>Late-Fusion</td></tr><tr><td>Image ICL</td><td>No</td><td>Yes</td><td>Yes</td></tr><tr><td>Parameters</td><td>7B</td><td>8B</td><td>8B</td></tr><tr><td>Num Layers</td><td>32</td><td>36</td><td>32</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the accuracy of six tasks using different cross-modal transfer methods, showing that patching cross-modal task vectors generally outperforms other methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Cross-modal transfer results. We display the accuracy across six tasks on an unseen test set. For image queries, patching cross-modal task vectors (Text ICL xPatch) outperforms text ICL in the same context window (Text ICL xBase) and the strong unimodal image ICL baseline (Image ICL Base, Patch). The best method per task is underlined and overall is bolded.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Model</td><td>Country-Capital</td><td>Country-Currency</td><td>Animal-Latin</td><td>Animal- Young</td><td>Food-Color</td><td>Food-Flavor</td><td>Avg.</td></tr><tr><td>Idefics2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>No Context</td><td>0.00</td><td>0.00</td><td>0.07</td><td>0.00</td><td>0.00</td><td>0.00</td><td>0.01</td></tr><tr><td>Image ICL Base</td><td>0.74</td><td>0.53</td><td>0.44</td><td>0.12</td><td>0.43</td><td>0.35</td><td>0.44</td></tr><tr><td>Text ICL xBase</td><td>0.16</td><td>0.06</td><td>0.24</td><td>0.16</td><td>0.17</td><td>0.12</td><td>0.15</td></tr><tr><td>Text ICL xPatch</td><td>0.70</td><td>0.44</td><td>0.50</td><td>0.64</td><td>0.54</td><td>0.40</td><td>0.54</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the test accuracy results for six tasks when transferring task vectors from text-based in-context learning (ICL) to image queries, comparing different template formats used for the Idefics2 model.
> <details>
> <summary>read the caption</summary>
> Table 6: We ablate the template format and display the test accuracy when transferring from text ICL to image queries. We use the recommended template for Idefics2.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Model</td><td>Country-Capital</td><td>Country-Currency</td><td>Animal-Latin</td><td>Animal-Young</td><td>Food-Color</td><td>Food-Flavor</td><td>Avg.</td></tr><tr><td>LLaVA-v1.5</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>VLM-VLM xPatch</td><td>0.31</td><td>0.30</td><td>0.26</td><td>0.18</td><td>0.53</td><td>0.31</td><td>0.32</td></tr><tr><td>LLM-VLM xPatch</td><td>0.33</td><td>0.32</td><td>0.25</td><td>0.33</td><td>0.53</td><td>0.45</td><td>0.37</td></tr><tr><td>Idefics2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>VLM-VLM xPatch</td><td>0.61</td><td>0.40</td><td>0.48</td><td>0.62</td><td>0.53</td><td>0.39</td><td>0.51</td></tr><tr><td>LLM-VLM xPatch</td><td>0.57</td><td>0.58</td><td>0.46</td><td>0.55</td><td>0.54</td><td>0.39</td><td>0.52</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the accuracy of different cross-modal transfer methods across six tasks, showing the superior performance of patching cross-modal task vectors compared to using text ICL or image ICL alone.
> <details>
> <summary>read the caption</summary>
> Table 3: Cross-modal transfer results. We display the accuracy across six tasks on an unseen test set. For image queries, patching cross-modal task vectors (Text ICL xPatch) outperforms text ICL in the same context window (Text ICL xBase) and the strong unimodal image ICL baseline (Image ICL Base, Patch). The best method per task is underlined and overall is bolded.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Model</td><td>Country-Capital</td><td>Country-Currency</td><td>Animal-Latin</td><td>Animal-Young</td><td>Food-Color</td><td>Food-Flavor</td><td>Avg.</td></tr><tr><td>LLaVA-v1.5</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Image - Image Patch</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Text Image xPatch</td><td>0.31</td><td>0.30</td><td>0.26</td><td>0.18</td><td>0.53</td><td>0.31</td><td>0.32</td></tr><tr><td>Text Text Patch</td><td>0.97</td><td>0.58</td><td>0.77</td><td>0.20</td><td>0.63</td><td>0.41</td><td>0.59</td></tr><tr><td>Image - Text xPatch</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td></tr><tr><td>Mantis-Fuyu</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Image - Image Patch</td><td>0.17</td><td>0.03</td><td>0.16</td><td>0.05</td><td>0.50</td><td>0.31</td><td>0.20</td></tr><tr><td>Text Image xPatch</td><td>0.32</td><td>0.23</td><td>0.36</td><td>0.09</td><td>0.51</td><td>0.36</td><td>0.31</td></tr><tr><td>Text Text Patch</td><td>0.46</td><td>0.30</td><td>0.48</td><td>0.18</td><td>0.28</td><td>0.36</td><td>0.34</td></tr><tr><td>Image - Text xPatch</td><td>0.31</td><td>0.01</td><td>0.36</td><td>0.05</td><td>0.40</td><td>0.34</td><td>0.25</td></tr><tr><td>Idefics2</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>Image - Image Patch</td><td>0.58</td><td>0.32</td><td>0.40</td><td>0.03</td><td>0.39</td><td>0.17</td><td>0.31</td></tr><tr><td>Text Image xPatch</td><td>0.61</td><td>0.40</td><td>0.48</td><td>0.62</td><td>0.53</td><td>0.39</td><td>0.51</td></tr><tr><td>Text Text Patch</td><td>0.97</td><td>0.61</td><td>0.74</td><td>0.54</td><td>0.63</td><td>0.41</td><td>0.65</td></tr><tr><td>Image - Text xPatch</td><td>0.81</td><td>0.43</td><td>0.58</td><td>0.04</td><td>0.40</td><td>0.27</td><td>0.42</td></tr></table>{{< /table-caption >}}
> 🔼 The table displays the accuracy of cross-modal transfer performance across six tasks using different models and input methods.
> <details>
> <summary>read the caption</summary>
> Table 3: Cross-modal transfer results. We display the accuracy across six tasks on an unseen test set. For image queries, patching cross-modal task vectors (Text ICL xPatch) outperforms text ICL in the same context window (Text ICL xBase) and the strong unimodal image ICL baseline (Image ICL Base, Patch). The best method per task is underlined and overall is bolded.
> </details>

{{< table-caption >}}
<table id='13' style='font-size:16px'><tr><td>Task</td><td>Instruction</td></tr><tr><td>Country-Capital</td><td>city, GU, vik, cities, headquarters</td></tr><tr><td>Country-Currency</td><td>◇, ◇, ◇, itos, ◇</td></tr><tr><td>Animal-Latin</td><td>species, genus, ◇, animals, american</td></tr><tr><td>Animal-Young</td><td>baby, babies, ◇, bach, called</td></tr><tr><td>Food-Color</td><td>colors, color, colour, ETH, ilo</td></tr><tr><td>Food-Flavor</td><td>taste, tastes, arom,food,flavor</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the accuracy results of cross-modal transfer experiments across six tasks, comparing different methods of task vector usage and showing the superior performance of cross-modal patching for image queries.
> <details>
> <summary>read the caption</summary>
> Table 3: Cross-modal transfer results. We display the accuracy across six tasks on an unseen test set. For image queries, patching cross-modal task vectors (Text ICL xPatch) outperforms text ICL in the same context window (Text ICL xBase) and the strong unimodal image ICL baseline (Image ICL Base, Patch). The best method per task is underlined and overall is bolded.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.22330/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.22330/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}