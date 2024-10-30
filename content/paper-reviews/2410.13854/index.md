---
title: "Can MLLMs Understand the Deep Implication Behind Chinese Images?"
summary: "CII-Bench, a new benchmark, reveals that current MLLMs struggle to understand the deeper implications within Chinese images, particularly those related to traditional culture, showcasing a significant..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13854 {{< /keyword >}}

### TL;DR


{{< lead >}}

Researchers have developed CII-Bench, a benchmark designed to evaluate how well multimodal large language models (MLLMs) understand the deeper meanings behind Chinese images.  The benchmark includes a diverse range of images, including those reflecting Chinese traditional culture.  Experiments show a substantial gap between the performance of MLLMs and human understanding, with MLLMs struggling more with images representing Chinese traditional culture.  Adding emotional hints to prompts helped improve the models’ accuracy, highlighting the importance of emotional understanding in interpreting images.  The study’s findings reveal significant room for improvement in MLLMs' ability to understand the rich cultural and contextual nuances of Chinese imagery.  The researchers believe that CII-Bench will help advance the development of MLLMs with a better understanding of Chinese semantics and culturally-specific images.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13854" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13854" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in multimodal learning and cross-cultural AI.  It introduces a novel benchmark, CII-Bench, addressing the gap in evaluating higher-order understanding of Chinese imagery, a critical aspect often overlooked. The findings highlight limitations of current MLLMs and suggest new avenues for research in cultural sensitivity and deeper semantic understanding of visual information, pushing the boundaries of AI development.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CII-Bench, a new benchmark for evaluating MLLMs' higher-order understanding of Chinese images, particularly regarding cultural nuances, has been developed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current MLLMs show significant limitations in understanding the deeper implications of Chinese images, especially those related to traditional culture. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Incorporating image emotion hints can improve MLLMs' performance, indicating a need for advanced emotional understanding in future models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13854/figures_1_0.png)

> 🔼 The figure compares Chinese and English images, highlighting the richer cultural implications embedded in Chinese imagery.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparision of Chinese and English image implications. Chinese images often embody richer scenes and deeper implications with Chinese traditional culture compared with the straightforward and explicit symbolism in English images.
> </details>





![](https://ai-paper-reviewer.com/2410.13854/charts_2_0.png)

> 🔼 The chart shows the distribution of images in the CII-Bench dataset across six domains: Life, Art, Society, Politics, Environment, and Chinese Traditional Culture.
> <details>
> <summary>read the caption</summary>
> Figure 2: Composition of CII-Bench.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>生活 Life</td><td>艺术 Art</td><td>社会 Society</td></tr><tr><td>Question: 这张图片有什么隐喻? Option: (A)有的人不充分考虑自身的情况 就盲目的去追求某些事物。 (B)羽毛熄灭蜡烛是一种天马行空 的想法, 讽刺了不切实际的胡乱尝试 (C)每个人都有追求时尚的权利。 (D)羽毛熄灭蜡烛是一种天马行空的想法, 虽然失败了, 但这种 创新值得赞扬。 (E)图中人物多次用羽毛熄灭蜡烛, 赞扬了坚持不懈、 百折不挠 的精神。 (F)用羽毛熄灭蜡烛这种不合理的行为, 讽刺了有的人做事不考 虑周到, 盲目的尝试。</td><td>Question:远处的小岛暗示了什么? Option: (A)远处的小岛被描绘为精神商托的象征, 代表了 人们在现实世界中寻找精神慰藉 和寄托的地方。 (B)远处的小岛与远处的棕榈树共同营造 出一种与自然和谐共处的氛围, 暗示着 人与自然之间的和谐关系。 (C)远处的小岛象征着希望和目标, 虽然 距离遥远, 但依旧可以到达。 象征着特 (口)远处的小岛上有着特定的文化展现或历史遗迹, 定的文化背景或历史时期, 提醒人们关注和尊重历史与文化的 重要性。 (E)远处的小岛作为远方的地标, 象征着未知的领域或新的探 索方向, 鼓励人们勇敢地去探索未知。 (F)远处的小商象征着个人内心深处的平静之地, 是人们在面对 外界压力和挑战时寻求内心平静和恢复的地方,</td><td>你看人掌握婴小孩也吸你一起升经历的是可是 Question: 这张图片有什么隐喻? 人家坚持下学工培养理由乡不一样! Option: (A)坚持不懈是一种重要的美德. (B)父母的行为习惯决定了孩子的未 来。 (C)教育的失败是因为家长没有起到 足够的监督作用。 (D)钢琴的学习应该从小做起并坚持下来, 这才能够走向成功。 (1)有的家长把教育失败的原因归咎于孩子, 却忽略了自身的原 因。 (F)如果父母不以身作则成为榜样, 那么将来孩子的教育一定失 败。</td></tr><tr><td>Image Type: 多格漫画(Multi-panel Comic) Rhetoric: 隐喻 Emotion: 消极 Difficulty Level: 简单</td><td>Image Type: 插画(Illustration) Rhetoric: 象征 Emotion: 积极 Difficulty Level: 简单</td><td>Image Type: 单格漫画(Single-panel Comic) Rhetoric: 对比 Emotion: 消极 Difficulty Level: 简单</td></tr><tr><td>中华传统文化 Chinese Traditional Culture</td><td>环境 Environment</td><td>政治 Politics</td></tr><tr><td>Question: 这张图片有什么隐喻? Option: (A)萧瑟的冬景暗示了 人物对于 春天到来、 万物复苏的渴望。 (B)孤身赏雪景暗示了图片中 人物淡然、 超脱世俗的心境。 X注自一人欣赏重播暗示了人物内心的机械的脚压,糖尿拍摄纸, (D)抬头的动作暗示了 人物的思考。 (日)独身一人暗示了人物对于亲人和家乡的怀念, (F)兼瑟的冬景暗示了人物内心的悲伤。</td><td>Question: 这张图片有什么隐喻? 賃金 Option: (A)象征着自然界的生物受到人类 活动的严重影响, 甚至面临灭绝 的威胁。 (B)这张图片表现了工业技术的飞速 发展, 暗示着未来生活将更加便利和富裕。 (C)这张图片旨在宣传新型环保技术的应用, 表现工业与自然和 谐共处的美好愿景。 (D)暗示了 人们有能力通过改变行为模式、 采用新技术、 实施环 保政策等方式, 来减轻对自然环境的破坏, 实现可持续发展和 生态平衡的可能。 (E)表达了 人类对自然界的彻底征服, 通过技术改变地表环境。 Ⓡ表达了对环境污染和生态破坏的深刻忧虑, 它提醒观者在追 求工业发展的同时, 不应忽视对自然环境的保护和珍惜。</td><td>Question: 这张图片有什么隐喻? Option: (A)个体在面对群体或更高权威时, 所面临 的道德困境和选择。 (B)天使和士兵形象之间的冲突暗示了信仰 与现实之间的张力, 以及个体在面对残酷 现实时, 如何坚持自己的信仰。 (C)图片象征了 人类对宗教信仰的追求, 表达了对精神世界的渴望。 �图片可能吸刺了部生以战争干预其他国家或地区的行为、 表 达了对和平的渴望与对战争后果的担忧, (E)个人的命运既受到外力的影响, 也取决于个人的选择。 (F)即使在和平时期, 战争的威胁也可能随时存在; 而即使在战争 中, 人们也可能怀抱着对和平的渴望,</td></tr><tr><td>Image Type: 绘画(Painting) Rhetoric: 隐喻 Emotion: 积极 Difficulty Level: 困难</td><td>Image Type: 海报(Poster) Rhetoric: 象征 Emotion: 消极 Difficulty Level: 中等</td><td>Image Type: 插画(Illustration) Rhetoric: 隐喻、 对比 Emotion: 消极 Difficulty Level: 困难</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the overall performance of various multimodal large language models (MLLMs), large language models (LLMs), and humans on the CII-Bench, broken down by different domains and emotional categories.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13854/figures_28_0.png)

