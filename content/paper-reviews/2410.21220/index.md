---
title: "Vision Search Assistant: Empower Vision-Language Models as Multimodal Search Engines"
summary: "Vision Search Assistant empowers vision-language models as robust multimodal search engines by effectively integrating web agents for real-time information retrieval, significantly improving performan..."
categories: ["AI Generated"]
tags: ["🔖 24-10-28", "🤗 24-10-29"]
showSummary: true
date: 2024-10-28
draft: false
---

{{< keyword >}} 2410.21220 {{< /keyword >}}

### TL;DR


{{< lead >}}

Existing large vision-language models (VLMs) struggle with visual content they haven't encountered during training, limiting their ability to answer questions about unfamiliar images or events.  This is especially challenging when new objects and concepts frequently emerge and updating models is computationally expensive.  The problem is that VLMs lack real-time access to updated information.



To address this, the researchers introduce Vision Search Assistant (VSA). VSA combines the strengths of VLMs and web agents. VLMs provide visual understanding and web agents offer real-time information access. This collaborative approach allows the system to answer questions about unseen images by searching and retrieving relevant information from the web. Experiments showed that VSA significantly outperforms other models in handling both open and closed-set question answering tasks.  This approach enhances VLM's ability to handle novel visual content and makes them more adaptable to the constantly evolving real-world information.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.21220" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.21220" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it presents **Vision Search Assistant (VSA)**, a novel framework that significantly improves the ability of large vision-language models (VLMs) to handle unseen images and novel concepts.  **VSA leverages the real-time information access of web agents** to overcome the limitations of VLMs' knowledge cut-off dates and expands their capabilities for open-world tasks.  The work is highly relevant to current research trends in multimodal learning and retrieval-augmented generation, providing a valuable solution for bridging the gap between visual understanding and open-domain knowledge access.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Vision Search Assistant (VSA) successfully combines the strengths of vision-language models (VLMs) and web agents to overcome the limitations of VLMs' knowledge cut-off dates and enable handling of unseen images and novel concepts. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VSA demonstrates significant performance improvements over state-of-the-art VLMs on both open-set and closed-set visual question answering benchmarks, showcasing its effectiveness in various scenarios. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The proposed Chain of Search algorithm and collaborative generation approach in VSA offers a novel and efficient strategy for multimodal information retrieval and knowledge integration, paving the way for future advancements in open-world visual question answering. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.21220/figures_2_1.png)

> 🔼 Figure 1 shows a comparison of four different models' abilities to answer a question about a game image that none of the models were trained on, highlighting the superior performance of the proposed Vision Search Assistant.
> <details>
> <summary>read the caption</summary>
> For Novel Images & Events: VLMs show very limited generalization ability. Figure 1. Vision Search Assistant acquires unknown visual knowledge through web search. An intuitive comparison of answering the user's question with an unseen image. The proposed Vision Search Assistant is developed based on LLaVA-1.6-7B, and its ability to answer the question on unseen images outperforms the state-of-the-art models including LLava-1.6-34B [29], Qwen2-VL-72B [5], and InternVL2-76B [11].
> </details>





![](https://ai-paper-reviewer.com/2410.21220/charts_5_0.png)

> 🔼 The chart illustrates the iterative process of the Chain of Search algorithm, showing how it progressively expands a directed graph to obtain comprehensive web knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 4. The Chain of Search algorithm (§ 3.2). We deduce the update of the directed graph when k=1,2,..., and the web knowledge is progressively extracted from each update.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td></td><td></td><td>Vision Search Assistant</td><td>Perplexity.ai Pro</td><td colspan="2">GPT-40+Web</td></tr><tr><td>Factuality</td><td></td><td>68%</td><td>14%</td><td colspan="2">18%</td></tr><tr><td>Relevance</td><td></td><td>80%</td><td></td><td></td><td>9%</td></tr><tr><td></td><td></td><td></td><td></td><td>11%</td><td></td></tr><tr><td>Supportiveness</td><td></td><td>63%</td><td>19%</td><td></td><td>24%</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents a closed-set evaluation of the Vision Search Assistant and baseline models on the LLaVA-W benchmark, showing improvements in conversation, detail, reasoning, and overall performance.
> <details>
> <summary>read the caption</summary>
> Table 1. Closed-Set Evaluation on the LLaVA-W benchmark. We use GPT-40 (0806) for evaluation. Naive search here denotes the VLM with Google image search.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.21220/figures_2_3.png)

> 🔼 The figure compares the performance of Vision Search Assistant against Qwen2-VL-72B and InternVL2-76B on open-set question answering tasks using both novel images and events.
> <details>
> <summary>read the caption</summary>
> Figure 6. Comparisons among Qwen2-VL-72B, InternVL2-76B, and Vision Search Assistant. We compare the open-set QA results on both novel events (the first two rows) and images (the last two rows). Vision Search Assistant excels in generating accurate and detailed results.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_2_4.png)

