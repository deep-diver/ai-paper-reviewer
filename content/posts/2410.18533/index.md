---
title: "LOGO -- Long cOntext aliGnment via efficient preference Optimization"
summary: "LOGO is a novel training strategy that improves the alignment of long-context models with human preferences by using preference optimization and overcoming GPU memory limitations through a reference-f....."
categories: ["AI Generated"]
tags: ["🔖 2024-10-24", "🤗 2024-10-25"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

LOGO is a novel training strategy that improves the alignment of long-context models with human preferences by using preference optimization and overcoming GPU memory limitations through a reference-free approach and a positional index synthesis method.  Experiments show that LOGO enhances generation performance in various tasks without sacrificing performance on other tasks, offering an efficient method for enhancing long-context capabilities of LLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18533" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does this paper matter?
This paper introduces LOGO, a novel training strategy that uses preference optimization to improve the alignment of long-context models (LCMs) with human preferences.  LOGO addresses the limitations of existing methods by employing a reference-free preference optimization strategy and a positional index synthesis method to overcome GPU memory constraints.  Experiments demonstrate LOGO's effectiveness in enhancing the generation capabilities of LCMs while preserving their performance on other tasks.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LOGO, a new training strategy for long-context models (LCMs), significantly improves their generation capabilities while maintaining performance on other tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LOGO uses preference optimization to align LCMs with human preferences, addressing the issue of misaligned responses like hallucinations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LOGO overcomes GPU memory limitations through a reference-free approach and positional index synthesis, enabling efficient training on relatively limited resources. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_5_0.png "🔼 Figure 1: (a) Performance of LCMs on real-world long-context tasks; (b) Retrieval score (long-context understanding ability) and recall score (generation ability) of LCMs on the synthetic retrieval long-context task (multi-value NIAH); (c) Long-context (pre-)training data size for each LCM.")





{{< table-caption caption="🔽 Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
| Models | S-Doc QA | M-Doc QA | Summ | Few-shot | Synthetic | Avg. |
| --- | --- | --- | --- | --- | --- | --- |
| GPT-3.5-Turbo-16K | 39.8 | 38.7 | 26.5 | 67.1 | 37.8 | 42.0 |
| LongChat-v1.5-7B-32k | 28.7 | 20.6 | 26.7 | 60.0 | 15.8 | 30.4 |
| LLama-3.1-8B-Instruct-128K | 23.9 | 15.8 | 28.9 | 69.8 | 57.5 | 39.2 |
| Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) | Results on SCMs (scaling x8 context window) |
| Llama-3-8B-Instruct-8K | 39.3 | 36.2 | 24.8 | 63.5 | 39.9 | 40.7 |
| + YaRN-64K+ | 38.0 | 36.6 | 27.4 | 61.7 | 40.9 | 40.9 |
| + RandPOS-64K | 32.5 | 30.5 | 26.5 | 61.3 | 33.4 | 36.8 |
| + LOGO-64K | 39.8 | 36.7 | 28.8 | 65.4 | 49.0 | 43.9 |
| Llama-2-7B-Chat-4K | 24.9 | 22.6 | 24.7 | 60.0 | 5.9 | 27.6 |
| + LOGO-32K | 26.7 | 23.3 | 26.3 | 63.1 | 11.1 | 30.1 |
| Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) | Results on LCMs (long-context alignment) |
| Llama-3-8B-Instruct-80K | 43.0 | 39.8 | 22.2 | 64.3 | 46.3 | 42.3 |
| + Instruct Tuning (Full) | 38.8 | 35.0 | 24.6 | 65.9 | 44.5 | 41.8 |
| + Instruct Tuning (Partial) | 39.3 | 36.2 | 26.8 | 63.5 | 48.0 | 42.8 |
| + LOGO-80K | 44.0 | 41.2 | 28.1 | 68.6 | 53.0 | 47.0 |
| Llama-2-7B-Instruct-80K | 26.9 | 23.8 | 21.3 | 65.0 | 7.9 | 29.0 |
| + LOGO-80K | 33.6 | 28.0 | 29.4 | 65.1 | 24.5 | 36.1 |
| Mistral-Instruct-7B- V0.2-32K | 31.7 | 30.6 | 16.7 | 58.4 | 17.9 | 31.1 |
| + LOGO-32K | 38.3 | 37.6 | 26.1 | 67.0 | 31.5 | 40.1 |
{{< /table-caption >}}





<details>
<summary>More on figures
</summary>


![](figures/figures_17_0.png "🔼 Figure 1: (a) Performance of LCMs on real-world long-context tasks; (b) Retrieval score (long-context understanding ability) and recall score (generation ability) of LCMs on the synthetic retrieval long-context task (multi-value NIAH); (c) Long-context (pre-)training data size for each LCM.")

![](figures/figures_18_0.png "🔼 Figure 1: (a) Performance of LCMs on real-world long-context tasks; (b) Retrieval score (long-context understanding ability) and recall score (generation ability) of LCMs on the synthetic retrieval long-context task (multi-value NIAH); (c) Long-context (pre-)training data size for each LCM.")


</details>

------







<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
| Jack W Rae, Anna Potapenko, Siddhant M Jayakumar, and Timothy P Lillicrap. Compressive transformers for long-range sequence modelling. arXiv preprint arXiv:1911.05507, 2019. |
| --- |
| Rafael Rafailov, Archit Sharma, Eric Mitchell, Christopher D Manning, Stefano Ermon, and Chelsea Finn. Direct preference optimization: Your language model is secretly a reward model. Advances in Neural Information Processing Systems, 36, 2024. |
| Colin Raffel, Noam Shazeer, Adam Roberts, Katherine Lee, Sharan Narang, Michael Matena, Yanqi Zhou, Wei Li, and Peter J Liu. Exploring the limits of transfer learning with a unified text-to-text transformer. Journal of machine learning research, 21(140):1-67, 2020. |
| Mathieu Ravaut, Aixin Sun, Nancy Chen, and Shafiq Joty. On context utilization in summarization with large language models. In Proceedings of the 62nd Annual Meeting of the Association for Computational Linguistics (Volume 1: Long Papers), pp. 2764-2781, 2024. |
| Dongyu Ru, Lin Qiu, Xiangkun Hu, Tianhang Zhang, Peng Shi, Shuaichen Chang, Jiayang Cheng, Cunxiang Wang, Shichao Sun, Huanyu Li, et al. Ragchecker: A fine-grained framework for diagnosing retrieval-augmented generation. arXiv preprint arXiv:2408.08067, 2024. |
| Anian Ruoss, Gregoire Deletang, Tim Genewein, Jordi Grau-Moya, Robert Csordas, Mehdi Ben- nani, Shane Legg, and Joel Veness. Randomized positional encodings boost length generalization of transformers. arXiv preprint arXiv:2305.16843, 2023. |
| Amir Saeidi, Shivanshu Verma, Aswin RRV, and Chitta Baral. Triple preference optimiza- tion: Achieving better alignment with less data in a single step optimization. arXiv preprint arXiv:2405.16681, 2024. |
| John Schulman, Filip Wolski, Prafulla Dhariwal, Alec Radford, and Oleg Klimov. Proximal policy optimization algorithms. arXiv preprint arXiv:1707.06347, 2017. |
| Freda Shi, Xinyun Chen, Kanishka Misra, Nathan Scales, David Dohan, Ed H Chi, Nathanael Sch�rli, and Denny Zhou. Large language models can be easily distracted by irrelevant context. In International Conference on Machine Learning, pp. 31210-31227. PMLR, 2023. |
| Hugo Touvron, Louis Martin, Kevin Stone, Peter Albert, Amjad Almahairi, Yasmine Babaei, Niko- lay Bashlykov, Soumya Batra, Prajjwal Bhargava, Shruti Bhosale, et al. Llama 2: Open founda- tion and fine-tuned chat models. arXiv preprint arXiv:2307.09288, 2023. |
| Szymon Tworkowski, Konrad Staniszewski, Mikotaj Pacek, Yuhuai Wu, Henryk Michalewski, and Piotr Milos. Focused transformer: Contrastive training for context scaling. Advances in Neural Information Processing Systems, 36, 2024. |
| Wenhao Wu, Yizhong Wang, Yao Fu, Xiang Yue, Dawei Zhu, and Sujian Li. Long context alignment with short instructions and synthesized positions. arXiv preprint arXiv:2405.03939, 2024a. |
| Wenhao Wu, Yizhong Wang, Guangxuan Xiao, Hao Peng, and Yao Fu. Retrieval head mechanisti- cally explains long-context factuality. arXiv preprint arXiv:2404. 15574, 2024b. |
| Wenhan Xiong, Jingyu Liu, Igor Molybog, Hejia Zhang, Prajjwal Bhargava, Rui Hou, Louis Martin, Rashi Rungta, Karthik Abinav Sankararaman, Barlas Oguz, et al. Effective long-context scaling of foundation models. arXiv preprint arXiv:2309.16039, 2023. |
| Haoran Xu, Amr Sharaf, Yunmo Chen, Weiting Tan, Lingfeng Shen, Benjamin Van Durme, Kenton Murray, and Young Jin Kim. Contrastive preference optimization: Pushing the boundaries of 11m performance in machine translation. arXiv preprint arXiv:2401.08417, 2024. |
| An Yang, Baosong Yang, Binyuan Hui, Bo Zheng, Bowen Yu, Chang Zhou, Chengpeng Li, Chengyuan Li, Dayiheng Liu, Fei Huang, Guanting Dong, Haoran Wei, Huan Lin, Jialong Tang, Jialin Wang, Jian Yang, Jianhong Tu, Jianwei Zhang, Jianxin Ma, Jin Xu, Jingren Zhou, Jinze Bai, Jinzheng He, Junyang Lin, Kai Dang, Keming Lu, Keqin Chen, Kexin Yang, Mei Li, Mingfeng Xue, Na Ni, Pei Zhang, Peng Wang, Ru Peng, Rui Men, Ruize Gao, Runji Lin, Shijie Wang, Shuai Bai, Sinan Tan, Tianhang Zhu, Tianhao Li, Tianyu Liu, Wenbin Ge, Xiaodong Deng, Xiaohuan Zhou, Xingzhang Ren, Xinyu Zhang, Xipin Wei, Xuancheng Ren, Yang Fan, Yang Yao, Yichang Zhang, Yu Wan, Yunfei Chu, Yuqiong Liu, Zeyu Cui, Zhenru Zhang, and Zhihao Fan. Qwen2 technical report. arXiv preprint arXiv:2407.10671, 2024. |
{{< /table-caption >}}

{{< table-caption caption="🔽 Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
| Context: context |
| --- |
| What is the slope of the line containing points (2, -3) and (4, 3)? slope = 3 context A slope that goes from low to high is positive. A slope that goes from high to low is negative. A slope that goes straight across is 0. * ** context ... |
| Question: is slope of the line containing points (2, -3) and (4, 3)? |
| What the Ground Truth: (preference) 3 |
| Dis-preference Prediction1: (Instruction Unfollowing) Do you want to solve it step by step? |
|  |
| Dis-preference Prediction2: (Hallucination) The question can be interpreted as the difference in y-values divided by the difference in X- values. That is, let y1 = -3 and y2 = 3. Then x1 = 2 and x2 = 4. The slope is: = 6 |
{{< /table-caption >}}

{{< table-caption caption="🔽 Table 1: Evaluation results on LongBench benchmark, where † denotes training-free method." >}}
| Context: |
| --- |
| context |
| And then there was no more speaking of the old lady, the house with the candle and the woman who was like a candle until, in the last train, they were nearly home. ... context ... |
| Question: |
| Why does the narrator stop asking his father about the grapes and the grape-vine? |
| Ground Truth: (preference) |
| Because of the unpleasant encounter with the old lady at the house. |
| Dis-preference Prediction1: (Hallucination) |
| The narrator stops asking his father about the grapes and the grape-vine because his father is not responding to the questions. The narrator is trying to learn about the grape-vine and its whereabouts but his father is not willing to provide any information... |
| Dis-preference Prediction2: (Hallucination) |
| Blended learning in action: Because his father� eyes seemed to fill with water and he began to speak in a small voice. At the same time, the narrator himself felt like his heart had been "torn in half.". · .. |
{{< /table-caption >}}


</details>

------



### Full paper

{{< gallery >}}

  <img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

  <img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />

{{< /gallery >}}