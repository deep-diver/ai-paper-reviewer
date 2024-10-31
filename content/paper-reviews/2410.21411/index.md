---
title: "SocialGPT: Prompting LLMs for Social Relation Reasoning via Greedy Segment Optimization"
summary: "SocialGPT uses vision and language foundation models for zero-shot social relation reasoning, achieving state-of-the-art results with improved interpretability via Greedy Segment Prompt Optimization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Harvard University",]
showSummary: true
date: 2024-10-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.21411 {{< /keyword >}}
{{< keyword icon="writer" >}} Wanhua Li et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.21411" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.21411" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Current social relation reasoning methods are limited by their generalizability and lack of interpretability.  They typically rely on end-to-end training of dedicated networks on large labeled datasets, which hinders their adaptability to unseen scenarios. This paper proposes a new approach by using a modular framework, incorporating the strengths of both Vision Foundation Models (VFMs) and Large Language Models (LLMs), to improve performance and interpretability.

This modular approach translates visual content into a textual social story using VFMs, facilitating reasoning with LLMs. To further enhance performance, the paper introduces Greedy Segment Prompt Optimization (GSPO), an automated prompt optimization method that addresses the challenges of long prompt optimization in LLMs.  The experimental results demonstrate that SocialGPT, combined with GSPO, significantly outperforms existing methods on benchmark datasets, showcasing its effectiveness and versatility.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} **SocialGPT**, a modular framework, combines vision and language models for social relation reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} **SocialGPT** achieves competitive zero-shot performance without additional model training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} **GSPO**, a greedy segment prompt optimization, significantly improves LLM performance in SocialGPT. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**SocialGPT** significantly advances social relation reasoning by leveraging foundation models, achieving competitive zero-shot results and offering interpretability.  This opens exciting avenues for research in multimodal reasoning and prompt engineering, particularly for tasks involving complex cognitive functions like social understanding.

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.21411/figures_2_1.png)

> 🔼 The figure compares and contrasts end-to-end learning-based frameworks for social relation reasoning with the proposed modular framework using foundation models.
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) End-to-end learning-based framework for social relation reasoning. A dedicated neural network is trained end-to-end with full training data. (b) We propose a modular framework with foundation models for social relation reasoning. Our proposed SocialGPT first employs VFMs to extract visual information into textual format, and then perform text-based reasoning with LLMs, using either our manually designed SocialPrompt or optimized prompts.
> </details>