> 🔼 The figure shows a comparison of Vision Search Assistant with other closed-source models on novel image questions, demonstrating Vision Search Assistant's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 2. Comparsion with Closed-Source Models including GPT-40 [34], Gemini [37], Claude 3.5 Sonnet [3] with Vision Search Assistant shows that Vision Search Assistant satisfies users' needs better even if the image is novel.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_2_5.png)

> 🔼 Figure 1 shows a comparison of four different models' responses to a user query about an unseen image, highlighting the superior performance of the proposed Vision Search Assistant.
> <details>
> <summary>read the caption</summary>
> For Novel Images & Events: VLMs show very limited generalization ability. Figure 1. Vision Search Assistant acquires unknown visual knowledge through web search. An intuitive comparison of answering the user's question with an unseen image. The proposed Vision Search Assistant is developed based on LLaVA-1.6-7B, and its ability to answer the question on unseen images outperforms the state-of-the-art models including LLava-1.6-34B [29], Qwen2-VL-72B [5], and InternVL2-76B [11].
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_3_1.png)

> 🔼 The figure compares the responses of Vision Search Assistant with those of GPT-40, Gemini, and Claude 3.5 Sonnet on a novel image, demonstrating Vision Search Assistant's superior performance.
> <details>
> <summary>read the caption</summary>
> Figure 2. Comparsion with Closed-Source Models including GPT-40 [34], Gemini [37], Claude 3.5 Sonnet [3] with Vision Search Assistant shows that Vision Search Assistant satisfies users' needs better even if the image is novel.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_4_0.png)

> 🔼 The figure illustrates the Vision Search Assistant framework, detailing the three main steps: visual content formulation, web knowledge search, and collaborative generation, showing how it leverages VLMs and web agents for accurate answers to visual questions.
> <details>
> <summary>read the caption</summary>
> Figure 3. Overview of Vision Search Assistant. We first identify the critical objects and generate their descriptions considering their correlations, named Correlated Formulation, using the Vision Language Model (VLM). We then use the LLM to generate sub-questions that leads to the final answer, which is referred to as the Planning Agent. The web pages returned from the search engine are analyzed, selected, and summarized by the same LLM, which is referred to as the Searching Agent. We use the original image, the user’s prompt, the Correlated Formulation together with the obtained web knowledge to generate the final answer. Vision Search Assistant produces reliable answers, even for novel images, by leveraging the collaboration between VLM and web agents to gather visual information from the web effectively.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_8_0.png)

> 🔼 Figure 10 shows various examples of Vision Search Assistant successfully handling diverse inputs, demonstrating its capabilities in different scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 10. A series of demos of Vision Search Assistant on novel images, events, and in-the-wild scenarios. Vision Search Assistant delivers promising potential as a powerful multimodal engine.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_11_0.png)

> 🔼 Figure 1 illustrates the generative image-space prior on scene motion, showing how a single RGB image is used to generate a spectral volume representing long-term pixel trajectories, enabling realistic animation of pictures and interactive simulations.
> <details>
> <summary>read the caption</summary>
> Figure 1. We model a generative image-space prior on scene motion. From a single RGB image, our method generates a spectral volume [23] – a motion representation that models dense, long-term pixel trajectories in the frequency domain. Our learned motion priors can be used to animate pictures realistically. We visualize carpet videos as interactive simulation dynamics that respond to user inputs like dragging individual points. On the right, we see looping carpet videos in space-time. At t = 0, we align the input scanline shown on the left.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_11_1.png)

> 🔼 The figure illustrates the workflow of Vision Search Assistant, which leverages the collaboration between Vision Language Models and web agents to answer questions about images, even novel ones, by gathering visual information from the web.
> <details>
> <summary>read the caption</summary>
> Figure 3. Overview of Vision Search Assistant. We first identify the critical objects and generate their descriptions considering their correlations, named Correlated Formulation, using the Vision Language Model (VLM). We then use the LLM to generate sub-questions that leads to the final answer, which is referred to as the Planning Agent. The web pages returned from the search engine are analyzed, selected, and summarized by the same LLM, which is referred to as the Searching Agent. We use the original image, the user's prompt, the Correlated Formulation together with the obtained web knowledge to generate the final answer. Vision Search Assistant produces reliable answers, even for novel images, by leveraging the collaboration between VLM and web agents to gather visual information from the web effectively.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_11_3.png)

> 🔼 Figure 10 shows examples of Vision Search Assistant handling various scenarios including novel images, events, and in-the-wild situations, demonstrating its potential as a powerful multimodal engine.
> <details>
> <summary>read the caption</summary>
> Figure 10. A series of demos of Vision Search Assistant on novel images, events, and in-the-wild scenarios. Vision Search Assistant delivers promising potential as a powerful multimodal engine.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_11_4.png)

> 🔼 The figure shows an ablation study comparing the use of image-based captions versus object-level descriptions for visual search tasks, highlighting the improved precision of the latter approach.
> <details>
> <summary>read the caption</summary>
> Figure 7. Ablation Study on What to Search. We use the object description to avoid the visual redundancy of the image.
> </details>



