---
title: "Taming Overconfidence in LLMs: Reward Calibration in RLHF"
summary: "Researchers introduce novel reward calibration methods for RLHF, effectively reducing LLM overconfidence and enhancing reliability without sacrificing performance."
categories: ["AI Generated"]
tags: ["🔖 24-10-13", ]
showSummary: true
date: 2024-10-13
draft: false
---

{{< keyword >}} 2410.09724 {{< /keyword >}}

### TL;DR


{{< lead >}}

Large Language Models (LLMs) trained with Reinforcement Learning from Human Feedback (RLHF) often exhibit overconfidence—their expressed confidence doesn't match their actual accuracy. This paper investigates why this happens and finds that the reward models used in RLHF training are biased towards high-confidence responses, regardless of accuracy.  To fix this, the researchers propose two improved RLHF methods: PPO-M and PPO-C. PPO-M calibrates the reward model itself to better capture the relationship between response quality and stated confidence. PPO-C adjusts the reward score during training based on a moving average of past rewards, making the model less sensitive to individual high-confidence scores. Experiments show both methods reduce overconfidence and maintain LLM performance on various tasks, suggesting a more reliable and trustworthy way to train LLMs.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.09724" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.09724" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large language model (LLM) reliability and safety.  It directly addresses the prevalent issue of overconfidence in LLMs, offering novel calibration methods that enhance performance without sacrificing capabilities.  The findings challenge existing assumptions about reward model biases in Reinforcement Learning from Human Feedback (RLHF) and provide valuable insights for improving LLM training and evaluation techniques. This opens new avenues for research into more robust and trustworthy LLMs.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RLHF training often leads to overconfident LLMs due to reward model biases favoring high-confidence responses. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Two new PPO variants (PPO-M and PPO-C) calibrate reward models and calculations, improving LLM calibration without significant performance loss. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Proposed methods generalize well to different LLMs and datasets, demonstrating robustness and practical applicability. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.09724/figures_2_0.png)

> 🔼 The figure illustrates the bias of vanilla reward models towards high-confidence responses regardless of accuracy and how a calibrated reward model corrects this bias.
> <details>
> <summary>read the caption</summary>
> Figure 1: (Top): Illustration of verbalized confidence generation. An LLM incorrectly answers a question with high confidence. (Bottom): Comparison between reward scores from a vanilla-trained reward model Llama-3-8b-rm-mixture and our calibrated reward model Llama-3-8b-crm. The vanilla model shows bias towards high confidence though the answer is incorrect. Our calibrated reward model correctly assigns a higher reward to the low confidence for the incorrect answer.
> </details>





![](https://ai-paper-reviewer.com/2410.09724/charts_3_0.png)

> 🔼 The chart displays the confidence distributions and corresponding accuracy of two models (Llama3-8B and Tulu-2-7B) on the CommonsenseQA dataset before and after RLHF training, illustrating the overconfidence phenomenon in RLHF models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Confidence distributions and corresponding accuracy of two models on CommonsenseQA before and after RLHF. Darker color means more samples fall in that confidence bin. The red dashed line indicates perfect calibration.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td></td><td colspan="5">prefer high-confidence rejected prefer low-confidence chosen</td><td></td><td colspan="5">prefer high-confidence rejected prefer low-confidence chosen</td></tr><tr><td>confidence reversed</td><td colspan="3">1754</td><td colspan="2">1198</td><td>confidence reversed</td><td colspan="2">1063</td><td colspan="3">1922</td></tr><tr><td></td><td colspan="5">prefer high confidence prefer low confidence</td><td></td><td colspan="5">prefer high confidence prefer low confidence</td></tr><tr><td rowspan="2">chosen with_ conf</td><td colspan="5">2884 89</td><td>chosen with_ conf</td><td colspan="5">1780 1205</td></tr><tr><td colspan="5">prefer high confidence prefer low confidence</td><td></td><td colspan="5">prefer high confidence prefer low confidence</td></tr><tr><td rowspan="2">rejected with_ conf</td><td colspan="3">2598</td><td>374</td><td>prefer chosen</td><td rowspan="2">rejected with_ conf</td><td colspan="3">1755</td><td colspan="2">1222</td></tr><tr><td colspan="5">prefer rejected</td><td colspan="5">prefer rejected prefer chosen</td></tr><tr><td rowspan="2">answer only 0</td><td colspan="5">231 2737</td><td rowspan="2">answer only 0</td><td>745</td><td colspan="4">2240</td></tr><tr><td>500</td><td>1000</td><td>1500</td><td>2000</td><td>2500</td><td>500</td><td>1000</td><td>1500</td><td>2000</td><td>2500</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) across six datasets using two evaluation metrics: Expected Calibration Error (ECE) and Area Under the ROC Curve (AUC).
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.09724/charts_7_0.png)

