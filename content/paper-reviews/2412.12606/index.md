---
title: "Multi-Dimensional Insights: Benchmarking Real-World Personalization in Large Multimodal Models"
summary: "New benchmark reveals how well AI understands and meets real-world human needs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Beijing University of Posts and Telecommunications",]
showSummary: true
date: 2024-12-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2412.12606 {{< /keyword >}}
{{< keyword icon="writer" >}} YiFan Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2024-12-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2412.12606" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2412.12606" target="_self" >}}
↗ Hugging Face
{{< /button >}}
{{< button href="https://paperswithcode.com/paper/multi-dimensional-insights-benchmarking-real" target="_self" >}}
↗ Papers with Code
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2412.12606/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Creating personalized AI assistants that meet diverse user needs is a long-standing goal. While Large Multimodal Models (LMMs) have shown potential, current benchmarks mainly focus on technical metrics and don't adequately assess if these models understand and meet actual human needs, especially across different demographics like age groups.  This gap hinders the development of truly personalized and helpful AI assistants.Existing LMM benchmarks evaluate technical skills but not real-world applications.  They don't consider diverse needs based on factors like age.  This makes it hard to build personalized AI that truly helps people in everyday situations.  The MDI benchmark aims to bridge this gap.The Multi-Dimensional Insights (MDI) benchmark addresses this by using images of real-world scenarios paired with questions of varying complexity and relevance to different age groups. This design allows for a more nuanced evaluation of LMMs, exploring their ability to understand and respond to practical, age-specific needs in everyday situations.  The benchmark data and evaluation code are available to aid further research.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The MDI benchmark evaluates large multimodal models (LMMs) on their ability to meet real-world human needs across different age groups and complexities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} GPT-4 performed the best but still has room for improvement, especially in personalizing responses for different demographics. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The benchmark highlights the need for better datasets and enhanced LMM capabilities in handling complex real-world scenarios and age-specific needs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This benchmark is crucial for LMM researchers** as it provides **a standardized way to evaluate and improve LMM's ability to address diverse, real-world needs** across different demographics. It also **highlights the shortcomings of current LMMs** in handling complex, age-specific scenarios, opening new avenues for research into personalization and **improving real-world application** of these models.

------
#### Visual Insights