![](https://ai-paper-reviewer.com/2410.21220/figures_11_5.png)

> 🔼 Figure 10 shows several example uses of the Vision Search Assistant on various inputs, demonstrating its ability to answer questions about images, events, and general knowledge.
> <details>
> <summary>read the caption</summary>
> Figure 10. A series of demos of Vision Search Assistant on novel images, events, and in-the-wild scenarios. Vision Search Assistant delivers promising potential as a powerful multimodal engine.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:20px'><tr><td>Model</td><td>Conversation (%)</td><td>Detail (%)</td><td>Reasoning (%)</td><td>Overall (%)</td></tr><tr><td>LLava-1.6-7B (Baseline)</td><td>72.9</td><td>76.5</td><td>84.2</td><td>78.5</td></tr><tr><td>LLava-1.6-7B (naive search)</td><td>70.3</td><td>76.7</td><td>85.8</td><td>78.9</td></tr><tr><td>LLava-1.6-7B (w/ § 3.2)</td><td>72.6</td><td>78.9</td><td>89.8</td><td>82.7</td></tr><tr><td>Vision Search Assistant</td><td>73.3 (+0.4)</td><td>79.3 (+2.8)</td><td>95.0 (+10.8)</td><td>84.9 (+6.4)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a closed-set evaluation of the Vision Search Assistant and baseline models on the LLaVA-W benchmark, showing significant performance gains in conversation, detail, reasoning, and overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1. Closed-Set Evaluation on the LLaVA-W benchmark. We use GPT-40 (0806) for evaluation. Naive search here denotes the VLM with Google image search.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Input "What is the current status of this company?"</td><td></td><td>I'm unable to provide real-time information or updates on specific companies. For the most accurate and up-to-date information, please visit the official website of the company.</td></tr><tr><td></td><td>As of my last update in 2023, Tesla is a leading company in the electric vehicle (EV) industry, known for its innovative electric cars, energy storage solutions, and solar panels.</td><td>Tesla has performed well in its current state in September 2024. Tesla achieved record quarterly revenue and profit growth in the second quarter and outperformed the broader market index in terms of market performance.</td></tr><tr><td>"Provide new products of this brand."</td><td>The image shows the back of an Here are some recent and upcoming iPhone, specifically an iPhone 12 products from Apple: Pro or iPhone 12 Pro Max, based iPhone 14 Series,, Apple Watch on the camera setup. Here are Series 8, SE (Second Generation), some of the latest products from iPad (2022), iPad (10th generation), Apple as of my last update in April iPad Pro (M2 chip), MacBook Air with 2023: iPhone 14 Series, iPad Pro M2 Chip, MacBook Pro with M2 Chip (2023), iPad Air (2023), etc. AirPods Pro (2nd Generation), etc</td><td>Here are the new products that Apple will launch in 2024: iPhone series: 1. iPhone 16 Pro, 2. iPhone 16 Pro Max, iPad series: 1. iPad Pro, 2. iPad Air. Mac series: 1. MacBook Air. Apple Watch series: 1. Apple Watch Series 10, 2. Apple Watch Ultra 2. AirPods series: 1. AirPods 4, 2. AirPods Max.</td></tr><tr><td>"Introduce basic information of this product."</td><td>The image shows a high-end The image shows a Huawei smartphone with a distinctive smartphone, specifically the design. The phone features a red Mate Xs 2.Huawei Mate Xs 2 leather-like back with a gold trim, combines cutting-edge technology giving it a luxurious appearance. with a luxurious design, making it The camera module is prominently a top choice for users seeking displayed on the back, featuring both style and functionality in multiple lenses and a flash. their smartphones.</td><td>Huawei Mate XT Ultimate Design is a high- end folding screen smartphone with a unique three-screen folding design and powerful hardware configuration. It adopts a reverse double-hinge design, which can be folded in a "Z" shape to achieve a three-screen state. When fully unfolded, the screen diagonal length reaches 10.2 inches, and when folded it becomes 7.9 inches, etc..</td></tr><tr><td>"Provide information about this new model." OpenAl o1 wsonesofA models thinking before</td><td>The image you provided is an OpenAI's o1 series represents a advertisement for OpenAI o1, a step towards creating AI models new series of AI models designed that emphasize depth and precision to spend more time thinking in their responses. While the exact before they respond. This specifications and capabilities suggests that these models are would need further exploration likely to be more deliberate and through official documentation or thoughtful in their responses. hands-on experience, etc.</td><td>The o1 model is the latest in a series of AI models launched by OpenAI. The o1 model uses reinforcement learning technology, which enables it to generate a very long internal chain of thoughts when performing complex the reasoning tasks. OpenAI emphasizes that o1 model is designed with security in mind and introduces new content security features to prevent the model from unsafe operations.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a closed-set evaluation of the LLaVA-W benchmark, comparing the performance of different models, including a baseline, naive search, an improved model using the proposed method, and the Vision Search Assistant.
> <details>
> <summary>read the caption</summary>
> Table 1. Closed-Set Evaluation on the LLaVA-W benchmark. We use GPT-40 (0806) for evaluation. Naive search here denotes the VLM with Google image search.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21220/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21220/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}