> 🔼 The chart compares preference distributions for calibrated versus pre-calibrated reward models across conditions where responses were chosen or rejected, and confidence scores were high or low.
> <details>
> <summary>read the caption</summary>
> Figure 20: Comparison of preference distributions between the calibrated reward model Llama-3-8b-crm and the pre-calibrated version Llama-3-8b-rm-mixture on two modes: CHOSEN_WITH_CONF and REJECTED_WITH_CONF.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_25_0.png)

> 🔼 The chart displays the confidence distributions and corresponding accuracy of two models (Llama-3-8B and Tulu-2-7B) on the CommonsenseQA dataset before and after RLHF training, illustrating the overconfidence phenomenon in RLHF-LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Confidence distributions and corresponding accuracy of two models on CommonsenseQA before and after RLHF. Darker color means more samples fall in that confidence bin. The red dashed line indicates perfect calibration.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_25_1.png)

> 🔼 Figure 2 presents the confidence distributions and corresponding accuracy of two models (Llama-3-8B and Tulu-2-7B) on CommonsenseQA, comparing their performance before and after RLHF training.
> <details>
> <summary>read the caption</summary>
> Figure 2: Confidence distributions and corresponding accuracy of two models on CommonsenseQA before and after RLHF. Darker color means more samples fall in that confidence bin. The red dashed line indicates perfect calibration.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_25_2.png)

> 🔼 The chart displays the accuracy within confidence bins for two language models (Llama-3-8b and Tulu-2) on a professional knowledge dataset, before and after reinforcement learning from human feedback (RLHF).
> <details>
> <summary>read the caption</summary>
> Figure 14: Confidence distributions of two models on Professional Knowledge before and after RLHF.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_25_3.png)

> 🔼 The chart displays the confidence distributions and corresponding accuracy of two models (Llama-3-8B and Tulu-2-7B) on CommonsenseQA before and after RLHF, showing the overconfidence phenomenon in RLHF models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Confidence distributions and corresponding accuracy of two models on CommonsenseQA before and after RLHF. Darker color means more samples fall in that confidence bin. The red dashed line indicates perfect calibration.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_25_4.png)

> 🔼 The chart displays the accuracy within bins versus confidence for two models (Llama-3-8b and Tulu-2) on the Professional Knowledge dataset, before and after Reinforcement Learning from Human Feedback (RLHF).
> <details>
> <summary>read the caption</summary>
> Figure 14: Confidence distributions of two models on Professional Knowledge before and after RLHF.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_25_5.png)

> 🔼 The chart displays the confidence distributions and corresponding accuracy of two models (Llama3-8B and Tulu-2-7B) on the CommonsenseQA dataset before and after RLHF training, illustrating the overconfidence phenomenon in RLHF-LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Confidence distributions and corresponding accuracy of two models on CommonsenseQA before and after RLHF. Darker color means more samples fall in that confidence bin. The red dashed line indicates perfect calibration.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_26_0.png)

> 🔼 The chart displays the confidence distributions and accuracy of two models (Llama-3-8B and Tulu-2-7B) on the CommonsenseQA dataset before and after Reinforcement Learning from Human Feedback (RLHF), showing the overconfidence phenomenon in RLHF models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Confidence distributions and corresponding accuracy of two models on CommonsenseQA before and after RLHF. Darker color means more samples fall in that confidence bin. The red dashed line indicates perfect calibration.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_26_1.png)

> 🔼 The chart displays the confidence distributions and corresponding accuracy of two models (Llama3-8B and Tulu-2-7B) on the CommonsenseQA dataset before and after RLHF training, illustrating the overconfidence phenomenon in RLHF-LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Confidence distributions and corresponding accuracy of two models on CommonsenseQA before and after RLHF. Darker color means more samples fall in that confidence bin. The red dashed line indicates perfect calibration.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_27_0.png)

> 🔼 The chart displays the preference distributions of two reward models (ArmoRM-Llama3-8B-v0.1 and Tulu-2-DPO-7B) across four different conditions showing the models' bias toward high-confidence responses regardless of the response's correctness.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_27_1.png)

> 🔼 The chart compares preference distributions for vanilla and calibrated reward models on the modified RewardBench dataset across four different modes, showing a bias towards high-confidence responses in the vanilla model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_27_2.png)

> 🔼 The chart compares the preference distributions of two reward models (ArmoRM-Llama3-8B-v0.1 and Tulu-2-DPO-7B) across four different scenarios, showing a bias towards high confidence responses.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_27_3.png)

> 🔼 The chart compares preference distributions for vanilla and calibrated reward models across four scenarios, showing a bias towards high confidence responses in vanilla models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_28_0.png)

> 🔼 The chart displays preference distributions for two reward models (ArmoRM-Llama3-8B-v0.1 and Tulu-2-DPO-7B) across four conditions of the modified RewardBench dataset, showing reward model biases toward high confidence responses regardless of correctness.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_28_1.png)

