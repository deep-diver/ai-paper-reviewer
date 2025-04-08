---
title: "Are You Getting What You Pay For? Auditing Model Substitution in LLM APIs"
summary: "LLM providers may covertly substitute models; this paper audits detection methods!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Robustness", "🏢 UC Berkeley",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.04715 {{< /keyword >}}
{{< keyword icon="writer" >}} Will Cai et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.04715" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.04715" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.04715/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The proliferation of LLMs via APIs introduces trust issues, as providers might substitute advertised models with cheaper alternatives, compromising fairness and reliability. Detecting such substitutions is difficult due to the black-box nature of APIs. Current verification techniques, including statistical tests and benchmark evaluations, often fall short, especially against adaptive attacks like model quantization and benchmark evasion. The paper formalizes the problem and evaluates existing techniques.



This paper systematically evaluates various detection methodologies under realistic adversarial scenarios. Findings reveal the limitations of text output methods and the stronger guarantees of log probability analysis, though its accessibility is limited. The study analyzes attacks like randomized substitution and benchmark evasion. Ultimately, the paper discusses the potential of hardware-based solutions like Trusted Execution Environments (TEEs) as a pathway toward provable model integrity, noting trade-offs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current text-output-based verification techniques are vulnerable to adversarial attacks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Log probability analysis offers stronger guarantees but has limited accessibility. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Trusted Execution Environments (TEEs) hold promise for provable model integrity. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **highlights the critical need for verifiable AI systems** and offers a practical investigation for auditing model substitution in LLM APIs. It unveils vulnerabilities in current verification techniques and **proposes a promising hardware-based solution**. The research also **opens avenues for standardized protocols** and more robust auditing techniques, ultimately fostering trust and transparency in AI service.

------
#### Visual Insights



![](https://arxiv.org/html/2504.04715/x1.png)

> 🔼 This figure displays the statistical power of the model equality test.  The test is used to determine whether two models are the same.  It is evaluated under two attack scenarios: 1) A smaller model is substituted with a quantized version of the larger model, and 2) a cheaper model is randomly substituted for the advertised model with varying probability.  The x-axis represents the probability of substitution (from 0 to 1, with 1 meaning no substitution), and the y-axis shows the statistical power (from 0 to 1, with 1 meaning the test perfectly distinguishes between the models). The plot shows how the probability of correctly identifying substitution changes with different levels of substitution probability, revealing the limitations of the test when subtle or randomized substitutions are applied.  Different colored lines represent different model pairs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Statistical power of model equality testing for the smaller model under quantization attack and the larger model under substitution attack.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.1.1">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1.1">Service Provider</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.2.1">Open Source Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.3.1">Decoding Parameters</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.4.1">Logprobs Output</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">Anyscale</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">Full Control</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">Top 5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">Together.ai</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">Full Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">Single Token</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">Hugging Face</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">Full Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">Top 5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">AWS Bedrock</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">Full Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">Nebius AI</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">Full Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">Vertex AI</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">Full Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">Top 5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">Mistral</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">Partial Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">No</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">DeepSeek</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.2" style="padding-top:1pt;padding-bottom:1pt;">Yes</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.3" style="padding-top:1pt;padding-bottom:1pt;">Partial Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.4" style="padding-top:1pt;padding-bottom:1pt;">Top 20</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">OpenAI</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.2" style="padding-top:1pt;padding-bottom:1pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.3" style="padding-top:1pt;padding-bottom:1pt;">Partial Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.4" style="padding-top:1pt;padding-bottom:1pt;">Top 20</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.11.1" style="padding-top:1pt;padding-bottom:1pt;">Cohere</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.2" style="padding-top:1pt;padding-bottom:1pt;">No</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.3" style="padding-top:1pt;padding-bottom:1pt;">Full Control</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.4" style="padding-top:1pt;padding-bottom:1pt;">Single Token</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.1.1.12.1" style="padding-top:1pt;padding-bottom:1pt;">Anthropic</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.12.2" style="padding-top:1pt;padding-bottom:1pt;">No</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.12.3" style="padding-top:1pt;padding-bottom:1pt;">Partial Control</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.12.4" style="padding-top:1pt;padding-bottom:1pt;">No</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table summarizes the level of transparency and control offered by various Large Language Model (LLM) API providers as of March 2025.  It details whether each provider offers access to their underlying models (open-source or not), the level of control users have over decoding parameters (like temperature, top-p, and top-k), and whether users can access token log probabilities. The 'Full Control' designation signifies that users have comprehensive control over these parameters.
> <details>
> <summary>read the caption</summary>
> Table 1: Transparency and control across LLM API providers (March 2025). “Full Control” implies typical parameters like temperature, top-p, top-k, etc.
> </details>





### In-depth insights


