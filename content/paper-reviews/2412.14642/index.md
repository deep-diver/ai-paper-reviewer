---
title: "TOMG-Bench: Evaluating LLMs on Text-based Open Molecule Generation"
summary: "New benchmark TOMG-Bench evaluates LLMs' open-domain molecule generation, revealing limitations and highlighting Llama-3.1-8B's strong performance via instruction tuning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Hong Kong Polytechnic University",]
showSummary: true
date: 2024-12-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.14642 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiatong Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.14642" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.14642" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/tomg-bench-evaluating-llms-on-text-based-open" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.14642/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for molecule discovery are inefficient, relying on trial and error. While GNNs offer improvements, they lack generalizability and struggle with customized molecule design. Large Language Models (LLMs) offer potential, but existing molecule-caption translation tasks are limited as they focus on targeted generation rather than open-ended molecule design.  This limits their application in true molecule discovery.

The paper introduces TOMG-Bench, a new benchmark evaluating LLMs' ability to perform three key tasks: molecule editing, optimization, and custom generation.  A novel instruction-tuning dataset, OpenMolIns, was also developed to improve LLM performance on these tasks.  The comprehensive evaluation of 25 LLMs highlights the limitations of current models and demonstrates that instruction-tuned Llama-3.1-8B outperforms other open-source LLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} TOMG-Bench, the first benchmark for evaluating LLMs in open-domain molecule generation, was introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Existing molecule-caption translation tasks struggle with generalization; open molecule generation is more challenging. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Instruction tuning with OpenMolIns significantly improves Llama-3.1-8B's performance, surpassing many other LLMs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it introduces the first benchmark (TOMG-Bench) for evaluating LLMs' capabilities in open-domain molecule generation** and demonstrates the limitations of existing methods. It opens exciting avenues for future research in AI-driven drug discovery and materials science by providing a standardized evaluation framework and a new instruction-tuning dataset (OpenMolIns).  This work directly addresses the need for more robust and generalizable AI models in the field.

------
#### Visual Insights



![](https://arxiv.org/html/2412.14642/x1.png)

> 🔼 Figure 1 contrasts two approaches to molecule generation using text. Panel (a) shows targeted generation, where the goal is to generate one specific molecule from a textual description. There's only one correct answer. Panel (b) illustrates open generation, where a textual description can lead to many correct answers, testing the model's flexibility and understanding of the chemical space.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of Text-Based Targeted Molecule Generation (a) v.s. Text-Based Open Molecule Generation (b).
> </details>





{{< table-caption >}}
| Item | Data Size |
|---|---| 
| TOMG-Bench |  |
| subtask | 5,000 |
| OpenMolIns |  |
| light | 4,500 |
| small | 18,000 |
| medium | 45,000 |
| large | 90,000 |
| xlarge | 1,200,000 |{{< /table-caption >}}

> 🔼 This table presents the dataset statistics for both the TOMG-Bench benchmark and the OpenMolIns instruction tuning dataset.  TOMG-Bench is composed of three main tasks (molecule editing, molecule optimization, and custom molecule generation), each with three subtasks, each containing 5000 test samples. OpenMolIns is an instruction-tuning dataset designed to complement TOMG-Bench, providing data at five different scales (light, small, medium, large, and extra-large) to assess the effect of data size on model performance. The table shows the number of data samples associated with each subtask in TOMG-Bench and each data scale in OpenMolIns.
> <details>
> <summary>read the caption</summary>
> Table 1: Statisics of TOMG-Bench and OpenMolIns.
> </details>





### In-depth insights


#### LLM Molecule Gen
The heading 'LLM Molecule Gen' suggests research on using Large Language Models (LLMs) for generating molecules. This is a significant area because LLMs can potentially revolutionize drug discovery and materials science by automating and accelerating the design process.  **A key aspect would be the evaluation of these LLMs' ability to generate novel and useful molecules**, which goes beyond simply creating valid chemical structures.  The research likely involves **developing benchmarks and metrics to assess various qualities of the generated molecules**, such as novelty,  drug-likeness, and synthesizability.  Furthermore, the investigation might explore different LLM architectures and training methods to optimize molecule generation. **The success of LLM molecule generation hinges on effective representation of molecular information in a textual format** that LLMs can process, and the ability of the models to learn complex relationships between molecular structure and properties.  **The challenges would include handling the inherent complexity and ambiguity of chemical language and ensuring the generated molecules are both novel and practical** for real-world applications. The field is ripe for exploration with great potential but also significant hurdles to overcome.

#### TOMG-Bench Eval
A hypothetical 'TOMG-Bench Eval' section would delve into a thorough evaluation of the Text-based Open Molecule Generation Benchmark (TOMG-Bench).  This would involve a detailed analysis of the benchmark's design, including its three core tasks (molecule editing, optimization, and custom generation) and their respective subtasks.  **Crucially, the evaluation would assess the performance of various large language models (LLMs) on these tasks, using metrics such as accuracy, novelty, and validity to gauge the LLMs' ability to generate, edit, and optimize molecules effectively.**  The analysis should not only present quantitative results but also offer a qualitative discussion of the strengths and weaknesses of the different LLMs.  **Insights into the limitations and potential areas for improvement in text-guided molecule discovery would be central, providing a roadmap for future research and development of LLMs for chemistry applications.**  Furthermore, any instruction-tuning datasets used in the evaluation process (like OpenMolIns) and the effects thereof on model performance would need to be documented and discussed.  The overall goal would be to provide a clear and comprehensive understanding of the current capabilities and limitations of LLMs in the context of open molecule generation.

#### OpenMolIns Tuning
The effectiveness of large language models (LLMs) in tasks involving open-domain molecule generation is significantly impacted by the quality and quantity of training data.  The concept of 'OpenMolIns Tuning' highlights the importance of **specialized instruction tuning datasets** to enhance LLM performance in this complex domain.  OpenMolIns, as a carefully curated dataset, likely addresses the limitations of existing datasets by providing a more diverse and representative set of molecule-related data, including various levels of complexity to better model the nuanced aspects of molecule design and manipulation.  The use of such a tuned dataset likely improves the ability of LLMs to generalize, resulting in **more accurate and novel molecular structures**.  The iterative process of tuning, coupled with tailored evaluation metrics, facilitates a deeper understanding of the LLM's capabilities and potential areas for improvement. This approach directly targets the challenge of bridging the gap between textual descriptions and molecular structures, a crucial aspect of harnessing LLMs for molecule discovery.

#### Dataset Creation
Creating a robust dataset is crucial for evaluating Large Language Models (LLMs) in molecule generation.  The process necessitates careful consideration of various factors.  **Data diversity** is paramount; the dataset should include a wide range of molecular structures and properties to ensure that the LLMs generalize well to unseen molecules.  **Task variety** is also important; the dataset should include tasks reflecting various scenarios, such as molecule editing, optimization and de novo generation.  The **balance between complexity and simplicity** is vital; the dataset should incorporate challenges, but not to the point of hindering progress, thus it is beneficial to categorize tasks by difficulty. Finally, **evaluation metrics** need to be well-defined. The quality of the generated molecules should be assessed using appropriate metrics, such as accuracy, novelty, and validity. Using a combination of these approaches allows for a comprehensive and reliable benchmark for assessing LLMs' performance in this critical field.

#### Future Directions
Future research should **focus on enhancing the diversity and quality of training data** for LLMs in the context of molecule generation.  This includes developing larger, more diverse datasets that span a wider range of molecular properties and structures, as well as exploring new methods for data augmentation and annotation.  Further work should also **investigate more advanced evaluation metrics** that go beyond simple accuracy measures and capture the creativity and novelty of generated molecules.  **The development of more robust and interpretable models** is also crucial to improve the trustworthiness and reliability of predictions made by LLMs.  Finally, future research could explore **the integration of LLMs with other AI techniques**, such as graph neural networks, to leverage the strengths of both approaches in molecule discovery and design.  By addressing these challenges, researchers can unlock the full potential of LLMs in revolutionizing the field of molecular science.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.14642/x2.png)

