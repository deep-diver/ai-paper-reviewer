---
title: "Remember, Retrieve and Generate: Understanding Infinite Visual Concepts as Your Personalized Assistant"
summary: "RAP-MLLMs:  Personalize AI assistants in real-time without retraining, using a retrieval-augmented framework and a new dataset for infinite visual concept understanding."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13360 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research introduces a novel framework called Retrieval Augmented Personalization (RAP) to create personalized AI assistants using multimodal large language models (MLLMs).  Instead of retraining the entire model for each user, RAP uses a three-step process: (1) Remember: Stores user-specific information in a key-value database; (2) Retrieve: Retrieves relevant information when needed; and (3) Generate: Uses this information to create personalized responses.  The researchers also created a new, large-scale dataset for training these personalized MLLMs.  Experiments show that RAP-MLLMs work exceptionally well in tasks such as image captioning, question answering, and visual recognition, adapting quickly to new user concepts without additional fine-tuning. The work is important because current MLLMs struggle to remember and utilize user-specific knowledge in daily interactions, limiting their usefulness as personalized assistants. RAP provides a solution by allowing the model to quickly learn and adapt to new concepts without needing to be entirely retrained, significantly increasing the practicality of using MLLMs in various applications.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13360" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13360" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is significant for researchers working on multimodal large language models (MLLMs) and personalization.  It introduces a novel framework (RAP) that enables real-time personalization without retraining, addresses the challenge of user-specific knowledge integration, and proposes a new dataset for personalized MLLM training. This opens avenues for developing more adaptable and user-friendly AI assistants, advancing the state-of-the-art in personalized AI.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel Retrieval Augmented Personalization (RAP) framework enables real-time personalization of MLLMs without retraining. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} RAP-MLLMs achieve excellent performance in personalized image captioning, question answering, and visual recognition. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A new large-scale dataset for personalized MLLM training is created, facilitating further research in personalized multimodal AI. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13360/figures_1_0.png)

> 🔼 The figure illustrates the RAP-LLaVA framework, showcasing how user-specific concepts are remembered and used for personalized multimodal generation.
> <details>
> <summary>read the caption</summary>
> Figure 1: Introduce some user-specific concepts to our RAP-LLaVA, it can remember them and achieve excellent performance in a variety of personalized multimodal generation tasks.
> </details>