#### API Audit Problem
The 'API Audit Problem' in the context of LLMs accessed through black-box APIs presents a significant challenge to trust and reliability. Users pay for specific model capabilities (size, performance), but **providers could covertly substitute lower-quality alternatives to reduce costs**. This lack of transparency undermines fairness, complicates benchmarking, and erodes trust. Detecting such substitutions is difficult due to the black-box nature, typically limiting interaction to input-output queries. The problem requires formalization and systematic evaluation of existing verification techniques, like statistical tests, benchmark evaluations, and log probability analysis, under realistic attack scenarios. **Quantization, randomized substitution, benchmark evasion, and limiting information disclosure** are practical attacks that need to be considered. Existing methods relying solely on text outputs face limitations against subtle or adaptive attacks. Stronger guarantees may be available with log probability analysis, but its accessibility is often limited. Hardware-based solutions like Trusted Execution Environments (TEEs) are promising for provable model integrity, but present trade-offs between security, performance, and provider adoption. The problem requires increased transparency, robust auditing techniques, standardized protocols, and user awareness to foster trust in LLM API services.

#### Model Sub. Attacks
Model substitution attacks in the context of LLM APIs present a significant threat to users who rely on advertised model capabilities. **Providers may covertly replace a specified model with a cheaper, lower-quality alternative to reduce operational costs**, leading to unfair pricing, eroded trust, and unreliable benchmarking. Detection is challenging due to the black-box nature of APIs, which typically limits interaction to input-output queries. Practical attack scenarios include **quantization substitution**, where a full-precision model is replaced with a quantized version, and **randomized model substitution**, where queries are routed to either the original or a cheaper substitute with a certain probability. These attacks exploit distributional differences or introduce noise to evade detection. **Countermeasures like benchmark evasion**, where providers detect and serve genuine responses to audit queries, and **limiting information disclosure**, where providers restrict access to metadata like log probabilities, further complicate the task of auditing model substitution.

#### Text Output Fails
**Text-output-based verification methods face inherent limitations.** Relying solely on generated text proves insufficient for detecting subtle model substitutions like quantization, as classifiers struggle to differentiate outputs. Identity prompting is also easily circumvented via system prompt overrides, highlighting vulnerabilities. Model equality testing, while promising, suffers from reduced statistical power under randomized substitution attacks and exhibits sensitivity to undisclosed decoding parameters and variations in implementation by different API providers. In essence, relying solely on text outputs is **insufficient** due to the inherent randomness, the possibility of adversarial manipulation, and the lack of transparency from providers. The **lack of accuracy** and **robustness** of existing algorithms makes them potentially unable to guarantee which model the user is querying.

#### LogProb: Best Signal
The idea of using log probabilities (**logprobs**) as the "best signal" for auditing model substitution hinges on their sensitivity to the underlying model's weights. Slight alterations, such as quantization or version changes, will manifest as discernible differences in logprob distributions. This method assumes access to logprobs, which isn't universally offered by API providers. It provides strong guarantee but its applicability is limited by provider's policy(**Table 1**). Practical challenges arise even in controlled environments, where subtle variations in software, hardware, and API configurations can introduce instability in logprob patterns. The potential impact of provider-side optimization techniques (e.g., continuous batching) and the need for user-side reference computations add layers of complexity. However, the reliance on API features makes it susceptible to provider countermeasures, such as selectively disclosing logprobs or employing benchmark evasion tactics.

#### TEE: Full Integrity
**Trusted Execution Environments (TEEs) offer a hardware-backed solution for ensuring the integrity of LLM APIs**, a critical aspect in mitigating model substitution attacks. By providing a secure and isolated environment, TEEs guarantee that the code being executed and the data being processed remain confidential and tamper-proof. **This approach shifts the trust anchor from the API provider's operational honesty to the integrity of the underlying hardware and attestation process.** Verifiable measurements of the inference stack and model weights, coupled with open-source software components, establish trust. While TEEs present a robust defense, challenges remain in terms of infrastructure dependency and provider adoption. Establishing trust requires verifiable measurements. Overcoming these hurdles is crucial for realizing the full potential of TEEs in securing LLM APIs and fostering user confidence.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.04715/x2.png)

> 🔼 This figure shows the benchmark accuracy results for various LLMs at different temperatures. The x-axis represents the temperature parameter used during text generation, and the y-axis represents the accuracy achieved on various benchmarks (MMLU, GSM8K, MATH, GPQA).  Different lines represent different LLMs, illustrating how their performance varies across temperatures and across different benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 2: Benchmark Accuracy (y-axis) vs. Temperature (x-axis) on different models.
> </details>