> 🔼 The figure compares the richness and depth of implication in Chinese images versus English images, highlighting the cultural context embedded in Chinese imagery.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparision of Chinese and English image implications. Chinese images often embody richer scenes and deeper implications with Chinese traditional culture compared with the straightforward and explicit symbolism in English images.
> </details>



![](https://ai-paper-reviewer.com/2410.13854/figures_30_0.png)

> 🔼 The figure compares Chinese and English images, highlighting that Chinese images often convey richer scenes and deeper implications rooted in traditional culture than English images.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparision of Chinese and English image implications. Chinese images often embody richer scenes and deeper implications with Chinese traditional culture compared with the straightforward and explicit symbolism in English images.
> </details>



![](https://ai-paper-reviewer.com/2410.13854/figures_31_0.png)

> 🔼 The figure shows a comparison of Chinese and English images, highlighting the richer scenes and deeper cultural implications often present in Chinese imagery.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparision of Chinese and English image implications. Chinese images often embody richer scenes and deeper implications with Chinese traditional culture compared with the straightforward and explicit symbolism in English images.
> </details>



![](https://ai-paper-reviewer.com/2410.13854/figures_32_0.png)

> 🔼 The figure compares Chinese and English images, highlighting the richer, culturally nuanced implications found in Chinese imagery.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparision of Chinese and English image implications. Chinese images often embody richer scenes and deeper implications with Chinese traditional culture compared with the straightforward and explicit symbolism in English images.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Model</td><td>Overall (800)</td><td>Life (216)</td><td>Art (123)</td><td>Society (157)</td><td>Politics (21)</td><td>Env. (51)</td><td>CTC (130)</td><td>Positive (220)</td><td>Negative (247)</td><td>Neutral (231)</td></tr><tr><td colspan="11">Open-source Models</td></tr><tr><td>Qwen-VL-Chat</td><td>34.3</td><td>27.9</td><td>34.7</td><td>32.5</td><td>45.8</td><td>55.2</td><td>36.5</td><td>34.0</td><td>35.1</td><td>33.6</td></tr><tr><td>idefics2-8b</td><td>36.3</td><td>25.0</td><td>46.3</td><td>38.1</td><td>41.7</td><td>56.9</td><td>32.9</td><td>32.8</td><td>39.1</td><td>36.4</td></tr><tr><td>MiniCPM-Llama3-2.5</td><td>40.4</td><td>36.3</td><td>45.6</td><td>37.1</td><td>50.0</td><td>51.7</td><td>40.2</td><td>43.2</td><td>37.0</td><td>41.3</td></tr><tr><td>CogVLM2-Llama3-Chinese-Chat</td><td>43.4</td><td>37.1</td><td>48.3</td><td>42.3</td><td>54.2</td><td>63.8</td><td>40.2</td><td>40.3</td><td>45.7</td><td>43.8</td></tr><tr><td>MiniCPM-v2.6</td><td>45.0</td><td>37.5</td><td>47.6</td><td>49.5</td><td>58.3</td><td>55.2</td><td>42.3</td><td>45.6</td><td>44.6</td><td>44.9</td></tr><tr><td>LLaVA-1.6-34B</td><td>46.0</td><td>40.8</td><td>55.1</td><td>42.8</td><td>45.8</td><td>62.1</td><td>43.1</td><td>44.4</td><td>48.2</td><td>45.2</td></tr><tr><td>LLaVA-1.6-72B</td><td>48.0</td><td>43.8</td><td>48.3</td><td>49.5</td><td>70.8</td><td>60.3</td><td>43.8</td><td>41.5</td><td>52.5</td><td>49.2</td></tr><tr><td>Qwen2-VL-7B</td><td>49.6</td><td>42.5</td><td>51.7</td><td>54.1</td><td>62.5</td><td>65.5</td><td>44.5</td><td>50.2</td><td>47.5</td><td>51.2</td></tr><tr><td>GLM-4V-9b</td><td>50.3</td><td>46.7</td><td>48.3</td><td>53.6</td><td>54.2</td><td>62.1</td><td>48.2</td><td>51.9</td><td>52.9</td><td>46.3</td></tr><tr><td>Intern VL2-Llama3-76B</td><td>52.9</td><td>50.8</td><td>53.7</td><td>51.0</td><td>58.3</td><td>67.2</td><td>51.1</td><td>54.8</td><td>51.8</td><td>52.3</td></tr><tr><td>Intern VL2-8B</td><td>53.1</td><td>49.2</td><td>53.1</td><td>55.7</td><td>62.5</td><td>63.8</td><td>50.4</td><td>50.6</td><td>53.3</td><td>55.1</td></tr><tr><td>InternVL2-40B</td><td>57.9</td><td>55.8</td><td>55.1</td><td>61.9</td><td>62.5</td><td>70.7</td><td>52.6</td><td>54.4</td><td>58.0</td><td>60.8</td></tr><tr><td>Qwen2-VL-72B</td><td>64.4</td><td>61.7</td><td>61.2</td><td>68.0</td><td>79.2</td><td>75.9</td><td>59.9</td><td>62.7</td><td>63.8</td><td>66.4</td></tr><tr><td colspan="11">Closed-source Models</td></tr><tr><td>GPT-4o</td><td>54.1</td><td>54.1</td><td>55.8</td><td>52.1</td><td>50.0</td><td>63.8</td><td>51.8</td><td>51.9</td><td>56.2</td><td>54.1</td></tr><tr><td>Claude-3.5-Sonnet</td><td>54.1</td><td>52.1</td><td>61.9</td><td>52.6</td><td>62.5</td><td>46.6</td><td>53.3</td><td>52.7</td><td>56.5</td><td>53.0</td></tr><tr><td>Qwen-VL-MAX</td><td>56.9</td><td>53.3</td><td>59.2</td><td>58.8</td><td>62.5</td><td>67.2</td><td>52.6</td><td>53.9</td><td>58.3</td><td>58.0</td></tr><tr><td>Gemini-1.5 Pro</td><td>60.1</td><td>60.0</td><td>63.3</td><td>62.4</td><td>70.8</td><td>62.1</td><td>51.1</td><td>54.8</td><td>65.6</td><td>59.4</td></tr><tr><td>GLM-4V</td><td>60.9</td><td>55.0</td><td>59.9</td><td>66.5</td><td>66.7</td><td>79.3</td><td>55.5</td><td>58.5</td><td>64.5</td><td>59.4</td></tr><tr><td colspan="11">Text-Only Models</td></tr><tr><td>Llama-3-8B-Instruct</td><td>21.7</td><td>22.2</td><td>26.9</td><td>18.6</td><td>25.0</td><td>27.8</td><td>20.4</td><td>21.2</td><td>24.4</td><td>19.5</td></tr><tr><td>DeepSeek-67B-Chat</td><td>27.1</td><td>26.6</td><td>32.7</td><td>30.9</td><td>20.0</td><td>35.2</td><td>18.2</td><td>25.7</td><td>22.2</td><td>33.2</td></tr><tr><td>Qwen2-7B-Instruct</td><td>32.5</td><td>33.2</td><td>34.6</td><td>30.9</td><td>35.0</td><td>40.7</td><td>28.5</td><td>33.6</td><td>30.4</td><td>33.6</td></tr><tr><td colspan="11">Humans</td></tr><tr><td>Human_avg</td><td>78.2</td><td>81.0</td><td>67.7</td><td>82.7</td><td>87.7</td><td>84.0</td><td>65.9</td><td>77.9</td><td>75.2</td><td>81.6</td></tr><tr><td>Human_best</td><td>81.0</td><td>83.2</td><td>73.6</td><td>87.2</td><td>89.5</td><td>86.0</td><td>66.7</td><td>78.2</td><td>78.8</td><td>83.3</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various Multimodal Large Language Models (MLLMs), Large Language Models (LLMs), and humans across different domains and emotional polarities in the CII-Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Model</td><td>None</td><td>CoT</td><td>Domain</td><td>Emotion</td><td>Rhetoric</td></tr><tr><td colspan="6">Open-source Models</td></tr><tr><td>Qwen-VL-Chat</td><td>34.3</td><td>34.0</td><td>32.1</td><td>35.0</td><td>33.4</td></tr><tr><td>idefics2-8b</td><td>36.3</td><td>33.3</td><td>37.5</td><td>38.6</td><td>37.4</td></tr><tr><td>MiniCPM-Llama3-2.5</td><td>40.4</td><td>35.8</td><td>41.1</td><td>39.0</td><td>34.8</td></tr><tr><td>CogVLM2-Llama3-Chinese-Chat</td><td>43.4</td><td>42.6</td><td>43.5</td><td>44.0</td><td>43.4</td></tr><tr><td>MiniCPM-v2.6</td><td>45.0</td><td>38.9</td><td>44.4</td><td>45.4</td><td>45.4</td></tr><tr><td>LLa VA-1.6-34B</td><td>46.0</td><td>44.5</td><td>46.4</td><td>47.1</td><td>45.4</td></tr><tr><td>LLa VA-1.6-72B</td><td>48.0</td><td>45.3</td><td>47.3</td><td>48.6</td><td>45.4</td></tr><tr><td>Qwen2-VL-7B</td><td>49.6</td><td>50.0</td><td>51.0</td><td>50.8</td><td>49.3</td></tr><tr><td>GLM-4V-9b</td><td>50.3</td><td>49.1</td><td>49.9</td><td>51.1</td><td>49.5</td></tr><tr><td>Intern VL2-Llama3-76B</td><td>52.9</td><td>52.6</td><td>54.1</td><td>52.8</td><td>53.5</td></tr><tr><td>Intern VL2-8B</td><td>53.1</td><td>47.9</td><td>53.5</td><td>56.3</td><td>53.8</td></tr><tr><td>Intern VL2-40B</td><td>57.9</td><td>57.6</td><td>57.1</td><td>60.0</td><td>57.9</td></tr><tr><td>Qwen2-VL-72B</td><td>64.4</td><td>62.1</td><td>66.0</td><td>64.3</td><td>63.0</td></tr><tr><td colspan="6">Closed-source Models</td></tr><tr><td>GPT-4o</td><td>54.1</td><td>54.9</td><td>55.4</td><td>54.9</td><td>51.9</td></tr><tr><td>Claude-3.5-Sonnet</td><td>54.1</td><td>51.6</td><td>56.4</td><td>53.5</td><td>54.9</td></tr><tr><td>Qwen-VL-MAX</td><td>56.9</td><td>54.0</td><td>59.1</td><td>59.9</td><td>54.8</td></tr><tr><td>Gemini-1.5 Pro</td><td>60.1</td><td>54.1</td><td>59.0</td><td>57.9</td><td>55.6</td></tr><tr><td>GLM-4V</td><td>60.9</td><td>48.8</td><td>60.4</td><td>60.6</td><td>58.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the overall results of different prompts (None, CoT, Domain, Emotion, Rhetoric) on the CII-Bench benchmark, showing the accuracy of various open-source and closed-source models.
> <details>
> <summary>read the caption</summary>
> Table 2: Overall results of different prompts on CII-Bench. The label (Emotion, Domain, Rhetoric) means providing corresponding information for the images in the prompt. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td>Model</td><td>None</td><td>1-shot</td><td>2-shot</td><td>3-shot</td></tr><tr><td>Qwen2-VL-7B</td><td>49.6</td><td>44.1</td><td>39.3</td><td>37.5</td></tr><tr><td>GPT-4o</td><td>54.1</td><td>51.8</td><td>49.5</td><td>49.1</td></tr><tr><td>Claude-3.5-Sonnet</td><td>54.1</td><td>55.4</td><td>55.3</td><td>55.4</td></tr><tr><td>InternVL2-40B</td><td>57.9</td><td>53.0</td><td>47.1</td><td>41.9</td></tr><tr><td>Gemini-1.5 Pro</td><td>60.1</td><td>57.4</td><td>55.8</td><td>55.4</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the few-shot performance of different models on the CII-Bench benchmark, indicating the impact of providing a small number of examples on model accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: Few-shot results of different models on the CII-Bench.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Model</td><td>Overall</td><td>Easy</td><td>Middle</td><td>Difficult</td><td>Positive</td><td>Negative</td><td>Neutral</td></tr><tr><td>GPT-4o</td><td>2.71</td><td>3.0</td><td>3.2</td><td>2.35</td><td>2.63</td><td>3.0</td><td>2.82</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the overall performance and results of Chinese traditional painting evaluation based on GPT-40, categorized by difficulty levels and emotional polarities.
> <details>
> <summary>read the caption</summary>
> Table 4: Overall result of Chinese traditional painting.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Statistics</td><td></td></tr><tr><td>Total Questions</td><td>800</td></tr><tr><td>Total Images</td><td>698</td></tr><tr><td>Dev : Validation : Test</td><td>15 : 20 : 765</td></tr><tr><td>Easy : Medium : Hard</td><td>305 : 282 : 111</td></tr><tr><td>Average Question Length</td><td>10.54</td></tr><tr><td>Average Option Length</td><td>28.31</td></tr><tr><td>Average Explanation Length</td><td>121.06</td></tr><tr><td>Metaphor</td><td>562</td></tr><tr><td>Exaggerate</td><td>121</td></tr><tr><td>Symbolism</td><td>236</td></tr><tr><td>Visual Dislocation</td><td>42</td></tr><tr><td>Antithesis</td><td>13</td></tr><tr><td>Analogy</td><td>19</td></tr><tr><td>Personification</td><td>73</td></tr><tr><td>Contrast</td><td>87</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various MLLMs, LLMs, and humans on the CII-Bench across different domains and emotional polarities.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td>Statistics</td><td></td></tr><tr><td>Life</td><td>216 (30.95%)</td></tr><tr><td>Art</td><td>123 (17.62%)</td></tr><tr><td>Society</td><td>157 (22.49%)</td></tr><tr><td>Environment</td><td>51 (7.31%)</td></tr><tr><td>Politics</td><td>21 (3.01%)</td></tr><tr><td>Chinese Traditional Culture</td><td>130 (18.62%)</td></tr><tr><td>Positive</td><td>220 (31.52%)</td></tr><tr><td>Neutral</td><td>247 (35.39%)</td></tr><tr><td>Negative</td><td>231 (33.09%)</td></tr><tr><td>Illustration</td><td>178 (25.50%)</td></tr><tr><td>Meme</td><td>145 (20.77%)</td></tr><tr><td>Poster</td><td>87 (12.46%)</td></tr><tr><td>Multi-panel Comic</td><td>34 (4.87%)</td></tr><tr><td>Single-panel Comic</td><td>143 (20.49%)</td></tr><tr><td>Painting</td><td>119 (17.05%)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various multimodal large language models (MLLMs), large language models (LLMs), and humans across different domains and emotional polarities on the Chinese Image Implication understanding Benchmark (CII-Bench).
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Eval ua tion Prompt: Direct</td></tr><tr><td>请根据提供的图片尝试回答下面的单选题。 直接回答正确选项, 不要包 含额外的解释。 请使用以下格式: "答案: $LETTER " 其中 , $1ETTER是你认为正确答案的字母。</td></tr><tr><td>{ question} {options}</td></tr><tr><td>答案:</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various multi-modal large language models (MLLMs), large language models (LLMs), and humans across different domains and emotional categories on the CII-Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:16px'><tr><td>Evaluation Prompt : Keywords</td></tr><tr><td>请根据提供的图片尝试回答下面的单选题。 请使用以下格式: "答案: $LETTER" , 其中SLETTER是你认为正确答案的字母。</td></tr><tr><td>关键词: {key_ words}</td></tr><tr><td>{ question} {options}</td></tr><tr><td>答案:</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various multi-modal large language models (MLLMs), large language models (LLMs), and humans across different domains and emotional polarities on the CII-Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='7' style='font-size:14px'><tr><td>Evaluation Prompt : CoT</td></tr><tr><td>请尝试根据提供的图片回答以下单选题。 让我们逐一思考每个选项, 逐 步分析。 你回答的最后一行应该用以下格式: "答案: $LETTER " , 其中SLETTER是你认为正确答案的字母。</td></tr><tr><td>{question} {options}</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various Multimodal Large Language Models (MLLMs), Large Language Models (LLMs), and humans across different domains and emotional categories on the CII-Bench.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Model</td><td>Overall</td><td>Illus.</td><td>Paint.</td><td>Poster</td><td>Single-C.</td><td>Multi-C.</td><td>Meme</td></tr><tr><td colspan="8">Open-source Models</td></tr><tr><td>Qwen-VL-Chat</td><td>34.3</td><td>33.5</td><td>36.8</td><td>45.1</td><td>35.2</td><td>23.7</td><td>27.5</td></tr><tr><td>idefics2-8b</td><td>36.3</td><td>44.0</td><td>32.8</td><td>45.1</td><td>35.2</td><td>23.7</td><td>24.8</td></tr><tr><td>MiniCPM-Llama3-2.5</td><td>40.4</td><td>39.5</td><td>38.4</td><td>49.0</td><td>42.6</td><td>34.2</td><td>37.3</td></tr><tr><td>CogVLM2-Llama3-Chinese-Chat</td><td>43.4</td><td>45.0</td><td>39.2</td><td>52.9</td><td>45.5</td><td>23.7</td><td>39.2</td></tr><tr><td>MiniCPM-v2.6</td><td>45.0</td><td>44.0</td><td>40.8</td><td>53.9</td><td>51.1</td><td>36.8</td><td>39.2</td></tr><tr><td>LLaVA-1.6-34B</td><td>46.0</td><td>50.0</td><td>44.0</td><td>48.0</td><td>47.7</td><td>29.0</td><td>42.5</td></tr><tr><td>LLaVA-1.6-72B</td><td>48.0</td><td>50.9</td><td>44.0</td><td>43.1</td><td>56.8</td><td>39.5</td><td>43.1</td></tr><tr><td>Qwen2-VL-7B</td><td>49.6</td><td>47.7</td><td>43.2</td><td>0.8</td><td>58.0</td><td>31.6</td><td>46.4</td></tr><tr><td>GLM-4V-9b</td><td>50.3</td><td>46.8</td><td>47.2</td><td>55.9</td><td>59.7</td><td>42.1</td><td>47.1</td></tr><tr><td>Intern VL2-Llama3-76B</td><td>52.9</td><td>48.2</td><td>50.4</td><td>59.8</td><td>62.5</td><td>39.5</td><td>49.7</td></tr><tr><td>Intern VL2-8B</td><td>53.1</td><td>48.2</td><td>48.0</td><td>56.9</td><td>64.8</td><td>52.6</td><td>51.0</td></tr><tr><td>Intern VL2-40B</td><td>57.9</td><td>53.7</td><td>51.2</td><td>56.9</td><td>68.2</td><td>50.0</td><td>59.5</td></tr><tr><td>Qwen2-VL-72B</td><td>64.4</td><td>61.5</td><td>59.2</td><td>68.6</td><td>70.5</td><td>47.4</td><td>67.3</td></tr><tr><td colspan="8">Closed-source Models</td></tr><tr><td>GPT-4o</td><td>54.1</td><td>54.1</td><td>50.4</td><td>56.9</td><td>54.6</td><td>47.4</td><td>57.5</td></tr><tr><td>Claude-3.5-Sonnet</td><td>54.1</td><td>55.1</td><td>54.4</td><td>47.1</td><td>55.1</td><td>50.0</td><td>57.5</td></tr><tr><td>Qwen-VL-MAX</td><td>56.9</td><td>57.3</td><td>51.2</td><td>60.8</td><td>62.5</td><td>39.5</td><td>56.2</td></tr><tr><td>Gemini-1.5 Pro</td><td>60.1</td><td>64.7</td><td>50.4</td><td>52.0</td><td>66.5</td><td>52.6</td><td>62.1</td></tr><tr><td>GLM-4V</td><td>60.9</td><td>59.6</td><td>54.4</td><td>67.7</td><td>70.5</td><td>44.7</td><td>57.5</td></tr><tr><td colspan="8">Humans</td></tr><tr><td>Human_avg</td><td>78.2</td><td>71.5</td><td>65.6</td><td>75.2</td><td>79.8</td><td>74.5</td><td>83.6</td></tr><tr><td>Human_best</td><td>81.0</td><td>76.9</td><td>66.1</td><td>78.6</td><td>81.7</td><td>78.4</td><td>85.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the overall performance of various Multimodal Large Language Models (MLLMs) and humans across different image types (Illustration, Painting, Poster, Single-panel Comic, Multi-panel Comic, Meme).
> <details>
> <summary>read the caption</summary>
> Table 6: Overall results of different MLLMs on different image types. The best-performing model in each category is in-bold, and the second best is underlined. For brevity, Illus. refers to Illustration, Paint. refers to Painting, Single-C. refers to Single-panel Comic, Multi-C. refers to Multi-panel Comic.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Model</td><td>Overall</td><td>Easy</td><td>Medium</td><td>Hard</td></tr><tr><td colspan="5">Open-source Models</td></tr><tr><td>Qwen-VL-Chat</td><td>34.3</td><td>36.3</td><td>33.5</td><td>30.3</td></tr><tr><td>idefics2-8b</td><td>36.3</td><td>35.4</td><td>39.3</td><td>30.3</td></tr><tr><td>MiniCPM-Llama3-2.5</td><td>40.4</td><td>43.1</td><td>39.3</td><td>35.3</td></tr><tr><td>CogVLM2-Llama3-Chinese-Chat</td><td>43.4</td><td>46.3</td><td>39.9</td><td>44.3</td></tr><tr><td>MiniCPM-v2.6</td><td>45.0</td><td>47.1</td><td>44.2</td><td>41.0</td></tr><tr><td>LLaVA-1.6-34B</td><td>46.0</td><td>44.9</td><td>47.0</td><td>46.7</td></tr><tr><td>LLaVA-1.6-72B</td><td>48.0</td><td>50.0</td><td>47.0</td><td>45.1</td></tr><tr><td>Qwen2-VL-7B</td><td>49.6</td><td>52.6</td><td>47.9</td><td>45.9</td></tr><tr><td>GLM-4V-9b</td><td>50.3</td><td>52.6</td><td>49.1</td><td>46.7</td></tr><tr><td>Intern VL2-Llama3-76B</td><td>52.9</td><td>57.4</td><td>49.7</td><td>48.4</td></tr><tr><td>Intern VL2-8B</td><td>53.1</td><td>57.7</td><td>49.4</td><td>50.0</td></tr><tr><td>Intern VL2-40B</td><td>57.9</td><td>62.3</td><td>55.5</td><td>51.6</td></tr><tr><td>Qwen2-VL-72B</td><td>64.4</td><td>68.9</td><td>63.1</td><td>54.9</td></tr><tr><td colspan="5">Closed-source Models</td></tr><tr><td>GPT-4o</td><td>54.1</td><td>56.0</td><td>54.9</td><td>46.7</td></tr><tr><td>Claude-3.5-Sonnet</td><td>54.1</td><td>55.1</td><td>52.4</td><td>55.7</td></tr><tr><td>Qwen-VL-MAX</td><td>56.9</td><td>57.4</td><td>56.7</td><td>55.7</td></tr><tr><td>Gemini-1.5 Pro</td><td>60.1</td><td>61.1</td><td>61.3</td><td>54.1</td></tr><tr><td>GLM-4V</td><td>60.9</td><td>62.9</td><td>59.2</td><td>59.8</td></tr><tr><td colspan="5">Humans</td></tr><tr><td>Human_avg</td><td>78.2</td><td>82.5</td><td>76.1</td><td>70.9</td></tr><tr><td>Human_best</td><td>81.0</td><td>84.0</td><td>78.9</td><td>71.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents the overall performance of various multi-modal large language models (MLLMs) and humans across different difficulty levels (easy, medium, hard) on a benchmark for understanding image implications.
> <details>
> <summary>read the caption</summary>
> Table 7: Overall results of different MLLMs on various difficulty levels. The best-performing model in each category is in-bold, and the second best is underlined. The numbers in parentheses indicate the number of samples in each category.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Model</td><td>Overall</td><td>Meta.</td><td>Exag.</td><td>Symb.</td><td>Contrast</td><td>VisD.</td><td>Pers.</td><td>Anal.</td><td>Anti.</td></tr><tr><td colspan="10">Open-source Models</td></tr><tr><td>Qwen- VL-Chat</td><td>34.3</td><td>31.8</td><td>38.9</td><td>38.4</td><td>41.0</td><td>37.0</td><td>34.2</td><td>28.6</td><td>30.8</td></tr><tr><td>idefics2-8b</td><td>36.3</td><td>35.2</td><td>32.6</td><td>35.6</td><td>41.9</td><td>30.4</td><td>26.6</td><td>23.8</td><td>38.5</td></tr><tr><td>MiniCPM-Llama3-2.5</td><td>40.4</td><td>38.5</td><td>42.4</td><td>40.2</td><td>38.1</td><td>34.8</td><td>44.3</td><td>33.3</td><td>38.5</td></tr><tr><td>CogVLM2-Llama3-Chinese-Chat</td><td>43.4</td><td>42.2</td><td>46.5</td><td>42.7</td><td>44.8</td><td>50.0</td><td>44.3</td><td>52.4</td><td>38.5</td></tr><tr><td>MiniCPM-v2.6</td><td>45.0</td><td>41.7</td><td>48.6</td><td>43.4</td><td>41.0</td><td>45.7</td><td>45.6</td><td>38.1</td><td>53.9</td></tr><tr><td>LLaVA-1.6-34B</td><td>46.0</td><td>45.1</td><td>47.9</td><td>45.9</td><td>41.0</td><td>45.7</td><td>44.3</td><td>42.9</td><td>30.8</td></tr><tr><td>LLaVA-1.6-72B</td><td>48.0</td><td>46.1</td><td>54.2</td><td>48.0</td><td>49.5</td><td>47.8</td><td>46.8</td><td>47.6</td><td>38.5</td></tr><tr><td>Qwen2-VL-7B</td><td>49.6</td><td>47.6</td><td>52.1</td><td>48.4</td><td>49.5</td><td>56.5</td><td>51.9</td><td>47.6</td><td>53.9</td></tr><tr><td>GLM-4V-9b</td><td>50.3</td><td>48.7</td><td>56.3</td><td>51.3</td><td>52.4</td><td>50.0</td><td>50.6</td><td>57.1</td><td>30.8</td></tr><tr><td>Intern VL2-Llama3-76B</td><td>52.9</td><td>51.5</td><td>59.7</td><td>51.3</td><td>51.4</td><td>52.2</td><td>55.7</td><td>52.4</td><td>46.2</td></tr><tr><td>Intern VL2-8B</td><td>53.1</td><td>51.0</td><td>54.9</td><td>55.2</td><td>47.6</td><td>54.4</td><td>57.0</td><td>47.6</td><td>46.2</td></tr><tr><td>Intern VL2-40B</td><td>57.9</td><td>55.8</td><td>63.2</td><td>56.6</td><td>55.2</td><td>54.4</td><td>69.6</td><td>71.4</td><td>46.2</td></tr><tr><td>Qwen2-VL-72B</td><td>64.4</td><td>62.5</td><td>70.1</td><td>65.8</td><td>63.8</td><td>73.9</td><td>67.1</td><td>66.7</td><td>53.9</td></tr><tr><td colspan="10">Closed-source Models</td></tr><tr><td>GPT-4o</td><td>54.1</td><td>52.6</td><td>54.9</td><td>51.6</td><td>51.4</td><td>60.9</td><td>55.7</td><td>52.4</td><td>38.5</td></tr><tr><td>Claude-3.5-Sonnet</td><td>54.1</td><td>52.1</td><td>54.9</td><td>56.6</td><td>47.6</td><td>50.0</td><td>54.4</td><td>57.1</td><td>38.5</td></tr><tr><td>Qwen-VL-MAX</td><td>56.9</td><td>54.7</td><td>60.4</td><td>58.7</td><td>52.4</td><td>58.7</td><td>55.7</td><td>57.1</td><td>46.2</td></tr><tr><td>Gemini-1.5 Pro</td><td>60.1</td><td>59.5</td><td>64.6</td><td>60.1</td><td>61.9</td><td>47.8</td><td>55.7</td><td>81.0</td><td>53.9</td></tr><tr><td>GLM-4V</td><td>60.9</td><td>60.2</td><td>65.3</td><td>63.4</td><td>57.1</td><td>65.2</td><td>60.8</td><td>66.7</td><td>46.2</td></tr><tr><td colspan="10">Humans</td></tr><tr><td>Human_avg</td><td>78.2</td><td>76.0</td><td>82.8</td><td>74.1</td><td>70.4</td><td>73.9</td><td>72.9</td><td>90.0</td><td>52.8</td></tr><tr><td>Human_best</td><td>81.0</td><td>77.0</td><td>85.2</td><td>76.5</td><td>75.7</td><td>75.6</td><td>74.7</td><td>95.0</td><td>66.7</td></tr></table>{{< /table-caption >}}
> 🔼 Table 8 presents the overall results of various multimodal large language models and human participants on different rhetoric types, showing the best-performing model in each rhetoric category.
> <details>
> <summary>read the caption</summary>
> Table 8: Overall results of different MLLMs and humans on different rhetoric. The best-performing model in each category is in-bold, and the second best is underlined. For brevity, Meta. refers to Metaphor, Exag. refers to Exaggerate, Symb. refers to Symbolism, VisD. refers to Visual Dislocation, Anti. refers to Antithesis, Anal. refers to Analogy, Pers. refers to Personification
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Mode</td><td>Metric</td><td>InternVL2-40B</td><td>InternVL2-8B</td><td>Intern VL2-Llama3-76B</td><td>MiniCPM-Llama3-2.5</td><td>MiniCPM-v2.6</td></tr><tr><td rowspan="3">CoT</td><td>Acc</td><td>57.6</td><td>47.9</td><td>52.6</td><td>35.8</td><td>39.3</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>8.1</td><td>0.0</td></tr><tr><td rowspan="3">Domain</td><td>Acc</td><td>57.1</td><td>53.5</td><td>54.1</td><td>41.1</td><td>44.4</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>5.9</td><td>0.0</td></tr><tr><td rowspan="3">Emotion</td><td>Acc</td><td>60.0</td><td>56.3</td><td>52.8</td><td>39.0</td><td>45.4</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>8.4</td><td>0.0</td></tr><tr><td rowspan="3">None</td><td>Acc</td><td>57.9</td><td>53.1</td><td>52.9</td><td>40.4</td><td>45.0</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.4</td><td>0.0</td></tr><tr><td rowspan="3">Rhetoric</td><td>Acc</td><td>57.9</td><td>53.8</td><td>53.5</td><td>34.8</td><td>45.4</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>10.4</td><td>0.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various multimodal large language models (MLLMs), large language models (LLMs), and humans across different domains and emotional categories on the CII-Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Mode</td><td>Metric</td><td>Qwen-VL-Chat</td><td>Qwen2-VL-72B</td><td>Qwen2-VL-7B</td><td>CogVLM2-Llama3-Chinese-Chat</td></tr><tr><td rowspan="3">CoT</td><td>Acc</td><td>34.0</td><td>62.1</td><td>50.0</td><td>43.0</td></tr><tr><td>Error</td><td>0.3</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.3</td><td>0.0</td></tr><tr><td rowspan="3">Domain</td><td>Acc</td><td>32.1</td><td>66.0</td><td>51.0</td><td>43.5</td></tr><tr><td>Error</td><td>0.3</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.1</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">Emotion</td><td>Acc</td><td>35.0</td><td>64.3</td><td>50.8</td><td>44.0</td></tr><tr><td>Error</td><td>0.1</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.5</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">None</td><td>Acc</td><td>34.3</td><td>64.4</td><td>49.6</td><td>43.4</td></tr><tr><td>Error</td><td>0.5</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.4</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">Rhetoric</td><td>Acc</td><td>33.4</td><td>63.0</td><td>49.3</td><td>43.4</td></tr><tr><td>Error</td><td>0.3</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.3</td><td>0.0</td><td>0.0</td><td>0.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various multimodal large language models (MLLMs), large language models (LLMs), and humans across different domains and emotional polarities on the CII-Bench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Mode</td><td>Metric</td><td>GLM-4V-9b</td><td>LLaVA-1.6-72B</td><td>LLaVA-1.6-34B</td><td>idefics2-8b</td></tr><tr><td rowspan="3">CoT</td><td>Acc</td><td>49.1</td><td>45.3</td><td>44.5</td><td>33.3</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">Domain</td><td>Acc</td><td>49.9</td><td>47.3</td><td>46.4</td><td>37.5</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">Emotion</td><td>Acc</td><td>51.1</td><td>48.6</td><td>47.1</td><td>38.6</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.1</td></tr><tr><td rowspan="3">None</td><td>Acc</td><td>50.3</td><td>48.0</td><td>46.0</td><td>36.3</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">Rhetoric</td><td>Acc</td><td>49.5</td><td>45.4</td><td>45.4</td><td>37.4</td></tr><tr><td>Error</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr><tr><td>Miss</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various multimodal large language models (MLLMs), large language models (LLMs), and humans across different domains (Life, Art, Society, Politics, Environment, and Chinese Traditional Culture) and emotional polarities (Positive, Negative, Neutral).
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Mode</td><td>Metric</td><td>Gemini-1.5 Pro</td><td>GLM-4V</td><td>GPT-40</td><td>Claude-3-5-Sonnet</td><td>Qwen-VL-MAX</td></tr><tr><td rowspan="3">CoT</td><td>Acc</td><td>54.1</td><td>49.9</td><td>54.9</td><td>51.6</td><td>54.8</td></tr><tr><td>Error</td><td>0.3</td><td>3.4</td><td>0.0</td><td>1.8</td><td>1.1</td></tr><tr><td>Miss</td><td>1.8</td><td>2.4</td><td>0.1</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">Domain</td><td>Acc</td><td>59.0</td><td>60.4</td><td>55.4</td><td>56.4</td><td>59.1</td></tr><tr><td>Error</td><td>0.3</td><td>1.6</td><td>0.0</td><td>2.5</td><td>1.5</td></tr><tr><td>Miss</td><td>1.4</td><td>0.0</td><td>0.0</td><td>0.0</td><td>0.1</td></tr><tr><td rowspan="3">Emotion</td><td>Acc</td><td>58.0</td><td>60.6</td><td>54.9</td><td>53.5</td><td>59.9</td></tr><tr><td>Error</td><td>0.3</td><td>3.4</td><td>0.0</td><td>2.5</td><td>1.1</td></tr><tr><td>Miss</td><td>1.8</td><td>0.0</td><td>0.1</td><td>0.0</td><td>0.0</td></tr><tr><td rowspan="3">None</td><td>Acc</td><td>60.1</td><td>60.9</td><td>54.1</td><td>54.1</td><td>56.9</td></tr><tr><td>Error</td><td>0.3</td><td>0.0</td><td>0.0</td><td>3.3</td><td>1.9</td></tr><tr><td>Miss</td><td>0.1</td><td>0.0</td><td>0.0</td><td>0.9</td><td>0.0</td></tr><tr><td rowspan="3">Rhetoric</td><td>Acc</td><td>55.6</td><td>58.8</td><td>51.9</td><td>54.9</td><td>54.8</td></tr><tr><td>Error</td><td>0.3</td><td>2.1</td><td>0.0</td><td>1.9</td><td>0.9</td></tr><tr><td>Miss</td><td>0.9</td><td>0.0</td><td>0.1</td><td>0.0</td><td>0.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various multimodal large language models (MLLMs), large language models (LLMs), and humans across different domains and emotional categories on the Chinese Image Implication Understanding Benchmark (CII-Bench).
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>I Error 1: Textual Information Neglect · · · · · · · · · · . . · · · · · · · · · · . .</td><td>27</td></tr><tr><td>2 Error 2: Visual Information Neglect</td><td>28</td></tr><tr><td>3 Error 3: Over-Inference + . · · . ·</td><td>29</td></tr><tr><td>4 Error 4: Lack of Cultural Background Knowledge</td><td>30</td></tr><tr><td>5 Error 5: Superficial Reasoning · · · · .</td><td>31</td></tr><tr><td>6 Error 6: Misunderstanding of Visual Information · · · ·</td><td>32</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the overall performance of various MLLMs, LLMs, and humans across different domains and emotional categories on the CII-Bench.
> <details>
> <summary>read the caption</summary>
> Table 1: Overall results of different MLLMs, LLMs and humans on different domains and emotions. The best-performing model in each category is in-bold, and the second best is underlined.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13854/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13854/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}