![](https://arxiv.org/html/2412.12606/x1.png)

> 🔼 The figure showcases example images from the Multi-Dimensional Insights (MDI) Benchmark, categorized by real-world scenarios relevant to different age groups.  These scenarios include kitchen and home layouts (Architecture), library and campus scenes (Education), household items like laundry detergent and a digital clock (Housework), restaurant menus and travel information (Social Services), sports images like basketball and racing (Sport), and airport departure boards and road signs (Transport).  Each image is paired with multiple questions that aim to gauge an LMM's understanding of the scene and its ability to address the specific needs of different age demographics.
> <details>
> <summary>read the caption</summary>
> Figure 1: The MDI-Benchmark includes real needs of different age groups in six major real-world scenarios.
> </details>





{{< table-caption >}}
| Scenarios | Number of images | Number of L1 questions | Number of L2 questions | Number of old questions | Number of mid questions | Number of young questions |
|---|---|---|---|---|---|---| 
| Architecture | 85 | 121 | 112 | 77 | 74 | 82 |
| Education | 85 | 114 | 115 | 80 | 79 | 70 |
| Housework | 86 | 103 | 109 | 71 | 74 | 67 |
| Social services | 86 | 95 | 108 | 65 | 66 | 72 |
| Sports | 86 | 107 | 103 | 70 | 73 | 67 |
| Transport | 86 | 109 | 102 | 73 | 70 | 68 |
| Total | 86 | 649 | 649 | 436 | 436 | 426 |{{< /table-caption >}}

> 🔼 This table provides a statistical overview of the MDI-Benchmark dataset, detailing the distribution of images and questions across different scenarios.  It breaks down the number of images and the number of questions for both Level 1 and Level 2 complexity, as well as the distribution of questions across the three age groups (old, mid, and young). The scenarios included are Architecture, Education, Housework, Social Services, Sports, and Transport.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistical details of MDI-Benchmark.
> </details>





### In-depth insights


#### LMM Personalization
**Personalized LMMs**, crucial for real-world impact, face limitations in adapting to diverse user needs.  Current benchmarks lack a focus on personalization, hindering accurate assessment of LMM's ability to address varying preferences across demographics, especially age. This emphasizes the **need for new benchmarks** like the proposed MDI benchmark, to evaluate real-world personalized needs. Existing LMMs exhibit **insufficient generalization across age**, revealing the complexity of tailoring responses for different demographics.  Scaling language model parameters generally improves personalization, highlighting the role of extensive training data. Future LMMs should **prioritize personalized data generation and integrate user feedback**, advancing the development of **reliable and truly personalized AI assistants** capable of effectively meeting diverse human needs.

#### MDI Benchmark Design
The MDI Benchmark design prioritizes **real-world relevance**, addressing limitations of existing evaluations. It employs two key dimensions.  **Question Complexity**, with two levels: basic comprehension and complex reasoning, mirrors real-world demands on LMMs. The **Age Dimension** acknowledges the diverse needs across young, middle-aged, and older demographics, a crucial aspect of personalized AI. This layered approach assesses LMM performance beyond simple accuracy metrics, offering valuable insights into their capabilities across diverse scenarios and user needs. The MDI benchmark evaluates across six domains: **architecture, education, housework, social service, sport, and transport**, each further divided into sub-domains, enhancing its real-world applicability.

#### Multi-Modal LMM Gaps
Large Multi-Modal Models (LMMs) show promising results, but significant gaps remain.  A key challenge is **contextual understanding**, where LMMs struggle to integrate visual and textual information effectively for complex reasoning. This is evident in tasks requiring **knowledge integration** or **multi-step inference**.  Another gap lies in **personalization**, where current LMMs lack the ability to tailor responses to individual user needs, preferences, or demographics. **Data limitations** also hinder progress, with current datasets often lacking diversity in scenarios, complexities, and user demographics. This highlights the need for more comprehensive benchmarks to accurately assess and address these limitations.

#### Age-Aware LMMs
**Age-aware LMMs** represent a crucial step towards personalized AI.  The paper's MDI benchmark highlights how current models struggle with age-related nuances in understanding and responding to real-world scenarios. This underscores the need for LMMs to move beyond general comprehension and cater to the **diverse needs of different age groups**.  Developing age-aware models requires careful consideration of varying cognitive abilities, life experiences, and communication styles.  Training data should reflect these age-specific characteristics.  Moreover, evaluation benchmarks must include **age as a key dimension** to measure progress effectively.  Ultimately, age-aware LMMs will enable the creation of more empathetic and useful AI assistants capable of truly personalized interactions.

#### Future LMM Design
**Future LMM design** must prioritize enhanced **real-world** problem-solving.  Current benchmarks lack real-world scenarios and diverse human needs. Models should understand context, reason logically, and address varying complexities and user preferences across age groups.  This requires datasets reflecting real-life scenarios, diverse information needs, and age-specific requirements.  Developing robust evaluation metrics for personalization and knowledge grounding is also **crucial** for practical application.  Addressing these **challenges** will improve LMM's ability to assist humans in everyday life.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2412.12606/x2.png)

> 🔼 The figure provides a high-level overview of the six real-world multimodal scenarios included in the MDI Benchmark. Each scenario, representing a different aspect of daily human life, is further divided into three more specific sub-domains, resulting in a total of 18 distinct sub-domains.  These scenarios and sub-domains are:  *   **Architecture:** House Planning, Work Scenes, Measuring *   **Education:** Studying, Teaching, Campus *   **Housework:** Home Arrangements, Housework Activities, Household Appliances *   **Social Services:** Travel, Shopping, Communal Facilities *   **Sport:** Powerlifting, Race, Ball *   **Transport:** Signpost, Rail transit, Airport
> <details>
> <summary>read the caption</summary>
> Figure 2: The overview of the MDI Benchmark’s six real-world multimodal scenarios, each comprising three sub-domains.
> </details>



![](https://arxiv.org/html/2412.12606/x3.png)

> 🔼 This bar chart compares the performance of different Large MultiModal Models (LMMs) on two difficulty levels (Level 1 and Level 2) of the Multi-Dimensional Insights (MDI) Benchmark.  Level 1 represents easier tasks focused on basic perception, while Level 2 involves more complex reasoning tasks. The chart visually displays the accuracy scores achieved by each LMM on both levels, indicating their strengths and weaknesses in handling different task complexities. The LMMs evaluated include GPT-40, GPT-4V, Gemini 1.5 Pro, Qwen-VL-Plus, and various open-source models.
> <details>
> <summary>read the caption</summary>
> Figure 3: The average performance of different LMMs on different difficulty levels of the MDI-Benchmark.
> </details>



![](https://arxiv.org/html/2412.12606/x4.png)

> 🔼 This figure visualizes the performance of Large Multimodal Models (LMMs) on the Multi-Dimensional Insights (MDI) Benchmark across different complexity levels (Level 1 and Level 2).  **(a) Leaderboard:**  Ranks various open-source LMMs based on their overall performance scores, calculated using a weighted average of Level 1 and Level 2 accuracies. The size of the model (in billions of parameters) is plotted against the score, showcasing the impact of model scale on performance.  **(b) Radar Charts:** Two radar charts illustrate the performance of 14 LMMs (both open-source and closed-source) across six real-world scenarios (Architecture, Education, Housework, Social Service, Sport, and Transport) at both Level 1 (basic perception) and Level 2 (logical reasoning). These charts visually compare the models' strengths and weaknesses in different scenarios and at different levels of complexity. **(c) Bar and Variance Charts:** These charts display the average accuracy and variance of the LMMs across the six scenarios at both Level 1 and Level 2. This visualization helps analyze the models' overall performance and consistency across different tasks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance of the model at different difficulty levels and the overall performance results of the model under the score metric.
> </details>



![](https://arxiv.org/html/2412.12606/x6.png)

> 🔼 This figure presents bar plots illustrating the average accuracy and variance of various Large Multimodal Models (LMMs) across six domains at two levels of question complexity (Level 1 and Level 2). Level 1 focuses on basic perceptual abilities, while Level 2 involves logical reasoning. The x-axis in both subfigures represents different LMMs, with closed-source models (GPT-40, GPT-4V, Gemini 1.5 Pro, Qwen-VL-Plus) grouped on the left and open-source models to the right. The first subfigure displays the average accuracy (y-axis) of each LMM for Level 1 and Level 2, showing the overall performance trends. The second subfigure depicts the variance in accuracy (y-axis), indicating the consistency of model performance across domains. Lower variance suggests more stable performance. This analysis reveals which models perform consistently and highlights potential areas for improvement in addressing specific question complexities within varied scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: The average accuracy and variance of LLMs across six domains at Level 1 and Level 2
> </details>



![](https://arxiv.org/html/2412.12606/x7.png)

> 🔼 This stacked bar chart showcases the performance of various Large MultiModal Models (LMMs) across three age demographics (old, middle-aged, and young) in correctly answering questions.  Each segment of the stacked bar represents the model's accuracy within a specific age group, and the total height of the bar signifies the overall performance across all ages. This visualization helps to highlight the models' ability to generalize across different age-related needs and preferences, which is crucial for real-world applications where LMMs interact with diverse user groups. The color coding distinguishes between the age groups: blue for old, orange for middle-aged, and green for young.
> <details>
> <summary>read the caption</summary>
> Figure 6: Performance of different LMMs across the age dimension.
> </details>



![](https://arxiv.org/html/2412.12606/x8.png)

> 🔼 Examples of image-question pairs in the architecture scenario, including questions about color coding on a floor plan, measurement of a cable diameter using a tool, angle measurement of a corner, and identification of the object being polished by a worker.
> <details>
> <summary>read the caption</summary>
> Figure 7: Examples of Architecture Scenario.
> </details>



![](https://arxiv.org/html/2412.12606/x9.png)

> 🔼 This figure presents two distinct scenes within an educational context. The first scene showcases a map of Johns Hopkins University highlighting parking areas, while an image depicts individuals playing table tennis. The second scene displays the exterior of Hayden Library alongside a whiteboard displaying an algorithm flow.
> <details>
> <summary>read the caption</summary>
> Figure 8: Examples of Education Scenario.
> </details>



![](https://arxiv.org/html/2412.12606/x10.png)

> 🔼 This figure showcases examples from the Housework scenario within the MDI-Benchmark, illustrating different scenes and situations related to housework activities and appliances.
> <details>
> <summary>read the caption</summary>
> Figure 9: Examples of Housework Scenario.
> </details>



![](https://arxiv.org/html/2412.12606/x11.png)

> 🔼 This figure showcases examples from the Social Service scenario within the MDI-Benchmark. It includes images related to sub-domains like travel (featuring a subway menu board and an airline flight schedule), communal facilities (showing an image of the Leaning Tower of Pisa), and shopping (with a picture of neatly stacked towels). Each image is paired with two example questions, one for each complexity level defined in the benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 10: Examples of Social Service.
> </details>



![](https://arxiv.org/html/2412.12606/x12.png)

> 🔼 This figure presents a collage of images related to sports, showcasing different sports scenarios like a basketball game, a marathon, and a fighting match. These scenarios exemplify the diverse range of sports-related visual information within the MDI-Benchmark, which is designed to evaluate large multimodal models' ability to understand and respond to real-world sports scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 11: Examples of Sport Scenario.
> </details>



![](https://arxiv.org/html/2412.12606/x13.png)

> 🔼 Examples of images and questions related to the Transport scenario in the MDI-Benchmark. This includes questions and multiple-choice answers about airport flight information displays, bus stop signs, highway exit signs, and subway maps.  These examples illustrate the types of visual information and queries found in the Transport section of the benchmark. Questions target different levels of complexity, from simple information extraction to multi-step reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 12: Examples of Transport Scenario.
> </details>



![](https://arxiv.org/html/2412.12606/x14.png)

> 🔼 This figure presents two pairs of example questions for the Architecture scenario of the MDI-Benchmark, illustrating the difference between Level 1 and Level 2 questions. The first pair relates to a room plan. The Level 1 question asks about the color used to distinguish the bathroom, while the Level 2 question asks about calculating the area of the garage. The second pair involves an image of a micrometer. The Level 1 question requires reading the measurement displayed on the device, while the Level 2 question presents a scenario related to manufacturing, asking if a steel plate with a measured thickness falls within the required range.
> <details>
> <summary>read the caption</summary>
> Figure 13: Examples of Architecture Scenario Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x15.png)

> 🔼 Figure 14, located in Section C.2 (Example of Problem Complexity Dimension), presents two sets of questions for each image within the Education scenario of the MDI-Benchmark. Each image is paired with a Level 1 question and a Level 2 question, demonstrating the varying complexity of the benchmark. Level 1 questions assess basic comprehension of image content, like counting parking lots on a campus map or identifying a building's entrance. In contrast, Level 2 questions require more advanced reasoning and knowledge application, such as determining a suitable visit location based on a child's dental appointment or identifying the year a university was founded. This figure showcases how MDI-Benchmark evaluates Large Multimodal Models (LMMs) abilities to handle different complexity levels within real-world situations.
> <details>
> <summary>read the caption</summary>
> Figure 14: Examples of Education Scenario Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x16.png)

> 🔼 This figure presents two sets of example questions related to a housework scenario, categorized by complexity level (Level 1 and Level 2). The first example involves a digital thermostat displaying a temperature of 72°F. Level 1 question asks about the displayed temperature, while the Level 2 question asks which button should be pressed to increase the fan speed. The second example shows a TV screen displaying movie options. The Level 1 question asks how many movies are available, while the Level 2 question asks for a movie recommendation based on a preference for DC Comics.
> <details>
> <summary>read the caption</summary>
> Figure 15: Examples of Housework Scenario Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x17.png)

> 🔼 This figure, belonging to the supplementary material section 'More Detail on MDI-Benchmark', presents two distinct examples of questions categorized under the Social Service scenario within the MDI-Benchmark. Each example includes two questions, one labeled 'Level 1' and the other 'Level 2', to illustrate the varying levels of complexity in the benchmark.  The first example shows an image of a restaurant menu, with Level 1 question asking about the restaurant's signature dish and the Level 2 question presenting a cost calculation scenario given customer orders. The second example displays an image of a movie schedule board, where the Level 1 question inquires about the number of movies available that day, while the Level 2 question involves selecting an age-appropriate movie for a family with young children. These demonstrate how MDI-Benchmark assesses different reasoning and knowledge application abilities within real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 16: Examples of Social Service Scenario Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x18.png)

> 🔼 The figure presents two examples of questions from the Sport scenario in the MDI-Benchmark, categorized by question complexity. The first example, at Level 1, asks to identify the sport being played, showing an image of an American football game. The second example, at Level 2, relates to a weightlifting competition, asking to calculate the body weight ratio and identify the athlete with the highest ratio. Each example includes question, multiple-choice options, and the ground truth answer.
> <details>
> <summary>read the caption</summary>
> Figure 17: Examples of Sport Scenario Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x19.png)

> 🔼 This figure presents two sample questions related to the Transport scenario, showcasing varying levels of complexity.  The first question, categorized as Level 1, involves identifying the current color of a traffic signal. The second question, classified as Level 2, involves determining the appropriate exit to use when entering a city via Route 4, which demands greater contextual awareness and reasoning compared to the Level 1 questions. These examples highlight how the MDI-Benchmark assesses multimodal models' ability to extract information and perform visual reasoning in real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 18: Examples of Transport Scenario Question.
> </details>



![](https://arxiv.org/html/2412.12606/x20.png)

> 🔼 Figure 19 shows example questions posed to different age groups (old, middle-aged, and young) regarding an architectural floor plan image and a close-up image of a worker using tools.  The questions probe different aspects of the scenarios, illustrating how needs and queries vary across age demographics. For instance, the older person asks about calculating the area of a porch for planting, the middle-aged person inquires about bathroom fixture suitability based on the plan, and the younger person asks about furniture placement within a bedroom, given existing closet placement. The second image prompts questions about tool usage and suitability for electrical work, bookshelf fitting, and alternative measurement applications.  This demonstrates how the benchmark tailors questions to different age groups and their respective priorities in a given scenario.
> <details>
> <summary>read the caption</summary>
> Figure 19: Example of Architecture Scenario Age Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x21.png)

> 🔼 Example questions posed to different age groups (old, middle-aged, young) within the Education scenario of the MDI benchmark. The first row showcases questions about campus facilities and accessibility. The second row presents queries related to a university's history and curriculum.
> <details>
> <summary>read the caption</summary>
> Figure 20: Example of Education Scenario Age Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x22.png)

> 🔼 This figure presents examples of questions tailored to different age groups within the 'Housework' scenario of the MDI-Benchmark.  Each row displays an image related to a housework task, followed by three questions marked as 'Old_Q', 'Mid_Q', and 'Young_Q', representing questions posed by older, middle-aged, and younger individuals, respectively. These questions vary in their complexity and the type of information they seek to extract from the image. For instance, the first image shows a water meter, with the older person's question focusing on reading the meter value, the middle-aged person's question involving a calculation based on the meter reading, and the younger person's question asking about the device's function. The second image depicts a bookshelf, with questions addressing the author of a specific book, identifying a toy based on a description, and determining the manufacturer of a particular item. This diversity in questions illustrates the varied needs and perspectives of different age groups when interacting with everyday scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 21: Example of Housework Scenario Age Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x23.png)

> 🔼 This figure presents example questions posed to different age groups (old, middle-aged, young) within the Social Service scenario of the MDI-Benchmark. The first image depicts a supermarket aisle containing eggs, with questions related to quantity and price comparisons.  The second image shows a museum entrance with admission prices, and the questions pertain to ticket costs for various age groups and family configurations.
> <details>
> <summary>read the caption</summary>
> Figure 22: Example of Social Service Scenario Age Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x24.png)

> 🔼 This figure showcases example questions posed to different age groups (old, middle-aged, young) within the Sport scenario of the MDI-Benchmark.  The first image displays a shooting competition result board, with questions about the year the sport was added to the Olympics and the bullet caliber used. The second image depicts two fighters in a boxing ring, with questions about the referee, weight class, and match duration.
> <details>
> <summary>read the caption</summary>
> Figure 23: Example of Sport Scenario Age Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x25.png)

> 🔼 This figure presents example questions posed to different age groups (old, middle-aged, and young) within the Transport scenario of the MDI-Benchmark. Each question focuses on a different aspect of transport, such as flight delays, cruise ship amenities, or highway exits, and reflects the varying needs and priorities of different age demographics. The questions also include ground truth labels and serve to demonstrate the kind of complex, multimodal reasoning required to correctly interpret information present in a real-world visual context.
> <details>
> <summary>read the caption</summary>
> Figure 24: Example of Transport Scenario Age Questions.
> </details>



![](https://arxiv.org/html/2412.12606/x26.png)

> 🔼 This figure presents two examples of correct answers generated by GPT-40 in the architecture scenario of the MDI-Benchmark. The first example showcases a room layout where the model correctly identifies the appropriate dining table size based on the room's dimensions. The second example displays a measuring tool and a floor tile, with GPT-40 accurately calculating the number of tiles needed to cover a specific length.
> <details>
> <summary>read the caption</summary>
> Figure 25: Example of GPT-4o Architecture Scenario Correct Answers.
> </details>



![](https://arxiv.org/html/2412.12606/x27.png)

> 🔼 This figure presents two examples of questions and GPT-4o's responses within the Education scenario of the MDI-Benchmark.  The first example involves a campus map question where GPT-4o correctly identifies the building associated with a physical fitness test based on its label, 'The Human Performance Center.' The second example showcases GPT-4o's ability to correctly determine the age of Loyola University Maryland by subtracting the founding year, visible on a sign in the image, from the current year.
> <details>
> <summary>read the caption</summary>
> Figure 26: Example of GPT-4o Education Scenario Correct Answers.
> </details>



![](https://arxiv.org/html/2412.12606/x28.png)

> 🔼 This figure showcases GPT-4o's performance on two examples from the Housework scenario of the MDI-Benchmark.  The first example involves reading a digital electricity meter to determine daily usage. GPT-4o correctly identifies the readings for both 'Today' and 'Yesterday' and then subtracts to find the difference. The second example displays a TV showing movie options, with the prompt asking for a DC Comics movie recommendation. GPT-4o successfully identifies 'The Flash' as the appropriate choice from the list.
> <details>
> <summary>read the caption</summary>
> Figure 27: Example of GPT-4o Housework Scenario Correct Answers.
> </details>



![](https://arxiv.org/html/2412.12606/x29.png)

> 🔼 This figure showcases two examples of correctly answered questions within the Social Service scenario of the MDI-Benchmark, using GPT-40.  The first question asks for the total cost of a Subway order for a group with specific items listed. GPT-40 correctly calculates the total by summing the price of each item. The second question inquires about a filming location shown in a photograph of Griffith Observatory.  GPT-40 accurately identifies that the movie *Transformers* was filmed there.
> <details>
> <summary>read the caption</summary>
> Figure 28: Example of GPT-4o Social Service Scenario Correct Answers.
> </details>



![](https://arxiv.org/html/2412.12606/x30.png)

> 🔼 Figure 29 presents two examples of correct answers and reasoning processes generated by GPT-40 for the Sport scenario in the MDI-Benchmark.  The first example involves a scoreboard from a women's soccer (football) match between the USA and Thailand, asking which player scored the most goals. GPT-40 correctly identifies Alex Morgan as the player with the most goals by analyzing the scoreboard data. The second example shows runners in a marathon passing a 39.1km marker.  The question asks how far the runners are from the finish line, assuming a standard marathon distance of 42.195km. GPT-40 correctly calculates the remaining distance as 3.095km by subtracting the current distance from the total distance.
> <details>
> <summary>read the caption</summary>
> Figure 29: Example of GPT-4o Sport Scenario Correct Answers.
> </details>



![](https://arxiv.org/html/2412.12606/x31.png)

> 🔼 This figure presents two examples demonstrating GPT-40's ability to correctly answer questions in the Transport scenario of the MDI-Benchmark.  The first example involves an airplane flight path from Toronto to London, questioning which ocean the flight primarily crosses. GPT-40 accurately identifies the Atlantic Ocean. The second example involves a highway road sign, asking which highway is accessible if continuing on the current road. GPT-40 correctly identifies SR 826 South.  Both examples show not only the correct answer but also GPT-40's chain of thought or reasoning to arrive at the answer.
> <details>
> <summary>read the caption</summary>
> Figure 30: Example of GPT-4o Trans Scenario Correct Answers.
> </details>



![](https://arxiv.org/html/2412.12606/x32.png)

> 🔼 This figure presents three examples where Large Multimodal Models (LMMs) failed to correctly extract visual information, leading to incorrect answers. The first example involves a micrometer reading, where GPT-40 incorrectly extracts the value as 22.4. The second example shows a campus map with marked parking lots; Gemini 1.5 Pro incorrectly counts them as 8.  The third example involves a thermometer image, and Phi-3-Vision incorrectly interprets the temperature reading as 25°C.
> <details>
> <summary>read the caption</summary>
> Figure 31: Example of Information Extraction Error.
> </details>



![](https://arxiv.org/html/2412.12606/x33.png)

> 🔼 This figure presents three examples of knowledge deficiency errors from different LMMs (Large Multimodal Models). The first example involves an image concerning airport immigration and a question about eligible countries. Qwen-VL-Plus incorrectly answers based on counting flags instead of understanding the text. The second shows an image of the Hayden Library and a question about its opening hours. LLaVA-NeXT-110B incorrectly reasons about typical library hours without extracting specific information from the image. The third example presents an image of a basketball game and asks about the final score. MiniCPM-V2.5 hallucinates an incorrect score, failing to extract the information from the image. These examples highlight the models' struggles in retrieving and applying external knowledge relevant to the image context.
> <details>
> <summary>read the caption</summary>
> Figure 32: Example of Knowledge Deficiency Error.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
| Model | Final Score | Level 1 | Level 2 | |---|---|---|---|---|---|---|---|---|---|---|---|---|---|---| |---| Avg | Arc | Edu | Hou | Soc | Spo | Tra | Avg | Arc | Edu | Hou | Soc | Spo | Tra | | **_Closed-source_** | | | | | | | | | | | | | | | | | **GPT-4o** | **78.46** | 87.46 | 76.47 | 94.12 | 92.16 | 90.20 | 86.27 | 94.12 | 69.45 | 70.59 | 70.59 | 78.43 | 82.35 | 54.90 | 66.67 | | **GPT-4V** | 74.92 | 87.46 | 86.27 | 92.16 | 86.27 | 90.20 | 88.24 | 90.20 | 62.38 | 72.55 | 70.59 | 74.51 | 60.78 | 45.10 | 56.86 | | **Gemini 1.5 Pro** | 69.13 | 82.32 | 68.63 | 92.16 | 76.47 | 88.24 | 86.27 | 90.20 | 55.95 | 52.94 | 56.86 | 54.90 | 74.51 | 43.14 | 58.82 | | **Qwen-VL-Plus** | 43.57 | 56.59 | 43.14 | 64.71 | 62.75 | 78.43 | 50.98 | 45.10 | 30.55 | 35.29 | 41.18 | 37.25 | 25.49 | 23.53 | 23.53 | | **_Open-source_** | | | | | | | | | | | | | | | | | **LLaVA-NeXT-110B** | **65.59** | 79.10 | 60.78 | 92.16 | 78.43 | 84.31 | 78.43 | 88.24 | 52.09 | 66.67 | 56.86 | 54.90 | 64.71 | 31.37 | 43.14 | | **LLaVA-NeXT-72B** | 63.67 | 76.21 | 68.63 | 88.24 | 80.39 | 82.35 | 70.59 | 74.51 | 51.13 | 66.67 | 54.90 | 52.94 | 60.78 | 33.33 | 43.14 | | **MiniCPM-LLaMA3-V 2.5** | 55.95 | 72.67 | 52.94 | 86.27 | 70.59 | 82.35 | 70.59 | 80.39 | 39.23 | 45.10 | 49.02 | 49.02 | 31.37 | 27.45 | 37.25 | | **mPLUG-Owl2-7B** | 52.57 | 64.63 | 49.02 | 70.59 | 74.51 | 70.59 | 58.82 | 70.59 | 40.51 | 41.18 | 41.18 | 47.06 | 39.22 | 29.41 | 49.02 | | **DeepSeek-VL-7B** | 52.09 | 68.49 | 49.02 | 70.59 | 74.51 | 80.39 | 62.75 | 80.39 | 35.69 | 41.18 | 33.33 | 39.22 | 41.18 | 21.57 | 41.18 | | **Phi3-Vision-4.2B** | 50.80 | 67.20 | 50.98 | 76.47 | 60.78 | 80.39 | 62.75 | 78.43 | 34.41 | 37.25 | 33.33 | 41.18 | 43.14 | 21.57 | 33.33 | | **CogVLM-chat** | 49.84 | 60.77 | 49.02 | 72.55 | 62.75 | 56.86 | 68.63 | 60.78 | 38.91 | 49.02 | 33.33 | 43.14 | 41.18 | 27.45 | 43.14 | | **DeepSeek-VL-1.3B** | 46.30 | 58.20 | 45.10 | 56.86 | 66.67 | 56.86 | 66.67 | 62.75 | 34.41 | 35.29 | 29.41 | 29.41 | 39.22 | 27.45 | 49.02 | | **CogAgent-vqa** | 41.16 | 49.52 | 35.29 | 45.10 | 66.67 | 54.90 | 56.86 | 43.14 | 32.80 | 31.37 | 35.29 | 35.29 | 37.25 | 25.49 | 35.29 | | **LLaVA-NeXT-7B** | 33.60 | 43.09 | 31.37 | 52.94 | 43.14 | 49.02 | 39.22 | 47.06 | 24.12 | 35.29 | 13.73 | 37.25 | 23.53 | 9.80 | 27.45 |}  {{< /table-caption >}}
> 🔼 This table presents the performance of various Large Multimodal Models (LMMs) on the Multi-Dimensional Insights (MDI) Benchmark, categorized by question complexity (Level 1: basic perception, Level 2: logical reasoning) and real-world scenarios (Architecture, Education, Housework, Social Services, Sport, Transport).  The table is split into two sections: closed-source and open-source models. Each model's overall score, calculated using a weighted average of Level 1 and Level 2 performance, is also presented.  Higher accuracy percentages indicate better performance, with the best scores for each model category (closed/open) highlighted.
> <details>
> <summary>read the caption</summary>
> Table 2:  LMMs Performance on MDI-Benchmark in Terms of Level and Scenario. Vertically, the table is composed of a model score and two Level sub-tables, where the model score is obtained from Formula  1. Each sub-table consists of seven columns showing the accuracy rates of LMMs in different scenarios. The first column of each sub-table represents the mean value of the subsequent six columns, reflecting the overall performance at different levels. The annotations for Level and Scenario are as follows: Level 1: assessment questions that focus only on basic perceptual ability; Level 2: assessment questions that involve logical reasoning. The scenarios are abbreviated as follows: Arc (architecture), Edu (education), Hou (housework), Soc (social service), Spo (sport), Tra (transport). Horizontally, the table is divided into two blocks. For better statistics and analysis, we will display the blocks as closed-source model statistics and open-source model statistics. The best performance in each block is highlighted in blue and green.
> </details>

{{< table-caption >}}
| Model | Avg | old | middle-aged | young |
|---|---|---|---|---| 
| **_Closed-source_** | | | | |
| **GPT-4o** | 79.74 | 77.94 | 78.43 | 82.84 |
| **GPT-4V** | 76.14 | 75.49 | 75.49 | 77.45 |
| **Gemini 1.5 Pro** | 70.26 | 70.10 | 68.63 | 72.06 |
| **Qwen-VL-Plus** | 44.28 | 41.67 | 40.20 | 50.98 |
| **_Open-source_** | | | | |
| **LLaVA-NeXT-110B** | 66.67 | 69.12 | 63.24 | 67.65 |
| **LLaVA-NeXT-72B** | 64.71 | 66.67 | 63.73 | 63.73 |
| **MiniCPM-LLaMA3-V 2.5** | 56.86 | 55.88 | 54.90 | 59.80 |
| **mPLUG-Owl2-7B** | 53.43 | 55.39 | 50.98 | 53.92 |
| **DeepSeek-VL-7B** | 52.94 | 53.43 | 51.96 | 53.43 |
| **Phi3-Vision-4.2B** | 51.63 | 53.43 | 49.02 | 52.45 |
| **CogVLM-chat** | 50.65 | 52.94 | 51.96 | 47.06 |
| **DeepSeek-VL-1.3B** | 47.06 | 49.02 | 39.71 | 52.45 |
| **CogAgent-vqa** | 41.83 | 44.12 | 42.65 | 38.73 |
| **LLaVA-NeXT-7B** | 34.15 | 37.75 | 33.82 | 30.88 |{{< /table-caption >}}
> 🔼 This table presents the performance of various Large Multimodal Models (LMMs) across three different age groups: old, middle-aged, and young. The performance is evaluated based on the average accuracy achieved by each model on a set of questions tailored to each age group. This evaluation is designed to assess the model's ability to understand and respond effectively to the diverse needs and preferences of different age demographics in various real-world scenarios.  The table includes both closed-source models (like GPT-40 and GPT-4V) and open-source models (like LLaVA-NeXT and MiniCPM).  The 'Avg' column represents the unweighted average across all three age groups for each model.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance of Various Models Across Different Age Groups.
> </details>

{{< table-caption >}}
| Type | Prompt Template | 
|---|---| 
| Multiple
Choice | Now, we require you to solve a multiple-choice real-world question. Please briefly describe your thought process and provide the final answer(option).
**Question**: &lt;Question&gt;
**Option**: &lt;Option&gt;
Regarding the format, please answer following the template below, and be sure to include two &lt;&gt; symbols:
**&lt;Thought process&gt;**: &lt;&lt;your thought process&gt;&gt; **&lt;Answer&gt;**: &lt;&lt;your option&gt;&gt; |{{< /table-caption >}}
> 🔼 This table shows the different prompt templates used for generating model responses. It includes the prompt template for multiple-choice questions, which asks the model to solve a real-world multiple-choice question, briefly describe its thought process, and provide the final answer (option). The table also specifies the desired response format, requesting the model to include its thought process and answer within specific tags.
> <details>
> <summary>read the caption</summary>
> Table 4: Prompt templates for response generations.
> </details>

{{< table-caption >}}
| Multiple |
|---|---| 
| Choice |{{< /table-caption >}}
> 🔼 This table provides the release time and source (download link if applicable) for each Large Multimodal Model (LMM) used in the MDI-Benchmark. This information allows researchers to access the specific models and understand their development timeline. This is crucial for reproducibility and for understanding how model performance relates to architecture and training data. The table includes both open-source and closed-source models.
> <details>
> <summary>read the caption</summary>
> Table 5: The release time and model source of LMMs used in MDI-Benchmark
> </details>

{{< table-caption >}}
| Now, we require you to solve a multiple-choice real-world question. Please briefly |
|---|---| 
| describe your thought process and provide the final answer(option). |
| **Question**: <Question> |
| **Option**: <Option> |
| Regarding the format, please answer following the template below, and be |
| sure to include two <> symbols: |
| **<Thought process>**: <<your thought process>> **<Answer>**: <<your option>> |{{< /table-caption >}}
> 🔼 This table presents a comprehensive breakdown of the performance of various Large Multimodal Models (LMMs) across different age demographics (old, middle-aged, and young) within six real-world scenarios (Architecture, Education, Housework, Social Services, Sport, and Transport).  The table is organized to present the accuracy rates for each model within each age group and scenario combination. This granular view allows for a detailed analysis of model performance, highlighting strengths and weaknesses in catering to specific demographics and scenario types. The highest accuracy for each scenario-age group combination within both closed-source and open-source model categories is emphasized for benchmark comparison.
> <details>
> <summary>read the caption</summary>
> Table 6: Performance of models across different age groups. The best performance in each block is highlighted in blue and green.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2412.12606/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2412.12606/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}