> 🔼 The chart compares the preference distributions of two reward models (ArmoRM-Llama3-8B-v0.1 and Tulu-2-DPO-7B) across four different conditions, revealing a bias towards high-confidence responses.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_28_2.png)

> 🔼 The chart compares the preference distributions of two reward models (ArmoRM-Llama3-8B-v0.1 and Tulu-2-DPO-7B) across four different scenarios, showing a bias towards high-confidence responses regardless of correctness.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_29_0.png)

> 🔼 The chart compares the preference distributions of vanilla and calibrated reward models across different scenarios, revealing a bias toward high-confidence responses in vanilla models.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_29_1.png)

> 🔼 The chart compares the preference distributions of vanilla and calibrated reward models on the modified RewardBench dataset across four different scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_29_2.png)

> 🔼 The chart compares the preference distributions of two reward models (ArmoRM-Llama3-8B-v0.1 and Tulu-2-DPO-7B) across four different experimental conditions, revealing their biases toward high-confidence responses.
> <details>
> <summary>read the caption</summary>
> Figure 3: Preference distributions for ArmoRM-Llama3-8B-v0.1, a reward model for PPO training (left) and Tulu-2-DPO-7B, a DPO model (right) on the modified RewardBench dataset across four modes. From top to bottom: CONFIDENCE_REVERSED, CHOSEN_WITH_CONF, REJECTED_WITH_CONF, ANSWER_ONLY. Red bar indicates the preference for a rejected or high-confidence response, and blue bar indicates the preference for a chosen or low-confidence response.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_30_0.png)

> 🔼 The chart compares the preference distributions for chosen and rejected responses with high and low confidence scores between a calibrated and pre-calibrated reward model.
> <details>
> <summary>read the caption</summary>
> Figure 20: Comparison of preference distributions between the calibrated reward model Llama-3-8b-crm and the pre-calibrated version Llama-3-8b-rm-mixture on two modes: CHOSEN_WITH_CONF and REJECTED_WITH_CONF.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_30_1.png)

> 🔼 The chart compares the preference distributions of calibrated and pre-calibrated reward models for chosen and rejected responses with high and low confidence scores.
> <details>
> <summary>read the caption</summary>
> Figure 21: Comparison of preference distributions between the calibrated reward model Mistral-7B-crm and the pre-calibrated version Mistral-7B-RM on two modes: CHOSEN_WITH_CONF and REJECTED_WITH_CONF.
> </details>