> 🔼 This figure illustrates the workflow and evaluation process of the TOMG-Bench benchmark.  The workflow begins with the selection of molecules from the Zinc-250k database, categorized by their functional groups and fundamental properties. These molecules then serve as inputs for three main tasks: molecule editing (MolEdit), molecule optimization (MolOpt), and customized molecule generation (MolCustom). Each task involves several subtasks, as detailed in the paper. The LLM processes these molecular inputs following prompts specified for each task.  RDKit, a molecular toolbox, is used to evaluate the generated molecules, assessing metrics like accuracy, novelty, similarity, and validity. The final evaluation metrics provide a comprehensive evaluation of the LLM's performance on open molecule generation tasks. 
> <details>
> <summary>read the caption</summary>
> Figure 2: Data construction workflow and evaluation process of TOMG-Bench.
> </details>



![](https://arxiv.org/html/2412.14642/extracted/6081791/figures/performance.png)

> 🔼 Figure 3 presents a comparison of the performance of various large language models (LLMs) on the TOMG-Bench benchmark.  The x-axis shows the number of parameters (in billions) for each model, while the y-axis represents the weighted average accuracy achieved on the benchmark. The LLMs are categorized into four groups: proprietary models, open-source general LLMs, open-source LLMs fine-tuned on the ChEBI-20 dataset, and open-source LLMs fine-tuned on the OpenMolIns dataset. Models with known parameter counts are represented as individual data points, while those with unknown parameter counts are shown as horizontal lines. This visualization allows for a direct comparison of model performance across different architectures and training regimes, highlighting the relative strengths and weaknesses of each category of LLMs on the TOMG-Bench.
> <details>
> <summary>read the caption</summary>
> Figure 3: The performance of models benchmarked in TOMG-Bench. In TOMG-Bench, LLMs are divided into 4 categories: Proprietary Models, Open-source General LLMs, Open-source ChEBI-20 Fine-tuned LLMs, and OpenMolIns Fine-tuned LLMs. Models whose parameters are known are plotted as dots, while models of unknown parameters are denoted as horizontal lines.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Prompt Templates for MolEdit |
|---|---|---|---|
| *AddComponent* | Please add a {} to the molecule {}. | Modify the molecule {} by adding a {}. | Add a {} to the molecule {}. |
| *DelComponent* | Please remove a {} from the molecule {}. | Modify the molecule {} by removing a {}. | Remove a {} from the molecule {}. |
| *SubComponent* | Please substitute a {} in the molecule {} by {}. | Modify the molecule {} by replacing a {} by {}. | Replace a {} in the molecule {} by {}. | Please replace a {} in the molecule {} with {}. | Modify the molecule {} by substituting a {} with {}. | Substitute a {} in the molecule {} with {}. |{{< /table-caption >}}
> 🔼 This table presents the prompt templates used for the molecule editing task in the TOMG-Bench benchmark.  The molecule editing task is divided into three subtasks: AddComponent, DelComponent, and SubComponent. Each subtask has multiple variations of prompt templates designed to instruct the large language model (LLM) to perform specific molecule modifications.  These variations help to ensure robust evaluation and reduce bias stemming from the wording of instructions.
> <details>
> <summary>read the caption</summary>
> Table 2: Prompt Templates for MolEdit
> </details>

{{< table-caption >}}
| Functional Group | benzene ring | hydroxyl | aldehyde | carboxyl | amide |
|---|---|---|---|---|---| 
| Weights | 15 | 15 | 5 | 5 | 10 |
| Functional Group | amine | nitro | halo | nitrile | thiol |
| Weights | 5 | 5 | 5 | 1 | 1 |{{< /table-caption >}}
> 🔼 This table lists the functional groups used in the AddComponent and DelComponent subtasks of the MolEdit task within the TOMG-Bench benchmark.  For AddComponent, it shows the probability (weight) of each functional group being selected when a molecule is modified by adding a functional group.  The weights reflect the relative frequency of these functional groups in real-world molecules, aiming for a more realistic simulation of molecule editing scenarios.
> <details>
> <summary>read the caption</summary>
> Table 3: Functional Groups that are considered in AddComponent and DelComponent, as well as their weights to be selected in AddComponent.
> </details>

{{< table-caption >}}
| Prompt Templates for MolOpt |
|---|---|---|---|
| *LogP* | Please optimize the molecule {} to have a lower/higher LogP value. | Modify the molecule {} to decrease/increase its LogP value. | Optimize the molecule {} to have a lower/higher LogP value. |
|  | Please modify the molecule {} to decrease/increase its LogP value. | Modify the molecule {} to have a lower/higher LogP value. |  |
| *MR* | Please optimize the molecule {} to have a lower/higher MR value. | Modify the molecule {} to decrease/increase its MR value. | Optimize the molecule {} to have a lower/higher MR value. |
|  | Please modify the molecule {} to decrease/increase its MR value. | Modify the molecule {} to have a lower/higher MR value. |  |
| *QED* | Please optimize the molecule {} to have a lower/higher QED value. | Modify the molecule {} to decrease/increase its QED value. | Optimize the molecule {} to have a lower/higher QED value. |
|  | Please modify the molecule {} to decrease/increase its QED value. | Modify the molecule {} to have a lower/higher QED value. |  |
{{< /table-caption >}}
> 🔼 This table presents the prompt templates used in the MolOpt task of the TOMG-Bench benchmark. MolOpt focuses on optimizing molecular properties (LogP, MR, and QED) by modifying molecular structures. The table provides multiple variations of prompts for each property (LogP, MR, and QED), instructing LLMs to either increase or decrease the specified property value. These variations aim to comprehensively evaluate the LLMs' ability to optimize molecules based on different instructions.
> <details>
> <summary>read the caption</summary>
> Table 4: Prompt Templates for MolOpt
> </details>

{{< table-caption >}}
| Prompt Templates for MolCustom |
|---|---|---|---|---|
| _AtomNum_ | Please generate a molecule with {} atom(s). | Please generate a molecule composed of {} atom(s). | Please generate a molecule consisting {} atom(s). | The molecule has {} atom(s). |
|  | The molecule is composed of {} atom(s). | The molecule consists of {} atom(s). | There is a molecule with {} atom(s). | There is a molecule composed of {} atom(s). |
|  | There is a molecule consisting of {} atom(s). | The molecule contains {} atom(s). |  _BondNum_ | Please generate a molecule with {} bond(s). |
|  | Please generate a molecule composed of {} bond(s). | Please generate a molecule consisting {} bond(s). | The molecule has {} bond(s). | The molecule is composed of {} bond(s). |
|  | The molecule consists of {} bond(s). | There is a molecule with {} bond(s). | There is a molecule composed of {} bond(s). | There is a molecule consisting of {} bond(s). |
|  | The molecule contains {} bond(s). | _FunctionalGroup_ | Please generate a molecule with {} group(s). | Please generate a molecule composed of {} group(s). |
|  | Please generate a molecule consisting {} group(s). | The molecule has {} group(s). | The molecule is composed of {} group(s). | The molecule consists of {} group(s). |
|  | There is a molecule with {} group(s). | There is a molecule composed of {} group(s). | There is a molecule consisting of {} group(s). | The molecule contains {} group(s). |{{< /table-caption >}}
> 🔼 This table presents the various prompt templates used in the MolCustom task of the TOMG-Bench benchmark.  The MolCustom task focuses on generating molecules with specific constraints.  The prompts are designed to test the model's ability to generate molecules based on different criteria such as the number of atoms, bonds, or functional groups.  Each prompt template provides slightly different wording to assess how variations in instruction affect the LLM's performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Prompt Templates for MolCustom
> </details>

{{< table-caption >}}
| Atom | carbon | oxygen | nitrogen | sulfur | fluorine | chlorine | bromine | iodine | phosphorus |
|---|---|---|---|---|---|---|---|---|---| 
| Weights | [Mandatory] | 5 | 3 | 3 | 2 | 2 | 2 | 2 | 1 |
| Atom | boron | silicon | selenium | tellurium | arsenic | antimony | bismuth | polonium |  |
| Weights | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |  |{{< /table-caption >}}
> 🔼 This table lists the atoms considered when generating molecules for the AtomNum subtask within the MolCustom task of the TOMG-Bench benchmark.  Each atom is assigned a weight reflecting its relative frequency in real-world molecules. Carbon is mandatory, with other atoms having varying weights.
> <details>
> <summary>read the caption</summary>
> Table 6: Atoms that are considered in AtomNum, as well as their weights to be selected.
> </details>

{{< table-caption >}}
| Bond | single | double | triple | rotatable | aromatic |
|---|---|---|---|---|---| 
| Weights | 5 | 4 | 3 | 1 | 1 |{{< /table-caption >}}
> 🔼 This table lists the types of chemical bonds considered when generating molecules for the BondNum subtask in the MolCustom task of the TOMG-Bench benchmark.  For each bond type (single, double, triple, rotatable, aromatic), a weight is assigned, indicating the relative likelihood of that bond type being selected during molecule generation.  These weights influence the diversity and types of molecules produced by the model.
> <details>
> <summary>read the caption</summary>
> Table 7: Chemical bonds that are considered in BondNum, as well as their weights to be selected.
> </details>

{{< table-caption >}}
| Functional Group | benzene ring | hydroxyl | anhydride | aldehyde | ketone | carboxyl | ester | amide | amine | nitro |
|---|---|---|---|---|---|---|---|---|---|---|
| Weights | 15 | 15 | 2 | 5 | 5 | 10 | 5 | 5 | 5 | 2 |
| Functional Group | halo | thioether | nitrile | thiol | sulfide | disulfide | sulfoxide | sulfone | borane |  |
|---|---|---|---|---|---|---|---|---|---|---|
| Weights | 2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 |  |{{< /table-caption >}}
> 🔼 This table lists the functional groups considered for the 'FunctionalGroup' subtask within the 'MolCustom' task of the TOMG-Bench benchmark.  It shows each functional group and the corresponding weight assigned for its selection during data generation. Higher weights indicate a greater probability of a functional group being selected.  The weights reflect an attempt to mimic the distribution of these functional groups in real-world datasets.
> <details>
> <summary>read the caption</summary>
> Table 8: Functional Groups that are considered in FunctionalGroup, as well as their weights to be selected.
> </details>

{{< table-caption >}}
| Item | Value |
|---|---| 
| Generation |  |
| temperature | 0.75 |
| top_p | 0.85 |
| num_beams | 1 |
| max_new_tokens | 512 |
| Instruction Tuning |  |
| batchsize | 32 |
| lr | 3e-4 |
| cutoff_len | 1024 |
| Lora Settings |  |
| r | 64 |
| α | 128 |
| dropout | 0.1 |{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the experiments for training and evaluating the language models.  It includes values for generation parameters (temperature, top_p, num_beams, max_new_tokens) and instruction tuning parameters (batchsize, learning rate, cutoff_len) as well as LoRA (Low-Rank Adaptation) settings (r, alpha, dropout). These parameters control various aspects of the model's behavior during training and inference, such as randomness, speed, and the quality of generated molecules.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyper-parameters
> </details>

{{< table-caption >}}
| Model | #Parameters (B) | \bar{Acc} (%) | \bar{wAcc}(
%) | 
|---|---|---|---| 
| Claude-3.5 Anthropic (2024b) | - | 51.10 | 35.92 | 
| Gemini-1.5-pro Deepmind (2024) | - | 52.25 | 34.80 | 
| GPT-4-turbo Achiam et al. (2023) | - | 50.74 | 34.23 | 
| GPT-4o Achiam et al. (2023) | - | 49.08 | 32.29 | 
| Claude-3 Anthropic (2024a) | - | 46.14 | 30.47 | 
| OpenMolIns-large (Llama-3.1-8B) | 8 | 43.1 | 27.22 | 
| OpenMolIns-xlarge (Galactica-125M) | 0.125 | 44.48 | 25.73 | 
| Llama3-70B-Instruct (Int4) Dubey et al. (2024) | 70 | 38.54 | 23.93 | 
| OpenMolIns-large (Galactica-125M) | 0.125 | 39.28 | 23.42 | 
| OpenMolIns-medium (Galactica-125M) | 0.125 | 34.54 | 19.89 | 
| GPT-3.5-turbo Achiam et al. (2023) | - | 28.93 | 18.58 | 
| OpenMolIns-small (Galactica-125M) | 0.125 | 24.17 | 15.18 | 
| Llama3.1-8B-Instruct Dubey et al. (2024) | 8 | 26.26 | 14.09 | 
| Llama3-8B-Instruct Dubey et al. (2024) | 8 | 26.40 | 13.75 | 
| chatglm-9B GLM et al. (2024) | 9 | 18.50 | 13.13(7) | 
| OpenMolIns-light (Galactica-125M) | 0.125 | 20.95 | 13.13(6) | 
| OpenMolIns-large (Llama3.2-1B) | 1 | 14.11 | 8.10 | 
| yi-1.5-9B Young et al. (2024) | 9 | 14.10 | 7.32 | 
| Mistral-7B-Instruct-v0.2 Jiang et al. (2023) | 7 | 11.17 | 4.81 | 
| BioT5-base Pei et al. (2023) | 0.25 | 24.19 | 4.21 | 
| MolT5-large Edwards et al. (2022) | 0.78 | 23.11 | 2.89 | 
| Llama-3.1-1B-Instruct Dubey et al. (2024) | 1 | 3.95 | 1.99 | 
| MolT5-base Edwards et al. (2022) | 0.25 | 11.11 | 1.30(0) | 
| MolT5-small Edwards et al. (2022) | 0.08 | 11.55 | 1.29(9) | 
| Qwen2-7B-Instruct Yang et al. (2024) | 7 | 0.18 | 0.15 |{{< /table-caption >}}
> 🔼 This table presents the leaderboard of the Text-based Open Molecule Generation Benchmark (TOMG-Bench).  It ranks various large language models (LLMs) based on their weighted average accuracy across nine subtasks within the benchmark. The models are categorized into four groups: proprietary models (accessible via commercial APIs), open-source general LLMs, open-source LLMs fine-tuned on the ChEBI-20 dataset, and open-source LLMs fine-tuned on the OpenMolIns dataset.  The table shows the number of parameters (in billions) for each model and its corresponding weighted average accuracy, providing a comprehensive comparison of different LLMs' capabilities in open-domain molecule generation tasks.
> <details>
> <summary>read the caption</summary>
> Table 10: Leaderboard of TOMG-Benchmark.
> </details>

{{< table-caption >}}
| Models | AddComponent |  |  | DelComponent |  |  | SubComponent |  |  |
|---|---|---|---|---|---|---|---|---|---|---|
|  | Accuracy | Similarity | Validity | Accuracy | Similarity | Validity | Accuracy | Similarity | Validity |
|---|---|---|---|---|---|---|---|---|---|---|
| GPT-4o <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (2023)</cite> | 0.6188 | 0.6782 | 0.7412 | 0.7012 | 0.6038 | 0.8474 | 0.7992 | 0.7225 | 0.9368 |
| GPT-4-turbo <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (2023)</cite> | 0.699 | 0.6936 | 0.7934 | 0.7244 | 0.5735 | 0.906 | 0.7778 | 0.7323 | 0.916 |
| GPT-3.5-turbo <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (2023)</cite> | 0.5832 | 0.6545 | 0.798 | 0.3082 | 0.7797 | 0.8468 | 0.2918 | 0.6333 | 0.6822 |
| Claude-3.5 <cite class="ltx_cite ltx_citemacro_cite">Anthropic (2024b)</cite> | 0.6832 | 0.7017 | 0.4414 | 0.5414 | 0.6678 | 0.796 | 0.8104 | 0.731 | 0.9588 |
| Claude-3 <cite class="ltx_cite ltx_citemacro_cite">Anthropic (2024a)</cite> | 0.6766 | 0.684 | 0.818 | 0.5556 | 0.6408 | 0.8984 | 0.655 | 0.7159 | 0.9184 |
| Gemini-1.5-pro <cite class="ltx_cite ltx_citemacro_cite">Deepmind (2024)</cite> | 0.7058 | 0.6792 | 0.8254 | 0.759 | 0.5949 | 0.9158 | 0.7148 | 0.7139 | 0.8684 |
| Llama3-70B-Instruct (Int4) <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.5198 | 0.6801 | 0.5922 | 0.6122 | 0.5637 | 0.7182 | 0.5094 | 0.717 | 0.6822 |
| Llama3-8B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.3914 | 0.6649 | 0.5374 | 0.4348 | 0.5058 | 0.57 | 0.2602 | 0.6841 | 0.4838 |
| Llama3.1-8B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.2992 | 0.6088 | 0.4954 | 0.4336 | 0.5257 | 0.591 | 0.3401 | 0.6424 | 0.5076 |
| Mistral-7B-Instruct-v0.2 <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (2023)</cite> | 0.1868 | 0.6251 | 0.376 | 0.2018 | 0.3774 | 0.359 | 0.0602 | 0.6227 | 0.355 |
| Qwen2-7B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Yang et al. (2024)</cite> | 0.001 | 0.2527 | 0.0036 | 0.0006 | 0.4024 | 0.0012 | 0.0004 | 0.2895 | 0.0068 |
| Yi-1.5-9B <cite class="ltx_cite ltx_citemacro_cite">Young et al. (2024)</cite> | 0.1742 | 0.417 | 0.4216 | 0.2858 | 0.5936 | 0.4909 | 0.137 | 0.4619 | 0.4368 |
| Chatglm-9B <cite class="ltx_cite ltx_citemacro_cite">GLM et al. (2024)</cite> | 0.2932 | 0.7622 | 0.5686 | 0.2956 | 0.7494 | 0.6914 | 0.1498 | 0.715 | 0.5084 |
| Llama-3.2-1B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.0374 | 0.5343 | 0.1982 | 0.0768 | 0.575 | 0.3028 | 0.0102 | 0.3671 | 0.1468 |
| MolT5-small <cite class="ltx_cite ltx_citemacro_cite">Edwards et al. (2022)</cite> | 0.122 | 0.1027 | 0.449 | 0.1598 | 0.1125 | 0.4504 | 0.0708 | 0.1029 | 0.4876 |
| MolT5-base <cite class="ltx_cite ltx_citemacro_cite">Edwards et al. (2022)</cite> | 0.1354 | 0.1066 | 0.4686 | 0.1562 | 0.1144 | 0.4472 | 0.0584 | 0.1028 | 0.4426 |
| MolT5-large <cite class="ltx_cite ltx_citemacro_cite">Edwards et al. (2022)</cite> | 0.2834 | 0.1084 | 0.9282 | 0.2228 | 0.1201 | 0.9198 | 0.1692 | 0.0932 | 0.941 |
| BioT5-base <cite class="ltx_cite ltx_citemacro_cite">Pei et al. (2023)</cite> | 0.3462 | 0.1567 | 1 | 0.1668 | 0.1597 | 1 | 0.0684 | 0.1576 | 0.9998 |
| OpenMolIns-large (Llama-3.2-1B) | 0.1756 | 0.5676 | 0.3216 | 0.1816 | 0.4963 | 0.2466 | 0.0844 | 0.5415 | 0.2958 |
| OpenMolIns-large (Llama-3.1-8B) | 0.5822 | 0.6541 | 0.673 | 0.5104 | 0.5074 | 0.6896 | 0.544 | 0.6258 | 0.84 |
| OpenMolIns-light (Galactica-125M) | 0.3786 | 0.5958 | 0.3786 | 0.2062 | 0.6521 | 0.7048 | 0.3102 | 0.5879 | 0.6674 |
| OpenMolIns-small (Galactica-125M) | 0.3472 | 0.6172 | 0.5356 | 0.3258 | 0.6025 | 0.5758 | 0.2692 | 0.6181 | 0.5692 |
| OpenMolIns-medium (Galactica-125M) | 0.4736 | 0.5682 | 0.7442 | 0.4886 | 0.5184 | 0.7488 | 0.3282 | 0.5975 | 0.6958 |
| OpenMolIns-large (Galactica-125M) | 0.5866 | 0.5876 | 0.8228 | 0.6078 | 0.5577 | 0.7934 | 0.3438 | 0.6491 | 0.8438 |
| OpenMolIns-xlarge (Galactica-125M) | 0.5842 | 0.5859 | 0.8438 | 0.6526 | 0.5084 | 0.8286 | 0.1872 | 0.6024 | 0.8538 |{{< /table-caption >}}
> 🔼 This table presents the results of the MolEdit task in the TOMG-Bench benchmark.  The MolEdit task evaluates the ability of Large Language Models (LLMs) to edit existing molecular structures.  The table shows the performance of various LLMs across three subtasks of MolEdit: AddComponent, DelComponent, and SubComponent.  For each subtask and each LLM, the table provides three metrics: Accuracy (the percentage of successfully edited molecules), Similarity (a measure of how similar the edited molecule is to the original), and Validity (the percentage of generated molecules that are chemically valid). The best accuracy for each task is highlighted, and the second-best accuracy is underlined.
> <details>
> <summary>read the caption</summary>
> Table 11: Results on MolEdit. For each task, we highlight the best accuracy and underline the second best accuracy.
> </details>

{{< table-caption >}}
| Models | LogP Accuracy | LogP Similarity | LogP Validity | MR Accuracy | MR Similarity | MR Validity | QED Accuracy | QED Similarity | QED Validity |
|---|---|---|---|---|---|---|---|---|---| 
| GPT-4o [Achiam et al. (2023)] | 0.719 | 0.6586 | 0.8796 | 0.6864 | 0.642 | 0.8352 | 0.3952 | 0.618 | 0.857 |
| GPT-4-turbo [Achiam et al. (2023)] | 0.7662 | 0.6984 | 0.9048 | 0.7388 | 0.6821 | 0.8848 | 0.3946 | 0.6587 | 0.905 |
| GPT-3.5-turbo [Achiam et al. (2023)] | 0.4048 | 0.6327 | 0.854 | 0.412 | 0.6263 | 0.8486 | 0.3316 | 0.5635 | 0.8354 |
| Claude-3.5 [Anthropic (2024b)] | 0.797 | 0.7124 | 0.9422 | 0.6962 | 0.7112 | 0.911 | 0.5361 | 0.7042 | 0.8604 |
| Claude-3 [Anthropic (2024a)] | 0.7984 | 0.6067 | 0.9096 | 0.6094 | 0.6398 | 0.9062 | 0.4678 | 0.5855 | 0.9044 |
| Gemini-1.5-pro [Deepmind (2024)] | 0.7712 | 0.7022 | 0.9274 | 0.7876 | 0.6744 | 0.8926 | 0.4704 | 0.6077 | 0.9484 |
| Llama3-70B-Instruct (Int4) [Dubey et al. (2024)] | 0.5984 | 0.6028 | 0.6482 | 0.5684 | 0.6032 | 0.6272 | 0.2774 | 0.4828 | 0.634 |
| Llama3-8B-Instruct [Dubey et al. (2024)] | 0.4642 | 0.3658 | 0.6086 | 0.4332 | 0.4793 | 0.5704 | 0.2568 | 0.4547 | 0.6112 |
| Llama3.1-8B-Instruct [Dubey et al. (2024)] | 0.399 | 0.4235 | 0.5122 | 0.4164 | 0.483 | 0.5238 | 0.2655 | 0.4499 | 0.6158 |
| Mistral-7B-Instruct-v0.2 [Jiang et al. (2023)] | 0.222 | 0.4501 | 0.2802 | 0.1908 | 0.2578 | 0.3795 | 0.121 | 0.3244 | 0.2532 |
| Qwen2-7B-Instruct [Yang et al. (2024)] | 0 | 0.2923 | 0.0004 | 0.0002 | 0.4123 | 0.0004 | 0 | 0 | 0 |
| Yi-1.5-9B | 0.2884 | 0.5461 | 0.4927 | 0.205 | 0.3724 | 0.4126 | 0.1064 | 0.6596 | 0.4526 |
| Chatglm-9B | 0.3666 | 0.6902 | 0.4736 | 0.3514 | 0.682 | 0.5 | 0.1832 | 0.6506 | 0.4342 |
| Llama-3.2-1B-Instruct [Dubey et al. (2024)] | 0.0644 | 0.5055 | 0.1664 | 0.0822 | 0.441 | 0.1604 | 0.0714 | 0.4757 | 0.1796 |
| MolT5-small | 0.2158 | 0.1052 | 0.4302 | 0.2316 | 0.1011 | 0.442 | 0.2214 | 0.1031 | 0.4326 |
| MolT5-base | 0.2074 | 0.1051 | 0.4168 | 0.1856 | 0.1073 | 0.3796 | 0.2358 | 0.1054 | 0.4536 |
| MolT5-large | 0.4244 | 0.1015 | 0.8156 | 0.4496 | 0.1072 | 0.8678 | 0.4654 | 0.119 | 0.9214 |
| BioT5-base | 0.5158 | 0.1526 | 1 | 0.506 | 0.1597 | 1 | 0.5068 | 0.158 | 1 |
| OpenMolIns-large (Llama-3.2-1B) | 0.2898 | 0.5951 | 0.385 | 0.2644 | 0.5956 | 0.3678 | 0.1996 | 0.5849 | 0.349 |
| OpenMolIns-large (Llama-3.1-8B) | 0.8054 | 0.6678 | 0.872 | 0.7122 | 0.6548 | 0.8514 | 0.5224 | 0.6398 | 0.8802 |
| OpenMolIns-light (Galactica-125M) | 0.3202 | 0.6547 | 0.6416 | 0.3508 | 0.6435 | 0.6358 | 0.269 | 0.6521 | 0.638 |
| OpenMolIns-small (Galactica-125M) | 0.4172 | 0.642 | 0.5568 | 0.3958 | 0.6452 | 0.5338 | 0.2956 | 0.6385 | 0.5376 |
| OpenMolIns-medium (Galactica-125M) | 0.5904 | 0.5812 | 0.789 | 0.5874 | 0.5873 | 0.7384 | 0.4608 | 0.5859 | 0.7768 |
| OpenMolIns-large (Galactica-125M) | 0.6454 | 0.5927 | 0.8198 | 0.6388 | 0.5973 | 0.8028 | 0.495 | 0.5962 | 0.81 |
| OpenMolIns-xlarge (Galactica-125M) | 0.7362 | 0.5744 | 0.8902 | 0.7124 | 0.5697 | 0.8612 | 0.5786 | 0.5677 | 0.8626 |{{< /table-caption >}}
> 🔼 This table presents the results of the molecule optimization (MolOpt) task from the TOMG-Bench benchmark.  The MolOpt task evaluates the ability of large language models (LLMs) to optimize molecular properties (LogP, MR, and QED) by modifying their structures.  For each of the three properties (LogP, MR, QED), and for each LLM tested, the table shows the accuracy, similarity, and validity of the generated molecules.  Accuracy reflects how many molecules successfully met the optimization criteria. Similarity measures the structural similarity between the original molecule and the optimized molecule. Validity checks if the generated molecules are chemically valid. The best accuracy for each property is highlighted, and the second-best accuracy is underlined.
> <details>
> <summary>read the caption</summary>
> Table 12: Results on MolOpt. For each task, we highlight the best accuracy and underline the second best accuracy.
> </details>

{{< table-caption >}}
| Models | AtomNum Accuracy | AtomNum Novelty | AtomNum Validity | BondNum Accuracy | BondNum Novelty | BondNum Validity | FunctionalGroup Accuracy | FunctionalGroup Novelty | FunctionalGroup Validity |
|---|---|---|---|---|---|---|---|---|---| 
| GPT-4o <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (2023)</cite> | 0.1998 | 0.6703 | 0.5852 | 0.065 | 0.6336 | 0.8564 | 0.233 | 0.6513 | 0.859 |
| GPT-4-turbo <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (2023)</cite> | 0.1702 | 0.6991 | 0.4904 | 0.0774 | 0.6301 | 0.9068 | 0.218 | 0.6605 | 0.8778 |
| GPT-3.5-turbo <cite class="ltx_cite ltx_citemacro_cite">Achiam et al. (2023)</cite> | 0.107 | 0.5054 | 0.6947 | 0.0518 | 0.6871 | 0.5522 | 0.1136 | 0.6585 | 0.8686 |
| Claude-3.5 <cite class="ltx_cite ltx_citemacro_cite">Anthropic (2024b)</cite> | 0.1928 | 0.6926 | 0.6548 | 0.1058 | 0.6584 | 0.886 | 0.2364 | 0.6582 | 0.8892 |
| Claude-3 <cite class="ltx_cite ltx_citemacro_cite">Anthropic (2024a)</cite> | 0.1044 | 0.6833 | 0.591 | 0.1042 | 0.6598 | 0.8696 | 0.1816 | 0.9158 | 0.6644 |
| Gemini-1.5-pro <cite class="ltx_cite ltx_citemacro_cite">Deepmind (2024)</cite> | 0.1742 | 0.6902 | 0.6774 | 0.0708 | 0.6522 | 0.8688 | 0.2486 | 0.6673 | 0.924 |
| Llama3-70B-Instruct (Int4) <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.1404 | 0.6675 | 0.5474 | 0.067 | 0.6478 | 0.7378 | 0.1752 | 0.6576 | 0.765 |
| Llama3-8B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.0242 | 0.6649 | 0.3812 | 0.026 | 0.6303 | 0.57 | 0.0848 | 0.6167 | 0.7216 |
| Llama3.1-8B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.0228 | 0.702 | 0.3862 | 0.0395 | 0.6541 | 0.6387 | 0.13 | 0.6274 | 0.6905 |
| Mistral-7B-Instruct-v0.2 <cite class="ltx_cite ltx_citemacro_cite">Jiang et al. (2023)</cite> | 0.0078 | 0.6732 | 0.2986 | 0.0102 | 0.6309 | 0.4524 | 0.0048 | 0.6012 | 0.402 |
| Qwen2-7B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Yang et al. (2024)</cite> | 0.011 | 0.9061 | 0.2622 | 0.001 | 0.8645 | 0.0796 | 0.0022 | 0.8601 | 0.0622 |
| Yi-1.5-9B <cite class="ltx_cite ltx_citemacro_cite">Young et al. (2024)</cite> | 0.0392 | 0.6848 | 0.617 | 0.0208 | 0.6407 | 0.7072 | 0.0126 | 0.6945 | 0.6521 |
| Chatglm-9B <cite class="ltx_cite ltx_citemacro_cite">GLM et al. (2024)</cite> | 0.0002 | 0.7483 | 0.2131 | 0.0254 | 0.7189 | 0.4682 | 0 | 0.6908 | 0.5926 |
| Llama-3.2-1B-Instruct <cite class="ltx_cite ltx_citemacro_cite">Dubey et al. (2024)</cite> | 0.004 | 0.6807 | 0.185 | 0.008 | 0.7465 | 0.2226 | 0.0008 | 0.7461 | 0.2818 |
| MolT5-small <cite class="ltx_cite ltx_citemacro_cite">Edwards et al. (2022)</cite> | 0.0006 | 0.6586 | 0.661 | 0.0064 | 0.598 | 0.6202 | 0.0114 | 0.5287 | 0.8354 |
| MolT5-base <cite class="ltx_cite ltx_citemacro_cite">Edwards et al. (2022)</cite> | 0.0008 | 0.6868 | 0.756 | 0.007 | 0.6509 | 0.8422 | 0.013 | 0.5464 | 0.8382 |
| MolT5-large <cite class="ltx_cite ltx_citemacro_cite">Edwards et al. (2022)</cite> | 0.015 | 0.7103 | 0.8412 | 0.0118 | 0.5611 | 0.8916 | 0.0382 | 0.6088 | 0.9406 |
| BioT5-base <cite class="ltx_cite ltx_citemacro_cite">Pei et al. (2023)</cite> | 0.0118 | 0.8353 | 0.995 | 0.0078 | 0.6667 | 0.9992 | 0.0476 | 0.6792 | 0.9998 |
| OpenMolIns-large (LLama-3.2-1B) | 0.0144 | 0.649 | 0.5616 | 0.035 | 0.615 | 0.6186 | 0.0252 | 0.6373 | 0.4412 |
| OpenMolIns-large (LLama-3.1-8B) | 0.0136 | 0.6634 | 0.7582 | 0.0544 | 0.6614 | 0.7456 | 0.1344 | 0.6396 | 0.6435 |
| OpenMolIns-light (Galactica-125M) | 0.0044 | 0.6054 | 0.793 | 0.0216 | 0.5724 | 0.7596 | 0.0244 | 0.5756 | 0.8442 |
| OpenMolIns-small (Galactica-125M) | 0.0146 | 0.6568 | 0.8424 | 0.053 | 0.6365 | 0.7926 | 0.057 | 0.5954 | 0.8874 |
| OpenMolIns-medium (Galactica-125M) | 0.0294 | 0.6553 | 0.8698 | 0.0622 | 0.6473 | 0.7474 | 0.0882 | 0.6091 | 0.8932 |
| OpenMolIns-large (Galactica-125M) | 0.0464 | 0.6729 | 0.9116 | 0.0716 | 0.6695 | 0.7374 | 0.0996 | 0.6276 | 0.8966 |
| OpenMolIns-xlarge (Galactica-125M) | 0.1862 | 0.6899 | 0.9308 | 0.1656 | 0.6887 | 0.7952 | 0.2006 | 0.6445 | 0.9162 |{{< /table-caption >}}
> 🔼 Table 13 presents the results of the MolCustom task in the TOMG-Bench benchmark.  MolCustom focuses on the generation of molecules with specified properties, testing the ability of LLMs to create novel molecules based on various constraints. The table shows the performance of several LLMs across three subtasks within MolCustom: AtomNum (generating molecules with a specific number of atoms), BondNum (generating molecules with a specific number of bonds), and FunctionalGroup (generating molecules containing specific functional groups).  For each subtask and each LLM, the table displays the accuracy, novelty, and validity of the generated molecules.  Accuracy measures the percentage of successfully generated molecules that satisfy the given constraints; novelty assesses the uniqueness of the generated molecules compared to existing molecules; and validity checks if the generated molecules are chemically valid. The best accuracy for each subtask is highlighted, and the second-best accuracy is underlined.
> <details>
> <summary>read the caption</summary>
> Table 13: Results on MolCustom. For each task, we highlight the best accuracy and underline the second best accuracy.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.14642/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.14642/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}