![](https://arxiv.org/html/2504.04715/x3.png)

> 🔼 This figure visualizes the stability of log probabilities across different software (transformers and vLLM), hardware (A100 and H100 GPUs), and software versions when generating text using greedy decoding for UltraChat Queries.  It displays log probabilities for the first 20 tokens in two example generations, showing variations even under seemingly consistent conditions. This helps demonstrate the challenges of relying solely on log probability analysis for model verification due to inherent instability.
> <details>
> <summary>read the caption</summary>
> Figure 3: Log probability of generating first 20 shared tokens under greedy decoding for UltraChat Queries under different environment.
> </details>



![](https://arxiv.org/html/2504.04715/x4.png)

> 🔼 This figure displays the log probabilities for the first 20 tokens generated using greedy decoding on UltraChat queries.  The results are shown across multiple different environments to demonstrate the variability in log probabilities even under controlled conditions.  The environments vary across different versions of the inference frameworks (vLLM and Hugging Face Transformers), and different hardware configurations (A100 and H100 GPUs). This illustrates the challenges of relying solely on log probabilities for model verification, as even minor environmental differences can lead to significant variations in log probability values.
> <details>
> <summary>read the caption</summary>
> Figure 4: Log probability of generating first 20 shared tokens under greedy decoding for UltraChat Queries under different environment.
> </details>



![](https://arxiv.org/html/2504.04715/extracted/6340807/figure/seclm.png)

> 🔼 This figure displays a screenshot of an API inference endpoint that incorporates Trusted Execution Environments (TEEs).  The screenshot shows details about the endpoint's URL, measurement values for integrity verification, SSL public key, and attestation data. The attestation data includes cryptographic hashes and links to various files involved in the secure boot process, providing evidence of the endpoint's integrity and trustworthiness. The inclusion of these details demonstrates the enhanced security and transparency offered by using TEEs to verify the authenticity and integrity of the model running on the server.
> <details>
> <summary>read the caption</summary>
> Figure 5: A screenshot of the API inference endpoint with TEE.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.2.1">BERT Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.3.1">T5 Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.4.1">GPT2 Acc</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1">LLM2Vec Acc</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">Llama3-70B-Instruct-FP8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">50.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">50.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">50.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">49.90</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">Llama3-70B-Instruct-INT8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">51.60</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">49.90</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">51.30</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">50.25</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">Gemma2-9b-it-FP8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">49.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">50.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">51.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">49.80</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">Gemma2-9b-it-INT8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">49.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">49.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">51.65</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.5.5" style="padding-top:1pt;padding-bottom:1pt;">49.55</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">Mistral-7b-v3-Instruct-FP8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">50.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">49.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">48.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">48.75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">Mistral-7b-v3-Instruct-INT8</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">49.70</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">50.75</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">50.50</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5" style="padding-top:1pt;padding-bottom:1pt;">51.15</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2-72B-Instruct-FP8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">50.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">50.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">48.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.8.5" style="padding-top:1pt;padding-bottom:1pt;">49.80</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">Qwen2-72B-Instruct-INT8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.9.2" style="padding-top:1pt;padding-bottom:1pt;">50.75</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.9.3" style="padding-top:1pt;padding-bottom:1pt;">50.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.9.4" style="padding-top:1pt;padding-bottom:1pt;">49.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.9.5" style="padding-top:1pt;padding-bottom:1pt;">50.20</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a binary classification experiment designed to assess the ability of a classifier to distinguish between text generated by original, full-precision LLMs and their quantized versions (INT8 and FP8).  The experiment uses the Ultrachat dataset for prompts and trains several different embedding models (BERT, T5, GPT-2, LLM2Vec) to perform the classification task.  The accuracies reported for each model-quantization pair are consistently close to 50%, indicating that the classifier is unable to reliably differentiate between the outputs of the original and quantized models.
> <details>
> <summary>read the caption</summary>
> Table 2: Binary classification accuracy between outputs of quantized and original models on the Ultrachat dataset. Accuracies near 50% indicate failure to differentiate.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.40.40">
<tr class="ltx_tr" id="S4.T3.40.40.41">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.40.40.41.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.40.40.41.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.40.40.41.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.40.40.41.2.1">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.40.40.41.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.40.40.41.3.1">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.40.40.41.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.40.40.41.4.1">MATH</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.40.40.41.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.40.40.41.5.1">GPQA Diamond</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5" style="padding-top:1pt;padding-bottom:1pt;">Meta-Llama-3-8B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">62.76 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" xref="S4.T3.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.2" style="padding-top:1pt;padding-bottom:1pt;">65.43 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" xref="S4.T3.2.2.2.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><csymbol cd="latexml" id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">±</annotation></semantics></math> 4.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">20.43 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.3.m1.1.1" xref="S4.T3.3.3.3.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.m1.1b"><csymbol cd="latexml" id="S4.T3.3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.m1.1d">±</annotation></semantics></math> 1.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.4" style="padding-top:1pt;padding-bottom:1pt;">22.60 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.m1.1"><semantics id="S4.T3.4.4.4.4.m1.1a"><mo id="S4.T3.4.4.4.4.m1.1.1" xref="S4.T3.4.4.4.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.m1.1b"><csymbol cd="latexml" id="S4.T3.4.4.4.4.m1.1.1.cmml" xref="S4.T3.4.4.4.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.m1.1d">±</annotation></semantics></math> 0.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.5" style="padding-top:1pt;padding-bottom:1pt;">Meta-Llama-3-8B-Instruct-FP8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.1" style="padding-top:1pt;padding-bottom:1pt;">62.30 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.1.m1.1.1" xref="S4.T3.5.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><csymbol cd="latexml" id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.6.2" style="padding-top:1pt;padding-bottom:1pt;">61.64 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.6.6.6.2.m1.1"><semantics id="S4.T3.6.6.6.2.m1.1a"><mo id="S4.T3.6.6.6.2.m1.1.1" xref="S4.T3.6.6.6.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.2.m1.1b"><csymbol cd="latexml" id="S4.T3.6.6.6.2.m1.1.1.cmml" xref="S4.T3.6.6.6.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.2.m1.1d">±</annotation></semantics></math> 0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.7.3" style="padding-top:1pt;padding-bottom:1pt;">15.24 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.7.7.7.3.m1.1"><semantics id="S4.T3.7.7.7.3.m1.1a"><mo id="S4.T3.7.7.7.3.m1.1.1" xref="S4.T3.7.7.7.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.3.m1.1b"><csymbol cd="latexml" id="S4.T3.7.7.7.3.m1.1.1.cmml" xref="S4.T3.7.7.7.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.3.m1.1d">±</annotation></semantics></math> 0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.8.4" style="padding-top:1pt;padding-bottom:1pt;">20.20 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.8.8.8.4.m1.1"><semantics id="S4.T3.8.8.8.4.m1.1a"><mo id="S4.T3.8.8.8.4.m1.1.1" xref="S4.T3.8.8.8.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.4.m1.1b"><csymbol cd="latexml" id="S4.T3.8.8.8.4.m1.1.1.cmml" xref="S4.T3.8.8.8.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.4.m1.1d">±</annotation></semantics></math> 0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.12.5" style="padding-top:1pt;padding-bottom:1pt;">Meta-Llama-3-70B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.9.9.9.1" style="padding-top:1pt;padding-bottom:1pt;">78.17 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.1.m1.1a"><mo id="S4.T3.9.9.9.1.m1.1.1" xref="S4.T3.9.9.9.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><csymbol cd="latexml" id="S4.T3.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">±</annotation></semantics></math> 0.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.10.10.10.2" style="padding-top:1pt;padding-bottom:1pt;">88.36 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.10.10.10.2.m1.1"><semantics id="S4.T3.10.10.10.2.m1.1a"><mo id="S4.T3.10.10.10.2.m1.1.1" xref="S4.T3.10.10.10.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.2.m1.1b"><csymbol cd="latexml" id="S4.T3.10.10.10.2.m1.1.1.cmml" xref="S4.T3.10.10.10.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.2.m1.1d">±</annotation></semantics></math> 1.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.11.11.11.3" style="padding-top:1pt;padding-bottom:1pt;">35.57 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.11.11.11.3.m1.1"><semantics id="S4.T3.11.11.11.3.m1.1a"><mo id="S4.T3.11.11.11.3.m1.1.1" xref="S4.T3.11.11.11.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.3.m1.1b"><csymbol cd="latexml" id="S4.T3.11.11.11.3.m1.1.1.cmml" xref="S4.T3.11.11.11.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.3.m1.1d">±</annotation></semantics></math> 1.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.12.12.12.4" style="padding-top:1pt;padding-bottom:1pt;">29.55 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.12.12.12.4.m1.1"><semantics id="S4.T3.12.12.12.4.m1.1a"><mo id="S4.T3.12.12.12.4.m1.1.1" xref="S4.T3.12.12.12.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.4.m1.1b"><csymbol cd="latexml" id="S4.T3.12.12.12.4.m1.1.1.cmml" xref="S4.T3.12.12.12.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.4.m1.1d">±</annotation></semantics></math> 0.51</td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.16">
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.5" style="padding-top:1pt;padding-bottom:1pt;">Meta-Llama-3-70B-Instruct-FP8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.13.1" style="padding-top:1pt;padding-bottom:1pt;">77.84 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.13.13.13.1.m1.1"><semantics id="S4.T3.13.13.13.1.m1.1a"><mo id="S4.T3.13.13.13.1.m1.1.1" xref="S4.T3.13.13.13.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.1.m1.1b"><csymbol cd="latexml" id="S4.T3.13.13.13.1.m1.1.1.cmml" xref="S4.T3.13.13.13.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.1.m1.1d">±</annotation></semantics></math> 0.15</td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.14.2" style="padding-top:1pt;padding-bottom:1pt;">87.49 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.14.14.14.2.m1.1"><semantics id="S4.T3.14.14.14.2.m1.1a"><mo id="S4.T3.14.14.14.2.m1.1.1" xref="S4.T3.14.14.14.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.2.m1.1b"><csymbol cd="latexml" id="S4.T3.14.14.14.2.m1.1.1.cmml" xref="S4.T3.14.14.14.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.2.m1.1d">±</annotation></semantics></math> 1.97</td>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.15.3" style="padding-top:1pt;padding-bottom:1pt;">35.61 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.15.15.15.3.m1.1"><semantics id="S4.T3.15.15.15.3.m1.1a"><mo id="S4.T3.15.15.15.3.m1.1.1" xref="S4.T3.15.15.15.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.3.m1.1b"><csymbol cd="latexml" id="S4.T3.15.15.15.3.m1.1.1.cmml" xref="S4.T3.15.15.15.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.3.m1.1d">±</annotation></semantics></math> 1.83</td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.16.4" style="padding-top:1pt;padding-bottom:1pt;">33.21 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.16.16.16.4.m1.1"><semantics id="S4.T3.16.16.16.4.m1.1a"><mo id="S4.T3.16.16.16.4.m1.1.1" xref="S4.T3.16.16.16.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.4.m1.1b"><csymbol cd="latexml" id="S4.T3.16.16.16.4.m1.1.1.cmml" xref="S4.T3.16.16.16.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.4.m1.1d">±</annotation></semantics></math> 0.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.20.20.20">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.20.20.20.5" style="padding-top:1pt;padding-bottom:1pt;">Gemma-2-9b-it</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.17.17.17.1" style="padding-top:1pt;padding-bottom:1pt;">71.86 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.17.17.17.1.m1.1"><semantics id="S4.T3.17.17.17.1.m1.1a"><mo id="S4.T3.17.17.17.1.m1.1.1" xref="S4.T3.17.17.17.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.1.m1.1b"><csymbol cd="latexml" id="S4.T3.17.17.17.1.m1.1.1.cmml" xref="S4.T3.17.17.17.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.1.m1.1d">±</annotation></semantics></math> 0.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.18.18.18.2" style="padding-top:1pt;padding-bottom:1pt;">81.84 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.18.18.18.2.m1.1"><semantics id="S4.T3.18.18.18.2.m1.1a"><mo id="S4.T3.18.18.18.2.m1.1.1" xref="S4.T3.18.18.18.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.18.2.m1.1b"><csymbol cd="latexml" id="S4.T3.18.18.18.2.m1.1.1.cmml" xref="S4.T3.18.18.18.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.18.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.18.2.m1.1d">±</annotation></semantics></math> 2.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.19.19.19.3" style="padding-top:1pt;padding-bottom:1pt;">33.34 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.19.19.19.3.m1.1"><semantics id="S4.T3.19.19.19.3.m1.1a"><mo id="S4.T3.19.19.19.3.m1.1.1" xref="S4.T3.19.19.19.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.19.19.19.3.m1.1b"><csymbol cd="latexml" id="S4.T3.19.19.19.3.m1.1.1.cmml" xref="S4.T3.19.19.19.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.19.19.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.19.19.3.m1.1d">±</annotation></semantics></math> 0.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.20.20.20.4" style="padding-top:1pt;padding-bottom:1pt;">28.79 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.20.20.20.4.m1.1"><semantics id="S4.T3.20.20.20.4.m1.1a"><mo id="S4.T3.20.20.20.4.m1.1.1" xref="S4.T3.20.20.20.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.20.20.20.4.m1.1b"><csymbol cd="latexml" id="S4.T3.20.20.20.4.m1.1.1.cmml" xref="S4.T3.20.20.20.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.20.20.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.20.20.4.m1.1d">±</annotation></semantics></math> 4.70</td>
</tr>
<tr class="ltx_tr" id="S4.T3.24.24.24">
<td class="ltx_td ltx_align_center" id="S4.T3.24.24.24.5" style="padding-top:1pt;padding-bottom:1pt;">Gemma-2-9b-it-FP8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.21.1" style="padding-top:1pt;padding-bottom:1pt;">71.89 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.21.21.21.1.m1.1"><semantics id="S4.T3.21.21.21.1.m1.1a"><mo id="S4.T3.21.21.21.1.m1.1.1" xref="S4.T3.21.21.21.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.21.21.21.1.m1.1b"><csymbol cd="latexml" id="S4.T3.21.21.21.1.m1.1.1.cmml" xref="S4.T3.21.21.21.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.21.21.21.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.21.21.21.1.m1.1d">±</annotation></semantics></math> 0.12</td>
<td class="ltx_td ltx_align_center" id="S4.T3.22.22.22.2" style="padding-top:1pt;padding-bottom:1pt;">79.51 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.22.22.22.2.m1.1"><semantics id="S4.T3.22.22.22.2.m1.1a"><mo id="S4.T3.22.22.22.2.m1.1.1" xref="S4.T3.22.22.22.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.22.22.22.2.m1.1b"><csymbol cd="latexml" id="S4.T3.22.22.22.2.m1.1.1.cmml" xref="S4.T3.22.22.22.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.22.22.22.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.22.22.22.2.m1.1d">±</annotation></semantics></math> 1.48</td>
<td class="ltx_td ltx_align_center" id="S4.T3.23.23.23.3" style="padding-top:1pt;padding-bottom:1pt;">32.56 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.23.23.23.3.m1.1"><semantics id="S4.T3.23.23.23.3.m1.1a"><mo id="S4.T3.23.23.23.3.m1.1.1" xref="S4.T3.23.23.23.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.23.23.23.3.m1.1b"><csymbol cd="latexml" id="S4.T3.23.23.23.3.m1.1.1.cmml" xref="S4.T3.23.23.23.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.23.23.23.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.23.23.23.3.m1.1d">±</annotation></semantics></math> 0.64</td>
<td class="ltx_td ltx_align_center" id="S4.T3.24.24.24.4" style="padding-top:1pt;padding-bottom:1pt;">27.78 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.24.24.24.4.m1.1"><semantics id="S4.T3.24.24.24.4.m1.1a"><mo id="S4.T3.24.24.24.4.m1.1.1" xref="S4.T3.24.24.24.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.24.24.24.4.m1.1b"><csymbol cd="latexml" id="S4.T3.24.24.24.4.m1.1.1.cmml" xref="S4.T3.24.24.24.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.24.24.24.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.24.24.24.4.m1.1d">±</annotation></semantics></math> 6.06</td>
</tr>
<tr class="ltx_tr" id="S4.T3.28.28.28">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.28.28.28.5" style="padding-top:1pt;padding-bottom:1pt;">Qwen2-72B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.25.25.25.1" style="padding-top:1pt;padding-bottom:1pt;">82.17 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.25.25.25.1.m1.1"><semantics id="S4.T3.25.25.25.1.m1.1a"><mo id="S4.T3.25.25.25.1.m1.1.1" xref="S4.T3.25.25.25.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.25.25.25.1.m1.1b"><csymbol cd="latexml" id="S4.T3.25.25.25.1.m1.1.1.cmml" xref="S4.T3.25.25.25.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.25.25.25.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.25.25.25.1.m1.1d">±</annotation></semantics></math> 0.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.26.26.26.2" style="padding-top:1pt;padding-bottom:1pt;">86.83 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.26.26.26.2.m1.1"><semantics id="S4.T3.26.26.26.2.m1.1a"><mo id="S4.T3.26.26.26.2.m1.1.1" xref="S4.T3.26.26.26.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.26.26.26.2.m1.1b"><csymbol cd="latexml" id="S4.T3.26.26.26.2.m1.1.1.cmml" xref="S4.T3.26.26.26.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.26.26.26.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.26.26.26.2.m1.1d">±</annotation></semantics></math> 1.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.27.27.27.3" style="padding-top:1pt;padding-bottom:1pt;">37.40 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.27.27.27.3.m1.1"><semantics id="S4.T3.27.27.27.3.m1.1a"><mo id="S4.T3.27.27.27.3.m1.1.1" xref="S4.T3.27.27.27.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.27.27.27.3.m1.1b"><csymbol cd="latexml" id="S4.T3.27.27.27.3.m1.1.1.cmml" xref="S4.T3.27.27.27.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.27.27.27.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.27.27.27.3.m1.1d">±</annotation></semantics></math> 1.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.28.28.28.4" style="padding-top:1pt;padding-bottom:1pt;">30.05 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.28.28.28.4.m1.1"><semantics id="S4.T3.28.28.28.4.m1.1a"><mo id="S4.T3.28.28.28.4.m1.1.1" xref="S4.T3.28.28.28.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.28.28.28.4.m1.1b"><csymbol cd="latexml" id="S4.T3.28.28.28.4.m1.1.1.cmml" xref="S4.T3.28.28.28.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.28.28.28.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.28.28.28.4.m1.1d">±</annotation></semantics></math> 4.55</td>
</tr>
<tr class="ltx_tr" id="S4.T3.32.32.32">
<td class="ltx_td ltx_align_center" id="S4.T3.32.32.32.5" style="padding-top:1pt;padding-bottom:1pt;">Qwen2-72B-Instruct-FP8</td>
<td class="ltx_td ltx_align_center" id="S4.T3.29.29.29.1" style="padding-top:1pt;padding-bottom:1pt;">81.99 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.29.29.29.1.m1.1"><semantics id="S4.T3.29.29.29.1.m1.1a"><mo id="S4.T3.29.29.29.1.m1.1.1" xref="S4.T3.29.29.29.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.29.29.29.1.m1.1b"><csymbol cd="latexml" id="S4.T3.29.29.29.1.m1.1.1.cmml" xref="S4.T3.29.29.29.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.29.29.29.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.29.29.29.1.m1.1d">±</annotation></semantics></math> 0.12</td>
<td class="ltx_td ltx_align_center" id="S4.T3.30.30.30.2" style="padding-top:1pt;padding-bottom:1pt;">86.85 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.30.30.30.2.m1.1"><semantics id="S4.T3.30.30.30.2.m1.1a"><mo id="S4.T3.30.30.30.2.m1.1.1" xref="S4.T3.30.30.30.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.30.30.30.2.m1.1b"><csymbol cd="latexml" id="S4.T3.30.30.30.2.m1.1.1.cmml" xref="S4.T3.30.30.30.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.30.30.30.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.30.30.30.2.m1.1d">±</annotation></semantics></math> 0.31</td>
<td class="ltx_td ltx_align_center" id="S4.T3.31.31.31.3" style="padding-top:1pt;padding-bottom:1pt;">37.66 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.31.31.31.3.m1.1"><semantics id="S4.T3.31.31.31.3.m1.1a"><mo id="S4.T3.31.31.31.3.m1.1.1" xref="S4.T3.31.31.31.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.31.31.31.3.m1.1b"><csymbol cd="latexml" id="S4.T3.31.31.31.3.m1.1.1.cmml" xref="S4.T3.31.31.31.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.31.31.31.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.31.31.31.3.m1.1d">±</annotation></semantics></math> 0.02</td>
<td class="ltx_td ltx_align_center" id="S4.T3.32.32.32.4" style="padding-top:1pt;padding-bottom:1pt;">31.06 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.32.32.32.4.m1.1"><semantics id="S4.T3.32.32.32.4.m1.1a"><mo id="S4.T3.32.32.32.4.m1.1.1" xref="S4.T3.32.32.32.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.32.32.32.4.m1.1b"><csymbol cd="latexml" id="S4.T3.32.32.32.4.m1.1.1.cmml" xref="S4.T3.32.32.32.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.32.32.32.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.32.32.32.4.m1.1d">±</annotation></semantics></math> 2.04</td>
</tr>
<tr class="ltx_tr" id="S4.T3.36.36.36">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.36.36.36.5" style="padding-top:1pt;padding-bottom:1pt;">Mistral-7B-Instruct-v0.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.33.33.33.1" style="padding-top:1pt;padding-bottom:1pt;">59.12 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.33.33.33.1.m1.1"><semantics id="S4.T3.33.33.33.1.m1.1a"><mo id="S4.T3.33.33.33.1.m1.1.1" xref="S4.T3.33.33.33.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.33.33.33.1.m1.1b"><csymbol cd="latexml" id="S4.T3.33.33.33.1.m1.1.1.cmml" xref="S4.T3.33.33.33.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.33.33.33.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.33.33.33.1.m1.1d">±</annotation></semantics></math> 0.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.34.34.34.2" style="padding-top:1pt;padding-bottom:1pt;">35.96 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.34.34.34.2.m1.1"><semantics id="S4.T3.34.34.34.2.m1.1a"><mo id="S4.T3.34.34.34.2.m1.1.1" xref="S4.T3.34.34.34.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.34.34.34.2.m1.1b"><csymbol cd="latexml" id="S4.T3.34.34.34.2.m1.1.1.cmml" xref="S4.T3.34.34.34.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.34.34.34.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.34.34.34.2.m1.1d">±</annotation></semantics></math> 6.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.35.35.35.3" style="padding-top:1pt;padding-bottom:1pt;">9.01 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.35.35.35.3.m1.1"><semantics id="S4.T3.35.35.35.3.m1.1a"><mo id="S4.T3.35.35.35.3.m1.1.1" xref="S4.T3.35.35.35.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.35.35.35.3.m1.1b"><csymbol cd="latexml" id="S4.T3.35.35.35.3.m1.1.1.cmml" xref="S4.T3.35.35.35.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.35.35.35.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.35.35.35.3.m1.1d">±</annotation></semantics></math> 1.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.36.36.36.4" style="padding-top:1pt;padding-bottom:1pt;">21.59 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.36.36.36.4.m1.1"><semantics id="S4.T3.36.36.36.4.m1.1a"><mo id="S4.T3.36.36.36.4.m1.1.1" xref="S4.T3.36.36.36.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.36.36.36.4.m1.1b"><csymbol cd="latexml" id="S4.T3.36.36.36.4.m1.1.1.cmml" xref="S4.T3.36.36.36.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.36.36.36.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.36.36.36.4.m1.1d">±</annotation></semantics></math> 0.25</td>
</tr>
<tr class="ltx_tr" id="S4.T3.40.40.40">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.40.40.40.5" style="padding-top:1pt;padding-bottom:1pt;">Mistral-7B-Instruct-v0.3-FP8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.37.37.37.1" style="padding-top:1pt;padding-bottom:1pt;">58.70 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.37.37.37.1.m1.1"><semantics id="S4.T3.37.37.37.1.m1.1a"><mo id="S4.T3.37.37.37.1.m1.1.1" xref="S4.T3.37.37.37.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.37.37.37.1.m1.1b"><csymbol cd="latexml" id="S4.T3.37.37.37.1.m1.1.1.cmml" xref="S4.T3.37.37.37.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.37.37.37.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.37.37.37.1.m1.1d">±</annotation></semantics></math> 0.18</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.38.38.38.2" style="padding-top:1pt;padding-bottom:1pt;">32.30 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.38.38.38.2.m1.1"><semantics id="S4.T3.38.38.38.2.m1.1a"><mo id="S4.T3.38.38.38.2.m1.1.1" xref="S4.T3.38.38.38.2.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.38.38.38.2.m1.1b"><csymbol cd="latexml" id="S4.T3.38.38.38.2.m1.1.1.cmml" xref="S4.T3.38.38.38.2.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.38.38.38.2.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.38.38.38.2.m1.1d">±</annotation></semantics></math> 0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.39.39.39.3" style="padding-top:1pt;padding-bottom:1pt;">7.62 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.39.39.39.3.m1.1"><semantics id="S4.T3.39.39.39.3.m1.1a"><mo id="S4.T3.39.39.39.3.m1.1.1" xref="S4.T3.39.39.39.3.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.39.39.39.3.m1.1b"><csymbol cd="latexml" id="S4.T3.39.39.39.3.m1.1.1.cmml" xref="S4.T3.39.39.39.3.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.39.39.39.3.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.39.39.39.3.m1.1d">±</annotation></semantics></math> 0.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.40.40.40.4" style="padding-top:1pt;padding-bottom:1pt;">22.73 <math alttext="\pm" class="ltx_Math" display="inline" id="S4.T3.40.40.40.4.m1.1"><semantics id="S4.T3.40.40.40.4.m1.1a"><mo id="S4.T3.40.40.40.4.m1.1.1" xref="S4.T3.40.40.40.4.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T3.40.40.40.4.m1.1b"><csymbol cd="latexml" id="S4.T3.40.40.40.4.m1.1.1.cmml" xref="S4.T3.40.40.40.4.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.40.40.40.4.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T3.40.40.40.4.m1.1d">±</annotation></semantics></math> 0.00</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the average and standard deviation of benchmark results across several Large Language Models (LLMs) under evaluation at a temperature setting of 0.5. The benchmarks measure model performance on four different tasks: MMLU, GSM8k, MATH, and GPQA Diamond. Each LLM is tested in both its original version and its quantized version (FP8).  The results help compare the performance consistency between the different models and assess the impact of quantization on model capabilities.
> <details>
> <summary>read the caption</summary>
> Table 3: Mean ±plus-or-minus\pm± standard deviation of benchmark results on different models at temperature T=0.5𝑇0.5T=0.5italic_T = 0.5.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Metric</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text" id="S4.T4.1.1.1.2.1"></span> <span class="ltx_text" id="S4.T4.1.1.1.2.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.1.2.2.1">
<span class="ltx_tr" id="S4.T4.1.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.2.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Concurrent</span></span>
<span class="ltx_tr" id="S4.T4.1.1.1.2.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.2.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">requests #</span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.1.2.3"></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;">TEE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;">no TEE</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;">Overhead</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T4.1.1.2.1.1"><span class="ltx_text" id="S4.T4.1.1.2.1.1.1"></span> <span class="ltx_text" id="S4.T4.1.1.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.2.1.1.2.1">
<span class="ltx_tr" id="S4.T4.1.1.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.2.1.1.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">First token latency</span></span>
<span class="ltx_tr" id="S4.T4.1.1.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.2.1.1.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">(ms)</span></span>
</span></span> <span class="ltx_text" id="S4.T4.1.1.2.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">9.23%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">64</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">79</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">68</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">16.18%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.1.4.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T4.1.1.4.1.1"><span class="ltx_text" id="S4.T4.1.1.4.1.1.1"></span> <span class="ltx_text" id="S4.T4.1.1.4.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.4.1.1.2.1">
<span class="ltx_tr" id="S4.T4.1.1.4.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.4.1.1.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">Overall throughput</span></span>
<span class="ltx_tr" id="S4.T4.1.1.4.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.4.1.1.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">(token/s)</span></span>
</span></span> <span class="ltx_text" id="S4.T4.1.1.4.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">117</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">15.38%</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">64</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">943</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">971</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.5.4" style="padding-top:1pt;padding-bottom:1pt;">2.88%</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison between an LLM API endpoint with and without a Trusted Execution Environment (TEE). It compares metrics such as first token latency, overall throughput with one concurrent request and with 64 concurrent requests. The overhead introduced by the TEE is shown for each metric, highlighting the trade-offs between security and performance. The results indicate that the performance overhead introduced by the TEE is manageable, especially under high concurrency.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.1.1">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1" style="padding:1.5pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1">Service Provider</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.2" style="padding:1.5pt 8.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.2.1">Reference documentation</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.1" style="padding:1.5pt 8.0pt;">Anyscale</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://docs.anyscale.com/endpoints/text-generation/logprobs/" title="">https://docs.anyscale.com/endpoints/text-generation/logprobs/</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.1" style="padding:1.5pt 8.0pt;">Together.ai</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://docs.together.ai/docs/logprobs" title="">https://docs.together.ai/docs/logprobs</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.1" style="padding:1.5pt 8.0pt;">Hugging Face</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.4.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://huggingface.co/docs/api-inference/tasks/chat-completion#request" title="">https://huggingface.co/docs/api-inference/tasks/chat-completion#request</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.1" style="padding:1.5pt 8.0pt;">AWS Bedrock</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html" title="">https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.1" style="padding:1.5pt 8.0pt;">Nebius AI</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.6.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://docs.nebius.com/studio/inference" title="">https://docs.nebius.com/studio/inference</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.1" style="padding:1.5pt 8.0pt;">Vertex AI</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://cloud.google.com/vertex-ai/generative-ai/docs/multimodal/content-generation-parameters#log-probabilities-output-tokens" title="">https://cloud.google.com/vertex-ai/generative-ai/docs/multimodal/content-generation-parameters#log-probabilities-output-tokens</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.1" style="padding:1.5pt 8.0pt;">Mistral</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.8.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://docs.mistral.ai/api/#operation/createChatCompletion" title="">https://docs.mistral.ai/api/#operation/createChatCompletion</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.1" style="padding:1.5pt 8.0pt;">DeepSeek</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://api-docs.deepseek.com/api/create-completion" title="">https://api-docs.deepseek.com/api/create-completion</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.1" style="padding:1.5pt 8.0pt;">OpenAI</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.10.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://platform.openai.com/docs/api-reference/chat/create#chat-create-top_logprobs" title="">https://platform.openai.com/docs/api-reference/chat/create#chat-create-top_logprobs</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.1" style="padding:1.5pt 8.0pt;">Cohere</td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://docs.cohere.com/v2/reference/chat#request.body.logprobs" title="">https://docs.cohere.com/v2/reference/chat#request.body.logprobs</a></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.12.1" style="padding:1.5pt 8.0pt;">Anthropic</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.1.1.12.2" style="padding:1.5pt 8.0pt;"><a class="ltx_ref ltx_url ltx_font_typewriter" href="https://docs.anthropic.com/en/api/messages" title="">https://docs.anthropic.com/en/api/messages</a></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists various Large Language Model (LLM) API providers and details the documentation available for each.  This includes whether access to log probabilities, decoding parameters, and the degree of control offered to users is specified in the provider's documentation.  This information is important for understanding the level of transparency and control users have when auditing LLMs via APIs.
> <details>
> <summary>read the caption</summary>
> Table 5: LLM API service providers documentations.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.04715/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04715/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}