![](https://ai-paper-reviewer.com/2410.09724/charts_30_2.png)

> 🔼 The chart compares preference distributions for calibrated versus pre-calibrated reward models across 'chosen with confidence' and 'rejected with confidence' response categories.
> <details>
> <summary>read the caption</summary>
> Figure 20: Comparison of preference distributions between the calibrated reward model Llama-3-8b-crm and the pre-calibrated version Llama-3-8b-rm-mixture on two modes: CHOSEN_WITH_CONF and REJECTED_WITH_CONF.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td>Model</td><td>Method</td><td>MT-Bench ↑</td><td>Arena-Hard ↑</td></tr><tr><td rowspan="5">Llama3-8B</td><td>SFT</td><td>7.34</td><td>10.0</td></tr><tr><td>PPO</td><td>8.00</td><td>14.6</td></tr><tr><td>PPOt</td><td>7.81</td><td>13.4</td></tr><tr><td>PPO-M</td><td>8.05</td><td>14.1</td></tr><tr><td>PPO-C</td><td>8.05</td><td>14.1</td></tr><tr><td rowspan="5">Mistral-7B</td><td>SFT</td><td>7.65</td><td>9.2</td></tr><tr><td>PPO</td><td>7.84</td><td>10.5</td></tr><tr><td>PPO�</td><td>7.83</td><td>11.7</td></tr><tr><td>PPO-M</td><td>7.95</td><td>9.9</td></tr><tr><td>PPO-C</td><td>7.98</td><td>11.8</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a performance comparison of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) across six datasets, evaluating expected calibrated error (ECE), area under the ROC curve (AUC), and accuracy (ACC).
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<br><table id='13' style='font-size:14px'><tr><td>Model</td><td>Method</td><td>MT-Bench ↑</td><td>Arena-Hard ↑</td></tr><tr><td rowspan="4">Mistral-7B</td><td>SFT</td><td>7.65</td><td>9.2</td></tr><tr><td>DPO</td><td>7.83</td><td>13.4</td></tr><tr><td>DPOt</td><td>7.83</td><td>14.3</td></tr><tr><td>CDPO</td><td>7.85</td><td>15.9</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents a performance comparison of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) on six datasets using two model families (Llama3-8B and Mistral-7B) across different prompting strategies (Direct Answers and Zero-Shot Chain-of-Thought).
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2" colspan="2">Methods</td><td colspan="3">GSM8K</td><td colspan="3">SciQ</td><td colspan="3">CommonsenseQA</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC↑</td></tr><tr><td rowspan="8">DA CoT</td><td>SFT</td><td>0.8628</td><td>0.5747</td><td>0.0902</td><td>0.0952</td><td>0.5877</td><td>0.882</td><td>0.1634</td><td>0.56</td><td>0.774</td></tr><tr><td>DPO</td><td>0.8704</td><td>0.5916</td><td>0.0887</td><td>0.0845</td><td>0.581</td><td>0.892</td><td>0.177</td><td>0.5744</td><td>0.7682</td></tr><tr><td>DPOt</td><td>0.8057</td><td>0.5409</td><td>0.0826</td><td>0.0149</td><td>0.5215</td><td>0.884</td><td>0.1157</td><td>0.5491</td><td>0.7772</td></tr><tr><td>CDPO</td><td>0.6767</td><td>0.6163</td><td>0.0781</td><td>0.0967</td><td>0.7236</td><td>0.89</td><td>0.0513</td><td>0.6165</td><td>0.7666</td></tr><tr><td>SFT</td><td>0.4124</td><td>0.5277</td><td>0.5785</td><td>0.1124</td><td>0.6238</td><td>0.872</td><td>0.1908</td><td>0.6205</td><td>0.7518</td></tr><tr><td>DPO</td><td>0.4184</td><td>0.5253</td><td>0.5716</td><td>0.094</td><td>0.5837</td><td>0.896</td><td>0.1849</td><td>0.6145</td><td>0.7625</td></tr><tr><td>DPO†</td><td>0.3456</td><td>0.5953</td><td>0.5989</td><td>0.0214</td><td>0.6687</td><td>0.898</td><td>0.0916</td><td>0.6553</td><td>0.7764</td></tr><tr><td>CDPO</td><td>0.1889</td><td>0.7178</td><td>0.6164</td><td>0.0553</td><td>0.7623</td><td>0.883</td><td>0.0676</td><td>0.6498</td><td>0.7633</td></tr><tr><td rowspan="2" colspan="2">Methods</td><td colspan="3">TruthfulQA</td><td colspan="3">Object Counting</td><td colspan="3">Professional Knowledge</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td></tr><tr><td rowspan="4">DA</td><td>SFT</td><td>0.3307</td><td>0.5755</td><td>0.5704</td><td>0.5083</td><td>0.4989</td><td>0.491</td><td>0.4134</td><td>0.5018</td><td>0.5031</td></tr><tr><td>DPO</td><td>0.2912</td><td>0.5725</td><td>0.6181</td><td>0.5149</td><td>0.501</td><td>0.485</td><td>0.4321</td><td>0.4967</td><td>0.4913</td></tr><tr><td>DPOt</td><td>0.2124</td><td>0.5674</td><td>0.6487</td><td>0.4336</td><td>0.5436</td><td>0.485</td><td>0.3649</td><td>0.5208</td><td>0.5091</td></tr><tr><td>CDPO</td><td>0.104</td><td>0.6225</td><td>0.661</td><td>0.3955</td><td>0.5304</td><td>0.491</td><td>0.2574</td><td>0.5451</td><td>0.4972</td></tr><tr><td rowspan="4">CoT</td><td>SFT</td><td>0.3657</td><td>0.6067</td><td>0.5398</td><td>0.4862</td><td>0.5072</td><td>0.5120</td><td>0.4863</td><td>0.5369</td><td>0.4554</td></tr><tr><td>DPO</td><td>0.3251</td><td>0.629</td><td>0.6022</td><td>0.4581</td><td>0.5003</td><td>0.5430</td><td>0.4950</td><td>0.5314</td><td>0.4609</td></tr><tr><td>DPO†</td><td>0.2169</td><td>0.6176</td><td>0.6377</td><td>0.4037</td><td>0.5585</td><td>0.539</td><td>0.3679</td><td>0.5587</td><td>0.4961</td></tr><tr><td>CDPO</td><td>0.1756</td><td>0.685</td><td>0.6193</td><td>0.322</td><td>0.5139</td><td>0.553</td><td>0.2917</td><td>0.614</td><td>0.4817</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents a performance comparison of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) across six datasets using two evaluation metrics (ECE and AUC).
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td>Dataset</td><td>Threhold</td></tr><tr><td>angila/tiadiabel-capybara-dpo-7k-bonarized Daniele & Suphavadeeprasit 2023</td><td>1</td></tr><tr><td>RLHFlowCodeUIraFeedback-standand Weyssow et al. 2024</td><td>3</td></tr><tr><td>angihablibafeedrack-binal_zed-prefaces-deancesed Bartolome et al. 2023</td><td>3.5</td></tr><tr><td>RLHFlowHelpsteer-preference-standand Wang et al. 2023</td><td>2.5</td></tr><tr><td>RLHFlow/Helpsteer2-standard Wang et al. 2024d</td><td>2</td></tr><tr><td>RLHFlow/Orca-distibalel-standard Lian et al. 2023</td><td>2.0</td></tr><tr><td>RLHFlow/SHP-standard Ethayarajh et al. 2022</td><td>50</td></tr><tr><td>RLHFlow/HH-RLHF-Helpful-standard Bai et al. 2022</td><td>NA</td></tr><tr><td>RLHFlow/Argilla-Math-DPO-scandard</td><td>1</td></tr><tr><td>RLHFlow/PKU-SafeRLHF-30K-standand Ji et al. 2024</td><td>NA</td></tr><tr><td>CyberNative/Code_ Vulnerability_Security _DPO</td><td>NA</td></tr><tr><td>fblgit/simple-math-DPO Murias 2024</td><td>NA</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of the performance of several methods on six different datasets, showing the expected calibrated error (ECE), area under the receiver operating characteristic curve (AUC), and accuracy (ACC).
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Parameter</td><td>Mistral-7B</td></tr><tr><td>Train BS</td><td>512</td></tr><tr><td>Micro Train BS</td><td>1</td></tr><tr><td>Learning Rate</td><td>2e-6</td></tr><tr><td>Max Length</td><td>8192</td></tr><tr><td>LR Scheduler</td><td>cosine_with_min_lr</td></tr><tr><td>Warmup Ratio</td><td>0.03</td></tr><tr><td>Optimizer</td><td>AdamW</td></tr><tr><td>Weight Decay</td><td>0.01</td></tr><tr><td>Epoch</td><td>2</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a performance comparison of different methods on six datasets, evaluating Expected Calibration Error (ECE) and Area Under the ROC Curve (AUC) to assess calibration and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='8' style='font-size:16px'><tr><td>Parameter</td><td>Llama3-8b-crm</td><td>Mistral-7B-crm</td></tr><tr><td>Train BS</td><td>256</td><td>256</td></tr><tr><td>Micro Train BS</td><td>1</td><td>1</td></tr><tr><td>Learning Rate</td><td>9e-6</td><td>5e-6</td></tr><tr><td>Max Length</td><td>8192</td><td>8192</td></tr><tr><td>LR Scheduler</td><td>cosine_with_min_lr</td><td>cosine_with_min_lr</td></tr><tr><td>Warmup Ratio</td><td>0.03</td><td>0.03</td></tr><tr><td>Optimizer</td><td>Adam</td><td>Adam</td></tr><tr><td>Epoch</td><td>1</td><td>2</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison across six different datasets for five distinct methods: SFT, PPO, PPO+, PPO-M, and PPO-C, evaluating two metrics: ECE and AUC.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td>Parameter</td><td>Llama3-8B</td><td>Mistral-7B</td></tr><tr><td>Train BS</td><td>64</td><td>64</td></tr><tr><td>Micro Train BS</td><td>2</td><td>2</td></tr><tr><td>Micro Rollout BS</td><td>4</td><td>4</td></tr><tr><td>Rollout BS</td><td>512</td><td>512</td></tr><tr><td>Prompt max len</td><td>1024</td><td>1024</td></tr><tr><td>Generate max len</td><td>1024</td><td>1024</td></tr><tr><td>Actor Learning Rate</td><td>5e-7</td><td>1e-7</td></tr><tr><td>Critic Learning Rate</td><td>9e-6</td><td>1e-6</td></tr><tr><td>Actor Weight Decay</td><td>0.0</td><td>0.01</td></tr><tr><td>Critic Weight Decay</td><td>0.0</td><td>0.0</td></tr><tr><td>Init KL Conf</td><td>0.01</td><td>0.05</td></tr><tr><td>LR Scheduler</td><td>cosine_with_min_lr</td><td>cosine_with_min_lr</td></tr><tr><td>Warmup Ratio</td><td>0.03</td><td>0.03</td></tr><tr><td>Optimizer</td><td>Adam</td><td>Adam</td></tr><tr><td>Epoch</td><td>1</td><td>1</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of the performance of different methods (SFT, PPO, PPO+, PPO-M, and PPO-C) on six diverse datasets, evaluating their expected calibration error (ECE) and area under the receiver operating characteristic curve (AUC).
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='10' style='font-size:18px'><tr><td>Parameter</td><td>Llama3-8B</td><td>Mistral-7B</td></tr><tr><td>Train BS</td><td>128</td><td>128</td></tr><tr><td>Micro Train BS</td><td>1</td><td>1</td></tr><tr><td>Max Length</td><td>4096</td><td>4096</td></tr><tr><td>Learning Rate</td><td>3e-7</td><td>3e-7</td></tr><tr><td>Beta</td><td>0.01</td><td>0.01</td></tr><tr><td>Weight Decay</td><td>0.0</td><td>0.0</td></tr><tr><td>LR Scheduler</td><td>cosine_with_min_lr</td><td>cosine_with_min_lr</td></tr><tr><td>Warmup Ratio</td><td>0.03</td><td>0.03</td></tr><tr><td>Optimizer</td><td>Adam</td><td>Adam</td></tr><tr><td>Epoch</td><td>1</td><td>1</td></tr><tr><td>Zero Stage</td><td>3</td><td>2</td></tr><tr><td>Adam Offload</td><td>True</td><td>False</td></tr><tr><td>w (scaling coefficient)</td><td>1.0</td><td>0.5</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison of different methods (SFT, PPO, PPO+, PPO-M, and PPO-C) across six datasets, evaluating their Expected Calibration Error (ECE), Area Under the Receiver Operating Characteristic Curve (AUC), and accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td></td></tr><tr><td>System Prompts:</td></tr><tr><td>For the following question, provide a step-by-step explanation of your thought process first, then offer your best answer and rate your confidence in the accuracy or helpfulness of each response on a scale from 0 to 10.</td></tr><tr><td>Use the format demonstrated below for your response. 、 、 、 Example Format:</td></tr><tr><td>Explanation: <Your detailed explanation here, outlining how you arrived at your answer.> Answer: < Insert your concise answer here, which should include a {answer_type} (e.g., {demo})></td></tr><tr><td>Confidence: < Insert your numerical confidence level from 0 to 10, reflecting how certain you are that your answer is correct.> 、 、 、</td></tr><tr><td>Ensure that your response strictly adheres to this format. Explicitly include the words 'Explanation:', 'Answer:', and 'Confidence:' in your response.</td></tr><tr><td>User Prompt:</td></tr><tr><td>Question: James decides to run 3 sprints 3 times a week. He runs 60 meters each sprint. How many total meters does he run a week?</td></tr><tr><td>Model Output:</td></tr><tr><td>Explanation: James runs 3 sprints of 60 meters each, and he does this 3 times a week. Therefore, runs 3 sprints * 60 meters per sprint = 180 meters per session. Since he does this 3 times a he runs total of 180 meters/session * 3 sessions = 540 meters in a week.</td></tr><tr><td>he week, a Answer: 540 meters Confidence: 10</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance comparison of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) on six datasets, evaluating Expected Calibration Error (ECE) and Area Under the Curve (AUC) for both direct answer and zero-shot chain-of-thought prompting strategies.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='10' style='font-size:14px'><tr><td rowspan="3">confidence reversed</td><td colspan="5">prefer high-confidence rejected prefer low-confidence chosen</td></tr><tr><td colspan="2">1156</td><td colspan="3">1827</td></tr><tr><td colspan="2">prefer high confidence</td><td colspan="2">prefer low confidence</td><td></td></tr><tr><td rowspan="2">chosen with_conf</td><td colspan="4">2242</td><td>742</td></tr><tr><td colspan="2">prefer high confidence</td><td colspan="3">prefer low confidence</td></tr><tr><td rowspan="2">rejected with_ conf</td><td colspan="4">2225</td><td>756</td></tr><tr><td colspan="2">prefer rejected</td><td colspan="3">prefer chosen</td></tr><tr><td rowspan="2">answer only 0</td><td>721</td><td colspan="4">2264</td></tr><tr><td>500</td><td>1000</td><td>1500</td><td>2000</td><td>2500</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a quantitative comparison of the performance of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) across six datasets, evaluating Expected Calibration Error (ECE) and Area Under the ROC Curve (AUC) to assess calibration and overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">w</td><td rowspan="2">MT-Bench</td><td colspan="3">GSM8K</td><td colspan="3">SciQ</td><td colspan="3">CommonsenseQA</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC↑</td></tr><tr><td>0.5</td><td>8.05</td><td>0.8638</td><td>0.516</td><td>0.1031</td><td>0.0282</td><td>0.6513</td><td>0.904</td><td>0.1286</td><td>0.5621</td><td>0.7756</td></tr><tr><td>1.0</td><td>7.76</td><td>0.8261</td><td>0.501</td><td>0.1092</td><td>0.0075</td><td>0.5641</td><td>0.903</td><td>0.1025</td><td>0.5076</td><td>0.7805</td></tr><tr><td rowspan="2">w</td><td rowspan="2">MT-Bench</td><td colspan="3">TruthfulQA</td><td colspan="3">Object Counting</td><td colspan="3">Professional Knowledge</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑ I</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td></tr><tr><td>0.5</td><td>8.05</td><td>0.4426</td><td>0.5303</td><td>0.4431</td><td>0.4839</td><td>0.5178</td><td>0.503</td><td>0.3949</td><td>0.4902</td><td>0.502</td></tr><tr><td>1.0</td><td>7.76</td><td>0.4271</td><td>0.5207</td><td>0.4345</td><td>0.4709</td><td>0.5318</td><td>0.505</td><td>0.388</td><td>0.5069</td><td>0.4883</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a quantitative comparison of different methods (SFT, PPO, PPO+, PPO-M, and PPO-C) across six evaluation datasets, using ECE and AUC metrics to assess calibration and performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td rowspan="2">Percentage</td><td rowspan="2">MT-Bench</td><td colspan="3">GSM8K</td><td colspan="3">SciQ</td><td colspan="3">CommonsenseQA</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td></tr><tr><td>0.25</td><td>8.05</td><td>0.8393</td><td>0.57</td><td>0.119</td><td>0.0267</td><td>0.6115</td><td>0.898</td><td>0.1206</td><td>0.5568</td><td>0.7707</td></tr><tr><td>0.5</td><td>7.88</td><td>0.86</td><td>0.5185</td><td>0.1031</td><td>0.0389</td><td>0.5829</td><td>0.896</td><td>0.134</td><td>0.5399</td><td>0.7682</td></tr><tr><td>1.0</td><td>7.74</td><td>0.8608</td><td>0.5065</td><td>0.1243</td><td>0.0471</td><td>0.7165</td><td>0.898</td><td>0.074</td><td>0.6341</td><td>0.7658</td></tr><tr><td rowspan="2">Percentage</td><td rowspan="2">MT-Bench</td><td colspan="3">TruthfulQA</td><td colspan="3">Object Counting</td><td colspan="3">Professional Knowledge</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC↑</td></tr><tr><td>0.25</td><td>8.05</td><td>0.3991</td><td>0.5813</td><td>0.47</td><td>0.4789</td><td>0.5227</td><td>0.505</td><td>0.3848</td><td>0.4926</td><td>0.502</td></tr><tr><td>0.5</td><td>7.88</td><td>0.4453</td><td>0.5283</td><td>0.4357</td><td>0.5119</td><td>0.5413</td><td>0.473</td><td>0.3988</td><td>0.5221</td><td>0.4935</td></tr><tr><td>1.0</td><td>7.74</td><td>0.3438</td><td>0.5737</td><td>0.4786</td><td>0.5087</td><td>0.5052</td><td>0.487</td><td>0.3501</td><td>0.5184</td><td>0.502</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents a comparison of the performance of several methods on six datasets, showing the expected calibrated error (ECE), area under the receiver operating characteristic curve (AUC), and accuracy (ACC) for each method.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<br><table id='10' style='font-size:16px'><tr><td>Model</td><td>Method</td><td>MT-Bench ↑</td><td>Arena-Hard ↑</td></tr><tr><td rowspan="4">Llama3-8B</td><td>SFT</td><td>6.44 (6.6)</td><td>3.1 (3.3)</td></tr><tr><td>DPO</td><td>7.67 (7.7)</td><td>15.9 (15.9)</td></tr><tr><td>DPO†</td><td>7.52</td><td>15.2</td></tr><tr><td>CDPO</td><td>7.68</td><td>14.7</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents a performance comparison of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) on six datasets using two model families (Llama3-8B and Mistral-7B), evaluating metrics like ECE and AUC.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td rowspan="2">MT-Bench</td><td rowspan="2"></td><td colspan="3">GSM8K Arena-Hard</td><td colspan="3">SciQ</td><td colspan="3">CommonsenseQA</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td></tr><tr><td>DA</td><td>7.82</td><td>12.0 0.8948</td><td>0.5168</td><td>0.0978</td><td>0.1026</td><td>0.5094</td><td>0.896</td><td>0.2134</td><td>0.5415</td><td>0.774</td></tr><tr><td>CoT</td><td>7.82 12.0</td><td>0.2441</td><td>0.5108</td><td>0.7544</td><td>0.1434</td><td>0.5809</td><td>0.847</td><td>0.2553</td><td>0.631</td><td>0.7027</td></tr><tr><td rowspan="2">MT-Bench</td><td rowspan="2">Arena-Hard</td><td colspan="3">TruthfulQA</td><td colspan="3">Object Counting</td><td colspan="3">Professional Knowledge</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC↑</td></tr><tr><td>DA</td><td>7.82</td><td>12.0 0.533</td><td>0.575</td><td>0.4235</td><td>0.469</td><td>0.5</td><td>0.531</td><td>0.5256</td><td>0.5158</td><td>0.4535</td></tr><tr><td>CoT</td><td>7.82</td><td>12.0 0.5203</td><td>0.6263</td><td>0.4137</td><td>0.309</td><td>0.5</td><td>0.691</td><td>0.525</td><td>0.5573</td><td>0.4324</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents a performance comparison of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) across six datasets, evaluating Expected Calibration Error (ECE), Area Under the Receiver Operating Characteristic Curve (AUC), and Accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2" colspan="2">Methods</td><td colspan="3">GSM8K</td><td colspan="3">SciQ</td><td colspan="3">CommonsenseQA</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td></tr><tr><td rowspan="4">DA</td><td>SFT</td><td>0.8783</td><td>0.5292</td><td>0.0773</td><td>0.1681</td><td>0.5253</td><td>0.801</td><td>0.3913</td><td>0.5294</td><td>0.5528</td></tr><tr><td>DPO</td><td>0.904</td><td>0.5381</td><td>0.0834</td><td>0.1085</td><td>0.561</td><td>0.886</td><td>0.3011</td><td>0.535</td><td>0.6871</td></tr><tr><td>DPO†</td><td>0.8861</td><td>0.5203</td><td>0.097</td><td>0.1103</td><td>0.5626</td><td>0.881</td><td>0.3004</td><td>0.5409</td><td>0.683</td></tr><tr><td>CDPO</td><td>0.5664</td><td>0.5389</td><td>0.1024</td><td>0.0143</td><td>0.6497</td><td>0.877</td><td>0.1697</td><td>0.5815</td><td>0.6912</td></tr><tr><td rowspan="4">CoT</td><td>SFT</td><td>0.6473</td><td>0.5508</td><td>0.326</td><td>0.1699</td><td>0.5816</td><td>0.803</td><td>0.3293</td><td>0.588</td><td>0.579</td></tr><tr><td>DPO</td><td>0.4159</td><td>0.5452</td><td>0.577</td><td>0.113</td><td>0.6376</td><td>0.858</td><td>0.2621</td><td>0.6295</td><td>0.6593</td></tr><tr><td>DPO†</td><td>0.452</td><td>0.5456</td><td>0.539</td><td>0.0964</td><td>0.6614</td><td>0.876</td><td>0.235</td><td>0.5973</td><td>0.6749</td></tr><tr><td>CDPO</td><td>0.3313</td><td>0.6054</td><td>0.5277</td><td>0.0386</td><td>0.7036</td><td>0.86</td><td>0.1269</td><td>0.6685</td><td>0.6798</td></tr><tr><td rowspan="2" colspan="2">Methods</td><td colspan="3">TruthfulQA</td><td colspan="3">Object Counting</td><td colspan="3">Professional Knowledge</td></tr><tr><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td><td>ECE ↓</td><td>AUC ↑</td><td>ACC ↑</td></tr><tr><td rowspan="4">DA</td><td>SFT</td><td>0.592</td><td>0.5388</td><td>0.3256</td><td>0.5964</td><td>0.4938</td><td>0.395</td><td>0.5109</td><td>0.5189</td><td>0.4127</td></tr><tr><td>DPO</td><td>0.6126</td><td>0.5581</td><td>0.3525</td><td>0.5848</td><td>0.4996</td><td>0.415</td><td>0.4764</td><td>0.4992</td><td>0.495</td></tr><tr><td>DPO†</td><td>0.5647</td><td>0.5886</td><td>0.3856</td><td>0.5999</td><td>0.5008</td><td>0.4</td><td>0.467</td><td>0.5153</td><td>0.4939</td></tr><tr><td>CDPO</td><td>0.4022</td><td>0.6194</td><td>0.3929</td><td>0.4662</td><td>0.5262</td><td>0.422</td><td>0.3525</td><td>0.5581</td><td>0.4898</td></tr><tr><td rowspan="4">CoT</td><td>SFT</td><td>0.5259</td><td>0.5698</td><td>0.3782</td><td>0.5388</td><td>0.5126</td><td>0.45</td><td>0.5091</td><td>0.5457</td><td>0.4068</td></tr><tr><td>DPO</td><td>0.5188</td><td>0.5822</td><td>0.4088</td><td>0.3520</td><td>0.5000</td><td>0.6480</td><td>0.4289</td><td>0.5700</td><td>0.4831</td></tr><tr><td>DPO†</td><td>0.4931</td><td>0.6111</td><td>0.4113</td><td>0.3783</td><td>0.5018</td><td>0.621</td><td>0.4312</td><td>0.562</td><td>0.4694</td></tr><tr><td>CDPO</td><td>0.3651</td><td>0.634</td><td>0.4345</td><td>0.3488</td><td>0.5286</td><td>0.567</td><td>0.3349</td><td>0.6303</td><td>0.4609</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents a performance comparison of different methods (SFT, PPO, PPO+, PPO-M, PPO-C) across six datasets, evaluating their expected calibration error (ECE), area under the receiver operating characteristic curve (AUC), and accuracy (ACC).
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison across various methods on six datasets. SFT: Supervised Fine-Tuned checkpoints, serving as the starting points for all methods. PPO†: an ablation of our PPO-M method which uses vanilla reward model in PPO training but on our modified dataset (with confidence-query system prompts).
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.09724/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.09724/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}