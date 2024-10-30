---
title: "Cross-Lingual Auto Evaluation for Assessing Multilingual LLMs"
summary: "New framework, CIA Suite, enables accurate, automated cross-lingual evaluation of multilingual LLMs using a novel test set and evaluator LLMs, bridging the gap in multilingual NLP assessment."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13394 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research tackles the challenge of evaluating multilingual large language models (LLMs), a significant gap in current NLP research.  Existing methods primarily focus on English, leaving multilingual evaluation under-resourced.  The researchers introduce the Cross-Lingual Auto Evaluation (CIA) Suite, a novel framework that includes evaluator LLMs (HERCULE) and a new test set (RECON).  RECON contains 500 human-annotated instructions covering diverse tasks across six languages, along with human judgment scores. HERCULE, a cross-lingual model, addresses the lack of reference answers in target languages by using English references.  Experiments show HERCULE aligning closely with human judgments and performs better than commercial LLMs in zero-shot evaluation on unseen languages.  The CIA Suite, including data and models, is publicly available. The work demonstrates the feasibility of using LLMs for cross-lingual evaluation, addressing a critical need for unbiased evaluation in multilingual NLP and providing a valuable resource for future research.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13394" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13394" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on multilingual language model evaluation. It introduces a novel cross-lingual evaluation framework and benchmark, addressing the scarcity of multilingual evaluation resources.  The findings challenge existing assumptions about multilingual LLM capabilities and provide a scalable solution for future research in this critical area.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} The CIA Suite offers a scalable and effective approach to cross-lingual LLM evaluation, overcoming limitations of existing English-centric methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The newly introduced RECON test set and HERCULE evaluator LLMs provide a robust benchmark for assessing multilingual LLMs across various tasks and languages. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate that cross-lingual evaluation models trained on INTEL significantly outperform proprietary LLMs, particularly in low-resource scenarios. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13394/figures_1_0.png)

> 🔼 The figure illustrates the CIA (Cross-Lingual Auto Evaluation) Suite's architecture, showcasing the HERCULE evaluator LLM's cross-lingual evaluation process.
> <details>
> <summary>read the caption</summary>
> Figure 1: We present cross-lingual Evaluator LLM, HERCULE, where the Instruction & Response provided to the model are in the target language, while all other fields are in English. The model generates feedback & score in English for a given evaluation example.
> </details>