{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Methods</td><td>ZS</td><td>Acc (%)</td><td></td><td></td></tr><tr><td>All attributes + SVM 1</td><td>X</td><td>57.2</td><td>Methods</td><td>Acc (%)</td></tr><tr><td>Pair CNN 13</td><td>X</td><td>58.0</td><td>SocialGPT</td><td>61.58</td></tr><tr><td>Dual-Glance 13</td><td>X</td><td>59.6</td><td>- Dense Captions</td><td>52.63</td></tr><tr><td>SRG-GN 54</td><td>X</td><td>53.6</td><td>- Task-oriented Captions</td><td>59.89</td></tr><tr><td>GRM 6</td><td>X</td><td>62.3</td><td>- Symbol → Object Coordinate</td><td>57.68</td></tr><tr><td>MGR 2</td><td>X</td><td>64.4</td><td>- Symbol → Object Caption - Social Story</td><td>59.83 45.31</td></tr><tr><td>GR2N 3</td><td>X</td><td>64.3</td><td>Segment {System}</td><td></td></tr><tr><td>TRGAT 14</td><td>X</td><td>65.3</td><td>- SocialPrompt - SocialPrompt Segment {Expectation }</td><td>60.23 59.19</td></tr><tr><td>SocialGPT (w/ GPT-3.5)</td><td></td><td>64.1</td><td>- SocialPrompt Segment {Context}</td><td>61.18</td></tr><tr><td>SocialGPT (w/ Vicuna-13B)</td><td></td><td>66.7</td><td>- SocialPrompt Segment {Guidance}</td><td>43.56</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares the zero-shot performance of SocialGPT with several other methods on the PIPA dataset for social relationship recognition.
> <details>
> <summary>read the caption</summary>
> Table 1: The comparison results on the PIPA dataset. ZS stands for Zero-Shot.
> </details>





### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='1' style='font-size:20px'><tr><td>Methods</td><td>ZS</td><td>Acc (%)</td></tr><tr><td>Pair CNN 13</td><td>X</td><td>46.30</td></tr><tr><td>GRM</td><td>X</td><td>64.18</td></tr><tr><td>GR2N 3</td><td>X</td><td>64.70</td></tr><tr><td>SocialGPT (w/ GPT-3.5)</td><td></td><td>53.43</td></tr><tr><td>SocialGPT (w/ Vicuna-13B)</td><td></td><td>65.12</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 compares the zero-shot performance of SocialGPT with other methods on the PISC dataset, showing SocialGPT's competitive accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: The comparison results on the PISC dataset. Previous methods are replicated with open-source code to report the accuracy metric. ZS means Zero-Shot.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:18px'><tr><td>Methods</td><td>Acc (%)</td></tr><tr><td>BLIP-2 41</td><td>35.84</td></tr><tr><td>LLaVA 68</td><td>45.12</td></tr><tr><td>GPT-4V 55</td><td>59.67</td></tr><tr><td>SocialGPT</td><td>66.70</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 compares the performance of SocialGPT with existing vision-language models on the PIPA dataset for social relation recognition.
> <details>
> <summary>read the caption</summary>
> Table 4: Comparison with existing Vision-Language Models on the PIPA dataset, with SocialGPT using Vicuna-13B model.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:16px'><tr><td rowspan="2">Model</td><td colspan="3">PIPA</td><td colspan="3">PISC</td></tr><tr><td>SocialGPT</td><td>+ GSPO</td><td>△</td><td>SocialGPT</td><td>+ GSPO</td><td>△</td></tr><tr><td>Vicuna-7B</td><td>61.58</td><td>62.99</td><td>+1.41</td><td>45.13</td><td>49.79</td><td>+4.66</td></tr><tr><td>Vicuna-13B</td><td>66.70</td><td>69.23</td><td>+2.53</td><td>65.12</td><td>66.19</td><td>+1.07</td></tr><tr><td>Llama2-7B</td><td>31.91</td><td>34.07</td><td>+2.16</td><td>36.71</td><td>38.04</td><td>+1.33</td></tr><tr><td>Llama2-13B</td><td>37.86</td><td>41.27</td><td>+3.41</td><td>42.74</td><td>48.39</td><td>+5.65</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the results when applying GSPO on SocialGPT with various LLMs for reasoning, compared with the baseline zero-shot performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Prompt tuning results (accuracy in %) with GSPO.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>[10]</td><td>Wanhua Li, Jiwen Lu, Jianjiang Feng, Chunjing Xu, Jie Zhou, and Qi Tian. Bridgenet: A continuity-aware probabilistic network for age estimation. In CVPR, pages 1145-1154, 2019.</td></tr><tr><td>[11]</td><td>Robin Strudel, Ricardo Garcia, Ivan Laptev, and Cordelia Schmid. Segmenter: Transformer for semantic segmentation. In ICCV, pages 7262-7272, 2021.</td></tr><tr><td>[12]</td><td>Nicolas Carion, Francisco Massa, Gabriel Synnaeve, Nicolas Usunier, Alexander Kirillov, and Sergey Zagoruyko. End-to-end object detection with transformers. In ECCV, pages 213-229. Springer, 2020.</td></tr><tr><td>[13]</td><td>Junnan Li, Yongkang Wong, Qi Zhao, and Mohan s Kankanhalli. Dual-glance model for deciphering social relationships. In ICCV, pages 2650-2659, 2017.</td></tr><tr><td>[14]</td><td>Yunfei Guo, Fei Yin, Wei Feng, Xudong Yan, Tao Xue, Shuqi Mei, and Cheng-Lin Liu. Social relation reasoning based on triangular constraints. In AAAI, pages 737-745, 2023.</td></tr><tr><td>[15]</td><td>Rishi Bommasani, Drew A Hudson, Ehsan Adeli, Russ Altman, Simran Arora, Sydney von Arx, Michael s Bernstein, Jeannette Bohg, Antoine Bosselut, Emma Brunskill, et al. On the opportunities and risks of foundation models. arXiv preprint arXiv:2108.07258, 2021.</td></tr><tr><td>[16]</td><td>Junnan Li, Dongxu Li, Silvio Savarese, and Steven Hoi. Blip-2: Bootstrapping language-image pre-training with frozen image encoders and large language models. arXiv preprint arXiv:2301.12597, 2023.</td></tr><tr><td>[17]</td><td>Alexander Kirillov, Eric Mintun, Nikhila Ravi, Hanzi Mao, Chloe Rolland, Laura Gustafson, Tete Xiao, Spencer Whitehead, Alexander C Berg, Wan-Yen Lo, et al. Segment anything. In ICCV, 2023.</td></tr><tr><td>[18]</td><td>Minghan Qin, Wanhua Li, Jiawei Zhou, Haoqian Wang, and Hanspeter Pfister. Langsplat: 3d language gaussian splatting. In CVPR, pages 20051-20060, 2024.</td></tr><tr><td>[19]</td><td>Alec Radford, Jong Wook Kim, Chris Hallacy, Aditya Ramesh, Gabriel Goh, Sandhini Agarwal, Girish Sastry, Amanda Askell, Pamela Mishkin, Jack Clark, et al. Learning transferable visual models from natural language supervision. In ICML, pages 8748-8763. PMLR, 2021.</td></tr><tr><td>[20]</td><td>Jason Wei, Xuezhi Wang, Dale Schuurmans, Maarten Bosma, Fei Xia, Ed Chi, Quoc v Le, Denny Zhou, et al. Chain-of-thought prompting elicits reasoning in large language models. NeurIPS, 35:24824-24837, 2022.</td></tr><tr><td>[21]</td><td>Jason Wei, Yi Tay, Rishi Bommasani, Colin Raffel, Barret Zoph, Sebastian Borgeaud, Dani Yogatama, Maarten Bosma, Denny Zhou, Donald Metzler, et al. Emergent abilities of large language models. arXiv preprint arXiv:2206.07682, 2022.</td></tr><tr><td>[22]</td><td>Xuezhi Wang, Jason Wei, Dale Schuurmans, Quoc v Le, Ed H Chi, Sharan Narang, Aakanksha Chowdhery, and Denny Zhou. Self-consistency improves chain of thought reasoning in language models. In ICLR, 2023.</td></tr><tr><td>[23]</td><td>Shunyu Yao, Dian Yu, Jeffrey Zhao, Izhak Shafran, Thomas L Griffiths, Yuan Cao, and Karthik Narasimhan. Tree of thoughts: Deliberate problem solving with large language models. arXiv preprint arXiv:2305.10601, 2023.</td></tr><tr><td>[24]</td><td>Pengfei Liu, Weizhe Yuan, Jinlan Fu, Zhengbao Jiang, Hiroaki Hayashi, and Graham Neubig. Pre-train, prompt, and predict: A systematic survey of prompting methods in natural language processing. ACM Computing Surveys, 55(9):1-35, 2023.</td></tr><tr><td>[25]</td><td>Taylor Shin, Yasaman Razeghi, Robert L Logan IV, Eric Wallace, and Sameer Singh. Autoprompt: Eliciting knowledge from language models with automatically generated prompts. In EMNLP, pages 4222-4235, 2020.</td></tr><tr><td>[26]</td><td>Robin Rombach, Andreas Blattmann, Dominik Lorenz, Patrick Esser, and Bjorn Ommer. High-resolution image synthesis with latent diffusion models. In CVPR, pages 10684-10695, 2022.</td></tr><tr><td>[27]</td><td>OpenAI. Gpt-4 technical report, 2023.</td></tr><tr><td>[28]</td><td>Wanhua Li, Xiaoke Huang, Zheng Zhu, Yansong Tang, Xiu Li, Jie Zhou, and Jiwen Lu. Ordinalclip: Learning rank prompts for language-guided ordinal regression. NeurIPS, 35:35313-35325, 2022.</td></tr><tr><td>[29]</td><td>Wei-Lin Chiang, Zhuohan Li, Zi Lin, Ying Sheng, Zhanghao Wu, Hao Zhang, Lianmin Zheng, Siyuan Zhuang, Yonghao Zhuang, Joseph E. Gonzalez, Ion Stoica, and Eric P. Xing. Vicuna: An open-source chatbot impressing gpt-4 with 90%* chatgpt quality, March 2023.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the zero-shot performance of SocialGPT with previous state-of-the-art methods on the PIPA dataset for social relationship recognition.
> <details>
> <summary>read the caption</summary>
> Table 1: The comparison results on the PIPA dataset. ZS stands for Zero-Shot.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>[50]</td><td>Sheldon Cohen. Social relationships and health. American psychologist, 59(8):676, 2004.</td></tr><tr><td>[51]</td><td>Hope R Conte and Robert Plutchik. A circumplex model for interpersonal personality traits. Journal of personality and social psychology, 40(4):701, 1981.</td></tr><tr><td>[52]</td><td>Daphne Blunt Bugental. Acquisition of the algorithms of social life: a domain-based approach. Psycholog- ical bulletin, 126(2):187, 2000.</td></tr><tr><td>[53]</td><td>Alan P Fiske. The four elementary forms of sociality: framework for a unified theory of social relations. Psychological review, 99(4):689, 1992.</td></tr><tr><td>[54]</td><td>Arushi Goel, Keng Teck Ma, and Cheston Tan. An end-to-end network for generating social relationship graphs. In CVPR, pages 11186-11195, 2019.</td></tr><tr><td>[55]</td><td>Jules White, Sam Hays, Quchen Fu, Jesse Spencer-Smith, and Douglas C Schmidt. Chatgpt prompt patterns for improving code quality, refactoring, requirements elicitation, and software design. arXiv preprint arXiv:2303.07839, 2023.</td></tr><tr><td>[56]</td><td>Shima Imani, Liang Du, and Harsh Shrivastava. Mathprompter: Mathematical reasoning using large language models. arXiv preprint arXiv:2303.05398, 2023.</td></tr><tr><td>[57]</td><td>Arkil Patel, Satwik Bhattamishra, and Navin Goyal. Are nlp models really able to solve simple math word problems? In NAACL, pages 2080-2094, 2021.</td></tr><tr><td>[58]</td><td>Timo Schick, Jane Dwivedi- Yu, Roberto Dessi, Roberta Raileanu, Maria Lomeli, Luke Zettlemoyer, Nicola Cancedda, and Thomas Scialom. Toolformer: Language models can teach themselves to use tools. arXiv preprint arXiv:2302.04761, 2023.</td></tr><tr><td>[59]</td><td>Jules White, Quchen Fu, Sam Hays, Michael Sandborn, Carlos Olea, Henry Gilbert, Ashraf Elnashar, Jesse Spencer-Smith, and Douglas C Schmidt. A prompt pattern catalog to enhance prompt engineering with chatgpt. arXiv preprint arXiv:2302.11382, 2023.</td></tr><tr><td>[60]</td><td>Tom Brown, Benjamin Mann, Nick Ryder, Melanie Subbiah, Jared D Kaplan, Prafulla Dhariwal, Arvind Neelakantan, Pranav Shyam, Girish Sastry, Amanda Askell, et al. Language models are few-shot learners. NeurIPS, 33:1877-1901, 2020.</td></tr><tr><td>[61]</td><td>Sewon Min, Xinxi Lyu, Ari Holtzman, Mikel Artetxe, Mike Lewis, Hannaneh Hajishirzi, and Luke Zettlemoyer. Rethinking the role of demonstrations: What makes in-context learning work? In EMNLP, pages 11048-11064, 2022.</td></tr><tr><td>[62]</td><td>Ohad Rubin, Jonathan Herzig, and Jonathan Berant. Learning to retrieve prompts for in-context learning. In NAACL, pages 2655-2671, 2022.</td></tr><tr><td>[63]</td><td>Yongchao Zhou, Andrei Ioan Muresanu, Ziwen Han, Keiran Paster, Silviu Pitis, Harris Chan, and Jimmy Ba. Large language models are human-level prompt engineers. In ICLR, 2023.</td></tr><tr><td>[64]</td><td>Reid Pryzant, Dan Iter, Jerry Li, Yin Lee, Chenguang Zhu, and Michael Zeng. Automatic prompt optimization with "gradient descent" and beam search. In Houda Bouamor, Juan Pino, and Kalika Bali, editors, EMNLP, pages 7957-7968, 2023.</td></tr><tr><td>[65]</td><td>Alec Radford, Karthik Narasimhan, Tim Salimans, Ilya Sutskever, et al. Improving language understanding by generative pre-training. 2018.</td></tr><tr><td>[66]</td><td>Alec Radford, Jeffrey Wu, Rewon Child, David Luan, Dario Amodei, Ilya Sutskever, et al. Language models are unsupervised multitask learners. OpenAI blog, 1(8):9, 2019.</td></tr><tr><td>[67]</td><td>Andy Zou, Zifan Wang, J Zico Kolter, and Matt Fredrikson. Universal and transferable adversarial attacks on aligned language models. arXiv preprint arXiv:2307.15043, 2023.</td></tr><tr><td>[68]</td><td>Haotian Liu, Chunyuan Li, Qingyang Wu, and Yong Jae Lee. Visual instruction tuning, 2023.</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the results of prompt tuning using the Greedy Segment Prompt Optimization (GSPO) method on various LLMs for social relationship reasoning on PIPA and PISC datasets.
> <details>
> <summary>read the caption</summary>
> Table 5: Prompt tuning results (accuracy in %) with GSPO.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21411/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21411/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}