![](https://ai-paper-reviewer.com/2410.13360/charts_8_0.png)

> 🔼 The chart displays the F1-score of different personalization methods (MyVLM, LLaVA-LoRA, RAP-Phi3-V, and RAP-LLaVA) across a range of personalized concept counts (50-300).
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance under varying number of personalized concepts.
> </details>





{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td></td><td colspan="2">Number of image</td><td colspan="3">Data requirement</td><td>Support</td></tr><tr><td>Method</td><td>Positive</td><td>Negative</td><td>Caption</td><td>Description</td><td>Question-Answer</td><td>Real-time edit</td></tr><tr><td>Fine-tuning</td><td>n</td><td>-</td><td>Yes</td><td>Yes</td><td>No</td><td>X</td></tr><tr><td>MyVLM</td><td>n</td><td>150</td><td>Yes</td><td>No</td><td>Yes</td><td>X</td></tr><tr><td>Yo'LLaVA</td><td>n</td><td>200</td><td>No</td><td>No</td><td>Yes</td><td></td></tr><tr><td>RAP(Ours)</td><td>1</td><td>-</td><td>No</td><td>Yes</td><td>No</td><td>V</td></tr></table>{{< /table-caption >}}

> 🔼 This table compares different personalization methods for Multimodal LLMs (MLLMs) based on the number of images needed, data requirements, and whether real-time editing is supported.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13360/figures_4_0.png)

> 🔼 The figure illustrates the Retrieval Augmented Personalization (RAP) framework, showing how region-of-interest detection, concept retrieval, and multimodal language model integration work together for personalized responses.
> <details>
> <summary>read the caption</summary>
> Figure 2: Retrieval-Augmented Personalization Framework. Region-of-interest detected by an open world detector are used to retrieve concepts from the database. The images and accompanying information of the retrieved concepts are then integrated into the input for the MLLM.
> </details>



![](https://ai-paper-reviewer.com/2410.13360/figures_5_0.png)

> 🔼 The figure illustrates the pipeline used for data collection to create a dataset for training personalized MLLMs, involving image cropping, Gemini-based description generation, augmentation, and instruction/answer pairing.
> <details>
> <summary>read the caption</summary>
> Figure 3: Our Pipeline for Data Collection. We first crop the target concept from the image based on the dataset annotations and then query Gemini to generate its personalized description. We also apply data augmentation to diversify these cropped images. Then we combine them with the original image to derive a series of instructions and answers from Gemini.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.13360/charts_9_0.png)

> 🔼 The chart compares the time cost of personalization among different methods with varying numbers of personalized concepts.
> <details>
> <summary>read the caption</summary>
> Figure 5: Time Cost of Personalization. We conduct experiment with 2 A800 GPUs.
> </details>


![](https://ai-paper-reviewer.com/2410.13360/charts_9_1.png)

> 🔼 The chart displays the top-K recall rates of the retriever under different database sizes (N).
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance of Our Retriever. Top-K recall rates under varying database size N.
> </details>


![](https://ai-paper-reviewer.com/2410.13360/charts_16_0.png)

> 🔼 The chart shows the distribution of different data types in the dataset used for training and evaluation, namely visual grounding, recognition, image captioning, image description, question answering, and LLaVA-instruction.
> <details>
> <summary>read the caption</summary>
> Figure 7: Composition of our dataset.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Image</td><td>Caption</td></tr><tr><td>WINE dog*</td><td>LLaVA: A man is sitting at a table with a dog, and there are wine glasses and a fork on the table. LLaVA-LoRA: <collie dog) looking pleased as she shares a meal with her owner. MyVLM: <dog*> positioned on a chair by a black table, holding a wine glass in her hand. A white dog sits on the floor beside her. RAP-LLa VA(Ours): <dog*> is a very good boy, and he loves to sit at a table with his owner. They are enjoying a meal.</td></tr><tr><td>H T</td><td>LLaVA: A man and a woman are standing in a kitchen, preparing food together. The woman is cutting lettuce on a cutting board, while the man watches her. There are several tomatoes .. LLaVA-LoRA: 〈H〉 and (K) are preparing a meal together. MyVLM: (T) and her friend 〈H〉 are looking very serious as they take in the scenery. RAP-LLa VA(Ours): 〈H〉 is helping 〈T〉 prepare a salad in the kitchen.</td></tr><tr><td>B G w</td><td>Phi3-V: A group of stuffed animals, including a blue one, are sitting on a black surface. LLaVA-LoRA: 〈B〉, (G) and <W> are happily exploring the grass- land. MyVLM: (G) and his crew are always ready to jump into a new adventure. RAP-Phi3- V(Ours): <W> is hanging out with (G) and (B) on the lawn. They are having a great time playing!</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for multi-modal large language models (MLLMs) in terms of fine-tuning needs, image requirements, data requirements, and real-time editing support.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:20px'><tr><td>Method</td><td>LLM</td><td>Recall</td><td>Precision</td><td>F1-score</td></tr><tr><td>LLaVA-LoRA</td><td>Vicuna-13B</td><td>82.97</td><td>93.28</td><td>87.82</td></tr><tr><td>MyVLM</td><td>Vicuna-13B</td><td>84.65</td><td>86.37</td><td>85.50</td></tr><tr><td>RAP-LLaVA</td><td>Vicuna-13B</td><td>93.51</td><td>96.47</td><td>94.97</td></tr><tr><td>RAP-Phi3-V</td><td>Phi3-V-3.8B</td><td>88.14</td><td>95.10</td><td>91.49</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 quantitatively evaluates the performance of different methods on image captioning task using Recall, Precision and F1-score metrics.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative Evaluation on Image Captioning. We report Recall, Precision and F1-score in the table, the best result in each metric is bold and the second is underlined.
> </details>

{{< table-caption >}}
<br><table id='6' style='font-size:16px'><tr><td rowspan="2">Method</td><td rowspan="2">Train</td><td rowspan="2">#Image</td><td colspan="3">Question Answering</td><td colspan="3">Visual Recognition</td></tr><tr><td>Visual</td><td>Text</td><td>Weighted</td><td>Positive</td><td>Negative</td><td>Weighted</td></tr><tr><td>GPT-4V +Prompt</td><td>X</td><td>1</td><td>0.866</td><td>0.982</td><td>0.924</td><td>0.809</td><td>0.992</td><td>0.901</td></tr><tr><td>GPT-4V+Prompt</td><td>X</td><td>5</td><td>0.887</td><td>0.987</td><td>0.937</td><td>0.851</td><td>0.998</td><td>0.925</td></tr><tr><td>LLaVA</td><td>X</td><td>-</td><td>0.899</td><td>0.659</td><td>0.779</td><td>0.000</td><td>1.000</td><td>0.500</td></tr><tr><td>LLaVA-LoRA</td><td></td><td>1</td><td>0.900</td><td>0.583</td><td>0.741</td><td>0.988</td><td>0.662</td><td>0.825</td></tr><tr><td>LLa VA-LoRA</td><td></td><td>5</td><td>0.935</td><td>0.615</td><td>0.775</td><td>0.997</td><td>0.444</td><td>0.721</td></tr><tr><td>MyVLM-LLaVA</td><td></td><td>5</td><td>0.912</td><td>-</td><td>-</td><td>0.994</td><td>0.845</td><td>0.919</td></tr><tr><td>Yo'LLaVA</td><td></td><td>5</td><td>0.929</td><td>0.883</td><td>0.906</td><td>0.949</td><td>0.898</td><td>0.924</td></tr><tr><td>RAP-LLaVA(Ours)</td><td>X</td><td>1</td><td>0.935</td><td>0.938</td><td>0.936</td><td>0.979</td><td>0.982</td><td>0.980</td></tr><tr><td>RAP-Phi3-V(Ours)</td><td>X</td><td>1</td><td>0.941</td><td>0.850</td><td>0.896</td><td>0.922</td><td>0.988</td><td>0.955</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 quantitatively evaluates the performance of various methods on question answering and visual recognition tasks, highlighting the best performing methods.
> <details>
> <summary>read the caption</summary>
> Table 4: Quantitative Evaluation on Question Answering and Visual Recognition. The best result in each setting is bold and the second is underlined. Evaluation results of GPT-4V are also provided as reference. Weighted results are computed as arithmetic means.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Setting</td><td>Recall</td><td>Precision</td><td>F1-score</td></tr><tr><td>RAP-LLaVA</td><td>93.51</td><td>96.47</td><td>94.97</td></tr><tr><td>Skip retrieval</td><td>96.16 (+2.7)</td><td>100.0 (+3.5)</td><td>98.04 (+3.1)</td></tr><tr><td>- Data aug</td><td>89.25 (-4.3)</td><td>98.01 (+1.5)</td><td>93.42 (-1.6)</td></tr><tr><td>- Neg samples</td><td>95.74 (+2.2)</td><td>58.21 (-38.3)</td><td>72.40 (-22.6)</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the ablation study results of RAP-LLaVA model's performance with different settings, including with perfect retrieval, without data augmentation, and without negative samples.
> <details>
> <summary>read the caption</summary>
> Table 5: We evaluate model's performance with perfect retrieval, and test contributions of each dataset component.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:16px'><tr><td>Method</td><td>MMMU</td><td>InfoSeek</td></tr><tr><td>LLaVA</td><td>0.364</td><td>0.205</td></tr><tr><td>LLaVA-LoRA</td><td>0.359</td><td>0.205</td></tr><tr><td>RAP-LLaVA</td><td>0.361</td><td>0.218</td></tr><tr><td>RAP-LLa VA(With KB)</td><td>0.369</td><td>0.344</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of RAP-LLaVA and other methods on two multimodal benchmarks (MMMU and InfoSeek), showing that RAP-LLaVA maintains most of the original LLaVA's knowledge while improving performance on InfoSeek.
> <details>
> <summary>read the caption</summary>
> Table 6: Evaluation on Multimodal Benchmarks. RAP-LLaVA maintains most knowledge of original LLaVA.
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:16px'><tr><td rowspan="2">Method</td><td colspan="3">Question Answering</td><td colspan="3">Visual Recognition</td></tr><tr><td>Visual</td><td>Text</td><td>Weighted</td><td>Positive</td><td>Negative</td><td>Weighted</td></tr><tr><td>RAP-LLaVA</td><td>0.935</td><td>0.938</td><td>0.936</td><td>0.979</td><td>0.982</td><td>0.980</td></tr><tr><td>- Data aug</td><td>0.924 (-0.011)</td><td>0.918 (-0.020)</td><td>0.921 (-0.015)</td><td>0.943 (-0.036)</td><td>0.988 (+0.006)</td><td>0.965 (-0.015)</td></tr><tr><td>- Neg samples</td><td>0.918 (-0.017)</td><td>0.933 (-0.005)</td><td>0.925 (-0.011)</td><td>0.958 (-0.021)</td><td>0.985 (+0.003)</td><td>0.971 (-0.009)</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents ablation study results on question answering and visual recognition, showing the impact of data augmentation and negative samples on model performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablation studies on Question Answering and Visual Recognition. Weighted results are computed as arithmetic means.
> </details>

{{< table-caption >}}
<br><table id='7' style='font-size:20px'><tr><td>Type</td><td>Size</td></tr><tr><td>Visual Grounding</td><td>100K</td></tr><tr><td>Recognition</td><td>40K</td></tr><tr><td>Caption & Description</td><td>37K</td></tr><tr><td>Question Answering</td><td>16K</td></tr><tr><td>LLa VA-Instruction</td><td>67K</td></tr><tr><td>Total</td><td>260K</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares different personalization methods for Multimodal Large Language Models (MLLMs), highlighting the efficiency and flexibility of the Retrieval Augmented Personalization (RAP) framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='9' style='font-size:16px'><tr><td>Type</td><td>Source Dataset</td></tr><tr><td>Visual Grounding</td><td>RefCOCO (Kazemzadeh et al., 2014), TAO (Dave et al., 2020) ILSVRC2015-VID (Russakovsky et al., 2015), Object365 (Shao et al., 2019)</td></tr><tr><td>Recognition</td><td>CustomConcept101 (Kumari et al., 2023), CelebA (Liu et al., 2015)</td></tr><tr><td>Caption & Description</td><td>RefCOCO (Kazemzadeh et al., 2014), TAO (Dave et al., 2020) Object365 (Shao et al., 2019), CustomConcept101 (Kumari et al., 2023)</td></tr><tr><td>Question Answering</td><td>RefCOCO (Kazemzadeh et al., 2014), TAO (Dave et al., 2020) Object365 (Shao et al., 2019), CustomConcept101 (Kumari et al., 2023) CelebA (Liu et al., 2015)</td></tr><tr><td>LLaVA-Instruction</td><td>LLaVA-Instruct-665K (Liu et al., 2023a)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares different personalization methods for Multimodal LLMs (MLLMs), highlighting RAP's efficiency and flexibility by requiring only one image with a description.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:16px'><tr><td>Image</td><td>Concept</td><td>Information in the Database</td></tr><tr><td></td><td>toy1</td><td>A plush toy. It is orange with a yellow belly and a brown nose.</td></tr><tr><td></td><td>toy2</td><td>This is a plush toy of the bluey character. It is a light blue color with a purple patch on its head, and its ears are yellow.</td></tr><tr><td></td><td></td><td>Question: Give a caption of this image. 1. RAP-LLaVA: 〈toy1〉 is ready for bed! He's snuggled up with his friend, a blue and yellow dog plushie. They're both look- ing so cozy and ready for a good night's sleep! (Add new concept 〈toy2〉 to the database) 2. RAP-LLa VA: 〈toy1〉 and 〈toy2〉 are ready for bed! They are both snuggled under the covers with their favorite stuffed animals.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for Multimodal Large Language Models (MLLMs), highlighting the efficiency and flexibility of the proposed Retrieval Augmented Personalization (RAP) framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td colspan="2">Table 12: Examples of personalized conversations obtained by RAP-LLaVA.</td></tr><tr><td>Image</td><td>Concept Information in the Database</td></tr><tr><td></td><td>A tabby cat with its eyes closed is laying on a light grey my cat surface. The cat's fur is a mix of light and dark brown stripes.</td></tr><tr><td></td><td>Question: Where is <my cat)? RAP-LLaVA: <my cat> is on a staircase. Question: What is the type of <my cat)? RAP-LLaVA: <my cat> is a tabby cat. Question: What is the color of <my cat)? RAP-LLaVA: <my cat> is a tabby cat with a mix of light and dark brown stripes.</td></tr><tr><td>Image Concept</td><td>Information in the Database</td></tr><tr><td></td><td>(A) is a smiling Asian man with short black hair, wearing A glasses and a grey sweater.</td></tr><tr><td></td><td>Question: Can you see (A) in this photo? RAP-LLaVA: Yes, (A) is captured in this image. Question: What color is (A)'s shirt? RAP-LLaVA: <A> is wearing a purple shirt. Question: What is 〈A〉's right hand holding? RAP-LLaVA: Chopsticks.</td></tr><tr><td>Image</td><td>Concept Information in the Database</td></tr><tr><td>dug</td><td><dug> is a golden retriever from the movie Up. He has a brown coat and a big, goofy smile, wearing a collar with some round objects.</td></tr><tr><td>(Text-only conversation)</td><td>Question: Can you describe <dug> in detail? RAP-LLaVA: 〈dug〉 is a golden retriever from the movie Up. He has a brown coat and a big, goofy smile. He is wearing a collar with some round objects. He looks very happy and playful.</td></tr><tr><td>Image Concept</td><td>Information in the Database</td></tr><tr><td></td><td>P <P> is a bald man with a red beard.</td></tr><tr><td>(Text-only conversation)</td><td>Question: Can you describe 〈P〉's appearence in detail? RAP-LLaVA: 〈P〉 is a bald man with a red beard. He is wearing orange shorts and a blue shirt. He is sitting in a black director's chair with his legs crossed.</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares different methods for personalizing Multimodal Large Language Models (MLLMs), highlighting the efficiency and flexibility of the proposed Retrieval Augmented Personalization (RAP) framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Image</td><td>Concept Information in the Database</td></tr><tr><td></td><td><bo> is a well-groomed, medium-sized Shiba Inu with a bo thick, cinnamon-colored coat, cream accents, alert eyes, and a black collar.</td></tr><tr><td></td><td>Question: What is <bo> doing? RAP-Phi3-V: <bo> is lying on its side on a fluffy, gray dog bed. It is resting its head on a white stuffed toy. <bo> has a thick, cinnamon-colored coat with cream accents, alert eyes, and a black collar. <bo> looks very relaxed and content. Question: Where do you think he likes to play? RAP-Phi3-V: It's hard to say for sure, but it's possible that 〈bo〉 enjoys going to the park. Many dogs like to go to the park to play and get exercise.</td></tr><tr><td>Image Concept</td><td>Information in the Database</td></tr><tr><td>Anya</td><td>A young girl with pink hair and big green eyes.</td></tr><tr><td>Bond</td><td>A white dog wearing a black bow tie.</td></tr><tr><td></td><td>Question: What are they doing, describe in detail. RAP-Phi3-V: 〈Anya〉 is feeding <Bond>, a white dog wear- ing a black bow tie. 〈Bond〉 is eating out of a bowl. 〈Anya〉 is kneeling down and watching 〈Bond〉 eat. 〈Bond〉 is standing on a tiled floor and looking at the bowl. 〈Anya〉 is wearing a pink sweater and has pink hair. 〈Bond〉 is wearing a black bow tie. The scene is indoors, and there is a TV in the back- ground. Question: What is 〈Anya〉 wearing? RAP-Phi3-V: 〈Anya〉 is wearing a black sweater.</td></tr><tr><td>Image Concept</td><td>Information in the Database</td></tr><tr><td></td><td><C> is a young woman with long blonde hair, wearing a C white sleeveless shirt. She has bright red lipstick and light makeup.</td></tr><tr><td>(Text-only conversation)</td><td>Question: What color is <C>'s hair? RAP-Phi3-V: <C>'s hair is blonde. Question: What color of clothes does she like? RAP-Phi3- V: She likes white clothes.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for multi-modal large language models, highlighting RAP's efficiency in requiring only one image per concept for personalization.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Image</td><td>Caption</td></tr><tr><td>doll*</td><td>LLaVA: A blue coffee cup sits next to two dolls on a window sill. LLaVA-LoRA: <doll*> positioned on a windowsill with a blue mug containing pencils MyVLM: <doll*> is found sitting beside a window ledge with a cup and toothbrushes nearby. In the image, <doll*> appears to be peace- fully resting, possibly enjoying the view or taking a break. RAP-LLa VA(Ours): <doll*> and her friend are ready for a fun day at the office! They're ready to take on any challenge that comes their way.</td></tr><tr><td>mug*</td><td>LLaVA: A wooden shelf holds several potted plants, including a large clay pot and a small vase. The shelf is positioned near a wall, and the plants are arranged in a visually appealing manner. LLaVA-LoRA: <mug*> on a wooden shelf next to a plant and two potted plants. MyVLM: <mug*> on a a blue and white tiled floor next to indoor plants, a shelf with pots and a vase. RAP-LLaVA(Ours): A brown ceramic tiki mug with the face of a tiki head, <mug*>, sits on a wooden shelf with two potted plants.</td></tr><tr><td>my cat</td><td>LLaVA: A cat is sitting on a ledge near a staircase. LLaVA-LoRA: <my cat> sitting on a staircase, looking down. MyVLM: <my cat> in a typical pose, gripping the banister of a stair- case. He is wearing a collar. RAP-LLaVA(Ours): <my cat) is relaxing on the stairs. Look at those eyes! What a beautiful cat.</td></tr><tr><td>my cat teapot*</td><td>LLaVA: A cat is laying on a blanket on a couch, next to a colorful teapot. LLaVA-LoRA: <my cat> reclining on a chair with a <teapot*> beside MyVLM: <teapot*> on the couch near an orange, yellow, and blue teapot. The cat is laying on a blanket, and the teapot is placed on a table. RAP-LLa VA(Ours): <my cat) is taking a well-deserved nap next to <teapot*>.</td></tr><tr><td>H T</td><td>LLaVA: A man and a woman are walking down a street, with the man taking a selfie using his cell phone. They are both smiling as they walk, and the man is holding his phone . .. LLaVA-LoRA: 〈H〉 and 〈K〉 are looking happy as they walk down the street together. MyVLM: 〈H〉 and 〈T〉 are looking very serious as they take in the scenery. RAP-LLaVA(Ours): <T> is walking down the street with her friend 〈H〉.</td></tr><tr><td>parrotl parrot2</td><td>LLaVA: Two colorful parrots are perched on a palm tree, sitting next to each other. LLaVA-LoRA: <parrot1> and <parrot2> are looking very serious as they perch on a palm frond. MyVLM: <parrot1> and 〈parrot2〉 look so cute together. RAP-LLaVA(Ours): <parrot1> and <parrot2> are both beautiful birds. <parrot1> has a bright red beak and <parrot2> has a light blue head and pink feet. They are both perched on a branch.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for Multimodal Large Language Models (MLLMs), highlighting RAP's efficiency in requiring only one image and description for personalization.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Image</td><td>Caption</td></tr><tr><td>sheep*</td><td>Phi3-V: A small white sheep figurine is sitting on a wooden table next to a plant. LLaVA-LoRA: <sheep*> positioned next to a potted plant on a wooden table. MyVLM: <sheep*> positioned within a square shape within a vase made of metal positioned on a table made of wood. RAP-Phi3- V(Ours): <sheep*> is ready to play on the shelf with the plant!</td></tr><tr><td>dog1</td><td>Phi3-V: A brown and white dog is sitting on the grass with a leash attached to it. LLaVA-LoRA: <dog1> sitting on the grass with a look of determi- nation. MyVLM: on a cheerful note, <dog1> restfully resides, surrounded by the soothing sounds of nature. RAP-Phi3-V(Ours): This is a picture of <dog1>, a cute dog with light brown and white fur. He looks happy and playful.</td></tr><tr><td>Supreme iNe ObernetSouvignoe 67,000원 BARKAN verit bull*</td><td>Phi3-V: A bottle of wine is displayed next to a wooden COW statue. LLaVA-LoRA: <bull*> positioned next to a bottle of supreme caber- net sauvignon. MyVLM: 〈gold pineapple> pars the bottle of wine. A bottle of wine sits next to a bottle of wine. RAP-Phi3-V(Ours): <bull*> stands guard over a bottle of SUPREME wine.</td></tr><tr><td>funko pop *</td><td>Phi3-V: A small figurine of a basketball player is placed on top of a box. LLaVA-LoRA: 〈funko pop*) sitting on a desk next to a box and a monitor. MyVLM: 〈funko pop*> stands out in a photo set against a dark background. RAP-Phi3- V(Ours): 〈funko pop*) is ready to dominate the court!</td></tr><tr><td>J K</td><td>Phi3-V: A man and woman are sitting at a table in a restaurant, having a conversation and enjoying their time together. LLaVA-LoRA: 〈J〉 and 〈K〉 enjoying a meal together. MyVLM: (J) and 〈K〉 enjoying their time together. RAP-Phi3- V(Ours): 〈J〉 and 〈K〉 are enjoying a drink at a bar.</td></tr><tr><td>cup * head*</td><td>Phi3-V: A small statue of a man wearing glasses is sitting next to a cup on a table. LLaVA-LoRA: A table hosts <cup*> and a sculpture of a head wear- ing glasses. MyVLM: A table with <cup*>, an espresso cup, and a ceramic mug depicting a face wearing glasses sits on a wooden surface. RAP-Phi3- V(Ours): <head*> and <cup*> are ready for their morn- ing coffee.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for Multimodal Large Language Models (MLLMs), highlighting RAP's superior efficiency in requiring only one image and its description for personalization.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Image</td><td>personalized image description by Description</td></tr><tr><td>my cat</td><td>LLaVA: The image features a large, fluffy cat sitting on a counter- top, possibly in a kitchen. The cat is positioned near a sink and appears to be resting or sleeping. The countertop is covered with a towel, providing a comfortable surface for the cat to lay on . .. RAP-LLa VA(Ours): The image shows <my cat〉, a tabby cat with its eyes closed, laying on a light grey surface. The cat's fur is a mix of light and dark brown stripes. The cat is relaxed and comfortable.</td></tr><tr><td>toy3</td><td>LLaVA: The image features a small metal robot figure, possibly a toy, standing on a table or counter. The robot is positioned in the center of the scene, surrounded by a variety of leaves scattered around it. The leaves are of different sizes and · .. RAP-LLa VA(Ours): The image shows a toy figurine of Iron Man, a superhero from Marvel comics. He is wearing a silver and red suit of armor and is standing on a surface covered in leaves. The toy is called 〈toy3〉.</td></tr><tr><td>pillow*</td><td>LLaVA: The image features a chair with a pillow on it, which has a picture of a sheep on it. The chair is positioned in front of a desk with a laptop and a monitor on it. The laptop is placed on the left side of the desk, while the monitor is on the right side · .. RAP-LLaVA(Ours): The image shows a chair with a <pillow*> on it. The <pillow*> is a pattern of flowers, leaves, and a sheep wearing glasses with a flower crown. There is also a laptop and a computer monitor in the background.</td></tr><tr><td>RIMH WART LEO RT  YLMIN - MT TALE OKNIZABA 3 FIREFIGHT Skyward STARSIGH toy4 Q</td><td>LLaVA: The image features a bookshelf filled with various books. white, On the shelf, there are two Rubik's cubes, one green and one sitting next to each other. The bookshelf is well-stocked with books, occupying most of the shelf space · · . RAP-LLaVA(Ours): The image shows a bookshelf with books on it. There are two toys on the shelf. One is a 〈toy4〉, which looks like a cat with orange fuzzy ears and a brown cord attached. The other is a Rubik's cube.</td></tr><tr><td>toy1 toy2</td><td>LLaVA: The image features a bed with two stuffed animals, a dog and a cat, lying on it. The dog is positioned on the left side of the bed, while the cat is on the right side. The stuffed animals are placed close to each other, giving the impression of a cozy and · .. RAP-LLaVA(Ours): The image shows two plush toys, 〈toy1〉 and 〈toy2〉, lying in bed together. 〈toy2〉 is a light blue plush with a purple patch on its head and yellow ears. 〈toy1〉 is an orange plush with a yellow belly and a brown nose. They are both looking at the camera.</td></tr><tr><td>Anya Bond with</td><td>LLaVA: The image features a young girl hugging a large white dog in a room. The girl is wearing a black dress and appears to be en- joying her time with the dog. The dog is positioned close to the girl, and they seem to be sharing a tender moment together · .. RAP-LLaVA(Ours): 〈Anya〉 is a young girl with pink hair and big green eyes. She is wearing a black dress and black shoes. She is standing in a room with wooden floors and is hugging a white dog named <Bond>. 〈Bond〉 is wearing a black bow tie. The dog is standing on its hind legs and is looking at the camera. The room is decorated</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares different personalization methods for Multimodal Large Language Models (MLLMs), highlighting the efficiency and flexibility of the Retrieval Augmented Personalization (RAP) framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Image</td><td>Description</td></tr><tr><td>[ sheep*</td><td>Phi3-V: The image features a display of various animal figurines on a shelf. There are three giraffes, two of which are standing and one sitting, placed next to each other. A sheep figurine is also present on the shelf, located between the giraffes · . · RAP-Phi3- V(Ours): The image shows a white <sheep*> sitting on a shelf next to a giraffe figurine. The <sheep*> is made of felt and has black eyes and a black nose. The giraffe figurine is made of metal and has a colorful necklace around its neck. The shelf is white . .</td></tr><tr><td>Rad white Supreme 7.V. 。 mug*</td><td>Phi3-V: The image features a wooden shelf with two wine bottles and two wine glasses. One of the wine bottles is positioned towards the left side of the shelf, while the other is located more towards the center. The wine glasses are placed on the right side of the · .. RAP-Phi3- V(Ours): The image shows a wooden shelf with three glassware items on it. The top glassware item is a <mug*> with a tiki head design. The other glassware items are wine glasses. There is a sign on the wine bottle that says "SUPREME". There is also a plant in a pot in the background.</td></tr><tr><td>dog*</td><td>Phi3-V: The image features two dogs playing together in a grassy yard. One dog is located on the left side of the yard, while the other dog is on the right side. They are both running and enjoying their time outside. In the background, there are several chairs · .. RAP-Phi3- V(Ours): The image shows two dogs playing in a grassy backyard. The dog on the left is a white and gray dog with long fur. The dog on the right is a black and brown dog with long fur. The dogs are both running and playing on the grass. The dog on the left is named <dog*>.</td></tr><tr><td>toy4</td><td>Phi3-V: The image features a white shelf with several decorative items on it. There are three chicken-shaped decorations hanging from the shelf, each with a different design. Additionally, there are three more chicken decorations placed on the shelf, making · · . RAP-Phi3- V(Ours): The image shows three handmade stuffed toys. The toys are all shaped like chickens and are hanging on a white shelf. The toys are all different colors and have different designs on them. The toy on the left is called 〈toy4〉.</td></tr><tr><td>character1 character2</td><td>Phi3-V: The image features a group of three cartoon characters, two of which are wearing hats. They are standing together on a sidewalk, with one character positioned towards the left side of the frame, another in the center, and the third character on the . .. RAP-Phi3- V(Ours): The image shows <character1> and <charac- ter2) standing in front of a brick wall. <character1> is a cartoon fox wearing a yellow button-down shirt and a purple tie. He has big eyes, fluffy fur, and a sly grin on his face. <character2> is a cartoon rabbit with large ears, a police officer's hat, and a red and yellow safety vest. She has a sweet, innocent look on her face, and · ..</td></tr><tr><td>" TNGIGA baby* dog2</td><td>Phi3-V: The image features a baby lying on a bed, with a dog resting on the floor nearby. The baby appears to be playing with a toy, possibly a puzzle, while the dog watches attentively · · · RAP-Phi3-V(Ours): The image shows a baby, 〈baby*〉, sleeping in a carrier. The baby is wrapped in a colorful blanket and is secured by a black strap. A french bulldog, 〈dog2〉, is sleeping next to the baby. The baby and dog are both sleeping peacefully.</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares different personalization methods for Multimodal Large Language Models (MLLMs), highlighting the efficiency and flexibility of the proposed Retrieval Augmented Personalization (RAP) framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Image</td><td>Conversation</td></tr><tr><td>head*</td><td>Question: Is <head*> in this image? RAP-LLa VA: Yes, <head*> is in the photo. Question: Give <head*>'s bounding box in the image. RAP-LLa VA: [0.57, 0.67, 0.68, 0.84]</td></tr><tr><td>head*</td><td>Question: Is <head*> in this image? RAP-LLa VA: No, <head*> is not part of this photograph.</td></tr><tr><td>Enery</td><td>Question: Can you identify if 〈toy*〉 is captured in this picture? RAP-LLa VA(Ours): Yes, 〈toy*〉 is visible in this picture. Question: Please provide 〈toy*〉's bounding coordinates in the image. RAP-LLa VA: [0.42, 0.19, 0.54, 0.39]</td></tr><tr><td>toy* Energizer ASCOT toy*</td><td>Question: Can you identify if 〈toy*〉 is captured in this picture? RAP-LLaVA(Ours): 〈toy*〉 is not captured in this image.</td></tr><tr><td></td><td>Question: Can you confirm if (A) appears in this photo? RAP-LLaVA(Ours): Yes, (A) is in this photo. Question: Describe (A)'s position in the image. RAP-LLa VA(Ours): [0.24, 0.12, 0.72, 0.98]</td></tr><tr><td></td><td>Question: Can you confirm if 〈A〉 appears in this photo? RAP-LLa VA(Ours): (A) is not present in this photograph.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for Multimodal Large Language Models (MLLMs), highlighting the efficiency and flexibility of the proposed Retrieval Augmented Personalization (RAP) framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Image</td><td>Conversation</td></tr><tr><td>글 당신 있는 statuel</td><td>Question: Is <statue1> included in this shot? RAP-LLa VA: Yes, <statue1> is included in this shot. Question: Give <statue1>'s bounding box in the image. RAP-LLaVA: [0.36, 0.16, 0.59, 0.41]</td></tr><tr><td>statuel</td><td>Question: Is <statue1> included in this shot? RAP-LLa VA: <statue1> is not captured in this picture.</td></tr><tr><td>dog*</td><td>Question: Is <dog*> captured in this image? RAP-LLa VA(Ours): Yes, I recognize <dog*> in this picture. Question: Specify <dog*>'s bounding box in the photograph. RAP-LLaVA: [0.33, 0.23, 1.0, 0.69]</td></tr><tr><td>dog*</td><td>Question: Is <dog*> captured in this image? RAP-LLa VA(Ours): No, <dog*> is not included in this shot.</td></tr><tr><td>teapot*</td><td>Question: Is <teapot*> visible in this image? RAP-LLa VA(Ours): Yes, <teapot*> is visible in this picture. Question: Describe <teapot*>'s position in the image. RAP-LLa VA(Ours): [0.52, 0.69, 0.73, 0.91]</td></tr><tr><td>teapot*</td><td>Question: Is <teapot*> visible in this image? RAP-LLa VA(Ours): No, <teapot*> is not visible in this picture.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for multi-modal large language models (MLLMs) highlighting the efficiency and flexibility of the proposed RAP framework.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td>Image</td><td>Concept</td><td>Information</td></tr><tr><td></td><td>Anya</td><td>A young girl with pink hair and big green eyes.</td></tr><tr><td></td><td>SIG LOS doll*</td><td>figurine of a girl wearing a pink and blue This is a cute dress, holding a white bubble.</td></tr><tr><td></td><td>toy1</td><td>A plush toy. It is orange with a yellow belly and a brown nose.</td></tr><tr><td></td><td>toy2</td><td>This is a plush toy of the bluey character. It is a light blue color with a purple patch on its head, and its ears are yellow.</td></tr><tr><td></td><td>statue*</td><td>This is a figurine of a cat. The cat has a blue body with yellow, red, and green stripes and a long tail that is also striped.</td></tr><tr><td></td><td>cat*</td><td>A small ginger kitten with bright blue eyes looks up at the camera.</td></tr><tr><td></td><td>H</td><td>A young man is wearing a plain tan t-shirt. His hair is short and curly.</td></tr><tr><td></td><td>dog*</td><td>A white and gray dog with long fur. He has black eyes.</td></tr><tr><td></td><td>T</td><td>A young woman with blonde hair is wearing a white tank top and blue jeans.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares different personalization methods for Multimodal Large Language Models (MLLMs) highlighting RAP's efficiency in requiring only one image and its description for personalization.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of Different Personalization Methods. RAP needs only 1 image with its personalized description, showing outstanding convenience and flexibility in practical applications.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13360/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13360/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}