![](https://ai-paper-reviewer.com/2410.13394/charts_6_0.png)

> 🔼 The chart compares LLM evaluation scores versus true scores for model responses, highlighting the tendency of LLMs to be more generous in their assessments.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of LLM score vs True score when the difference between the predictions is =1 and ≥2. We see that LLM Evaluator is more generous and awards higher scores. Refer Sec. §5.3 for detailed results.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Model</td><td>Type</td><td>bn</td><td>de</td><td>fr</td><td>hi</td><td>te</td><td>ur</td><td>avg.</td></tr><tr><td>GPT-40</td><td>Zero-Shot</td><td>0.64</td><td>0.66</td><td>0.65</td><td>0.64</td><td>0.61</td><td>0.64</td><td>0.64</td></tr><tr><td>GEMINI-1.5-PRO</td><td>Zero-Shot</td><td>0.54</td><td>0.58</td><td>0.59</td><td>0.57</td><td>0.53</td><td>0.57</td><td>0.56</td></tr><tr><td>8 LLAMA-3.1-405B-I</td><td>Zero-Shot</td><td>0.60</td><td>0.66</td><td>0.66</td><td>0.62</td><td>0.51</td><td>0.65</td><td>0.62</td></tr><tr><td>8 LLAMA-3.2 3B</td><td>FFT</td><td>0.68</td><td>0.72</td><td>0.71</td><td>0.71</td><td>0.70</td><td>0.72</td><td>0.71</td></tr><tr><td>GEMMA 7B</td><td>FFT</td><td>0.47</td><td>0.39</td><td>0.36</td><td>0.43</td><td>0.33</td><td>0.38</td><td>0.39</td></tr><tr><td> AYA23 8B</td><td>FFT</td><td>0.70</td><td>0.72</td><td>0.73</td><td>0.72</td><td>0.65</td><td>0.71</td><td>0.70</td></tr><tr><td>HERCULE 8B</td><td>FFT</td><td>0.74</td><td>0.75</td><td>0.75</td><td>0.74</td><td>0.69</td><td>0.74</td><td>0.73</td></tr><tr><td>HERCULE 8B</td><td>LoRA</td><td>0.72</td><td>0.74</td><td>0.72</td><td>0.72</td><td>0.70</td><td>0.70</td><td>0.72</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the evaluation results of various models on the RECON test set using Linear Weighted Cohen's Kappa scores, differentiating between zero-shot and fine-tuned model performances.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>



### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:16px'><tr><td>Model</td><td>bn</td><td>hi</td><td>te</td><td>ur</td></tr><tr><td>GPT-40</td><td>0.37</td><td>0.61</td><td>0.62</td><td>0.67</td></tr><tr><td>GEMINI-PRO</td><td>0.31</td><td>0.51</td><td>0.61</td><td>0.62</td></tr><tr><td>8 LLAMA 405B-I</td><td>0.38</td><td>0.59</td><td>0.67</td><td>0.72</td></tr><tr><td>HERCULE 8B</td><td>0.42</td><td>0.53</td><td>0.74</td><td>0.78</td></tr><tr><td>IAA</td><td>0.38</td><td>0.38</td><td>0.44</td><td>0.46</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents Pearson correlation values between human annotator scores and LLM-generated scores on 100 prompt-response pairs, assessing evaluator LLM alignment with human judgments.
> <details>
> <summary>read the caption</summary>
> Table 2: Pearson correlation (ρ) between human annotator scores and Evaluator LLM scores on a sample of 100 prompt-response pairs. A higher value indicates stronger alignment with human judgments. See Sec. §5.2 for detailed results.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td></td><td>bn</td><td>de</td><td>fr</td><td>hi</td><td>te</td><td>ur</td><td>Avg.</td></tr><tr><td></td><td>0.64</td><td>0.66</td><td>0.65</td><td>0.64</td><td>0.61</td><td>0.64</td><td>0.64</td></tr><tr><td></td><td>0.61</td><td>0.69</td><td>0.71</td><td>0.08</td><td>0.50</td><td>0.39</td><td>0.50</td></tr><tr><td>bn</td><td>0.74</td><td>0.76</td><td>0.74</td><td>0.74</td><td>0.57</td><td>0.72</td><td>0.71</td></tr><tr><td>de</td><td>0.64</td><td>0.75</td><td>0.72</td><td>0.70</td><td>0.62</td><td>0.69</td><td>0.69</td></tr><tr><td>fr</td><td>0.62</td><td>0.75</td><td>0.75</td><td>0.69</td><td>0.60</td><td>0.68</td><td>0.68</td></tr><tr><td>hi</td><td>0.62</td><td>0.76</td><td>0.77</td><td>0.74</td><td>0.56</td><td>0.69</td><td>0.69</td></tr><tr><td>te</td><td>0.65</td><td>0.71</td><td>0.72</td><td>0.72</td><td>0.69</td><td>0.72</td><td>0.70</td></tr><tr><td>ur</td><td>0.64</td><td>0.76</td><td>0.77</td><td>0.73</td><td>0.59</td><td>0.74</td><td>0.70</td></tr><tr><td></td><td>0.74</td><td>0.75</td><td>0.75</td><td>0.74</td><td>0.69</td><td>0.74</td><td>0.73</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the linear weighted Cohen's Kappa scores for various LLMs on the RECON test set, comparing zero-shot and fine-tuned model performance across six languages.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>

{{< table-caption >}}
<table id='9' style='font-size:16px'><tr><td>Model</td><td>bn</td><td>hi</td><td>te</td><td>avg.</td></tr><tr><td>GEMMA-2B</td><td>0.64</td><td>0.62</td><td>0.60</td><td>0.62</td></tr><tr><td>S S ARVAM-2B</td><td>0.58</td><td>0.56</td><td>0.58</td><td>0.57</td></tr><tr><td>GEMMA-2B-IT</td><td>0.64</td><td>0.67</td><td>0.61</td><td>0.64</td></tr><tr><td>8 LLAMA 3.2 3B</td><td>0.68</td><td>0.71</td><td>0.70</td><td>0.70</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the linear weighted Cohen's Kappa scores evaluating the agreement between the ground truth scores and the model predictions for various LLMs on the RECON test set, categorized by zero-shot and fine-tuned models.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Model</td><td>bn</td><td>de</td><td>fr</td><td>hi</td><td>te</td><td>ur</td><td>avg.</td></tr><tr><td>Single</td><td>0.74</td><td>0.75</td><td>0.75</td><td>0.74</td><td>0.69</td><td>0.74</td><td>0.73</td></tr><tr><td>Joint</td><td>0.70</td><td>0.70</td><td>0.70</td><td>0.69</td><td>0.68</td><td>0.67</td><td>0.69</td></tr><tr><td>Linear</td><td>0.71</td><td>0.75</td><td>0.77</td><td>0.73</td><td>0.64</td><td>0.73</td><td>0.72</td></tr><tr><td>TIES</td><td>0.68</td><td>0.74</td><td>0.77</td><td>0.76</td><td>0.64</td><td>0.72</td><td>0.72</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the Linear Weighted Cohen's Kappa scores for various LLMs (zero-shot and fine-tuned) on the RECON test set, showing the correlation between model-generated scores and human-assigned ground truth scores.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>

{{< table-caption >}}
<br><table id='14' style='font-size:14px'><tr><td></td><td colspan="2"></td><td colspan="2"></td><td colspan="2">8</td><td colspan="2"></td></tr><tr><td></td><td>T</td><td>Ps</td><td>T</td><td>Ps</td><td>T</td><td>Ps</td><td>T</td><td>Ps</td></tr><tr><td>bn</td><td>0.28</td><td>0.35</td><td>0.22</td><td>0.28</td><td>0.33</td><td>0.40</td><td>0.35</td><td>0.43</td></tr><tr><td>hi</td><td>0.43</td><td>0.52</td><td>0.38</td><td>0.47</td><td>0.40</td><td>0.48</td><td>0.36</td><td>0.43</td></tr><tr><td>te</td><td>0.50</td><td>0.62</td><td>0.51</td><td>0.63</td><td>0.57</td><td>0.67</td><td>0.61</td><td>0.75</td></tr><tr><td>ur</td><td>0.54</td><td>0.66</td><td>0.53</td><td>0.64</td><td>0.57</td><td>0.70</td><td>0.65</td><td>0.77</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the Linear Weighted Cohen's Kappa scores achieved by various models (both zero-shot and fine-tuned) on the RECON test set, indicating the correlation between their evaluation scores and human judgements.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Reference</td><td>Model Prediction - Translated</td></tr><tr><td>Anna - Ben - Carl - Dave - Eve - Frank</td><td>Anna - Ben - Frank - Dave - Eve - Carl</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance of various LLMs (zero-shot and fine-tuned) on the RECON benchmark, measured by the linear weighted Cohen's Kappa score.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Reference</td><td>Model Prediction</td></tr><tr><td>Anna - Ben - Carl - Dave - Eve - Frank</td><td>Anna - Ben - Frank - Dave - Eve - Carl</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 shows the Linear Weighted Cohen's Kappa scores evaluating the correlation between ground truth scores and model predictions for various LLMs on the RECON test set, categorized by zero-shot and fine-tuned models.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Reference</td><td>Model Prediction - Translated</td></tr><tr><td>Anna - Ben - Carl - Dave - Eve - Frank</td><td>Anna - Ben - Frank - Dave - Eve - Carl</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the evaluation results of various models (zero-shot and fine-tuned) on the RECON test set using the Linear Weighted Cohen's Kappa metric.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results of all models on the RECON test set. We report the Linear Weighted Cohen's Kappa (κ) score between the ground truth scores and the model predictions. Higher the value, better is the correlation. The upper half of the table presents zero-shot evaluations, while the lower half shows the results of fine-tuned models. Refer to Sec. §5.1 for detailed results.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13394/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13394/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}