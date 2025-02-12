---
title: "Auditing Prompt Caching in Language Model APIs"
summary: "Researchers expose widespread prompt caching in LLMs via novel timing attacks, highlighting significant privacy risks and model architecture leakage."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Stanford University",]
showSummary: true
date: 2025-02-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.07776 {{< /keyword >}}
{{< keyword icon="writer" >}} Chenchen Gu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.07776" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.07776" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.07776/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are computationally expensive, leading to optimizations like prompt caching to speed up processing. However, this caching creates a vulnerability: cached prompts are processed faster than new ones, potentially revealing sensitive information about users through timing attacks. This is especially risky if the cache is shared across all users (global caching). The paper focuses on auditing real-world LLM APIs to detect prompt caching. 

The researchers developed and employed a statistical audit method that leverages timing differences between cached and non-cached prompts to detect caching and identify the levels of cache sharing. The study reveals that global cache sharing was present in many APIs, raising major privacy concerns and leading to significant security risks.  The study also uncovered that timing variations due to prompt caching can leak information about the LLM's architecture, a previously unknown vulnerability.  The responsible disclosure of this critical information prompted several API providers to take actions to mitigate these privacy risks.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Widespread prompt caching in LLMs poses serious privacy risks due to data-dependent timing variations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel statistical audit method effectively detects prompt caching and its level of sharing across users or organizations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Prompt caching inadvertently leaks information about model architecture, as demonstrated with OpenAI's embedding model. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it reveals widespread prompt caching in major LLM APIs**, a significant privacy vulnerability.  It provides **a novel auditing method**, offering researchers a practical tool for evaluating API security. This opens **new avenues for research** into LLM security and privacy, influencing future API design and user awareness. The discovery of architecture leakage through timing attacks is also groundbreaking.

------
#### Visual Insights



![](https://arxiv.org/html/2502.07776/x1.png)

> 🔼 This figure illustrates a side-channel attack leveraging prompt caching in a language model API.  First, a victim's prompt is sent (1) and cached by the API. Next, an attacker sends a different prompt (2), resulting in a slower response time (cache miss). Finally, the attacker sends a prompt sharing a prefix with the victim's prompt (3).  The fast response time reveals the cache hit and indicates the prefix of the victim's prompt has been cached, potentially leaking private information.
> <details>
> <summary>read the caption</summary>
> Figure 1:  An example illustrating prompt caching. (1) A victim sends a prompt to the API, which then becomes cached. (2) An attacker sends a new prompt, resulting in a cache miss and slow response time. (3) An attacker sends a prompt that shares a prefix with the victim’s prompt, resulting in a cache hit. From the fast response time, the attacker can infer that a cache hit occurred, which potentially reveals information about other users’ prompts.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.5.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S3.T1.5.1.1.1"></th>
<th class="ltx_td ltx_nopad_r ltx_th ltx_th_row ltx_border_tt" id="S3.T1.5.1.1.2"></th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="S3.T1.5.1.1.3">Same prompt</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.5.1.1.4">Same prefix, different suffixes</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.5.1.1.5">Avg. precision</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.2.2.1">Provider</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.2.2.2">Model</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T1.5.2.2.3">Per-user</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.4">Per-user</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.5">Per-org.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.6">Global</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.7">Client</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.2.2.8">Server</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.3.3.1">Azure</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.3.3.2">text-embedding-3-small</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T1.5.3.3.3"><span class="ltx_text" id="S3.T1.5.3.3.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.3.3.4"><span class="ltx_text" id="S3.T1.5.3.3.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.3.3.5">—</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.3.3.6"><span class="ltx_text" id="S3.T1.5.3.3.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.3.3.7">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.3.3.8">—</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.4.4.1">Deep Infra</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.4.4.2">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.5.4.4.3"><span class="ltx_text" id="S3.T1.5.4.4.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.4"><span class="ltx_text" id="S3.T1.5.4.4.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.5">—</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.6"><span class="ltx_text" id="S3.T1.5.4.4.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.7">0.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.4.4.8">—</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.5.5.1">Fireworks</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.5.5.2">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.5.5.5.3"><span class="ltx_text" id="S3.T1.5.5.5.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.4"><span class="ltx_text" id="S3.T1.5.5.5.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.5"><span class="ltx_text" id="S3.T1.5.5.5.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.6"><span class="ltx_text" id="S3.T1.5.5.5.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.7">0.77</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.8">0.79</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.6.6.1">Lepton</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.6.6.2">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.5.6.6.3"><span class="ltx_text" id="S3.T1.5.6.6.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.4"><span class="ltx_text" id="S3.T1.5.6.6.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.5">—</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.6"><span class="ltx_text" id="S3.T1.5.6.6.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.7">0.71</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.6.6.8">0.70</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.7.7.1">OpenAI</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.7.7.2">text-embedding-3-small</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.5.7.7.3"><span class="ltx_text" id="S3.T1.5.7.7.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.4"><span class="ltx_text" id="S3.T1.5.7.7.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.5"><span class="ltx_text" id="S3.T1.5.7.7.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.6"><span class="ltx_text" id="S3.T1.5.7.7.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.7">0.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.7.8">0.79</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.8.8.1">Perplexity</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.8.8.2">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.5.8.8.3"><span class="ltx_text" id="S3.T1.5.8.8.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.4"><span class="ltx_text" id="S3.T1.5.8.8.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.5">—</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.6"><span class="ltx_text" id="S3.T1.5.8.8.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.7">0.90</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.8.8">—</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.9.9.1">Replicate</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S3.T1.5.9.9.2">Llama 3 8B Instruct</th>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T1.5.9.9.3"><span class="ltx_text" id="S3.T1.5.9.9.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.4"><span class="ltx_text" id="S3.T1.5.9.9.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.5">—</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.6"><span class="ltx_text" id="S3.T1.5.9.9.6.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.7">—</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.9.9.8">1.00</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.10.10.1">Anthropic</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.5.10.10.2">Claude 3 Haiku</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T1.5.10.10.3"><span class="ltx_text" id="S3.T1.5.10.10.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.10.4"><span class="ltx_text" id="S3.T1.5.10.10.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.10.5"><span class="ltx_text" id="S3.T1.5.10.10.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.10.6"><span class="ltx_text" id="S3.T1.5.10.10.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.10.7">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.10.10.8">—</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.5.11.11.1">OpenAI</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S3.T1.5.11.11.2">GPT-4o mini</th>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S3.T1.5.11.11.3"><span class="ltx_text" id="S3.T1.5.11.11.3.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.11.11.4"><span class="ltx_text" id="S3.T1.5.11.11.4.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.11.11.5"><span class="ltx_text" id="S3.T1.5.11.11.5.1" style="color:#008000;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.11.11.6"><span class="ltx_text" id="S3.T1.5.11.11.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.11.11.7">0.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.11.11.8">0.86</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an audit conducted on seventeen Language Model APIs to detect prompt caching and its level of sharing.  Each API is evaluated for caching at four levels: per-user, per-organization, global, and for prefix matches with different suffixes. A checkmark (✓) indicates that caching was detected at that level, an X (✗) indicates no caching was found. A dash (—) shows that testing for organization-level cache sharing was not possible due to either lack of organization support or restricted access.  The table also includes average precision scores for classifying cache hit times.  This metric, reflecting the accuracy of the audit in detecting cache hits, is calculated using the highest level of cache sharing observed and separated for client-side and server-side timing when data for both are available.  If only one type of timing data is available, the other cell is marked with a dash.
> <details>
> <summary>read the caption</summary>
> Table 1: Audit results for APIs where we detected prompt caching. ✓ denotes caching was detected, ✗ denotes caching was not detected, and “—” denotes that cache sharing within an organization was not tested, either because the API did not support organizations or because we did not have access to the organizations feature. We report the average precision for classifying times from the cache hit procedure, using the highest level of cache sharing detected in each API. We report the average precision for client-side timing and server-side timing separately, with “—” denoting that the given timing method is unavailable for that API.
> </details>





### In-depth insights


#### Prompt Cache Audit
A prompt cache audit is a crucial process for evaluating the security and privacy implications of large language model (LLM) APIs that utilize prompt caching.  **The core goal is to detect the presence and scope of caching**, determining whether it operates at the per-user, per-organization, or global level.  This is vital because global caching poses the greatest privacy risk, enabling attackers to infer information about other users' prompts through timing attacks.  **Audits should leverage statistical hypothesis testing** to determine if observed timing variations are statistically significant, mitigating the risk of false positives.  This rigorous approach necessitates carefully designed methodologies for generating cache hits and misses, along with the selection of appropriate statistical tests (e.g., Kolmogorov-Smirnov test) to rigorously assess the results.  Furthermore, **a comprehensive audit must not only identify the existence of caching but also its granular level of sharing**.  This level of detail is paramount for providing users with the information they need to make informed decisions about using a particular API, ultimately helping to mitigate potential privacy violations.

#### Timing Attacks
Timing attacks exploit the fact that **different operations take varying amounts of time** to execute, especially in systems with caches.  In the context of large language models (LLMs), this means that **cached prompts are processed significantly faster than uncached ones**. This timing difference can leak information about the contents of the prompt, creating a side channel for attackers. The paper cleverly leverages this, developing audits to detect prompt caching in real-world LLM APIs. By measuring response times, they identify statistical differences between cache hits and misses. Importantly, their research highlights different cache-sharing levels (per-user, per-organization, global), each with varied privacy implications.  The **global sharing scenario poses the most significant security risk**, allowing attackers to potentially infer information about other users' prompts.  Thus, the study provides a robust, statistically sound method for auditing LLM APIs, emphasizing the importance of transparent caching policies and responsible disclosure of potential vulnerabilities by API providers to mitigate such timing attacks.

#### API Provider Audits
API provider audits represent a crucial step in evaluating the security and privacy implications of large language model (LLM) APIs.  **The core aim is to assess the extent of prompt caching and its potential for privacy violations.**  These audits would involve statistically testing response times to determine whether an API provider caches prompts globally, per-organization, or only on a per-user basis.  **The level of cache sharing directly impacts the risk of privacy leakage** as global sharing poses the greatest threat, potentially allowing attackers to infer information about other users' prompts through timing attacks.  A well-designed audit should not only identify the presence of caching but also quantify the level of privacy risk associated with different caching strategies. **The process includes careful consideration of statistical significance, false positive rates, and the potential for adversarial attacks that might try to exploit these timing variations.**  Finally, responsible disclosure to affected API providers is essential to allow for timely remediation of identified vulnerabilities and to promote transparency around the data handling practices of LLMs. 

#### Architecture Leaks
The concept of 'Architecture Leaks' in the context of Large Language Models (LLMs) is a crucial security concern.  It highlights the potential for an attacker to infer sensitive information about the LLM's underlying architecture, such as whether it's a decoder-only, encoder-only, or encoder-decoder model, through careful observation of its behavior. **Timing attacks are a major vector for this kind of leak**, where differences in response times based on cached prompts can reveal architectural details.  This is particularly relevant for proprietary LLMs where architectural details constitute valuable intellectual property.  **The use of statistical methods and careful hypothesis testing are important to robustly detect and analyze such leaks**, as presented in the research paper. **Transparency from API providers about their caching policies is essential** to mitigate the risk of both data and architecture leakage, as users must be able to make informed decisions on the risk associated with using these services. Ultimately, understanding and addressing these vulnerabilities is critical for ensuring the secure deployment and usage of LLMs.

#### Mitigation Strategies
Mitigation strategies for prompt caching vulnerabilities in large language model APIs primarily revolve around **limiting cache sharing** and **enhancing transparency**.  Instead of global caching, which risks widespread privacy leakage by enabling inference of other users' prompts, implementing per-user caching is the most effective solution. This isolates each user's prompt history within their own cache, eliminating the side-channel attacks that exploit shared caches.  **Openly disclosing caching policies** is also crucial, as this allows users to understand the level of risk and make informed choices about sensitive information they input. API providers should **clearly state the caching mechanism's scope** (per-user, per-organization, or global).  Furthermore, techniques like introducing intentional delays for cache hits, making them indistinguishable from cache misses, can mitigate privacy risks while maintaining some performance benefits of caching.  Finally, for cases where prompt caching cannot be avoided entirely, **implementing robust monitoring and logging** is vital. This helps detect any unauthorized access or unexpected information leakage and facilitates prompt responses to potential vulnerabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.07776/x2.png)

> 🔼 This figure illustrates the hierarchical structure of users and organizations within an API's context.  At the lowest level are individual users.  Multiple users belong to an organization (e.g., a company or research group).  Finally, the global level encompasses all users and organizations associated with that specific API.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Organizations contain users, and the global level contains all users and organizations of an API.
> </details>



![](https://arxiv.org/html/2502.07776/x3.png)

> 🔼 Figure 3 presents histograms illustrating response time distributions from cache hit and cache miss procedures across several LLMs.  The x-axis represents time (in seconds), and the y-axis shows frequency.  Each histogram is clearly bimodal, with a distinct peak for cache hits (faster times) and another peak for cache misses (slower times). The separation of the two peaks demonstrates the effectiveness of using timing differences to distinguish between cache hits and misses.  Each histogram title provides detailed information for context: the API provider, the specific LLM model used, the level of cache sharing (per-organization or global), the timing measurement method (client-side or server-side), and the number of victim requests (denoted as 'v'). The clear separation of the response times for cache hits and misses across various models highlights the reliability of utilizing timing analysis to identify prompt caching.
> <details>
> <summary>read the caption</summary>
> Figure 3: Histograms of response times from the cache hit and cache miss procedures in APIs where we detected caching. The distributions of times are clearly distinguishable, with cache hits tending to be faster. Each histogram title states the API provider, model, level of cache sharing (per-org. or global), timing source (client-side or server-side timing), and the NumVictimRequests used, denoted v.
> </details>



![](https://arxiv.org/html/2502.07776/x4.png)

> 🔼 This figure displays precision-recall curves that evaluate the performance of distinguishing between cache hit and cache miss response times.  The positive class represents cache hits. The curves demonstrate that the method achieves near-perfect precision at moderate recall levels.  The Appendix includes similar curves for other APIs, which were also evaluated in the study.
> <details>
> <summary>read the caption</summary>
> Figure 4: Selected precision-recall curves for distinguishing between times from the cache hit and cache miss procedures. Cache hits are the positive class. The curves show that cache hits can be detected with near perfect precision up to moderate recall scores. Figure 6 in the appendix contains curves for other APIs.
> </details>



![](https://arxiv.org/html/2502.07776/x5.png)

> 🔼 This figure displays ablation studies on the effect of three factors on the average precision of detecting prompt caching: prompt length, prefix match length (proportion of the prompt used for matching), and model size.  Subfigures (a), (b), and (c) show that reducing either prompt length or prefix match length causes the average precision to decrease, eventually approaching that of random chance (0.5).  However, subfigure (d) shows that the model size (tested on the Llama 3.1 family of models) does not impact the detectability of prompt caching.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Ablations on the effects of PromptLength, PrefixFraction, and model size on the average precision. In (a)–(c), as the prompt length or prefix match length decreases, the average precision decreases to random chance. In (d), we detect caching across all model sizes, with no clear relationship between model size and average precision.
> </details>



![](https://arxiv.org/html/2502.07776/x6.png)

> 🔼 This figure displays precision-recall curves illustrating the performance of distinguishing between cache hits and misses using timing data from various Language Model APIs.  Each curve represents a different API, showing the trade-off between precision (correctly identifying cache hits) and recall (correctly identifying all actual cache hits).  The curves demonstrate that high precision (near perfect) can be achieved up to a moderate recall level.  It's important to note that the process for generating cache hits doesn't guarantee a hit every time (due to factors like server routing), which can impact the overall recall.
> <details>
> <summary>read the caption</summary>
> Figure 6: Precision-recall curves for distinguishing between times produced by the cache hit and cache miss procedures in APIs where we detected caching in our audits (Table 1). Cache hits are the positive class, and cache misses are the negative class. The curves show that cache hits can be detected with near perfect precision up to moderate recall scores. Note that our cache hit procedure attempts to produce cache hits but cannot guarantee cache hits (e.g., due to server routing), so some times in the cache hit distribution may actually be cache misses, which would hurt recall scores.
> </details>



![](https://arxiv.org/html/2502.07776/x7.png)

> 🔼 This figure displays ablation studies on the effects of different parameters on the statistical significance (p-values) of prompt caching detection.  Four experiments were performed, varying:  (a) The length of prompts in the 'same prompt' test (i.e., using identical prompts to induce cache hits). (b) The length of prompts in the 'same prefix, different suffix' test (i.e., using prompts with common prefixes to induce cache hits). (c) The length of the matching prefix in the 'same prefix, different suffix' test. (d) The size of the language model used in the test.  The results are shown in both linear and logarithmic scales for better visualization.  The key finding is that shorter prompt lengths or shorter matching prefixes lead to less statistically significant results (higher p-values) indicating a weaker ability to detect prompt caching. Model size, however, showed no discernible impact on the effectiveness of caching detection.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Ablations on the effects of PromptLength, PrefixFraction, and model size on the audit p-values. Each test is run using NumSamples=250NumSamples250\textsc{NumSamples}=250NumSamples = 250. The top and bottom rows display the p-values on linear and logarithmic scales, respectively. In (a)–(c), as the prompt length or prefix match length decreases, the p-values grow larger. In (d), we detect caching across all model sizes, with no clear relationship between model size and p-values.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.3.1.1">
<td class="ltx_td ltx_border_tt" id="S3.T2.3.1.1.1"></td>
<th class="ltx_td ltx_nopad_r ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.1.1.2"></th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.3.1.1.3">Same prompt</th>
</tr>
<tr class="ltx_tr" id="S3.T2.3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S3.T2.3.2.2.1">Provider</th>
<th class="ltx_td ltx_nopad_r ltx_align_left ltx_th ltx_th_column" id="S3.T2.3.2.2.2">Model</th>
<th class="ltx_td ltx_nopad_l ltx_align_center ltx_th ltx_th_column" id="S3.T2.3.2.2.3">Per-user</th>
</tr>
<tr class="ltx_tr" id="S3.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.3.3.1">Amazon</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.3.3.3.2">Claude 3 Haiku</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="S3.T2.3.3.3.3"><span class="ltx_text" id="S3.T2.3.3.3.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.4.4">
<td class="ltx_td ltx_align_left" id="S3.T2.3.4.4.1">Azure</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.4.4.2">GPT-4o mini</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.4.4.3"><span class="ltx_text" id="S3.T2.3.4.4.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.5.5">
<td class="ltx_td ltx_align_left" id="S3.T2.3.5.5.1">Cohere</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.5.5.2">Command R</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.5.5.3"><span class="ltx_text" id="S3.T2.3.5.5.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.6.6">
<td class="ltx_td ltx_align_left" id="S3.T2.3.6.6.1">Cohere</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.6.6.2">embed-english-v3.0</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.6.6.3"><span class="ltx_text" id="S3.T2.3.6.6.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.7.7">
<td class="ltx_td ltx_align_left" id="S3.T2.3.7.7.1">DeepSeek</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.7.7.2">DeepSeek Chat</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.7.7.3"><span class="ltx_text" id="S3.T2.3.7.7.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.8.8">
<td class="ltx_td ltx_align_left" id="S3.T2.3.8.8.1">Google</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.8.8.2">Gemini 1.5 Flash</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.8.8.3"><span class="ltx_text" id="S3.T2.3.8.8.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.9.9">
<td class="ltx_td ltx_align_left" id="S3.T2.3.9.9.1">Google</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.9.9.2">text-embedding-004</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.9.9.3"><span class="ltx_text" id="S3.T2.3.9.9.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.10.10">
<td class="ltx_td ltx_align_left" id="S3.T2.3.10.10.1">Groq</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.10.10.2">Llama 3 8B Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.10.10.3"><span class="ltx_text" id="S3.T2.3.10.10.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.11.11">
<td class="ltx_td ltx_align_left" id="S3.T2.3.11.11.1">Hyperbolic</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.11.11.2">Llama 3.1 8B Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.11.11.3"><span class="ltx_text" id="S3.T2.3.11.11.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.12.12">
<td class="ltx_td ltx_align_left" id="S3.T2.3.12.12.1">Mistral</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.12.12.2">Mistral Nemo</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.12.12.3"><span class="ltx_text" id="S3.T2.3.12.12.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.13.13">
<td class="ltx_td ltx_align_left" id="S3.T2.3.13.13.1">Mistral</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.13.13.2">Mistral Embed</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.13.13.3"><span class="ltx_text" id="S3.T2.3.13.13.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.14.14">
<td class="ltx_td ltx_align_left" id="S3.T2.3.14.14.1">OctoAI</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T2.3.14.14.2">Llama 3.1 8B Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="S3.T2.3.14.14.3"><span class="ltx_text" id="S3.T2.3.14.14.3.1" style="color:#FF0000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.15.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.3.15.15.1">Together</td>
<td class="ltx_td ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.3.15.15.2">Llama 3.1 8B Instruct</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="S3.T2.3.15.15.3"><span class="ltx_text" id="S3.T2.3.15.15.3.1" style="color:#FF0000;">✗</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an audit conducted on 17 Language Model APIs to detect prompt caching.  The audit specifically looked for evidence of prompt caching and determined which APIs did not exhibit prompt caching behavior. The symbol '✗' is used to indicate the absence of detected caching for each API tested.
> <details>
> <summary>read the caption</summary>
> Table 2:  Audit results for APIs where we did not detect prompt caching. ✗ denotes that caching was not detected.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T3.36">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T3.36.37.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T3.36.37.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T3.36.37.1.2"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A2.T3.36.37.1.3"><span class="ltx_text ltx_font_smallcaps" id="A2.T3.36.37.1.3.1">NumVictimRequests</span></td>
</tr>
<tr class="ltx_tr" id="A2.T3.36.38.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T3.36.38.2.1"></th>
<th class="ltx_td ltx_th ltx_th_row" id="A2.T3.36.38.2.2"></th>
<td class="ltx_td ltx_align_center" colspan="2" id="A2.T3.36.38.2.3">25</td>
</tr>
<tr class="ltx_tr" id="A2.T3.36.39.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.36.39.3.1">Provider</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.36.39.3.2">Model</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T3.36.39.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.36.39.3.3.1">
<span class="ltx_p" id="A2.T3.36.39.3.3.1.1">Client</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T3.36.39.3.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.36.39.3.4.1">
<span class="ltx_p" id="A2.T3.36.39.3.4.1.1">Server</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.1.1.2">Anthropic</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.1.1.3">Claude 3 Haiku</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T3.1.1.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.1.1.1">
<span class="ltx_p" id="A2.T3.1.1.1.1.1"><math alttext="7.8\text{\times}{10}^{-21}" class="ltx_Math" display="inline" id="A2.T3.1.1.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.1.1.1.1.1.m1.3a"><mrow id="A2.T3.1.1.1.1.1.m1.3.3.3" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.1.1.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml">7.8</mn><mtext id="A2.T3.1.1.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.1.1.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.1.1.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.1.1.1.1.1.m1.3.3.3.cmml">21</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.1.1.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.1.1.1.1.1.m1.3.3.3.cmml" xref="A2.T3.1.1.1.1.1.m1.3.3.3">7.8E-21</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.1.1.1.1.1.m1.3c">7.8\text{\times}{10}^{-21}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.1.1.1.1.1.m1.3d">start_ARG 7.8 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 21 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T3.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.1.1.4.1">
<span class="ltx_p" id="A2.T3.1.1.4.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.2.2.2">Azure</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.2.2.3">text-embedding-3-small</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.2.2.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.2.1.1">
<span class="ltx_p" id="A2.T3.2.2.1.1.1"><math alttext="1.7\text{\times}{10}^{-42}" class="ltx_Math" display="inline" id="A2.T3.2.2.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.2.2.1.1.1.m1.3a"><mrow id="A2.T3.2.2.1.1.1.m1.3.3.3" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.2.2.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml">1.7</mn><mtext id="A2.T3.2.2.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.2.2.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.2.2.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.2.2.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.2.2.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.2.2.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.2.2.1.1.1.m1.3.3.3.cmml">42</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.2.2.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.2.2.1.1.1.m1.3.3.3.cmml" xref="A2.T3.2.2.1.1.1.m1.3.3.3">1.7E-42</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.2.2.1.1.1.m1.3c">1.7\text{\times}{10}^{-42}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.2.2.1.1.1.m1.3d">start_ARG 1.7 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 42 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.2.2.4.1">
<span class="ltx_p" id="A2.T3.2.2.4.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.3.3.2">Deep Infra</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.3.3.3">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.3.3.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.3.3.1.1">
<span class="ltx_p" id="A2.T3.3.3.1.1.1"><math alttext="9.5\text{\times}{10}^{-116}" class="ltx_Math" display="inline" id="A2.T3.3.3.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.3.3.1.1.1.m1.3a"><mrow id="A2.T3.3.3.1.1.1.m1.3.3.3" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.3.3.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml">9.5</mn><mtext id="A2.T3.3.3.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.3.3.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.3.3.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.3.3.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.3.3.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.3.3.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.3.3.1.1.1.m1.3.3.3.cmml">116</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.3.3.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.3.3.1.1.1.m1.3.3.3.cmml" xref="A2.T3.3.3.1.1.1.m1.3.3.3">9.5E-116</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.3.3.1.1.1.m1.3c">9.5\text{\times}{10}^{-116}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.3.3.1.1.1.m1.3d">start_ARG 9.5 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 116 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.3.3.4.1">
<span class="ltx_p" id="A2.T3.3.3.4.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.5.5.3">Fireworks</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.5.5.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.4.4.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.4.4.1.1">
<span class="ltx_p" id="A2.T3.4.4.1.1.1"><math alttext="2.0\text{\times}{10}^{-80}" class="ltx_Math" display="inline" id="A2.T3.4.4.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.4.4.1.1.1.m1.3a"><mrow id="A2.T3.4.4.1.1.1.m1.3.3.3" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.4.4.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml">2.0</mn><mtext id="A2.T3.4.4.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.4.4.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.4.4.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.4.4.1.1.1.m1.3.3.3.cmml">80</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.4.4.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.4.4.1.1.1.m1.3.3.3.cmml" xref="A2.T3.4.4.1.1.1.m1.3.3.3">2.0E-80</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.4.4.1.1.1.m1.3c">2.0\text{\times}{10}^{-80}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.4.4.1.1.1.m1.3d">start_ARG 2.0 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 80 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.5.5.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.5.5.2.1">
<span class="ltx_p" id="A2.T3.5.5.2.1.1"><math alttext="4.7\text{\times}{10}^{-109}" class="ltx_Math" display="inline" id="A2.T3.5.5.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.5.5.2.1.1.m1.3a"><mrow id="A2.T3.5.5.2.1.1.m1.3.3.3" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.5.5.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml">4.7</mn><mtext id="A2.T3.5.5.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.5.5.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.5.5.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml"><mo id="A2.T3.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.5.5.2.1.1.m1.3.3.3.cmml">109</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.5.5.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.5.5.2.1.1.m1.3.3.3.cmml" xref="A2.T3.5.5.2.1.1.m1.3.3.3">4.7E-109</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.5.5.2.1.1.m1.3c">4.7\text{\times}{10}^{-109}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.5.5.2.1.1.m1.3d">start_ARG 4.7 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 109 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.7.7.3">Lepton</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.7.7.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.6.6.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.6.6.1.1">
<span class="ltx_p" id="A2.T3.6.6.1.1.1"><math alttext="2.2\text{\times}{10}^{-138}" class="ltx_Math" display="inline" id="A2.T3.6.6.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.6.6.1.1.1.m1.3a"><mrow id="A2.T3.6.6.1.1.1.m1.3.3.3" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.6.6.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml">2.2</mn><mtext id="A2.T3.6.6.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.6.6.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.6.6.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.6.6.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.6.6.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.6.6.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.6.6.1.1.1.m1.3.3.3.cmml">138</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.6.6.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.6.6.1.1.1.m1.3.3.3.cmml" xref="A2.T3.6.6.1.1.1.m1.3.3.3">2.2E-138</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.6.6.1.1.1.m1.3c">2.2\text{\times}{10}^{-138}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.6.6.1.1.1.m1.3d">start_ARG 2.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 138 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.7.7.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.7.7.2.1">
<span class="ltx_p" id="A2.T3.7.7.2.1.1"><math alttext="2.2\text{\times}{10}^{-138}" class="ltx_Math" display="inline" id="A2.T3.7.7.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.7.7.2.1.1.m1.3a"><mrow id="A2.T3.7.7.2.1.1.m1.3.3.3" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.7.7.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml">2.2</mn><mtext id="A2.T3.7.7.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.7.7.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.7.7.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.7.7.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml"><mo id="A2.T3.7.7.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.7.7.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.7.7.2.1.1.m1.3.3.3.cmml">138</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.7.7.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.7.7.2.1.1.m1.3.3.3.cmml" xref="A2.T3.7.7.2.1.1.m1.3.3.3">2.2E-138</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.7.7.2.1.1.m1.3c">2.2\text{\times}{10}^{-138}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.7.7.2.1.1.m1.3d">start_ARG 2.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 138 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.9.9.3">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.9.9.4">GPT-4o mini</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.8.8.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.8.8.1.1">
<span class="ltx_p" id="A2.T3.8.8.1.1.1"><math alttext="2.4\text{\times}{10}^{-66}" class="ltx_Math" display="inline" id="A2.T3.8.8.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.8.8.1.1.1.m1.3a"><mrow id="A2.T3.8.8.1.1.1.m1.3.3.3" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.8.8.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml">2.4</mn><mtext id="A2.T3.8.8.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.8.8.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.8.8.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.8.8.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.8.8.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.8.8.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.8.8.1.1.1.m1.3.3.3.cmml">66</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.8.8.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.8.8.1.1.1.m1.3.3.3.cmml" xref="A2.T3.8.8.1.1.1.m1.3.3.3">2.4E-66</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.8.8.1.1.1.m1.3c">2.4\text{\times}{10}^{-66}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.8.8.1.1.1.m1.3d">start_ARG 2.4 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 66 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.9.9.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.9.9.2.1">
<span class="ltx_p" id="A2.T3.9.9.2.1.1"><math alttext="2.9\text{\times}{10}^{-105}" class="ltx_Math" display="inline" id="A2.T3.9.9.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.9.9.2.1.1.m1.3a"><mrow id="A2.T3.9.9.2.1.1.m1.3.3.3" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.9.9.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml">2.9</mn><mtext id="A2.T3.9.9.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.9.9.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.9.9.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.9.9.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml"><mo id="A2.T3.9.9.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.9.9.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.9.9.2.1.1.m1.3.3.3.cmml">105</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.9.9.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.9.9.2.1.1.m1.3.3.3.cmml" xref="A2.T3.9.9.2.1.1.m1.3.3.3">2.9E-105</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.9.9.2.1.1.m1.3c">2.9\text{\times}{10}^{-105}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.9.9.2.1.1.m1.3d">start_ARG 2.9 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 105 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.11.11.3">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.11.11.4">text-embedding-3-small</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.10.10.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.10.10.1.1">
<span class="ltx_p" id="A2.T3.10.10.1.1.1"><math alttext="7.6\text{\times}{10}^{-09}" class="ltx_Math" display="inline" id="A2.T3.10.10.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.10.10.1.1.1.m1.3a"><mrow id="A2.T3.10.10.1.1.1.m1.3.3.3" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.10.10.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml">7.6</mn><mtext id="A2.T3.10.10.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.10.10.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.10.10.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.10.10.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.10.10.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.10.10.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.10.10.1.1.1.m1.3.3.3.cmml">09</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.10.10.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.10.10.1.1.1.m1.3.3.3.cmml" xref="A2.T3.10.10.1.1.1.m1.3.3.3">7.6E-09</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.10.10.1.1.1.m1.3c">7.6\text{\times}{10}^{-09}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.10.10.1.1.1.m1.3d">start_ARG 7.6 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 09 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.11.11.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.11.11.2.1">
<span class="ltx_p" id="A2.T3.11.11.2.1.1"><math alttext="2.3\text{\times}{10}^{-10}" class="ltx_Math" display="inline" id="A2.T3.11.11.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.11.11.2.1.1.m1.3a"><mrow id="A2.T3.11.11.2.1.1.m1.3.3.3" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.11.11.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml">2.3</mn><mtext id="A2.T3.11.11.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.11.11.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml"><mn id="A2.T3.11.11.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.11.11.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml"><mo id="A2.T3.11.11.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.11.11.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.11.11.2.1.1.m1.3.3.3.cmml">10</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.11.11.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.11.11.2.1.1.m1.3.3.3.cmml" xref="A2.T3.11.11.2.1.1.m1.3.3.3">2.3E-10</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.11.11.2.1.1.m1.3c">2.3\text{\times}{10}^{-10}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.11.11.2.1.1.m1.3d">start_ARG 2.3 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 10 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.12.12.2">Perplexity</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.12.12.3">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.12.12.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.12.12.1.1">
<span class="ltx_p" id="A2.T3.12.12.1.1.1"><math alttext="1.9\text{\times}{10}^{-90}" class="ltx_Math" display="inline" id="A2.T3.12.12.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.12.12.1.1.1.m1.3a"><mrow id="A2.T3.12.12.1.1.1.m1.3.3.3" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.12.12.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml">1.9</mn><mtext id="A2.T3.12.12.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.12.12.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.12.12.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.12.12.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.12.12.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.12.12.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.12.12.1.1.1.m1.3.3.3.cmml">90</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.12.12.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.12.12.1.1.1.m1.3.3.3.cmml" xref="A2.T3.12.12.1.1.1.m1.3.3.3">1.9E-90</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.12.12.1.1.1.m1.3c">1.9\text{\times}{10}^{-90}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.12.12.1.1.1.m1.3d">start_ARG 1.9 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 90 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.12.12.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.12.12.4.1">
<span class="ltx_p" id="A2.T3.12.12.4.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.13.13.2">Replicate</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.13.13.3">Llama 3 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.13.13.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.13.13.4.1">
<span class="ltx_p" id="A2.T3.13.13.4.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.13.13.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.13.13.1.1">
<span class="ltx_p" id="A2.T3.13.13.1.1.1"><math alttext="2.2\text{\times}{10}^{-140}" class="ltx_Math" display="inline" id="A2.T3.13.13.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T3.13.13.1.1.1.m1.3a"><mrow id="A2.T3.13.13.1.1.1.m1.3.3.3" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.13.13.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml">2.2</mn><mtext id="A2.T3.13.13.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T3.13.13.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml"><mn id="A2.T3.13.13.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T3.13.13.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml"><mo id="A2.T3.13.13.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T3.13.13.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T3.13.13.1.1.1.m1.3.3.3.cmml">140</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T3.13.13.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T3.13.13.1.1.1.m1.3.3.3.cmml" xref="A2.T3.13.13.1.1.1.m1.3.3.3">2.2E-140</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.13.13.1.1.1.m1.3c">2.2\text{\times}{10}^{-140}</annotation><annotation encoding="application/x-llamapun" id="A2.T3.13.13.1.1.1.m1.3d">start_ARG 2.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 140 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.15.15.3">Amazon</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T3.15.15.4">Claude 3 Haiku</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T3.14.14.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.14.14.1.1">
<span class="ltx_p" id="A2.T3.14.14.1.1.1"><math alttext="0.27" class="ltx_Math" display="inline" id="A2.T3.14.14.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.14.14.1.1.1.m1.1a"><mn id="A2.T3.14.14.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.14.14.1.1.1.m1.1.1.cmml">0.27</mn><annotation-xml encoding="MathML-Content" id="A2.T3.14.14.1.1.1.m1.1b"><cn id="A2.T3.14.14.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.14.14.1.1.1.m1.1.1">0.27</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.14.14.1.1.1.m1.1c">0.27</annotation><annotation encoding="application/x-llamapun" id="A2.T3.14.14.1.1.1.m1.1d">0.27</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T3.15.15.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.15.15.2.1">
<span class="ltx_p" id="A2.T3.15.15.2.1.1"><math alttext="0.51" class="ltx_Math" display="inline" id="A2.T3.15.15.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.15.15.2.1.1.m1.1a"><mn id="A2.T3.15.15.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.15.15.2.1.1.m1.1.1.cmml">0.51</mn><annotation-xml encoding="MathML-Content" id="A2.T3.15.15.2.1.1.m1.1b"><cn id="A2.T3.15.15.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.15.15.2.1.1.m1.1.1">0.51</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.15.15.2.1.1.m1.1c">0.51</annotation><annotation encoding="application/x-llamapun" id="A2.T3.15.15.2.1.1.m1.1d">0.51</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.16.16.2">Azure</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.16.16.3">GPT-4o mini</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.16.16.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.16.16.1.1">
<span class="ltx_p" id="A2.T3.16.16.1.1.1"><math alttext="0.95" class="ltx_Math" display="inline" id="A2.T3.16.16.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.16.16.1.1.1.m1.1a"><mn id="A2.T3.16.16.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.16.16.1.1.1.m1.1.1.cmml">0.95</mn><annotation-xml encoding="MathML-Content" id="A2.T3.16.16.1.1.1.m1.1b"><cn id="A2.T3.16.16.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.16.16.1.1.1.m1.1.1">0.95</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.16.16.1.1.1.m1.1c">0.95</annotation><annotation encoding="application/x-llamapun" id="A2.T3.16.16.1.1.1.m1.1d">0.95</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.16.16.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.16.16.4.1">
<span class="ltx_p" id="A2.T3.16.16.4.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.18.18.3">Cohere</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.18.18.4">Command R</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.17.17.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.17.17.1.1">
<span class="ltx_p" id="A2.T3.17.17.1.1.1"><math alttext="0.62" class="ltx_Math" display="inline" id="A2.T3.17.17.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.17.17.1.1.1.m1.1a"><mn id="A2.T3.17.17.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.17.17.1.1.1.m1.1.1.cmml">0.62</mn><annotation-xml encoding="MathML-Content" id="A2.T3.17.17.1.1.1.m1.1b"><cn id="A2.T3.17.17.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.17.17.1.1.1.m1.1.1">0.62</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.17.17.1.1.1.m1.1c">0.62</annotation><annotation encoding="application/x-llamapun" id="A2.T3.17.17.1.1.1.m1.1d">0.62</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.18.18.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.18.18.2.1">
<span class="ltx_p" id="A2.T3.18.18.2.1.1"><math alttext="0.72" class="ltx_Math" display="inline" id="A2.T3.18.18.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.18.18.2.1.1.m1.1a"><mn id="A2.T3.18.18.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.18.18.2.1.1.m1.1.1.cmml">0.72</mn><annotation-xml encoding="MathML-Content" id="A2.T3.18.18.2.1.1.m1.1b"><cn id="A2.T3.18.18.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.18.18.2.1.1.m1.1.1">0.72</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.18.18.2.1.1.m1.1c">0.72</annotation><annotation encoding="application/x-llamapun" id="A2.T3.18.18.2.1.1.m1.1d">0.72</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.20.20.3">Cohere</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.20.20.4">embed-english-v3.0</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.19.19.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.19.19.1.1">
<span class="ltx_p" id="A2.T3.19.19.1.1.1"><math alttext="0.41" class="ltx_Math" display="inline" id="A2.T3.19.19.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.19.19.1.1.1.m1.1a"><mn id="A2.T3.19.19.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.19.19.1.1.1.m1.1.1.cmml">0.41</mn><annotation-xml encoding="MathML-Content" id="A2.T3.19.19.1.1.1.m1.1b"><cn id="A2.T3.19.19.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.19.19.1.1.1.m1.1.1">0.41</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.19.19.1.1.1.m1.1c">0.41</annotation><annotation encoding="application/x-llamapun" id="A2.T3.19.19.1.1.1.m1.1d">0.41</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.20.20.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.20.20.2.1">
<span class="ltx_p" id="A2.T3.20.20.2.1.1"><math alttext="0.56" class="ltx_Math" display="inline" id="A2.T3.20.20.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.20.20.2.1.1.m1.1a"><mn id="A2.T3.20.20.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.20.20.2.1.1.m1.1.1.cmml">0.56</mn><annotation-xml encoding="MathML-Content" id="A2.T3.20.20.2.1.1.m1.1b"><cn id="A2.T3.20.20.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.20.20.2.1.1.m1.1.1">0.56</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.20.20.2.1.1.m1.1c">0.56</annotation><annotation encoding="application/x-llamapun" id="A2.T3.20.20.2.1.1.m1.1d">0.56</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.21.21.2">DeepSeek</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.21.21.3">DeepSeek Chat</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.21.21.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.21.21.1.1">
<span class="ltx_p" id="A2.T3.21.21.1.1.1"><math alttext="0.75" class="ltx_Math" display="inline" id="A2.T3.21.21.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.21.21.1.1.1.m1.1a"><mn id="A2.T3.21.21.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.21.21.1.1.1.m1.1.1.cmml">0.75</mn><annotation-xml encoding="MathML-Content" id="A2.T3.21.21.1.1.1.m1.1b"><cn id="A2.T3.21.21.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.21.21.1.1.1.m1.1.1">0.75</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.21.21.1.1.1.m1.1c">0.75</annotation><annotation encoding="application/x-llamapun" id="A2.T3.21.21.1.1.1.m1.1d">0.75</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.21.21.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.21.21.4.1">
<span class="ltx_p" id="A2.T3.21.21.4.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.23.23.3">Google</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.23.23.4">Gemini 1.5 Flash</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.22.22.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.22.22.1.1">
<span class="ltx_p" id="A2.T3.22.22.1.1.1"><math alttext="0.17" class="ltx_Math" display="inline" id="A2.T3.22.22.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.22.22.1.1.1.m1.1a"><mn id="A2.T3.22.22.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.22.22.1.1.1.m1.1.1.cmml">0.17</mn><annotation-xml encoding="MathML-Content" id="A2.T3.22.22.1.1.1.m1.1b"><cn id="A2.T3.22.22.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.22.22.1.1.1.m1.1.1">0.17</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.22.22.1.1.1.m1.1c">0.17</annotation><annotation encoding="application/x-llamapun" id="A2.T3.22.22.1.1.1.m1.1d">0.17</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.23.23.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.23.23.2.1">
<span class="ltx_p" id="A2.T3.23.23.2.1.1"><math alttext="0.20" class="ltx_Math" display="inline" id="A2.T3.23.23.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.23.23.2.1.1.m1.1a"><mn id="A2.T3.23.23.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.23.23.2.1.1.m1.1.1.cmml">0.20</mn><annotation-xml encoding="MathML-Content" id="A2.T3.23.23.2.1.1.m1.1b"><cn id="A2.T3.23.23.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.23.23.2.1.1.m1.1.1">0.20</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.23.23.2.1.1.m1.1c">0.20</annotation><annotation encoding="application/x-llamapun" id="A2.T3.23.23.2.1.1.m1.1d">0.20</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.25.25.3">Google</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.25.25.4">text-embedding-004</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.24.24.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.24.24.1.1">
<span class="ltx_p" id="A2.T3.24.24.1.1.1"><math alttext="0.20" class="ltx_Math" display="inline" id="A2.T3.24.24.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.24.24.1.1.1.m1.1a"><mn id="A2.T3.24.24.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.24.24.1.1.1.m1.1.1.cmml">0.20</mn><annotation-xml encoding="MathML-Content" id="A2.T3.24.24.1.1.1.m1.1b"><cn id="A2.T3.24.24.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.24.24.1.1.1.m1.1.1">0.20</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.24.24.1.1.1.m1.1c">0.20</annotation><annotation encoding="application/x-llamapun" id="A2.T3.24.24.1.1.1.m1.1d">0.20</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.25.25.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.25.25.2.1">
<span class="ltx_p" id="A2.T3.25.25.2.1.1"><math alttext="0.24" class="ltx_Math" display="inline" id="A2.T3.25.25.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.25.25.2.1.1.m1.1a"><mn id="A2.T3.25.25.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.25.25.2.1.1.m1.1.1.cmml">0.24</mn><annotation-xml encoding="MathML-Content" id="A2.T3.25.25.2.1.1.m1.1b"><cn id="A2.T3.25.25.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.25.25.2.1.1.m1.1.1">0.24</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.25.25.2.1.1.m1.1c">0.24</annotation><annotation encoding="application/x-llamapun" id="A2.T3.25.25.2.1.1.m1.1d">0.24</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.27.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.27.27.3">Groq</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.27.27.4">Llama 3 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.26.26.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.26.26.1.1">
<span class="ltx_p" id="A2.T3.26.26.1.1.1"><math alttext="0.41" class="ltx_Math" display="inline" id="A2.T3.26.26.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.26.26.1.1.1.m1.1a"><mn id="A2.T3.26.26.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.26.26.1.1.1.m1.1.1.cmml">0.41</mn><annotation-xml encoding="MathML-Content" id="A2.T3.26.26.1.1.1.m1.1b"><cn id="A2.T3.26.26.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.26.26.1.1.1.m1.1.1">0.41</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.26.26.1.1.1.m1.1c">0.41</annotation><annotation encoding="application/x-llamapun" id="A2.T3.26.26.1.1.1.m1.1d">0.41</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.27.27.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.27.27.2.1">
<span class="ltx_p" id="A2.T3.27.27.2.1.1"><math alttext="0.51" class="ltx_Math" display="inline" id="A2.T3.27.27.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.27.27.2.1.1.m1.1a"><mn id="A2.T3.27.27.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.27.27.2.1.1.m1.1.1.cmml">0.51</mn><annotation-xml encoding="MathML-Content" id="A2.T3.27.27.2.1.1.m1.1b"><cn id="A2.T3.27.27.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.27.27.2.1.1.m1.1.1">0.51</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.27.27.2.1.1.m1.1c">0.51</annotation><annotation encoding="application/x-llamapun" id="A2.T3.27.27.2.1.1.m1.1d">0.51</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.28.28.2">Hyperbolic</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.28.28.3">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.28.28.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.28.28.1.1">
<span class="ltx_p" id="A2.T3.28.28.1.1.1"><math alttext="0.72" class="ltx_Math" display="inline" id="A2.T3.28.28.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.28.28.1.1.1.m1.1a"><mn id="A2.T3.28.28.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.28.28.1.1.1.m1.1.1.cmml">0.72</mn><annotation-xml encoding="MathML-Content" id="A2.T3.28.28.1.1.1.m1.1b"><cn id="A2.T3.28.28.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.28.28.1.1.1.m1.1.1">0.72</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.28.28.1.1.1.m1.1c">0.72</annotation><annotation encoding="application/x-llamapun" id="A2.T3.28.28.1.1.1.m1.1d">0.72</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.28.28.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.28.28.4.1">
<span class="ltx_p" id="A2.T3.28.28.4.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.30.30.3">Mistral</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.30.30.4">Mistral Nemo</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.29.29.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.29.29.1.1">
<span class="ltx_p" id="A2.T3.29.29.1.1.1"><math alttext="0.56" class="ltx_Math" display="inline" id="A2.T3.29.29.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.29.29.1.1.1.m1.1a"><mn id="A2.T3.29.29.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.29.29.1.1.1.m1.1.1.cmml">0.56</mn><annotation-xml encoding="MathML-Content" id="A2.T3.29.29.1.1.1.m1.1b"><cn id="A2.T3.29.29.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.29.29.1.1.1.m1.1.1">0.56</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.29.29.1.1.1.m1.1c">0.56</annotation><annotation encoding="application/x-llamapun" id="A2.T3.29.29.1.1.1.m1.1d">0.56</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.30.30.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.30.30.2.1">
<span class="ltx_p" id="A2.T3.30.30.2.1.1"><math alttext="0.96" class="ltx_Math" display="inline" id="A2.T3.30.30.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.30.30.2.1.1.m1.1a"><mn id="A2.T3.30.30.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.30.30.2.1.1.m1.1.1.cmml">0.96</mn><annotation-xml encoding="MathML-Content" id="A2.T3.30.30.2.1.1.m1.1b"><cn id="A2.T3.30.30.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.30.30.2.1.1.m1.1.1">0.96</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.30.30.2.1.1.m1.1c">0.96</annotation><annotation encoding="application/x-llamapun" id="A2.T3.30.30.2.1.1.m1.1d">0.96</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.32.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.32.32.3">Mistral</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.32.32.4">Mistral Embed</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.31.31.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.31.31.1.1">
<span class="ltx_p" id="A2.T3.31.31.1.1.1"><math alttext="0.67" class="ltx_Math" display="inline" id="A2.T3.31.31.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.31.31.1.1.1.m1.1a"><mn id="A2.T3.31.31.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.31.31.1.1.1.m1.1.1.cmml">0.67</mn><annotation-xml encoding="MathML-Content" id="A2.T3.31.31.1.1.1.m1.1b"><cn id="A2.T3.31.31.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.31.31.1.1.1.m1.1.1">0.67</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.31.31.1.1.1.m1.1c">0.67</annotation><annotation encoding="application/x-llamapun" id="A2.T3.31.31.1.1.1.m1.1d">0.67</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.32.32.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.32.32.2.1">
<span class="ltx_p" id="A2.T3.32.32.2.1.1"><math alttext="0.91" class="ltx_Math" display="inline" id="A2.T3.32.32.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.32.32.2.1.1.m1.1a"><mn id="A2.T3.32.32.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.32.32.2.1.1.m1.1.1.cmml">0.91</mn><annotation-xml encoding="MathML-Content" id="A2.T3.32.32.2.1.1.m1.1b"><cn id="A2.T3.32.32.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.32.32.2.1.1.m1.1.1">0.91</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.32.32.2.1.1.m1.1c">0.91</annotation><annotation encoding="application/x-llamapun" id="A2.T3.32.32.2.1.1.m1.1d">0.91</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.34.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.34.34.3">OctoAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T3.34.34.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T3.33.33.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.33.33.1.1">
<span class="ltx_p" id="A2.T3.33.33.1.1.1"><math alttext="0.32" class="ltx_Math" display="inline" id="A2.T3.33.33.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.33.33.1.1.1.m1.1a"><mn id="A2.T3.33.33.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.33.33.1.1.1.m1.1.1.cmml">0.32</mn><annotation-xml encoding="MathML-Content" id="A2.T3.33.33.1.1.1.m1.1b"><cn id="A2.T3.33.33.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.33.33.1.1.1.m1.1.1">0.32</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.33.33.1.1.1.m1.1c">0.32</annotation><annotation encoding="application/x-llamapun" id="A2.T3.33.33.1.1.1.m1.1d">0.32</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T3.34.34.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.34.34.2.1">
<span class="ltx_p" id="A2.T3.34.34.2.1.1"><math alttext="0.27" class="ltx_Math" display="inline" id="A2.T3.34.34.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.34.34.2.1.1.m1.1a"><mn id="A2.T3.34.34.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.34.34.2.1.1.m1.1.1.cmml">0.27</mn><annotation-xml encoding="MathML-Content" id="A2.T3.34.34.2.1.1.m1.1b"><cn id="A2.T3.34.34.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.34.34.2.1.1.m1.1.1">0.27</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.34.34.2.1.1.m1.1c">0.27</annotation><annotation encoding="application/x-llamapun" id="A2.T3.34.34.2.1.1.m1.1d">0.27</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T3.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T3.36.36.3">Together</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T3.36.36.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T3.35.35.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.35.35.1.1">
<span class="ltx_p" id="A2.T3.35.35.1.1.1"><math alttext="0.51" class="ltx_Math" display="inline" id="A2.T3.35.35.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.35.35.1.1.1.m1.1a"><mn id="A2.T3.35.35.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.35.35.1.1.1.m1.1.1.cmml">0.51</mn><annotation-xml encoding="MathML-Content" id="A2.T3.35.35.1.1.1.m1.1b"><cn id="A2.T3.35.35.1.1.1.m1.1.1.cmml" type="float" xref="A2.T3.35.35.1.1.1.m1.1.1">0.51</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.35.35.1.1.1.m1.1c">0.51</annotation><annotation encoding="application/x-llamapun" id="A2.T3.35.35.1.1.1.m1.1d">0.51</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T3.36.36.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T3.36.36.2.1">
<span class="ltx_p" id="A2.T3.36.36.2.1.1"><math alttext="0.96" class="ltx_Math" display="inline" id="A2.T3.36.36.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T3.36.36.2.1.1.m1.1a"><mn id="A2.T3.36.36.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T3.36.36.2.1.1.m1.1.1.cmml">0.96</mn><annotation-xml encoding="MathML-Content" id="A2.T3.36.36.2.1.1.m1.1b"><cn id="A2.T3.36.36.2.1.1.m1.1.1.cmml" type="float" xref="A2.T3.36.36.2.1.1.m1.1.1">0.96</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T3.36.36.2.1.1.m1.1c">0.96</annotation><annotation encoding="application/x-llamapun" id="A2.T3.36.36.2.1.1.m1.1d">0.96</annotation></semantics></math></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a statistical hypothesis test used to detect per-user prompt caching in 17 different LLMs. Each LLM was tested using two procedures: one designed to create cache hits, and one designed to create cache misses.  The table shows the p-values generated by these tests for different LLMs (providers and their specific models) across varying numbers of victim requests (NumVictimRequests) and using both client-side and server-side timing methods.  Significant p-values (indicating evidence of caching) are highlighted in green, while non-significant p-values are in red.  A dash indicates that a particular timing method was unavailable for a given API.  The LLMs are grouped based on whether or not caching was detected at this level, and then alphabetically sorted within each group.
> <details>
> <summary>read the caption</summary>
> Table 3: P-values from level 1 of our audits: same prompt, per-user caching. Each column shows one combination of NumVictimRequests and timing source (client-side or server-side timing). Green indicates a significant p-value, after performing the appropriate Bonferroni corrections. Red indicates a p-value that is not significant. “—” indicates that the given timing source was not available for the API. APIs are grouped by whether caching was detected in this level and sorted alphabetically within the groups.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.22.22">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.22.22.23.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T4.22.22.23.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T4.22.22.23.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T4.22.22.23.1.3"><span class="ltx_text ltx_font_smallcaps" id="A2.T4.22.22.23.1.3.1">NumVictimRequests</span></th>
</tr>
<tr class="ltx_tr" id="A2.T4.22.22.24.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T4.22.22.24.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A2.T4.22.22.24.2.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="A2.T4.22.22.24.2.3">1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="A2.T4.22.22.24.2.4">5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="A2.T4.22.22.24.2.5">25</th>
</tr>
<tr class="ltx_tr" id="A2.T4.22.22.25.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T4.22.22.25.3.1">Provider</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T4.22.22.25.3.2">Model</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T4.22.22.25.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.25.3.3.1">
<span class="ltx_p" id="A2.T4.22.22.25.3.3.1.1">Client</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T4.22.22.25.3.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.25.3.4.1">
<span class="ltx_p" id="A2.T4.22.22.25.3.4.1.1">Server</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T4.22.22.25.3.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.25.3.5.1">
<span class="ltx_p" id="A2.T4.22.22.25.3.5.1.1">Client</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T4.22.22.25.3.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.25.3.6.1">
<span class="ltx_p" id="A2.T4.22.22.25.3.6.1.1">Server</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T4.22.22.25.3.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.25.3.7.1">
<span class="ltx_p" id="A2.T4.22.22.25.3.7.1.1">Client</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T4.22.22.25.3.8">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.25.3.8.1">
<span class="ltx_p" id="A2.T4.22.22.25.3.8.1.1">Server</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T4.1.1.1.2">Anthropic</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T4.1.1.1.3">Claude 3 Haiku</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T4.1.1.1.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.1.1.1.1">
<span class="ltx_p" id="A2.T4.1.1.1.1.1.1"><math alttext="9.6\text{\times}{10}^{-37}" class="ltx_Math" display="inline" id="A2.T4.1.1.1.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.1.1.1.1.1.1.m1.3a"><mrow id="A2.T4.1.1.1.1.1.1.m1.3.3.3" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.1.1.1.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml">9.6</mn><mtext id="A2.T4.1.1.1.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.1.1.1.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml"><mo id="A2.T4.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml">37</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.1.1.1.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.1.1.1.1.1.1.m1.3.3.3.cmml" xref="A2.T4.1.1.1.1.1.1.m1.3.3.3">9.6E-37</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.1.1.1.1.1.1.m1.3c">9.6\text{\times}{10}^{-37}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.1.1.1.1.1.1.m1.3d">start_ARG 9.6 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 37 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T4.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.1.1.4.1">
<span class="ltx_p" id="A2.T4.1.1.1.4.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T4.1.1.1.5"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T4.1.1.1.6"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T4.1.1.1.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T4.1.1.1.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T4.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.4.4.4.4">Azure</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.4.4.4.5">text-embedding-3-small</th>
<td class="ltx_td ltx_align_justify" id="A2.T4.2.2.2.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.2.2.1.1">
<span class="ltx_p" id="A2.T4.2.2.2.1.1.1"><math alttext="0.20" class="ltx_Math" display="inline" id="A2.T4.2.2.2.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.2.2.2.1.1.1.m1.1a"><mn id="A2.T4.2.2.2.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.2.2.2.1.1.1.m1.1.1.cmml">0.20</mn><annotation-xml encoding="MathML-Content" id="A2.T4.2.2.2.1.1.1.m1.1b"><cn id="A2.T4.2.2.2.1.1.1.m1.1.1.cmml" type="float" xref="A2.T4.2.2.2.1.1.1.m1.1.1">0.20</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.2.2.2.1.1.1.m1.1c">0.20</annotation><annotation encoding="application/x-llamapun" id="A2.T4.2.2.2.1.1.1.m1.1d">0.20</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.4.4.4.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.4.4.6.1">
<span class="ltx_p" id="A2.T4.4.4.4.6.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.3.3.3.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.3.3.2.1">
<span class="ltx_p" id="A2.T4.3.3.3.2.1.1"><math alttext="6.0\text{\times}{10}^{-04}" class="ltx_Math" display="inline" id="A2.T4.3.3.3.2.1.1.m1.3" style="background-color:#FFBFBF;"><semantics id="A2.T4.3.3.3.2.1.1.m1.3a"><mrow id="A2.T4.3.3.3.2.1.1.m1.3.3.3" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.3.3.3.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#FFBFBF" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml">6.0</mn><mtext id="A2.T4.3.3.3.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#FFBFBF" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.3.3.3.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#FFBFBF" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml"><mo id="A2.T4.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#FFBFBF" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#FFBFBF" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml">04</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.3.3.3.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.3.3.3.2.1.1.m1.3.3.3.cmml" xref="A2.T4.3.3.3.2.1.1.m1.3.3.3">6.0E-04</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.3.3.3.2.1.1.m1.3c">6.0\text{\times}{10}^{-04}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.3.3.3.2.1.1.m1.3d">start_ARG 6.0 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 04 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.4.4.4.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.4.4.7.1">
<span class="ltx_p" id="A2.T4.4.4.4.7.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.4.4.4.3" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.4.4.3.1">
<span class="ltx_p" id="A2.T4.4.4.4.3.1.1"><math alttext="6.9\text{\times}{10}^{-42}" class="ltx_Math" display="inline" id="A2.T4.4.4.4.3.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.4.4.4.3.1.1.m1.3a"><mrow id="A2.T4.4.4.4.3.1.1.m1.3.3.3" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml"><mn id="A2.T4.4.4.4.3.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml">6.9</mn><mtext id="A2.T4.4.4.4.3.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.4.4.4.3.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml"><mn id="A2.T4.4.4.4.3.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.4.4.4.3.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml"><mo id="A2.T4.4.4.4.3.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.4.4.4.3.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml">42</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.4.4.4.3.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.4.4.4.3.1.1.m1.3.3.3.cmml" xref="A2.T4.4.4.4.3.1.1.m1.3.3.3">6.9E-42</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.4.4.4.3.1.1.m1.3c">6.9\text{\times}{10}^{-42}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.4.4.4.3.1.1.m1.3d">start_ARG 6.9 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 42 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.4.4.4.8">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.4.4.4.8.1">
<span class="ltx_p" id="A2.T4.4.4.4.8.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.6.6.6.3">Deep Infra</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.6.6.6.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T4.5.5.5.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.5.5.5.1.1">
<span class="ltx_p" id="A2.T4.5.5.5.1.1.1"><math alttext="0.03" class="ltx_Math" display="inline" id="A2.T4.5.5.5.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.5.5.5.1.1.1.m1.1a"><mn id="A2.T4.5.5.5.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.5.5.5.1.1.1.m1.1.1.cmml">0.03</mn><annotation-xml encoding="MathML-Content" id="A2.T4.5.5.5.1.1.1.m1.1b"><cn id="A2.T4.5.5.5.1.1.1.m1.1.1.cmml" type="float" xref="A2.T4.5.5.5.1.1.1.m1.1.1">0.03</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.5.5.5.1.1.1.m1.1c">0.03</annotation><annotation encoding="application/x-llamapun" id="A2.T4.5.5.5.1.1.1.m1.1d">0.03</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.6.6.6.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.6.6.6.5.1">
<span class="ltx_p" id="A2.T4.6.6.6.5.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.6.6.6.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.6.6.6.2.1">
<span class="ltx_p" id="A2.T4.6.6.6.2.1.1"><math alttext="5.0\text{\times}{10}^{-22}" class="ltx_Math" display="inline" id="A2.T4.6.6.6.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.6.6.6.2.1.1.m1.3a"><mrow id="A2.T4.6.6.6.2.1.1.m1.3.3.3" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.6.6.6.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml">5.0</mn><mtext id="A2.T4.6.6.6.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.6.6.6.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.6.6.6.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.6.6.6.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml"><mo id="A2.T4.6.6.6.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.6.6.6.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml">22</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.6.6.6.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.6.6.6.2.1.1.m1.3.3.3.cmml" xref="A2.T4.6.6.6.2.1.1.m1.3.3.3">5.0E-22</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.6.6.6.2.1.1.m1.3c">5.0\text{\times}{10}^{-22}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.6.6.6.2.1.1.m1.3d">start_ARG 5.0 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 22 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.6.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.6.6.6.6.1">
<span class="ltx_p" id="A2.T4.6.6.6.6.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.6.6.6.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.6.6.6.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T4.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.8.8.3">Fireworks</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.8.8.8.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T4.7.7.7.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.7.7.7.1.1">
<span class="ltx_p" id="A2.T4.7.7.7.1.1.1"><math alttext="4.3\text{\times}{10}^{-15}" class="ltx_Math" display="inline" id="A2.T4.7.7.7.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.7.7.7.1.1.1.m1.3a"><mrow id="A2.T4.7.7.7.1.1.1.m1.3.3.3" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.7.7.7.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml">4.3</mn><mtext id="A2.T4.7.7.7.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.7.7.7.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.7.7.7.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.7.7.7.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml"><mo id="A2.T4.7.7.7.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.7.7.7.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml">15</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.7.7.7.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.7.7.7.1.1.1.m1.3.3.3.cmml" xref="A2.T4.7.7.7.1.1.1.m1.3.3.3">4.3E-15</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.7.7.7.1.1.1.m1.3c">4.3\text{\times}{10}^{-15}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.7.7.7.1.1.1.m1.3d">start_ARG 4.3 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 15 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.8.8.8.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.8.8.8.2.1">
<span class="ltx_p" id="A2.T4.8.8.8.2.1.1"><math alttext="5.0\text{\times}{10}^{-33}" class="ltx_Math" display="inline" id="A2.T4.8.8.8.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.8.8.8.2.1.1.m1.3a"><mrow id="A2.T4.8.8.8.2.1.1.m1.3.3.3" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.8.8.8.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml">5.0</mn><mtext id="A2.T4.8.8.8.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.8.8.8.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.8.8.8.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.8.8.8.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml"><mo id="A2.T4.8.8.8.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.8.8.8.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml">33</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.8.8.8.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.8.8.8.2.1.1.m1.3.3.3.cmml" xref="A2.T4.8.8.8.2.1.1.m1.3.3.3">5.0E-33</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.8.8.8.2.1.1.m1.3c">5.0\text{\times}{10}^{-33}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.8.8.8.2.1.1.m1.3d">start_ARG 5.0 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 33 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.8.8.8.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.8.8.8.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.8.8.8.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.8.8.8.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T4.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.12.12.12.5">Lepton</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.12.12.12.6">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T4.9.9.9.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.9.9.9.1.1">
<span class="ltx_p" id="A2.T4.9.9.9.1.1.1"><math alttext="1.00" class="ltx_Math" display="inline" id="A2.T4.9.9.9.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.9.9.9.1.1.1.m1.1a"><mn id="A2.T4.9.9.9.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.9.9.9.1.1.1.m1.1.1.cmml">1.00</mn><annotation-xml encoding="MathML-Content" id="A2.T4.9.9.9.1.1.1.m1.1b"><cn id="A2.T4.9.9.9.1.1.1.m1.1.1.cmml" type="float" xref="A2.T4.9.9.9.1.1.1.m1.1.1">1.00</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.9.9.9.1.1.1.m1.1c">1.00</annotation><annotation encoding="application/x-llamapun" id="A2.T4.9.9.9.1.1.1.m1.1d">1.00</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.10.10.10.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.10.10.10.2.1">
<span class="ltx_p" id="A2.T4.10.10.10.2.1.1"><math alttext="0.96" class="ltx_Math" display="inline" id="A2.T4.10.10.10.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.10.10.10.2.1.1.m1.1a"><mn id="A2.T4.10.10.10.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.10.10.10.2.1.1.m1.1.1.cmml">0.96</mn><annotation-xml encoding="MathML-Content" id="A2.T4.10.10.10.2.1.1.m1.1b"><cn id="A2.T4.10.10.10.2.1.1.m1.1.1.cmml" type="float" xref="A2.T4.10.10.10.2.1.1.m1.1.1">0.96</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.10.10.10.2.1.1.m1.1c">0.96</annotation><annotation encoding="application/x-llamapun" id="A2.T4.10.10.10.2.1.1.m1.1d">0.96</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.11.11.11.3" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.11.11.11.3.1">
<span class="ltx_p" id="A2.T4.11.11.11.3.1.1"><math alttext="7.7\text{\times}{10}^{-10}" class="ltx_Math" display="inline" id="A2.T4.11.11.11.3.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.11.11.11.3.1.1.m1.3a"><mrow id="A2.T4.11.11.11.3.1.1.m1.3.3.3" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml"><mn id="A2.T4.11.11.11.3.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml">7.7</mn><mtext id="A2.T4.11.11.11.3.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.11.11.11.3.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml"><mn id="A2.T4.11.11.11.3.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.11.11.11.3.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml"><mo id="A2.T4.11.11.11.3.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.11.11.11.3.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml">10</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.11.11.11.3.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.11.11.11.3.1.1.m1.3.3.3.cmml" xref="A2.T4.11.11.11.3.1.1.m1.3.3.3">7.7E-10</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.11.11.11.3.1.1.m1.3c">7.7\text{\times}{10}^{-10}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.11.11.11.3.1.1.m1.3d">start_ARG 7.7 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 10 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.12.12.12.4" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.12.12.12.4.1">
<span class="ltx_p" id="A2.T4.12.12.12.4.1.1"><math alttext="7.7\text{\times}{10}^{-10}" class="ltx_Math" display="inline" id="A2.T4.12.12.12.4.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.12.12.12.4.1.1.m1.3a"><mrow id="A2.T4.12.12.12.4.1.1.m1.3.3.3" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml"><mn id="A2.T4.12.12.12.4.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml">7.7</mn><mtext id="A2.T4.12.12.12.4.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.12.12.12.4.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml"><mn id="A2.T4.12.12.12.4.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.12.12.12.4.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml"><mo id="A2.T4.12.12.12.4.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.12.12.12.4.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml">10</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.12.12.12.4.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.12.12.12.4.1.1.m1.3.3.3.cmml" xref="A2.T4.12.12.12.4.1.1.m1.3.3.3">7.7E-10</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.12.12.12.4.1.1.m1.3c">7.7\text{\times}{10}^{-10}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.12.12.12.4.1.1.m1.3d">start_ARG 7.7 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 10 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.12.12.12.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.12.12.12.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T4.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.14.14.14.3">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.14.14.14.4">GPT-4o mini</th>
<td class="ltx_td ltx_align_justify" id="A2.T4.13.13.13.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.13.13.13.1.1">
<span class="ltx_p" id="A2.T4.13.13.13.1.1.1"><math alttext="9.5\text{\times}{10}^{-27}" class="ltx_Math" display="inline" id="A2.T4.13.13.13.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.13.13.13.1.1.1.m1.3a"><mrow id="A2.T4.13.13.13.1.1.1.m1.3.3.3" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.13.13.13.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml">9.5</mn><mtext id="A2.T4.13.13.13.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.13.13.13.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.13.13.13.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.13.13.13.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml"><mo id="A2.T4.13.13.13.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.13.13.13.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml">27</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.13.13.13.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.13.13.13.1.1.1.m1.3.3.3.cmml" xref="A2.T4.13.13.13.1.1.1.m1.3.3.3">9.5E-27</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.13.13.13.1.1.1.m1.3c">9.5\text{\times}{10}^{-27}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.13.13.13.1.1.1.m1.3d">start_ARG 9.5 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 27 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.14.14.14.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.14.14.14.2.1">
<span class="ltx_p" id="A2.T4.14.14.14.2.1.1"><math alttext="1.5\text{\times}{10}^{-39}" class="ltx_Math" display="inline" id="A2.T4.14.14.14.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.14.14.14.2.1.1.m1.3a"><mrow id="A2.T4.14.14.14.2.1.1.m1.3.3.3" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.14.14.14.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml">1.5</mn><mtext id="A2.T4.14.14.14.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.14.14.14.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml"><mn id="A2.T4.14.14.14.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.14.14.14.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml"><mo id="A2.T4.14.14.14.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.14.14.14.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml">39</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.14.14.14.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.14.14.14.2.1.1.m1.3.3.3.cmml" xref="A2.T4.14.14.14.2.1.1.m1.3.3.3">1.5E-39</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.14.14.14.2.1.1.m1.3c">1.5\text{\times}{10}^{-39}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.14.14.14.2.1.1.m1.3d">start_ARG 1.5 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 39 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.14.14.14.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.14.14.14.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.14.14.14.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.14.14.14.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T4.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.20.20.20.7">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.20.20.20.8">text-embedding-3-small</th>
<td class="ltx_td ltx_align_justify" id="A2.T4.15.15.15.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.15.15.15.1.1">
<span class="ltx_p" id="A2.T4.15.15.15.1.1.1"><math alttext="0.03" class="ltx_Math" display="inline" id="A2.T4.15.15.15.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.15.15.15.1.1.1.m1.1a"><mn id="A2.T4.15.15.15.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.15.15.15.1.1.1.m1.1.1.cmml">0.03</mn><annotation-xml encoding="MathML-Content" id="A2.T4.15.15.15.1.1.1.m1.1b"><cn id="A2.T4.15.15.15.1.1.1.m1.1.1.cmml" type="float" xref="A2.T4.15.15.15.1.1.1.m1.1.1">0.03</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.15.15.15.1.1.1.m1.1c">0.03</annotation><annotation encoding="application/x-llamapun" id="A2.T4.15.15.15.1.1.1.m1.1d">0.03</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.16.16.16.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.16.16.16.2.1">
<span class="ltx_p" id="A2.T4.16.16.16.2.1.1"><math alttext="0.03" class="ltx_Math" display="inline" id="A2.T4.16.16.16.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.16.16.16.2.1.1.m1.1a"><mn id="A2.T4.16.16.16.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.16.16.16.2.1.1.m1.1.1.cmml">0.03</mn><annotation-xml encoding="MathML-Content" id="A2.T4.16.16.16.2.1.1.m1.1b"><cn id="A2.T4.16.16.16.2.1.1.m1.1.1.cmml" type="float" xref="A2.T4.16.16.16.2.1.1.m1.1.1">0.03</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.16.16.16.2.1.1.m1.1c">0.03</annotation><annotation encoding="application/x-llamapun" id="A2.T4.16.16.16.2.1.1.m1.1d">0.03</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.17.17.17.3" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.17.17.17.3.1">
<span class="ltx_p" id="A2.T4.17.17.17.3.1.1"><math alttext="0.10" class="ltx_Math" display="inline" id="A2.T4.17.17.17.3.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.17.17.17.3.1.1.m1.1a"><mn id="A2.T4.17.17.17.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.17.17.17.3.1.1.m1.1.1.cmml">0.10</mn><annotation-xml encoding="MathML-Content" id="A2.T4.17.17.17.3.1.1.m1.1b"><cn id="A2.T4.17.17.17.3.1.1.m1.1.1.cmml" type="float" xref="A2.T4.17.17.17.3.1.1.m1.1.1">0.10</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.17.17.17.3.1.1.m1.1c">0.10</annotation><annotation encoding="application/x-llamapun" id="A2.T4.17.17.17.3.1.1.m1.1d">0.10</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.18.18.18.4" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.18.18.18.4.1">
<span class="ltx_p" id="A2.T4.18.18.18.4.1.1"><math alttext="0.17" class="ltx_Math" display="inline" id="A2.T4.18.18.18.4.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T4.18.18.18.4.1.1.m1.1a"><mn id="A2.T4.18.18.18.4.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T4.18.18.18.4.1.1.m1.1.1.cmml">0.17</mn><annotation-xml encoding="MathML-Content" id="A2.T4.18.18.18.4.1.1.m1.1b"><cn id="A2.T4.18.18.18.4.1.1.m1.1.1.cmml" type="float" xref="A2.T4.18.18.18.4.1.1.m1.1.1">0.17</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.18.18.18.4.1.1.m1.1c">0.17</annotation><annotation encoding="application/x-llamapun" id="A2.T4.18.18.18.4.1.1.m1.1d">0.17</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.19.19.19.5" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.19.19.19.5.1">
<span class="ltx_p" id="A2.T4.19.19.19.5.1.1"><math alttext="2.6\text{\times}{10}^{-12}" class="ltx_Math" display="inline" id="A2.T4.19.19.19.5.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.19.19.19.5.1.1.m1.3a"><mrow id="A2.T4.19.19.19.5.1.1.m1.3.3.3" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml"><mn id="A2.T4.19.19.19.5.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml">2.6</mn><mtext id="A2.T4.19.19.19.5.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.19.19.19.5.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml"><mn id="A2.T4.19.19.19.5.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.19.19.19.5.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml"><mo id="A2.T4.19.19.19.5.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.19.19.19.5.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml">12</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.19.19.19.5.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.19.19.19.5.1.1.m1.3.3.3.cmml" xref="A2.T4.19.19.19.5.1.1.m1.3.3.3">2.6E-12</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.19.19.19.5.1.1.m1.3c">2.6\text{\times}{10}^{-12}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.19.19.19.5.1.1.m1.3d">start_ARG 2.6 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 12 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.20.20.20.6" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.20.20.20.6.1">
<span class="ltx_p" id="A2.T4.20.20.20.6.1.1"><math alttext="4.3\text{\times}{10}^{-15}" class="ltx_Math" display="inline" id="A2.T4.20.20.20.6.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.20.20.20.6.1.1.m1.3a"><mrow id="A2.T4.20.20.20.6.1.1.m1.3.3.3" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml"><mn id="A2.T4.20.20.20.6.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml">4.3</mn><mtext id="A2.T4.20.20.20.6.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.20.20.20.6.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml"><mn id="A2.T4.20.20.20.6.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.20.20.20.6.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml"><mo id="A2.T4.20.20.20.6.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.20.20.20.6.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml">15</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.20.20.20.6.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.20.20.20.6.1.1.m1.3.3.3.cmml" xref="A2.T4.20.20.20.6.1.1.m1.3.3.3">4.3E-15</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.20.20.20.6.1.1.m1.3c">4.3\text{\times}{10}^{-15}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.20.20.20.6.1.1.m1.3d">start_ARG 4.3 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 15 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.21.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.21.21.21.2">Perplexity</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T4.21.21.21.3">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T4.21.21.21.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.21.21.21.1.1">
<span class="ltx_p" id="A2.T4.21.21.21.1.1.1"><math alttext="5.4\text{\times}{10}^{-68}" class="ltx_Math" display="inline" id="A2.T4.21.21.21.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.21.21.21.1.1.1.m1.3a"><mrow id="A2.T4.21.21.21.1.1.1.m1.3.3.3" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.21.21.21.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml">5.4</mn><mtext id="A2.T4.21.21.21.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.21.21.21.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.21.21.21.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.21.21.21.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml"><mo id="A2.T4.21.21.21.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.21.21.21.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml">68</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.21.21.21.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.21.21.21.1.1.1.m1.3.3.3.cmml" xref="A2.T4.21.21.21.1.1.1.m1.3.3.3">5.4E-68</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.21.21.21.1.1.1.m1.3c">5.4\text{\times}{10}^{-68}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.21.21.21.1.1.1.m1.3d">start_ARG 5.4 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 68 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.21.21.21.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.21.21.21.4.1">
<span class="ltx_p" id="A2.T4.21.21.21.4.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T4.21.21.21.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.21.21.21.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.21.21.21.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T4.21.21.21.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T4.22.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T4.22.22.22.2">Replicate</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T4.22.22.22.3">Llama 3 8B Instruct</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T4.22.22.22.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.22.4.1">
<span class="ltx_p" id="A2.T4.22.22.22.4.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T4.22.22.22.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.22.22.22.1.1">
<span class="ltx_p" id="A2.T4.22.22.22.1.1.1"><math alttext="8.6\text{\times}{10}^{-150}" class="ltx_Math" display="inline" id="A2.T4.22.22.22.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T4.22.22.22.1.1.1.m1.3a"><mrow id="A2.T4.22.22.22.1.1.1.m1.3.3.3" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.22.22.22.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml">8.6</mn><mtext id="A2.T4.22.22.22.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T4.22.22.22.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml"><mn id="A2.T4.22.22.22.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T4.22.22.22.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml"><mo id="A2.T4.22.22.22.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T4.22.22.22.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml">150</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T4.22.22.22.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T4.22.22.22.1.1.1.m1.3.3.3.cmml" xref="A2.T4.22.22.22.1.1.1.m1.3.3.3">8.6E-150</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T4.22.22.22.1.1.1.m1.3c">8.6\text{\times}{10}^{-150}</annotation><annotation encoding="application/x-llamapun" id="A2.T4.22.22.22.1.1.1.m1.3d">start_ARG 8.6 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 150 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T4.22.22.22.5"></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T4.22.22.22.6"></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T4.22.22.22.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T4.22.22.22.8"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of statistical hypothesis tests conducted to detect per-user prompt caching in various LLMs.  Each row represents a different LLM API, and the columns represent different numbers of victim requests sent and whether timing data was collected from the client-side or server-side. A green cell indicates a statistically significant p-value (rejecting the null hypothesis of no caching), meaning prompt caching was detected. Red indicates a non-significant p-value (failing to reject the null hypothesis), meaning caching was not detected.  A '-' indicates the specific timing data was unavailable, and a blank cell indicates that a test was not performed for that number of victim requests because caching had already been detected with fewer requests.  Importantly, the study found that prompt caching was evident in every API tested at this level.
> <details>
> <summary>read the caption</summary>
> Table 4: P-values from level 2 of our audits: prompts with the same prefix but different suffixes, per-user caching. Each column shows one combination of NumVictimRequests and timing source (client-side or server-side timing). Green indicates a significant p-value, after performing the appropriate Bonferroni corrections. Red indicates a p-value that is not significant. “—” indicates that the given timing source was not available for the API. A blank cell indicates that the given value of NumVictimRequests was not tested because caching was detected in the API using a smaller value of NumVictimRequests. Caching was detected in all APIs audited in this level. APIs are sorted alphabetically.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T5.11.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T5.11.11.12.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T5.11.11.12.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A2.T5.11.11.12.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="6" id="A2.T5.11.11.12.1.3"><span class="ltx_text ltx_font_smallcaps" id="A2.T5.11.11.12.1.3.1">NumVictimRequests</span></th>
</tr>
<tr class="ltx_tr" id="A2.T5.11.11.13.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T5.11.11.13.2.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="A2.T5.11.11.13.2.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="A2.T5.11.11.13.2.3">1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="A2.T5.11.11.13.2.4">5</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="A2.T5.11.11.13.2.5">25</th>
</tr>
<tr class="ltx_tr" id="A2.T5.11.11.14.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T5.11.11.14.3.1">Provider</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A2.T5.11.11.14.3.2">Model</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T5.11.11.14.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.14.3.3.1">
<span class="ltx_p" id="A2.T5.11.11.14.3.3.1.1">Client</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T5.11.11.14.3.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.14.3.4.1">
<span class="ltx_p" id="A2.T5.11.11.14.3.4.1.1">Server</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T5.11.11.14.3.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.14.3.5.1">
<span class="ltx_p" id="A2.T5.11.11.14.3.5.1.1">Client</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T5.11.11.14.3.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.14.3.6.1">
<span class="ltx_p" id="A2.T5.11.11.14.3.6.1.1">Server</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T5.11.11.14.3.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.14.3.7.1">
<span class="ltx_p" id="A2.T5.11.11.14.3.7.1.1">Client</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A2.T5.11.11.14.3.8">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.14.3.8.1">
<span class="ltx_p" id="A2.T5.11.11.14.3.8.1.1">Server</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T5.1.1.1.2">Anthropic</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T5.1.1.1.3">Claude 3 Haiku</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T5.1.1.1.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.1.1.1">
<span class="ltx_p" id="A2.T5.1.1.1.1.1.1"><math alttext="1.7\text{\times}{10}^{-31}" class="ltx_Math" display="inline" id="A2.T5.1.1.1.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T5.1.1.1.1.1.1.m1.3a"><mrow id="A2.T5.1.1.1.1.1.1.m1.3.3.3" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml"><mn id="A2.T5.1.1.1.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml">1.7</mn><mtext id="A2.T5.1.1.1.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T5.1.1.1.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml"><mn id="A2.T5.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T5.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml"><mo id="A2.T5.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T5.1.1.1.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml">31</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.1.1.1.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T5.1.1.1.1.1.1.m1.3.3.3.cmml" xref="A2.T5.1.1.1.1.1.1.m1.3.3.3">1.7E-31</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.1.1.1.1.1.1.m1.3c">1.7\text{\times}{10}^{-31}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.1.1.1.1.1.1.m1.3d">start_ARG 1.7 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 31 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T5.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.1.1.1.4.1">
<span class="ltx_p" id="A2.T5.1.1.1.4.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T5.1.1.1.5"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T5.1.1.1.6"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T5.1.1.1.7"></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T5.1.1.1.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.3.3.3.3">Fireworks</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.3.3.3.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T5.2.2.2.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.2.2.2.1.1">
<span class="ltx_p" id="A2.T5.2.2.2.1.1.1"><math alttext="1.3\text{\times}{10}^{-21}" class="ltx_Math" display="inline" id="A2.T5.2.2.2.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T5.2.2.2.1.1.1.m1.3a"><mrow id="A2.T5.2.2.2.1.1.1.m1.3.3.3" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml"><mn id="A2.T5.2.2.2.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml">1.3</mn><mtext id="A2.T5.2.2.2.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T5.2.2.2.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml"><mn id="A2.T5.2.2.2.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T5.2.2.2.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml"><mo id="A2.T5.2.2.2.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T5.2.2.2.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml">21</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.2.2.2.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T5.2.2.2.1.1.1.m1.3.3.3.cmml" xref="A2.T5.2.2.2.1.1.1.m1.3.3.3">1.3E-21</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.2.2.2.1.1.1.m1.3c">1.3\text{\times}{10}^{-21}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.2.2.2.1.1.1.m1.3d">start_ARG 1.3 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 21 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T5.3.3.3.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.3.3.3.2.1">
<span class="ltx_p" id="A2.T5.3.3.3.2.1.1"><math alttext="5.2\text{\times}{10}^{-32}" class="ltx_Math" display="inline" id="A2.T5.3.3.3.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T5.3.3.3.2.1.1.m1.3a"><mrow id="A2.T5.3.3.3.2.1.1.m1.3.3.3" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml"><mn id="A2.T5.3.3.3.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml">5.2</mn><mtext id="A2.T5.3.3.3.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T5.3.3.3.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml"><mn id="A2.T5.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T5.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml"><mo id="A2.T5.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T5.3.3.3.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml">32</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.3.3.3.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T5.3.3.3.2.1.1.m1.3.3.3.cmml" xref="A2.T5.3.3.3.2.1.1.m1.3.3.3">5.2E-32</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.3.3.3.2.1.1.m1.3c">5.2\text{\times}{10}^{-32}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.3.3.3.2.1.1.m1.3d">start_ARG 5.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 32 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T5.3.3.3.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T5.3.3.3.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T5.3.3.3.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T5.3.3.3.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.5.5.5.3">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T5.5.5.5.4">GPT-4o mini</th>
<td class="ltx_td ltx_align_justify" id="A2.T5.4.4.4.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.4.4.4.1.1">
<span class="ltx_p" id="A2.T5.4.4.4.1.1.1"><math alttext="1.1\text{\times}{10}^{-19}" class="ltx_Math" display="inline" id="A2.T5.4.4.4.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T5.4.4.4.1.1.1.m1.3a"><mrow id="A2.T5.4.4.4.1.1.1.m1.3.3.3" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml"><mn id="A2.T5.4.4.4.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml">1.1</mn><mtext id="A2.T5.4.4.4.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T5.4.4.4.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml"><mn id="A2.T5.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T5.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml"><mo id="A2.T5.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T5.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml">19</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.4.4.4.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T5.4.4.4.1.1.1.m1.3.3.3.cmml" xref="A2.T5.4.4.4.1.1.1.m1.3.3.3">1.1E-19</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.4.4.4.1.1.1.m1.3c">1.1\text{\times}{10}^{-19}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.4.4.4.1.1.1.m1.3d">start_ARG 1.1 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 19 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T5.5.5.5.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.5.5.5.2.1">
<span class="ltx_p" id="A2.T5.5.5.5.2.1.1"><math alttext="4.6\text{\times}{10}^{-34}" class="ltx_Math" display="inline" id="A2.T5.5.5.5.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T5.5.5.5.2.1.1.m1.3a"><mrow id="A2.T5.5.5.5.2.1.1.m1.3.3.3" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml"><mn id="A2.T5.5.5.5.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml">4.6</mn><mtext id="A2.T5.5.5.5.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T5.5.5.5.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml"><mn id="A2.T5.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T5.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml"><mo id="A2.T5.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T5.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml">34</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.5.5.5.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T5.5.5.5.2.1.1.m1.3.3.3.cmml" xref="A2.T5.5.5.5.2.1.1.m1.3.3.3">4.6E-34</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.5.5.5.2.1.1.m1.3c">4.6\text{\times}{10}^{-34}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.5.5.5.2.1.1.m1.3d">start_ARG 4.6 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 34 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T5.5.5.5.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T5.5.5.5.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T5.5.5.5.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T5.5.5.5.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T5.11.11.11.7">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T5.11.11.11.8">text-embedding-3-small</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T5.6.6.6.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.6.6.6.1.1">
<span class="ltx_p" id="A2.T5.6.6.6.1.1.1"><math alttext="0.27" class="ltx_Math" display="inline" id="A2.T5.6.6.6.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T5.6.6.6.1.1.1.m1.1a"><mn id="A2.T5.6.6.6.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T5.6.6.6.1.1.1.m1.1.1.cmml">0.27</mn><annotation-xml encoding="MathML-Content" id="A2.T5.6.6.6.1.1.1.m1.1b"><cn id="A2.T5.6.6.6.1.1.1.m1.1.1.cmml" type="float" xref="A2.T5.6.6.6.1.1.1.m1.1.1">0.27</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.6.6.6.1.1.1.m1.1c">0.27</annotation><annotation encoding="application/x-llamapun" id="A2.T5.6.6.6.1.1.1.m1.1d">0.27</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T5.7.7.7.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.7.7.7.2.1">
<span class="ltx_p" id="A2.T5.7.7.7.2.1.1"><math alttext="0.14" class="ltx_Math" display="inline" id="A2.T5.7.7.7.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T5.7.7.7.2.1.1.m1.1a"><mn id="A2.T5.7.7.7.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T5.7.7.7.2.1.1.m1.1.1.cmml">0.14</mn><annotation-xml encoding="MathML-Content" id="A2.T5.7.7.7.2.1.1.m1.1b"><cn id="A2.T5.7.7.7.2.1.1.m1.1.1.cmml" type="float" xref="A2.T5.7.7.7.2.1.1.m1.1.1">0.14</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.7.7.7.2.1.1.m1.1c">0.14</annotation><annotation encoding="application/x-llamapun" id="A2.T5.7.7.7.2.1.1.m1.1d">0.14</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T5.8.8.8.3" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.8.8.8.3.1">
<span class="ltx_p" id="A2.T5.8.8.8.3.1.1"><math alttext="0.27" class="ltx_Math" display="inline" id="A2.T5.8.8.8.3.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T5.8.8.8.3.1.1.m1.1a"><mn id="A2.T5.8.8.8.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T5.8.8.8.3.1.1.m1.1.1.cmml">0.27</mn><annotation-xml encoding="MathML-Content" id="A2.T5.8.8.8.3.1.1.m1.1b"><cn id="A2.T5.8.8.8.3.1.1.m1.1.1.cmml" type="float" xref="A2.T5.8.8.8.3.1.1.m1.1.1">0.27</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.8.8.8.3.1.1.m1.1c">0.27</annotation><annotation encoding="application/x-llamapun" id="A2.T5.8.8.8.3.1.1.m1.1d">0.27</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T5.9.9.9.4" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.9.9.9.4.1">
<span class="ltx_p" id="A2.T5.9.9.9.4.1.1"><math alttext="0.27" class="ltx_Math" display="inline" id="A2.T5.9.9.9.4.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T5.9.9.9.4.1.1.m1.1a"><mn id="A2.T5.9.9.9.4.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T5.9.9.9.4.1.1.m1.1.1.cmml">0.27</mn><annotation-xml encoding="MathML-Content" id="A2.T5.9.9.9.4.1.1.m1.1b"><cn id="A2.T5.9.9.9.4.1.1.m1.1.1.cmml" type="float" xref="A2.T5.9.9.9.4.1.1.m1.1.1">0.27</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.9.9.9.4.1.1.m1.1c">0.27</annotation><annotation encoding="application/x-llamapun" id="A2.T5.9.9.9.4.1.1.m1.1d">0.27</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T5.10.10.10.5" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.10.10.10.5.1">
<span class="ltx_p" id="A2.T5.10.10.10.5.1.1"><math alttext="8.2\text{\times}{10}^{-14}" class="ltx_Math" display="inline" id="A2.T5.10.10.10.5.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T5.10.10.10.5.1.1.m1.3a"><mrow id="A2.T5.10.10.10.5.1.1.m1.3.3.3" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml"><mn id="A2.T5.10.10.10.5.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml">8.2</mn><mtext id="A2.T5.10.10.10.5.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T5.10.10.10.5.1.1.m1.3.3.3.3.3.3.3" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml"><mn id="A2.T5.10.10.10.5.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T5.10.10.10.5.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml"><mo id="A2.T5.10.10.10.5.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T5.10.10.10.5.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml">14</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.10.10.10.5.1.1.m1.3b"><csymbol cd="latexml" id="A2.T5.10.10.10.5.1.1.m1.3.3.3.cmml" xref="A2.T5.10.10.10.5.1.1.m1.3.3.3">8.2E-14</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.10.10.10.5.1.1.m1.3c">8.2\text{\times}{10}^{-14}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.10.10.10.5.1.1.m1.3d">start_ARG 8.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 14 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T5.11.11.11.6" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T5.11.11.11.6.1">
<span class="ltx_p" id="A2.T5.11.11.11.6.1.1"><math alttext="8.2\text{\times}{10}^{-14}" class="ltx_Math" display="inline" id="A2.T5.11.11.11.6.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T5.11.11.11.6.1.1.m1.3a"><mrow id="A2.T5.11.11.11.6.1.1.m1.3.3.3" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml"><mn id="A2.T5.11.11.11.6.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml">8.2</mn><mtext id="A2.T5.11.11.11.6.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T5.11.11.11.6.1.1.m1.3.3.3.3.3.3.3" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml"><mn id="A2.T5.11.11.11.6.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T5.11.11.11.6.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml"><mo id="A2.T5.11.11.11.6.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T5.11.11.11.6.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml">14</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T5.11.11.11.6.1.1.m1.3b"><csymbol cd="latexml" id="A2.T5.11.11.11.6.1.1.m1.3.3.3.cmml" xref="A2.T5.11.11.11.6.1.1.m1.3.3.3">8.2E-14</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.11.11.11.6.1.1.m1.3c">8.2\text{\times}{10}^{-14}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.11.11.11.6.1.1.m1.3d">start_ARG 8.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 14 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of statistical hypothesis tests performed to detect per-organization prompt caching in various LLMs.  Each cell shows a p-value obtained from comparing response times (TTFT) for prompts with matching prefixes and different suffixes (cache hit simulation) versus those with no prefix match (cache miss simulation).  The tests were conducted with varying numbers of victim requests (NumVictimRequests) and using either client-side or server-side timing measurements.  Green indicates statistically significant p-values (rejecting the null hypothesis of no caching), red indicates non-significant p-values, and a blank cell means the test wasn't run for that specific API/NumVictimRequests combination because caching was already detected with fewer requests.  All APIs in this section showed evidence of caching.
> <details>
> <summary>read the caption</summary>
> Table 5: P-values from level 3 of our audits: prompts with the same prefix but different suffixes, per-organization caching. Each column shows one combination of NumVictimRequests and timing source (client-side or server-side timing). Green indicates a significant p-value, after performing the appropriate Bonferroni corrections. Red indicates a p-value that is not significant. “—” indicates that the given timing source was not available for the API. A blank cell indicates that the given value of NumVictimRequests was not tested because caching was detected in the API using a smaller value of NumVictimRequests. Caching was detected in all APIs audited in this level. APIs are sorted alphabetically.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T6.28.28">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T6.28.28.29.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T6.28.28.29.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A2.T6.28.28.29.1.2"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="A2.T6.28.28.29.1.3"><span class="ltx_text ltx_font_smallcaps" id="A2.T6.28.28.29.1.3.1">NumVictimRequests</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.28.30.2">
<th class="ltx_td ltx_th ltx_th_row" id="A2.T6.28.28.30.2.1"></th>
<th class="ltx_td ltx_th ltx_th_row" id="A2.T6.28.28.30.2.2"></th>
<td class="ltx_td ltx_align_center" colspan="2" id="A2.T6.28.28.30.2.3">1</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A2.T6.28.28.30.2.4">5</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A2.T6.28.28.30.2.5">25</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.28.31.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.28.28.31.3.1">Provider</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.28.28.31.3.2">Model</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.28.28.31.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.28.28.31.3.3.1">
<span class="ltx_p" id="A2.T6.28.28.31.3.3.1.1">Client</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.28.28.31.3.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.28.28.31.3.4.1">
<span class="ltx_p" id="A2.T6.28.28.31.3.4.1.1">Server</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.28.28.31.3.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.28.28.31.3.5.1">
<span class="ltx_p" id="A2.T6.28.28.31.3.5.1.1">Client</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.28.28.31.3.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.28.28.31.3.6.1">
<span class="ltx_p" id="A2.T6.28.28.31.3.6.1.1">Server</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.28.28.31.3.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.28.28.31.3.7.1">
<span class="ltx_p" id="A2.T6.28.28.31.3.7.1.1">Client</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.28.28.31.3.8">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.28.28.31.3.8.1">
<span class="ltx_p" id="A2.T6.28.28.31.3.8.1.1">Server</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.3.3.3.4">Azure</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.3.3.3.5">text-embedding-3-small</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.1.1.1.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1.1">
<span class="ltx_p" id="A2.T6.1.1.1.1.1.1"><math alttext="0.46" class="ltx_Math" display="inline" id="A2.T6.1.1.1.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.1.1.1.1.1.1.m1.1a"><mn id="A2.T6.1.1.1.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.1.1.1.1.1.1.m1.1.1.cmml">0.46</mn><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.1.1.1.m1.1b"><cn id="A2.T6.1.1.1.1.1.1.m1.1.1.cmml" type="float" xref="A2.T6.1.1.1.1.1.1.m1.1.1">0.46</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.1.1.1.m1.1c">0.46</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.1.1.1.m1.1d">0.46</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.3.3.3.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.3.3.3.6.1">
<span class="ltx_p" id="A2.T6.3.3.3.6.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.2.2.2.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.2.2.2.2.1">
<span class="ltx_p" id="A2.T6.2.2.2.2.1.1"><math alttext="0.02" class="ltx_Math" display="inline" id="A2.T6.2.2.2.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.2.2.2.2.1.1.m1.1a"><mn id="A2.T6.2.2.2.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.2.2.2.2.1.1.m1.1.1.cmml">0.02</mn><annotation-xml encoding="MathML-Content" id="A2.T6.2.2.2.2.1.1.m1.1b"><cn id="A2.T6.2.2.2.2.1.1.m1.1.1.cmml" type="float" xref="A2.T6.2.2.2.2.1.1.m1.1.1">0.02</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.2.2.2.2.1.1.m1.1c">0.02</annotation><annotation encoding="application/x-llamapun" id="A2.T6.2.2.2.2.1.1.m1.1d">0.02</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.3.3.3.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.3.3.3.7.1">
<span class="ltx_p" id="A2.T6.3.3.3.7.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.3.3.3.3" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.3.3.3.3.1">
<span class="ltx_p" id="A2.T6.3.3.3.3.1.1"><math alttext="1.3\text{\times}{10}^{-21}" class="ltx_Math" display="inline" id="A2.T6.3.3.3.3.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.3.3.3.3.1.1.m1.3a"><mrow id="A2.T6.3.3.3.3.1.1.m1.3.3.3" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml"><mn id="A2.T6.3.3.3.3.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml">1.3</mn><mtext id="A2.T6.3.3.3.3.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.3.3.3.3.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml"><mn id="A2.T6.3.3.3.3.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.3.3.3.3.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml"><mo id="A2.T6.3.3.3.3.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.3.3.3.3.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml">21</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.3.3.3.3.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.3.3.3.3.1.1.m1.3.3.3.cmml" xref="A2.T6.3.3.3.3.1.1.m1.3.3.3">1.3E-21</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.3.3.3.3.1.1.m1.3c">1.3\text{\times}{10}^{-21}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.3.3.3.3.1.1.m1.3d">start_ARG 1.3 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 21 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.3.3.3.8">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.3.3.3.8.1">
<span class="ltx_p" id="A2.T6.3.3.3.8.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.5.5.5.3">Deep Infra</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.5.5.5.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T6.4.4.4.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.4.4.4.1.1">
<span class="ltx_p" id="A2.T6.4.4.4.1.1.1"><math alttext="6.5\text{\times}{10}^{-05}" class="ltx_Math" display="inline" id="A2.T6.4.4.4.1.1.1.m1.3" style="background-color:#FFBFBF;"><semantics id="A2.T6.4.4.4.1.1.1.m1.3a"><mrow id="A2.T6.4.4.4.1.1.1.m1.3.3.3" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.4.4.4.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#FFBFBF" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml">6.5</mn><mtext id="A2.T6.4.4.4.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#FFBFBF" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.4.4.4.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#FFBFBF" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml"><mo id="A2.T6.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#FFBFBF" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.4.4.4.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#FFBFBF" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml">05</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.4.4.4.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.4.4.4.1.1.1.m1.3.3.3.cmml" xref="A2.T6.4.4.4.1.1.1.m1.3.3.3">6.5E-05</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.4.4.4.1.1.1.m1.3c">6.5\text{\times}{10}^{-05}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.4.4.4.1.1.1.m1.3d">start_ARG 6.5 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 05 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.5.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.5.5.5.5.1">
<span class="ltx_p" id="A2.T6.5.5.5.5.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.5.5.5.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.5.5.5.2.1">
<span class="ltx_p" id="A2.T6.5.5.5.2.1.1"><math alttext="7.5\text{\times}{10}^{-38}" class="ltx_Math" display="inline" id="A2.T6.5.5.5.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.5.5.5.2.1.1.m1.3a"><mrow id="A2.T6.5.5.5.2.1.1.m1.3.3.3" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml"><mn id="A2.T6.5.5.5.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml">7.5</mn><mtext id="A2.T6.5.5.5.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.5.5.5.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml"><mn id="A2.T6.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml"><mo id="A2.T6.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.5.5.5.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml">38</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.5.5.5.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.5.5.5.2.1.1.m1.3.3.3.cmml" xref="A2.T6.5.5.5.2.1.1.m1.3.3.3">7.5E-38</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.5.5.5.2.1.1.m1.3c">7.5\text{\times}{10}^{-38}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.5.5.5.2.1.1.m1.3d">start_ARG 7.5 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 38 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.5.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.5.5.5.6.1">
<span class="ltx_p" id="A2.T6.5.5.5.6.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.5.5.5.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.5.5.5.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T6.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.7.7.7.3">Fireworks</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.7.7.7.4">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T6.6.6.6.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.6.6.6.1.1">
<span class="ltx_p" id="A2.T6.6.6.6.1.1.1"><math alttext="9.0\text{\times}{10}^{-17}" class="ltx_Math" display="inline" id="A2.T6.6.6.6.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.6.6.6.1.1.1.m1.3a"><mrow id="A2.T6.6.6.6.1.1.1.m1.3.3.3" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.6.6.6.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml">9.0</mn><mtext id="A2.T6.6.6.6.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.6.6.6.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.6.6.6.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.6.6.6.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml"><mo id="A2.T6.6.6.6.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.6.6.6.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml">17</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.6.6.6.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.6.6.6.1.1.1.m1.3.3.3.cmml" xref="A2.T6.6.6.6.1.1.1.m1.3.3.3">9.0E-17</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.6.6.6.1.1.1.m1.3c">9.0\text{\times}{10}^{-17}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.6.6.6.1.1.1.m1.3d">start_ARG 9.0 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 17 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.7.7.7.2" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.7.7.7.2.1">
<span class="ltx_p" id="A2.T6.7.7.7.2.1.1"><math alttext="5.2\text{\times}{10}^{-32}" class="ltx_Math" display="inline" id="A2.T6.7.7.7.2.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.7.7.7.2.1.1.m1.3a"><mrow id="A2.T6.7.7.7.2.1.1.m1.3.3.3" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml"><mn id="A2.T6.7.7.7.2.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml">5.2</mn><mtext id="A2.T6.7.7.7.2.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.7.7.7.2.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml"><mn id="A2.T6.7.7.7.2.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.7.7.7.2.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml"><mo id="A2.T6.7.7.7.2.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.7.7.7.2.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml">32</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.7.7.7.2.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.7.7.7.2.1.1.m1.3.3.3.cmml" xref="A2.T6.7.7.7.2.1.1.m1.3.3.3">5.2E-32</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.7.7.7.2.1.1.m1.3c">5.2\text{\times}{10}^{-32}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.7.7.7.2.1.1.m1.3d">start_ARG 5.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 32 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.7.7.7.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.7.7.7.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.7.7.7.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.7.7.7.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T6.11.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.11.11.11.5">Lepton</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.11.11.11.6">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T6.8.8.8.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.8.8.8.1.1">
<span class="ltx_p" id="A2.T6.8.8.8.1.1.1"><math alttext="0.12" class="ltx_Math" display="inline" id="A2.T6.8.8.8.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.8.8.8.1.1.1.m1.1a"><mn id="A2.T6.8.8.8.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.8.8.8.1.1.1.m1.1.1.cmml">0.12</mn><annotation-xml encoding="MathML-Content" id="A2.T6.8.8.8.1.1.1.m1.1b"><cn id="A2.T6.8.8.8.1.1.1.m1.1.1.cmml" type="float" xref="A2.T6.8.8.8.1.1.1.m1.1.1">0.12</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.8.8.8.1.1.1.m1.1c">0.12</annotation><annotation encoding="application/x-llamapun" id="A2.T6.8.8.8.1.1.1.m1.1d">0.12</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.9.9.9.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.9.9.9.2.1">
<span class="ltx_p" id="A2.T6.9.9.9.2.1.1"><math alttext="0.07" class="ltx_Math" display="inline" id="A2.T6.9.9.9.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.9.9.9.2.1.1.m1.1a"><mn id="A2.T6.9.9.9.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.9.9.9.2.1.1.m1.1.1.cmml">0.07</mn><annotation-xml encoding="MathML-Content" id="A2.T6.9.9.9.2.1.1.m1.1b"><cn id="A2.T6.9.9.9.2.1.1.m1.1.1.cmml" type="float" xref="A2.T6.9.9.9.2.1.1.m1.1.1">0.07</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.9.9.9.2.1.1.m1.1c">0.07</annotation><annotation encoding="application/x-llamapun" id="A2.T6.9.9.9.2.1.1.m1.1d">0.07</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.10.10.10.3" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.10.10.10.3.1">
<span class="ltx_p" id="A2.T6.10.10.10.3.1.1"><math alttext="1.2\text{\times}{10}^{-10}" class="ltx_Math" display="inline" id="A2.T6.10.10.10.3.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.10.10.10.3.1.1.m1.3a"><mrow id="A2.T6.10.10.10.3.1.1.m1.3.3.3" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml"><mn id="A2.T6.10.10.10.3.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml">1.2</mn><mtext id="A2.T6.10.10.10.3.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.10.10.10.3.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml"><mn id="A2.T6.10.10.10.3.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.10.10.10.3.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml"><mo id="A2.T6.10.10.10.3.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.10.10.10.3.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml">10</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.10.10.10.3.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.10.10.10.3.1.1.m1.3.3.3.cmml" xref="A2.T6.10.10.10.3.1.1.m1.3.3.3">1.2E-10</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.10.10.10.3.1.1.m1.3c">1.2\text{\times}{10}^{-10}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.10.10.10.3.1.1.m1.3d">start_ARG 1.2 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 10 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.11.11.11.4" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.11.11.11.4.1">
<span class="ltx_p" id="A2.T6.11.11.11.4.1.1"><math alttext="1.4\text{\times}{10}^{-09}" class="ltx_Math" display="inline" id="A2.T6.11.11.11.4.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.11.11.11.4.1.1.m1.3a"><mrow id="A2.T6.11.11.11.4.1.1.m1.3.3.3" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml"><mn id="A2.T6.11.11.11.4.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml">1.4</mn><mtext id="A2.T6.11.11.11.4.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.11.11.11.4.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml"><mn id="A2.T6.11.11.11.4.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.11.11.11.4.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml"><mo id="A2.T6.11.11.11.4.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.11.11.11.4.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml">09</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.11.11.11.4.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.11.11.11.4.1.1.m1.3.3.3.cmml" xref="A2.T6.11.11.11.4.1.1.m1.3.3.3">1.4E-09</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.11.11.11.4.1.1.m1.3c">1.4\text{\times}{10}^{-09}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.11.11.11.4.1.1.m1.3d">start_ARG 1.4 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 09 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.11.11.11.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.11.11.11.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T6.17.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.17.17.17.7">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.17.17.17.8">text-embedding-3-small</th>
<td class="ltx_td ltx_align_justify" id="A2.T6.12.12.12.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.12.12.12.1.1">
<span class="ltx_p" id="A2.T6.12.12.12.1.1.1"><math alttext="0.41" class="ltx_Math" display="inline" id="A2.T6.12.12.12.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.12.12.12.1.1.1.m1.1a"><mn id="A2.T6.12.12.12.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.12.12.12.1.1.1.m1.1.1.cmml">0.41</mn><annotation-xml encoding="MathML-Content" id="A2.T6.12.12.12.1.1.1.m1.1b"><cn id="A2.T6.12.12.12.1.1.1.m1.1.1.cmml" type="float" xref="A2.T6.12.12.12.1.1.1.m1.1.1">0.41</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.12.12.12.1.1.1.m1.1c">0.41</annotation><annotation encoding="application/x-llamapun" id="A2.T6.12.12.12.1.1.1.m1.1d">0.41</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.13.13.13.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.13.13.13.2.1">
<span class="ltx_p" id="A2.T6.13.13.13.2.1.1"><math alttext="0.36" class="ltx_Math" display="inline" id="A2.T6.13.13.13.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.13.13.13.2.1.1.m1.1a"><mn id="A2.T6.13.13.13.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.13.13.13.2.1.1.m1.1.1.cmml">0.36</mn><annotation-xml encoding="MathML-Content" id="A2.T6.13.13.13.2.1.1.m1.1b"><cn id="A2.T6.13.13.13.2.1.1.m1.1.1.cmml" type="float" xref="A2.T6.13.13.13.2.1.1.m1.1.1">0.36</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.13.13.13.2.1.1.m1.1c">0.36</annotation><annotation encoding="application/x-llamapun" id="A2.T6.13.13.13.2.1.1.m1.1d">0.36</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.14.14.14.3" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.14.14.14.3.1">
<span class="ltx_p" id="A2.T6.14.14.14.3.1.1"><math alttext="0.20" class="ltx_Math" display="inline" id="A2.T6.14.14.14.3.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.14.14.14.3.1.1.m1.1a"><mn id="A2.T6.14.14.14.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.14.14.14.3.1.1.m1.1.1.cmml">0.20</mn><annotation-xml encoding="MathML-Content" id="A2.T6.14.14.14.3.1.1.m1.1b"><cn id="A2.T6.14.14.14.3.1.1.m1.1.1.cmml" type="float" xref="A2.T6.14.14.14.3.1.1.m1.1.1">0.20</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.14.14.14.3.1.1.m1.1c">0.20</annotation><annotation encoding="application/x-llamapun" id="A2.T6.14.14.14.3.1.1.m1.1d">0.20</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.15.15.15.4" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.15.15.15.4.1">
<span class="ltx_p" id="A2.T6.15.15.15.4.1.1"><math alttext="0.08" class="ltx_Math" display="inline" id="A2.T6.15.15.15.4.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.15.15.15.4.1.1.m1.1a"><mn id="A2.T6.15.15.15.4.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.15.15.15.4.1.1.m1.1.1.cmml">0.08</mn><annotation-xml encoding="MathML-Content" id="A2.T6.15.15.15.4.1.1.m1.1b"><cn id="A2.T6.15.15.15.4.1.1.m1.1.1.cmml" type="float" xref="A2.T6.15.15.15.4.1.1.m1.1.1">0.08</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.15.15.15.4.1.1.m1.1c">0.08</annotation><annotation encoding="application/x-llamapun" id="A2.T6.15.15.15.4.1.1.m1.1d">0.08</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.16.16.16.5" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.16.16.16.5.1">
<span class="ltx_p" id="A2.T6.16.16.16.5.1.1"><math alttext="1.1\text{\times}{10}^{-19}" class="ltx_Math" display="inline" id="A2.T6.16.16.16.5.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.16.16.16.5.1.1.m1.3a"><mrow id="A2.T6.16.16.16.5.1.1.m1.3.3.3" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml"><mn id="A2.T6.16.16.16.5.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml">1.1</mn><mtext id="A2.T6.16.16.16.5.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.16.16.16.5.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml"><mn id="A2.T6.16.16.16.5.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.16.16.16.5.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml"><mo id="A2.T6.16.16.16.5.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.16.16.16.5.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml">19</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.16.16.16.5.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.16.16.16.5.1.1.m1.3.3.3.cmml" xref="A2.T6.16.16.16.5.1.1.m1.3.3.3">1.1E-19</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.16.16.16.5.1.1.m1.3c">1.1\text{\times}{10}^{-19}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.16.16.16.5.1.1.m1.3d">start_ARG 1.1 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 19 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.17.17.17.6" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.17.17.17.6.1">
<span class="ltx_p" id="A2.T6.17.17.17.6.1.1"><math alttext="1.1\text{\times}{10}^{-19}" class="ltx_Math" display="inline" id="A2.T6.17.17.17.6.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.17.17.17.6.1.1.m1.3a"><mrow id="A2.T6.17.17.17.6.1.1.m1.3.3.3" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml"><mn id="A2.T6.17.17.17.6.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml">1.1</mn><mtext id="A2.T6.17.17.17.6.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.17.17.17.6.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml"><mn id="A2.T6.17.17.17.6.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.17.17.17.6.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml"><mo id="A2.T6.17.17.17.6.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.17.17.17.6.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml">19</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.17.17.17.6.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.17.17.17.6.1.1.m1.3.3.3.cmml" xref="A2.T6.17.17.17.6.1.1.m1.3.3.3">1.1E-19</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.17.17.17.6.1.1.m1.3c">1.1\text{\times}{10}^{-19}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.17.17.17.6.1.1.m1.3d">start_ARG 1.1 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 19 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.18.18.18.2">Perplexity</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.18.18.18.3">Llama 3.1 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T6.18.18.18.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.18.18.18.1.1">
<span class="ltx_p" id="A2.T6.18.18.18.1.1.1"><math alttext="5.3\text{\times}{10}^{-74}" class="ltx_Math" display="inline" id="A2.T6.18.18.18.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.18.18.18.1.1.1.m1.3a"><mrow id="A2.T6.18.18.18.1.1.1.m1.3.3.3" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.18.18.18.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml">5.3</mn><mtext id="A2.T6.18.18.18.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.18.18.18.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.18.18.18.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.18.18.18.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml"><mo id="A2.T6.18.18.18.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.18.18.18.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml">74</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.18.18.18.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.18.18.18.1.1.1.m1.3.3.3.cmml" xref="A2.T6.18.18.18.1.1.1.m1.3.3.3">5.3E-74</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.18.18.18.1.1.1.m1.3c">5.3\text{\times}{10}^{-74}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.18.18.18.1.1.1.m1.3d">start_ARG 5.3 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 74 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.18.18.18.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.18.18.18.4.1">
<span class="ltx_p" id="A2.T6.18.18.18.4.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.18.18.18.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.18.18.18.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.18.18.18.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.18.18.18.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T6.19.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.19.19.19.2">Replicate</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A2.T6.19.19.19.3">Llama 3 8B Instruct</th>
<td class="ltx_td ltx_align_justify" id="A2.T6.19.19.19.4">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.19.19.19.4.1">
<span class="ltx_p" id="A2.T6.19.19.19.4.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.19.19.19.1" style="background-color:#BFDFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.19.19.19.1.1">
<span class="ltx_p" id="A2.T6.19.19.19.1.1.1"><math alttext="8.6\text{\times}{10}^{-150}" class="ltx_Math" display="inline" id="A2.T6.19.19.19.1.1.1.m1.3" style="background-color:#BFDFBF;"><semantics id="A2.T6.19.19.19.1.1.1.m1.3a"><mrow id="A2.T6.19.19.19.1.1.1.m1.3.3.3" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.19.19.19.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#BFDFBF" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml">8.6</mn><mtext id="A2.T6.19.19.19.1.1.1.m1.2.2.2.2.2.2.2" mathbackground="#BFDFBF" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml">×</mtext><msup id="A2.T6.19.19.19.1.1.1.m1.3.3.3.3.3.3.3" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml"><mn id="A2.T6.19.19.19.1.1.1.m1.3.3.3.3.3.3.3.2" mathbackground="#BFDFBF" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml">10</mn><mrow id="A2.T6.19.19.19.1.1.1.m1.3.3.3.3.3.3.3.3.2" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml"><mo id="A2.T6.19.19.19.1.1.1.m1.3.3.3.3.3.3.3.3.2a" mathbackground="#BFDFBF" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml">−</mo><mn id="A2.T6.19.19.19.1.1.1.m1.3.3.3.3.3.3.3.3.2.2" mathbackground="#BFDFBF" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml">150</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.19.19.19.1.1.1.m1.3b"><csymbol cd="latexml" id="A2.T6.19.19.19.1.1.1.m1.3.3.3.cmml" xref="A2.T6.19.19.19.1.1.1.m1.3.3.3">8.6E-150</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.19.19.19.1.1.1.m1.3c">8.6\text{\times}{10}^{-150}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.19.19.19.1.1.1.m1.3d">start_ARG 8.6 end_ARG start_ARG times end_ARG start_ARG power start_ARG 10 end_ARG start_ARG - 150 end_ARG end_ARG</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A2.T6.19.19.19.5"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.19.19.19.6"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.19.19.19.7"></td>
<td class="ltx_td ltx_align_justify" id="A2.T6.19.19.19.8"></td>
</tr>
<tr class="ltx_tr" id="A2.T6.22.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.22.22.22.4">Anthropic</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A2.T6.22.22.22.5">Claude 3 Haiku</th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.20.20.20.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.20.20.20.1.1">
<span class="ltx_p" id="A2.T6.20.20.20.1.1.1"><math alttext="0.24" class="ltx_Math" display="inline" id="A2.T6.20.20.20.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.20.20.20.1.1.1.m1.1a"><mn id="A2.T6.20.20.20.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.20.20.20.1.1.1.m1.1.1.cmml">0.24</mn><annotation-xml encoding="MathML-Content" id="A2.T6.20.20.20.1.1.1.m1.1b"><cn id="A2.T6.20.20.20.1.1.1.m1.1.1.cmml" type="float" xref="A2.T6.20.20.20.1.1.1.m1.1.1">0.24</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.20.20.20.1.1.1.m1.1c">0.24</annotation><annotation encoding="application/x-llamapun" id="A2.T6.20.20.20.1.1.1.m1.1d">0.24</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.22.22.22.6">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.22.22.22.6.1">
<span class="ltx_p" id="A2.T6.22.22.22.6.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.21.21.21.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.21.21.21.2.1">
<span class="ltx_p" id="A2.T6.21.21.21.2.1.1"><math alttext="0.77" class="ltx_Math" display="inline" id="A2.T6.21.21.21.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.21.21.21.2.1.1.m1.1a"><mn id="A2.T6.21.21.21.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.21.21.21.2.1.1.m1.1.1.cmml">0.77</mn><annotation-xml encoding="MathML-Content" id="A2.T6.21.21.21.2.1.1.m1.1b"><cn id="A2.T6.21.21.21.2.1.1.m1.1.1.cmml" type="float" xref="A2.T6.21.21.21.2.1.1.m1.1.1">0.77</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.21.21.21.2.1.1.m1.1c">0.77</annotation><annotation encoding="application/x-llamapun" id="A2.T6.21.21.21.2.1.1.m1.1d">0.77</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.22.22.22.7">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.22.22.22.7.1">
<span class="ltx_p" id="A2.T6.22.22.22.7.1.1">—</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.22.22.22.3" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.22.22.22.3.1">
<span class="ltx_p" id="A2.T6.22.22.22.3.1.1"><math alttext="0.87" class="ltx_Math" display="inline" id="A2.T6.22.22.22.3.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.22.22.22.3.1.1.m1.1a"><mn id="A2.T6.22.22.22.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.22.22.22.3.1.1.m1.1.1.cmml">0.87</mn><annotation-xml encoding="MathML-Content" id="A2.T6.22.22.22.3.1.1.m1.1b"><cn id="A2.T6.22.22.22.3.1.1.m1.1.1.cmml" type="float" xref="A2.T6.22.22.22.3.1.1.m1.1.1">0.87</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.22.22.22.3.1.1.m1.1c">0.87</annotation><annotation encoding="application/x-llamapun" id="A2.T6.22.22.22.3.1.1.m1.1d">0.87</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A2.T6.22.22.22.8">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.22.22.22.8.1">
<span class="ltx_p" id="A2.T6.22.22.22.8.1.1">—</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.28.28.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T6.28.28.28.7">OpenAI</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A2.T6.28.28.28.8">GPT-4o mini</th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.23.23.23.1" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.23.23.23.1.1">
<span class="ltx_p" id="A2.T6.23.23.23.1.1.1"><math alttext="0.41" class="ltx_Math" display="inline" id="A2.T6.23.23.23.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.23.23.23.1.1.1.m1.1a"><mn id="A2.T6.23.23.23.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.23.23.23.1.1.1.m1.1.1.cmml">0.41</mn><annotation-xml encoding="MathML-Content" id="A2.T6.23.23.23.1.1.1.m1.1b"><cn id="A2.T6.23.23.23.1.1.1.m1.1.1.cmml" type="float" xref="A2.T6.23.23.23.1.1.1.m1.1.1">0.41</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.23.23.23.1.1.1.m1.1c">0.41</annotation><annotation encoding="application/x-llamapun" id="A2.T6.23.23.23.1.1.1.m1.1d">0.41</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.24.24.24.2" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.24.24.24.2.1">
<span class="ltx_p" id="A2.T6.24.24.24.2.1.1"><math alttext="0.20" class="ltx_Math" display="inline" id="A2.T6.24.24.24.2.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.24.24.24.2.1.1.m1.1a"><mn id="A2.T6.24.24.24.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.24.24.24.2.1.1.m1.1.1.cmml">0.20</mn><annotation-xml encoding="MathML-Content" id="A2.T6.24.24.24.2.1.1.m1.1b"><cn id="A2.T6.24.24.24.2.1.1.m1.1.1.cmml" type="float" xref="A2.T6.24.24.24.2.1.1.m1.1.1">0.20</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.24.24.24.2.1.1.m1.1c">0.20</annotation><annotation encoding="application/x-llamapun" id="A2.T6.24.24.24.2.1.1.m1.1d">0.20</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.25.25.25.3" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.25.25.25.3.1">
<span class="ltx_p" id="A2.T6.25.25.25.3.1.1"><math alttext="0.41" class="ltx_Math" display="inline" id="A2.T6.25.25.25.3.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.25.25.25.3.1.1.m1.1a"><mn id="A2.T6.25.25.25.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.25.25.25.3.1.1.m1.1.1.cmml">0.41</mn><annotation-xml encoding="MathML-Content" id="A2.T6.25.25.25.3.1.1.m1.1b"><cn id="A2.T6.25.25.25.3.1.1.m1.1.1.cmml" type="float" xref="A2.T6.25.25.25.3.1.1.m1.1.1">0.41</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.25.25.25.3.1.1.m1.1c">0.41</annotation><annotation encoding="application/x-llamapun" id="A2.T6.25.25.25.3.1.1.m1.1d">0.41</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.26.26.26.4" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.26.26.26.4.1">
<span class="ltx_p" id="A2.T6.26.26.26.4.1.1"><math alttext="0.62" class="ltx_Math" display="inline" id="A2.T6.26.26.26.4.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.26.26.26.4.1.1.m1.1a"><mn id="A2.T6.26.26.26.4.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.26.26.26.4.1.1.m1.1.1.cmml">0.62</mn><annotation-xml encoding="MathML-Content" id="A2.T6.26.26.26.4.1.1.m1.1b"><cn id="A2.T6.26.26.26.4.1.1.m1.1.1.cmml" type="float" xref="A2.T6.26.26.26.4.1.1.m1.1.1">0.62</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.26.26.26.4.1.1.m1.1c">0.62</annotation><annotation encoding="application/x-llamapun" id="A2.T6.26.26.26.4.1.1.m1.1d">0.62</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.27.27.27.5" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.27.27.27.5.1">
<span class="ltx_p" id="A2.T6.27.27.27.5.1.1"><math alttext="0.41" class="ltx_Math" display="inline" id="A2.T6.27.27.27.5.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.27.27.27.5.1.1.m1.1a"><mn id="A2.T6.27.27.27.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.27.27.27.5.1.1.m1.1.1.cmml">0.41</mn><annotation-xml encoding="MathML-Content" id="A2.T6.27.27.27.5.1.1.m1.1b"><cn id="A2.T6.27.27.27.5.1.1.m1.1.1.cmml" type="float" xref="A2.T6.27.27.27.5.1.1.m1.1.1">0.41</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.27.27.27.5.1.1.m1.1c">0.41</annotation><annotation encoding="application/x-llamapun" id="A2.T6.27.27.27.5.1.1.m1.1d">0.41</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A2.T6.28.28.28.6" style="background-color:#FFBFBF;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.28.28.28.6.1">
<span class="ltx_p" id="A2.T6.28.28.28.6.1.1"><math alttext="0.94" class="ltx_Math" display="inline" id="A2.T6.28.28.28.6.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A2.T6.28.28.28.6.1.1.m1.1a"><mn id="A2.T6.28.28.28.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A2.T6.28.28.28.6.1.1.m1.1.1.cmml">0.94</mn><annotation-xml encoding="MathML-Content" id="A2.T6.28.28.28.6.1.1.m1.1b"><cn id="A2.T6.28.28.28.6.1.1.m1.1.1.cmml" type="float" xref="A2.T6.28.28.28.6.1.1.m1.1.1">0.94</cn></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.28.28.28.6.1.1.m1.1c">0.94</annotation><annotation encoding="application/x-llamapun" id="A2.T6.28.28.28.6.1.1.m1.1d">0.94</annotation></semantics></math></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a statistical hypothesis test used to detect global cache sharing in various language model APIs.  The test compares response times for prompts with shared prefixes but different suffixes, to identify whether there is evidence of caching. Each cell represents the p-value obtained from a statistical test for a specific API, using a particular number of requests to prime the cache and either client-side or server-side timing.  A p-value less than a predetermined significance level (after Bonferroni correction) indicates statistically significant evidence of global caching.  Blank cells indicate that caching was already confirmed at a lower level of testing.  APIs are grouped by whether caching was found at the global level, enhancing readability.
> <details>
> <summary>read the caption</summary>
> Table 6: P-values from level 4 of our audits: prompts with the same prefix but different suffixes, global cache sharing. Each column shows one combination of NumVictimRequests and timing source (client-side or server-side timing). Green indicates a significant p-value, after performing the appropriate Bonferroni corrections. Red indicates a p-value that is not significant. “—” indicates that the given timing source was not available for the API. A blank cell indicates that the given value of NumVictimRequests was not tested because caching was detected in the API using a smaller value of NumVictimRequests. APIs are grouped by whether caching was detected in this level and sorted alphabetically within the groups.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T7.150">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T7.150.151.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A4.T7.150.151.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="A4.T7.150.151.1.2">Embedding</th>
</tr>
<tr class="ltx_tr" id="A4.T7.150.152.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A4.T7.150.152.2.1">Time (<span class="ltx_ERROR undefined" id="A4.T7.150.152.2.1.1">\unit</span>)</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T7.150.152.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.150.152.2.2.1">
<span class="ltx_p" id="A4.T7.150.152.2.2.1.1">Coordinate 1</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T7.150.152.2.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.150.152.2.3.1">
<span class="ltx_p" id="A4.T7.150.152.2.3.1.1">Coordinate 2</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T7.150.152.2.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.150.152.2.4.1">
<span class="ltx_p" id="A4.T7.150.152.2.4.1.1">Coordinate 3</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T7.150.152.2.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.150.152.2.5.1">
<span class="ltx_p" id="A4.T7.150.152.2.5.1.1">Coordinate 4</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T7.150.152.2.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.150.152.2.6.1">
<span class="ltx_p" id="A4.T7.150.152.2.6.1.1">Coordinate 5</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.6.6" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T7.1.1.1"><math alttext="0.100" class="ltx_Math" display="inline" id="A4.T7.1.1.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T7.1.1.1.m1.1a"><mn id="A4.T7.1.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.1.1.1.m1.1.1.cmml">0.100</mn><annotation-xml encoding="MathML-Content" id="A4.T7.1.1.1.m1.1b"><cn id="A4.T7.1.1.1.m1.1.1.cmml" type="float" xref="A4.T7.1.1.1.m1.1.1">0.100</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.1.1.1.m1.1c">0.100</annotation><annotation encoding="application/x-llamapun" id="A4.T7.1.1.1.m1.1d">0.100</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T7.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.2.2.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.2.2.2.1.1"><math alttext="0.00522740" class="ltx_Math" display="inline" id="A4.T7.2.2.2.1.1.m1.1"><semantics id="A4.T7.2.2.2.1.1.m1.1a"><mn id="A4.T7.2.2.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.2.2.2.1.1.m1.1.1.cmml">0.00522740</mn><annotation-xml encoding="MathML-Content" id="A4.T7.2.2.2.1.1.m1.1b"><cn id="A4.T7.2.2.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.2.2.2.1.1.m1.1.1">0.00522740</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.2.2.2.1.1.m1.1c">0.00522740</annotation><annotation encoding="application/x-llamapun" id="A4.T7.2.2.2.1.1.m1.1d">0.00522740</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T7.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.3.3.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.3.3.3.1.1"><math alttext="0.02509154" class="ltx_Math" display="inline" id="A4.T7.3.3.3.1.1.m1.1"><semantics id="A4.T7.3.3.3.1.1.m1.1a"><mn id="A4.T7.3.3.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.3.3.3.1.1.m1.1.1.cmml">0.02509154</mn><annotation-xml encoding="MathML-Content" id="A4.T7.3.3.3.1.1.m1.1b"><cn id="A4.T7.3.3.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.3.3.3.1.1.m1.1.1">0.02509154</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.3.3.3.1.1.m1.1c">0.02509154</annotation><annotation encoding="application/x-llamapun" id="A4.T7.3.3.3.1.1.m1.1d">0.02509154</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T7.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.4.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.4.4.4.1.1"><math alttext="-0.04450446" class="ltx_Math" display="inline" id="A4.T7.4.4.4.1.1.m1.1"><semantics id="A4.T7.4.4.4.1.1.m1.1a"><mrow id="A4.T7.4.4.4.1.1.m1.1.1.2"><mo id="A4.T7.4.4.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T7.4.4.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.4.4.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T7.4.4.4.1.1.m1.1.1.1.cmml">0.04450446</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.4.4.4.1.1.m1.1b"><cn id="A4.T7.4.4.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.4.4.4.1.1.m1.1.1.2a">-0.04450446</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.4.4.4.1.1.m1.1c">-0.04450446</annotation><annotation encoding="application/x-llamapun" id="A4.T7.4.4.4.1.1.m1.1d">- 0.04450446</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T7.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.5.5.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.5.5.5.1.1"><math alttext="0.01837845" class="ltx_Math" display="inline" id="A4.T7.5.5.5.1.1.m1.1"><semantics id="A4.T7.5.5.5.1.1.m1.1a"><mn id="A4.T7.5.5.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.5.5.5.1.1.m1.1.1.cmml">0.01837845</mn><annotation-xml encoding="MathML-Content" id="A4.T7.5.5.5.1.1.m1.1b"><cn id="A4.T7.5.5.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.5.5.5.1.1.m1.1.1">0.01837845</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.5.5.5.1.1.m1.1c">0.01837845</annotation><annotation encoding="application/x-llamapun" id="A4.T7.5.5.5.1.1.m1.1d">0.01837845</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T7.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.6.6.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.6.6.6.1.1"><math alttext="0.02944954" class="ltx_Math" display="inline" id="A4.T7.6.6.6.1.1.m1.1"><semantics id="A4.T7.6.6.6.1.1.m1.1a"><mn id="A4.T7.6.6.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.6.6.6.1.1.m1.1.1.cmml">0.02944954</mn><annotation-xml encoding="MathML-Content" id="A4.T7.6.6.6.1.1.m1.1b"><cn id="A4.T7.6.6.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.6.6.6.1.1.m1.1.1">0.02944954</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.6.6.6.1.1.m1.1c">0.02944954</annotation><annotation encoding="application/x-llamapun" id="A4.T7.6.6.6.1.1.m1.1d">0.02944954</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.12.12" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.7.7.1"><math alttext="0.096" class="ltx_Math" display="inline" id="A4.T7.7.7.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.7.7.1.m1.1a"><mn id="A4.T7.7.7.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.7.7.1.m1.1.1.cmml">0.096</mn><annotation-xml encoding="MathML-Content" id="A4.T7.7.7.1.m1.1b"><cn id="A4.T7.7.7.1.m1.1.1.cmml" type="float" xref="A4.T7.7.7.1.m1.1.1">0.096</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.7.7.1.m1.1c">0.096</annotation><annotation encoding="application/x-llamapun" id="A4.T7.7.7.1.m1.1d">0.096</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.8.8.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.8.8.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.8.8.2.1.1.m1.1"><semantics id="A4.T7.8.8.2.1.1.m1.1a"><mn id="A4.T7.8.8.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.8.8.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.8.8.2.1.1.m1.1b"><cn id="A4.T7.8.8.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.8.8.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.8.8.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.8.8.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.9.9.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.9.9.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.9.9.3.1.1.m1.1"><semantics id="A4.T7.9.9.3.1.1.m1.1a"><mn id="A4.T7.9.9.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.9.9.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.9.9.3.1.1.m1.1b"><cn id="A4.T7.9.9.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.9.9.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.9.9.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.9.9.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.10.10.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.10.10.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.10.10.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.10.10.4.1.1.m1.1"><semantics id="A4.T7.10.10.4.1.1.m1.1a"><mrow id="A4.T7.10.10.4.1.1.m1.1.1.2"><mo id="A4.T7.10.10.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.10.10.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.10.10.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.10.10.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.10.10.4.1.1.m1.1b"><cn id="A4.T7.10.10.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.10.10.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.10.10.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.10.10.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.11.11.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.11.11.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.11.11.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.11.11.5.1.1.m1.1"><semantics id="A4.T7.11.11.5.1.1.m1.1a"><mn id="A4.T7.11.11.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.11.11.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.11.11.5.1.1.m1.1b"><cn id="A4.T7.11.11.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.11.11.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.11.11.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.11.11.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.12.12.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.12.12.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.12.12.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.12.12.6.1.1.m1.1"><semantics id="A4.T7.12.12.6.1.1.m1.1a"><mn id="A4.T7.12.12.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.12.12.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.12.12.6.1.1.m1.1b"><cn id="A4.T7.12.12.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.12.12.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.12.12.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.12.12.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.18.18" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.13.13.1"><math alttext="0.119" class="ltx_Math" display="inline" id="A4.T7.13.13.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.13.13.1.m1.1a"><mn id="A4.T7.13.13.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.13.13.1.m1.1.1.cmml">0.119</mn><annotation-xml encoding="MathML-Content" id="A4.T7.13.13.1.m1.1b"><cn id="A4.T7.13.13.1.m1.1.1.cmml" type="float" xref="A4.T7.13.13.1.m1.1.1">0.119</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.13.13.1.m1.1c">0.119</annotation><annotation encoding="application/x-llamapun" id="A4.T7.13.13.1.m1.1d">0.119</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.14.14.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.14.14.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.14.14.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.14.14.2.1.1.m1.1"><semantics id="A4.T7.14.14.2.1.1.m1.1a"><mn id="A4.T7.14.14.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.14.14.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.14.14.2.1.1.m1.1b"><cn id="A4.T7.14.14.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.14.14.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.14.14.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.14.14.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.15.15.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.15.15.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.15.15.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.15.15.3.1.1.m1.1"><semantics id="A4.T7.15.15.3.1.1.m1.1a"><mn id="A4.T7.15.15.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.15.15.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.15.15.3.1.1.m1.1b"><cn id="A4.T7.15.15.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.15.15.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.15.15.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.15.15.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.16.16.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.16.16.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.16.16.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.16.16.4.1.1.m1.1"><semantics id="A4.T7.16.16.4.1.1.m1.1a"><mrow id="A4.T7.16.16.4.1.1.m1.1.1.2"><mo id="A4.T7.16.16.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.16.16.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.16.16.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.16.16.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.16.16.4.1.1.m1.1b"><cn id="A4.T7.16.16.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.16.16.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.16.16.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.16.16.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.17.17.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.17.17.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.17.17.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.17.17.5.1.1.m1.1"><semantics id="A4.T7.17.17.5.1.1.m1.1a"><mn id="A4.T7.17.17.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.17.17.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.17.17.5.1.1.m1.1b"><cn id="A4.T7.17.17.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.17.17.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.17.17.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.17.17.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.18.18.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.18.18.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.18.18.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.18.18.6.1.1.m1.1"><semantics id="A4.T7.18.18.6.1.1.m1.1a"><mn id="A4.T7.18.18.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.18.18.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.18.18.6.1.1.m1.1b"><cn id="A4.T7.18.18.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.18.18.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.18.18.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.18.18.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.24.24" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.19.19.1"><math alttext="0.088" class="ltx_Math" display="inline" id="A4.T7.19.19.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.19.19.1.m1.1a"><mn id="A4.T7.19.19.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.19.19.1.m1.1.1.cmml">0.088</mn><annotation-xml encoding="MathML-Content" id="A4.T7.19.19.1.m1.1b"><cn id="A4.T7.19.19.1.m1.1.1.cmml" type="float" xref="A4.T7.19.19.1.m1.1.1">0.088</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.19.19.1.m1.1c">0.088</annotation><annotation encoding="application/x-llamapun" id="A4.T7.19.19.1.m1.1d">0.088</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.20.20.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.20.20.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.20.20.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.20.20.2.1.1.m1.1"><semantics id="A4.T7.20.20.2.1.1.m1.1a"><mn id="A4.T7.20.20.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.20.20.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.20.20.2.1.1.m1.1b"><cn id="A4.T7.20.20.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.20.20.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.20.20.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.20.20.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.21.21.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.21.21.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.21.21.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.21.21.3.1.1.m1.1"><semantics id="A4.T7.21.21.3.1.1.m1.1a"><mn id="A4.T7.21.21.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.21.21.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.21.21.3.1.1.m1.1b"><cn id="A4.T7.21.21.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.21.21.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.21.21.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.21.21.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.22.22.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.22.22.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.22.22.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.22.22.4.1.1.m1.1"><semantics id="A4.T7.22.22.4.1.1.m1.1a"><mrow id="A4.T7.22.22.4.1.1.m1.1.1.2"><mo id="A4.T7.22.22.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.22.22.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.22.22.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.22.22.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.22.22.4.1.1.m1.1b"><cn id="A4.T7.22.22.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.22.22.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.22.22.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.22.22.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.23.23.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.23.23.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.23.23.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.23.23.5.1.1.m1.1"><semantics id="A4.T7.23.23.5.1.1.m1.1a"><mn id="A4.T7.23.23.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.23.23.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.23.23.5.1.1.m1.1b"><cn id="A4.T7.23.23.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.23.23.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.23.23.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.23.23.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.24.24.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.24.24.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.24.24.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.24.24.6.1.1.m1.1"><semantics id="A4.T7.24.24.6.1.1.m1.1a"><mn id="A4.T7.24.24.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.24.24.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.24.24.6.1.1.m1.1b"><cn id="A4.T7.24.24.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.24.24.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.24.24.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.24.24.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.30.30" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.25.25.1"><math alttext="0.216" class="ltx_Math" display="inline" id="A4.T7.25.25.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T7.25.25.1.m1.1a"><mn id="A4.T7.25.25.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.25.25.1.m1.1.1.cmml">0.216</mn><annotation-xml encoding="MathML-Content" id="A4.T7.25.25.1.m1.1b"><cn id="A4.T7.25.25.1.m1.1.1.cmml" type="float" xref="A4.T7.25.25.1.m1.1.1">0.216</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.25.25.1.m1.1c">0.216</annotation><annotation encoding="application/x-llamapun" id="A4.T7.25.25.1.m1.1d">0.216</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.26.26.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.26.26.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.26.26.2.1.1"><math alttext="0.00523302" class="ltx_Math" display="inline" id="A4.T7.26.26.2.1.1.m1.1"><semantics id="A4.T7.26.26.2.1.1.m1.1a"><mn id="A4.T7.26.26.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.26.26.2.1.1.m1.1.1.cmml">0.00523302</mn><annotation-xml encoding="MathML-Content" id="A4.T7.26.26.2.1.1.m1.1b"><cn id="A4.T7.26.26.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.26.26.2.1.1.m1.1.1">0.00523302</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.26.26.2.1.1.m1.1c">0.00523302</annotation><annotation encoding="application/x-llamapun" id="A4.T7.26.26.2.1.1.m1.1d">0.00523302</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.27.27.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.27.27.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.27.27.3.1.1"><math alttext="0.02509207" class="ltx_Math" display="inline" id="A4.T7.27.27.3.1.1.m1.1"><semantics id="A4.T7.27.27.3.1.1.m1.1a"><mn id="A4.T7.27.27.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.27.27.3.1.1.m1.1.1.cmml">0.02509207</mn><annotation-xml encoding="MathML-Content" id="A4.T7.27.27.3.1.1.m1.1b"><cn id="A4.T7.27.27.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.27.27.3.1.1.m1.1.1">0.02509207</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.27.27.3.1.1.m1.1c">0.02509207</annotation><annotation encoding="application/x-llamapun" id="A4.T7.27.27.3.1.1.m1.1d">0.02509207</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.28.28.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.28.28.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.28.28.4.1.1"><math alttext="-0.04457144" class="ltx_Math" display="inline" id="A4.T7.28.28.4.1.1.m1.1"><semantics id="A4.T7.28.28.4.1.1.m1.1a"><mrow id="A4.T7.28.28.4.1.1.m1.1.1.2"><mo id="A4.T7.28.28.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T7.28.28.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.28.28.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T7.28.28.4.1.1.m1.1.1.1.cmml">0.04457144</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.28.28.4.1.1.m1.1b"><cn id="A4.T7.28.28.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.28.28.4.1.1.m1.1.1.2a">-0.04457144</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.28.28.4.1.1.m1.1c">-0.04457144</annotation><annotation encoding="application/x-llamapun" id="A4.T7.28.28.4.1.1.m1.1d">- 0.04457144</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.29.29.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.29.29.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.29.29.5.1.1"><math alttext="0.01835683" class="ltx_Math" display="inline" id="A4.T7.29.29.5.1.1.m1.1"><semantics id="A4.T7.29.29.5.1.1.m1.1a"><mn id="A4.T7.29.29.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.29.29.5.1.1.m1.1.1.cmml">0.01835683</mn><annotation-xml encoding="MathML-Content" id="A4.T7.29.29.5.1.1.m1.1b"><cn id="A4.T7.29.29.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.29.29.5.1.1.m1.1.1">0.01835683</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.29.29.5.1.1.m1.1c">0.01835683</annotation><annotation encoding="application/x-llamapun" id="A4.T7.29.29.5.1.1.m1.1d">0.01835683</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.30.30.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.30.30.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.30.30.6.1.1"><math alttext="0.02947217" class="ltx_Math" display="inline" id="A4.T7.30.30.6.1.1.m1.1"><semantics id="A4.T7.30.30.6.1.1.m1.1a"><mn id="A4.T7.30.30.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.30.30.6.1.1.m1.1.1.cmml">0.02947217</mn><annotation-xml encoding="MathML-Content" id="A4.T7.30.30.6.1.1.m1.1b"><cn id="A4.T7.30.30.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.30.30.6.1.1.m1.1.1">0.02947217</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.30.30.6.1.1.m1.1c">0.02947217</annotation><annotation encoding="application/x-llamapun" id="A4.T7.30.30.6.1.1.m1.1d">0.02947217</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.36.36" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.31.31.1"><math alttext="0.100" class="ltx_Math" display="inline" id="A4.T7.31.31.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.31.31.1.m1.1a"><mn id="A4.T7.31.31.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.31.31.1.m1.1.1.cmml">0.100</mn><annotation-xml encoding="MathML-Content" id="A4.T7.31.31.1.m1.1b"><cn id="A4.T7.31.31.1.m1.1.1.cmml" type="float" xref="A4.T7.31.31.1.m1.1.1">0.100</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.31.31.1.m1.1c">0.100</annotation><annotation encoding="application/x-llamapun" id="A4.T7.31.31.1.m1.1d">0.100</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.32.32.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.32.32.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.32.32.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.32.32.2.1.1.m1.1"><semantics id="A4.T7.32.32.2.1.1.m1.1a"><mn id="A4.T7.32.32.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.32.32.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.32.32.2.1.1.m1.1b"><cn id="A4.T7.32.32.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.32.32.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.32.32.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.32.32.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.33.33.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.33.33.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.33.33.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.33.33.3.1.1.m1.1"><semantics id="A4.T7.33.33.3.1.1.m1.1a"><mn id="A4.T7.33.33.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.33.33.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.33.33.3.1.1.m1.1b"><cn id="A4.T7.33.33.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.33.33.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.33.33.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.33.33.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.34.34.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.34.34.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.34.34.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.34.34.4.1.1.m1.1"><semantics id="A4.T7.34.34.4.1.1.m1.1a"><mrow id="A4.T7.34.34.4.1.1.m1.1.1.2"><mo id="A4.T7.34.34.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.34.34.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.34.34.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.34.34.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.34.34.4.1.1.m1.1b"><cn id="A4.T7.34.34.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.34.34.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.34.34.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.34.34.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.35.35.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.35.35.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.35.35.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.35.35.5.1.1.m1.1"><semantics id="A4.T7.35.35.5.1.1.m1.1a"><mn id="A4.T7.35.35.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.35.35.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.35.35.5.1.1.m1.1b"><cn id="A4.T7.35.35.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.35.35.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.35.35.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.35.35.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.36.36.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.36.36.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.36.36.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.36.36.6.1.1.m1.1"><semantics id="A4.T7.36.36.6.1.1.m1.1a"><mn id="A4.T7.36.36.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.36.36.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.36.36.6.1.1.m1.1b"><cn id="A4.T7.36.36.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.36.36.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.36.36.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.36.36.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.42.42" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.37.37.1"><math alttext="0.096" class="ltx_Math" display="inline" id="A4.T7.37.37.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.37.37.1.m1.1a"><mn id="A4.T7.37.37.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.37.37.1.m1.1.1.cmml">0.096</mn><annotation-xml encoding="MathML-Content" id="A4.T7.37.37.1.m1.1b"><cn id="A4.T7.37.37.1.m1.1.1.cmml" type="float" xref="A4.T7.37.37.1.m1.1.1">0.096</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.37.37.1.m1.1c">0.096</annotation><annotation encoding="application/x-llamapun" id="A4.T7.37.37.1.m1.1d">0.096</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.38.38.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.38.38.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.38.38.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.38.38.2.1.1.m1.1"><semantics id="A4.T7.38.38.2.1.1.m1.1a"><mn id="A4.T7.38.38.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.38.38.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.38.38.2.1.1.m1.1b"><cn id="A4.T7.38.38.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.38.38.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.38.38.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.38.38.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.39.39.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.39.39.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.39.39.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.39.39.3.1.1.m1.1"><semantics id="A4.T7.39.39.3.1.1.m1.1a"><mn id="A4.T7.39.39.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.39.39.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.39.39.3.1.1.m1.1b"><cn id="A4.T7.39.39.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.39.39.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.39.39.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.39.39.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.40.40.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.40.40.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.40.40.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.40.40.4.1.1.m1.1"><semantics id="A4.T7.40.40.4.1.1.m1.1a"><mrow id="A4.T7.40.40.4.1.1.m1.1.1.2"><mo id="A4.T7.40.40.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.40.40.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.40.40.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.40.40.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.40.40.4.1.1.m1.1b"><cn id="A4.T7.40.40.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.40.40.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.40.40.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.40.40.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.41.41.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.41.41.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.41.41.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.41.41.5.1.1.m1.1"><semantics id="A4.T7.41.41.5.1.1.m1.1a"><mn id="A4.T7.41.41.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.41.41.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.41.41.5.1.1.m1.1b"><cn id="A4.T7.41.41.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.41.41.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.41.41.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.41.41.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.42.42.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.42.42.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.42.42.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.42.42.6.1.1.m1.1"><semantics id="A4.T7.42.42.6.1.1.m1.1a"><mn id="A4.T7.42.42.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.42.42.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.42.42.6.1.1.m1.1b"><cn id="A4.T7.42.42.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.42.42.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.42.42.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.42.42.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.48.48" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.43.43.1"><math alttext="0.088" class="ltx_Math" display="inline" id="A4.T7.43.43.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.43.43.1.m1.1a"><mn id="A4.T7.43.43.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.43.43.1.m1.1.1.cmml">0.088</mn><annotation-xml encoding="MathML-Content" id="A4.T7.43.43.1.m1.1b"><cn id="A4.T7.43.43.1.m1.1.1.cmml" type="float" xref="A4.T7.43.43.1.m1.1.1">0.088</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.43.43.1.m1.1c">0.088</annotation><annotation encoding="application/x-llamapun" id="A4.T7.43.43.1.m1.1d">0.088</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.44.44.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.44.44.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.44.44.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.44.44.2.1.1.m1.1"><semantics id="A4.T7.44.44.2.1.1.m1.1a"><mn id="A4.T7.44.44.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.44.44.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.44.44.2.1.1.m1.1b"><cn id="A4.T7.44.44.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.44.44.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.44.44.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.44.44.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.45.45.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.45.45.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.45.45.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.45.45.3.1.1.m1.1"><semantics id="A4.T7.45.45.3.1.1.m1.1a"><mn id="A4.T7.45.45.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.45.45.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.45.45.3.1.1.m1.1b"><cn id="A4.T7.45.45.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.45.45.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.45.45.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.45.45.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.46.46.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.46.46.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.46.46.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.46.46.4.1.1.m1.1"><semantics id="A4.T7.46.46.4.1.1.m1.1a"><mrow id="A4.T7.46.46.4.1.1.m1.1.1.2"><mo id="A4.T7.46.46.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.46.46.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.46.46.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.46.46.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.46.46.4.1.1.m1.1b"><cn id="A4.T7.46.46.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.46.46.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.46.46.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.46.46.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.47.47.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.47.47.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.47.47.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.47.47.5.1.1.m1.1"><semantics id="A4.T7.47.47.5.1.1.m1.1a"><mn id="A4.T7.47.47.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.47.47.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.47.47.5.1.1.m1.1b"><cn id="A4.T7.47.47.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.47.47.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.47.47.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.47.47.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.48.48.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.48.48.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.48.48.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.48.48.6.1.1.m1.1"><semantics id="A4.T7.48.48.6.1.1.m1.1a"><mn id="A4.T7.48.48.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.48.48.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.48.48.6.1.1.m1.1b"><cn id="A4.T7.48.48.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.48.48.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.48.48.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.48.48.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.54.54" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.49.49.1"><math alttext="0.077" class="ltx_Math" display="inline" id="A4.T7.49.49.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.49.49.1.m1.1a"><mn id="A4.T7.49.49.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.49.49.1.m1.1.1.cmml">0.077</mn><annotation-xml encoding="MathML-Content" id="A4.T7.49.49.1.m1.1b"><cn id="A4.T7.49.49.1.m1.1.1.cmml" type="float" xref="A4.T7.49.49.1.m1.1.1">0.077</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.49.49.1.m1.1c">0.077</annotation><annotation encoding="application/x-llamapun" id="A4.T7.49.49.1.m1.1d">0.077</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.50.50.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.50.50.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.50.50.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.50.50.2.1.1.m1.1"><semantics id="A4.T7.50.50.2.1.1.m1.1a"><mn id="A4.T7.50.50.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.50.50.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.50.50.2.1.1.m1.1b"><cn id="A4.T7.50.50.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.50.50.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.50.50.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.50.50.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.51.51.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.51.51.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.51.51.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.51.51.3.1.1.m1.1"><semantics id="A4.T7.51.51.3.1.1.m1.1a"><mn id="A4.T7.51.51.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.51.51.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.51.51.3.1.1.m1.1b"><cn id="A4.T7.51.51.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.51.51.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.51.51.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.51.51.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.52.52.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.52.52.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.52.52.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.52.52.4.1.1.m1.1"><semantics id="A4.T7.52.52.4.1.1.m1.1a"><mrow id="A4.T7.52.52.4.1.1.m1.1.1.2"><mo id="A4.T7.52.52.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.52.52.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.52.52.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.52.52.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.52.52.4.1.1.m1.1b"><cn id="A4.T7.52.52.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.52.52.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.52.52.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.52.52.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.53.53.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.53.53.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.53.53.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.53.53.5.1.1.m1.1"><semantics id="A4.T7.53.53.5.1.1.m1.1a"><mn id="A4.T7.53.53.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.53.53.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.53.53.5.1.1.m1.1b"><cn id="A4.T7.53.53.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.53.53.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.53.53.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.53.53.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.54.54.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.54.54.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.54.54.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.54.54.6.1.1.m1.1"><semantics id="A4.T7.54.54.6.1.1.m1.1a"><mn id="A4.T7.54.54.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.54.54.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.54.54.6.1.1.m1.1b"><cn id="A4.T7.54.54.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.54.54.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.54.54.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.54.54.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.60.60" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.55.55.1"><math alttext="0.036" class="ltx_Math" display="inline" id="A4.T7.55.55.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T7.55.55.1.m1.1a"><mn id="A4.T7.55.55.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.55.55.1.m1.1.1.cmml">0.036</mn><annotation-xml encoding="MathML-Content" id="A4.T7.55.55.1.m1.1b"><cn id="A4.T7.55.55.1.m1.1.1.cmml" type="float" xref="A4.T7.55.55.1.m1.1.1">0.036</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.55.55.1.m1.1c">0.036</annotation><annotation encoding="application/x-llamapun" id="A4.T7.55.55.1.m1.1d">0.036</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.56.56.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.56.56.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.56.56.2.1.1"><math alttext="0.00535751" class="ltx_Math" display="inline" id="A4.T7.56.56.2.1.1.m1.1"><semantics id="A4.T7.56.56.2.1.1.m1.1a"><mn id="A4.T7.56.56.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.56.56.2.1.1.m1.1.1.cmml">0.00535751</mn><annotation-xml encoding="MathML-Content" id="A4.T7.56.56.2.1.1.m1.1b"><cn id="A4.T7.56.56.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.56.56.2.1.1.m1.1.1">0.00535751</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.56.56.2.1.1.m1.1c">0.00535751</annotation><annotation encoding="application/x-llamapun" id="A4.T7.56.56.2.1.1.m1.1d">0.00535751</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.57.57.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.57.57.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.57.57.3.1.1"><math alttext="0.02517040" class="ltx_Math" display="inline" id="A4.T7.57.57.3.1.1.m1.1"><semantics id="A4.T7.57.57.3.1.1.m1.1a"><mn id="A4.T7.57.57.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.57.57.3.1.1.m1.1.1.cmml">0.02517040</mn><annotation-xml encoding="MathML-Content" id="A4.T7.57.57.3.1.1.m1.1b"><cn id="A4.T7.57.57.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.57.57.3.1.1.m1.1.1">0.02517040</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.57.57.3.1.1.m1.1c">0.02517040</annotation><annotation encoding="application/x-llamapun" id="A4.T7.57.57.3.1.1.m1.1d">0.02517040</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.58.58.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.58.58.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.58.58.4.1.1"><math alttext="-0.04455426" class="ltx_Math" display="inline" id="A4.T7.58.58.4.1.1.m1.1"><semantics id="A4.T7.58.58.4.1.1.m1.1a"><mrow id="A4.T7.58.58.4.1.1.m1.1.1.2"><mo id="A4.T7.58.58.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T7.58.58.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.58.58.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T7.58.58.4.1.1.m1.1.1.1.cmml">0.04455426</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.58.58.4.1.1.m1.1b"><cn id="A4.T7.58.58.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.58.58.4.1.1.m1.1.1.2a">-0.04455426</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.58.58.4.1.1.m1.1c">-0.04455426</annotation><annotation encoding="application/x-llamapun" id="A4.T7.58.58.4.1.1.m1.1d">- 0.04455426</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.59.59.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.59.59.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.59.59.5.1.1"><math alttext="0.01839376" class="ltx_Math" display="inline" id="A4.T7.59.59.5.1.1.m1.1"><semantics id="A4.T7.59.59.5.1.1.m1.1a"><mn id="A4.T7.59.59.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.59.59.5.1.1.m1.1.1.cmml">0.01839376</mn><annotation-xml encoding="MathML-Content" id="A4.T7.59.59.5.1.1.m1.1b"><cn id="A4.T7.59.59.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.59.59.5.1.1.m1.1.1">0.01839376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.59.59.5.1.1.m1.1c">0.01839376</annotation><annotation encoding="application/x-llamapun" id="A4.T7.59.59.5.1.1.m1.1d">0.01839376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.60.60.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.60.60.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.60.60.6.1.1"><math alttext="0.02954882" class="ltx_Math" display="inline" id="A4.T7.60.60.6.1.1.m1.1"><semantics id="A4.T7.60.60.6.1.1.m1.1a"><mn id="A4.T7.60.60.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.60.60.6.1.1.m1.1.1.cmml">0.02954882</mn><annotation-xml encoding="MathML-Content" id="A4.T7.60.60.6.1.1.m1.1b"><cn id="A4.T7.60.60.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.60.60.6.1.1.m1.1.1">0.02954882</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.60.60.6.1.1.m1.1c">0.02954882</annotation><annotation encoding="application/x-llamapun" id="A4.T7.60.60.6.1.1.m1.1d">0.02954882</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.66.66" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.61.61.1"><math alttext="0.076" class="ltx_Math" display="inline" id="A4.T7.61.61.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.61.61.1.m1.1a"><mn id="A4.T7.61.61.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.61.61.1.m1.1.1.cmml">0.076</mn><annotation-xml encoding="MathML-Content" id="A4.T7.61.61.1.m1.1b"><cn id="A4.T7.61.61.1.m1.1.1.cmml" type="float" xref="A4.T7.61.61.1.m1.1.1">0.076</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.61.61.1.m1.1c">0.076</annotation><annotation encoding="application/x-llamapun" id="A4.T7.61.61.1.m1.1d">0.076</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.62.62.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.62.62.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.62.62.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.62.62.2.1.1.m1.1"><semantics id="A4.T7.62.62.2.1.1.m1.1a"><mn id="A4.T7.62.62.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.62.62.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.62.62.2.1.1.m1.1b"><cn id="A4.T7.62.62.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.62.62.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.62.62.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.62.62.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.63.63.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.63.63.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.63.63.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.63.63.3.1.1.m1.1"><semantics id="A4.T7.63.63.3.1.1.m1.1a"><mn id="A4.T7.63.63.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.63.63.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.63.63.3.1.1.m1.1b"><cn id="A4.T7.63.63.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.63.63.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.63.63.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.63.63.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.64.64.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.64.64.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.64.64.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.64.64.4.1.1.m1.1"><semantics id="A4.T7.64.64.4.1.1.m1.1a"><mrow id="A4.T7.64.64.4.1.1.m1.1.1.2"><mo id="A4.T7.64.64.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.64.64.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.64.64.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.64.64.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.64.64.4.1.1.m1.1b"><cn id="A4.T7.64.64.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.64.64.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.64.64.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.64.64.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.65.65.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.65.65.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.65.65.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.65.65.5.1.1.m1.1"><semantics id="A4.T7.65.65.5.1.1.m1.1a"><mn id="A4.T7.65.65.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.65.65.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.65.65.5.1.1.m1.1b"><cn id="A4.T7.65.65.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.65.65.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.65.65.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.65.65.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.66.66.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.66.66.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.66.66.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.66.66.6.1.1.m1.1"><semantics id="A4.T7.66.66.6.1.1.m1.1a"><mn id="A4.T7.66.66.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.66.66.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.66.66.6.1.1.m1.1b"><cn id="A4.T7.66.66.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.66.66.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.66.66.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.66.66.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.72.72" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.67.67.1"><math alttext="0.124" class="ltx_Math" display="inline" id="A4.T7.67.67.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.67.67.1.m1.1a"><mn id="A4.T7.67.67.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.67.67.1.m1.1.1.cmml">0.124</mn><annotation-xml encoding="MathML-Content" id="A4.T7.67.67.1.m1.1b"><cn id="A4.T7.67.67.1.m1.1.1.cmml" type="float" xref="A4.T7.67.67.1.m1.1.1">0.124</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.67.67.1.m1.1c">0.124</annotation><annotation encoding="application/x-llamapun" id="A4.T7.67.67.1.m1.1d">0.124</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.68.68.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.68.68.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.68.68.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.68.68.2.1.1.m1.1"><semantics id="A4.T7.68.68.2.1.1.m1.1a"><mn id="A4.T7.68.68.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.68.68.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.68.68.2.1.1.m1.1b"><cn id="A4.T7.68.68.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.68.68.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.68.68.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.68.68.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.69.69.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.69.69.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.69.69.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.69.69.3.1.1.m1.1"><semantics id="A4.T7.69.69.3.1.1.m1.1a"><mn id="A4.T7.69.69.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.69.69.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.69.69.3.1.1.m1.1b"><cn id="A4.T7.69.69.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.69.69.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.69.69.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.69.69.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.70.70.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.70.70.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.70.70.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.70.70.4.1.1.m1.1"><semantics id="A4.T7.70.70.4.1.1.m1.1a"><mrow id="A4.T7.70.70.4.1.1.m1.1.1.2"><mo id="A4.T7.70.70.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.70.70.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.70.70.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.70.70.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.70.70.4.1.1.m1.1b"><cn id="A4.T7.70.70.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.70.70.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.70.70.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.70.70.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.71.71.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.71.71.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.71.71.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.71.71.5.1.1.m1.1"><semantics id="A4.T7.71.71.5.1.1.m1.1a"><mn id="A4.T7.71.71.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.71.71.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.71.71.5.1.1.m1.1b"><cn id="A4.T7.71.71.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.71.71.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.71.71.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.71.71.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.72.72.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.72.72.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.72.72.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.72.72.6.1.1.m1.1"><semantics id="A4.T7.72.72.6.1.1.m1.1a"><mn id="A4.T7.72.72.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.72.72.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.72.72.6.1.1.m1.1b"><cn id="A4.T7.72.72.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.72.72.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.72.72.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.72.72.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.78.78" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.73.73.1"><math alttext="0.280" class="ltx_Math" display="inline" id="A4.T7.73.73.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T7.73.73.1.m1.1a"><mn id="A4.T7.73.73.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.73.73.1.m1.1.1.cmml">0.280</mn><annotation-xml encoding="MathML-Content" id="A4.T7.73.73.1.m1.1b"><cn id="A4.T7.73.73.1.m1.1.1.cmml" type="float" xref="A4.T7.73.73.1.m1.1.1">0.280</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.73.73.1.m1.1c">0.280</annotation><annotation encoding="application/x-llamapun" id="A4.T7.73.73.1.m1.1d">0.280</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.74.74.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.74.74.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.74.74.2.1.1"><math alttext="0.00522179" class="ltx_Math" display="inline" id="A4.T7.74.74.2.1.1.m1.1"><semantics id="A4.T7.74.74.2.1.1.m1.1a"><mn id="A4.T7.74.74.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.74.74.2.1.1.m1.1.1.cmml">0.00522179</mn><annotation-xml encoding="MathML-Content" id="A4.T7.74.74.2.1.1.m1.1b"><cn id="A4.T7.74.74.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.74.74.2.1.1.m1.1.1">0.00522179</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.74.74.2.1.1.m1.1c">0.00522179</annotation><annotation encoding="application/x-llamapun" id="A4.T7.74.74.2.1.1.m1.1d">0.00522179</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.75.75.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.75.75.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.75.75.3.1.1"><math alttext="0.02509099" class="ltx_Math" display="inline" id="A4.T7.75.75.3.1.1.m1.1"><semantics id="A4.T7.75.75.3.1.1.m1.1a"><mn id="A4.T7.75.75.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.75.75.3.1.1.m1.1.1.cmml">0.02509099</mn><annotation-xml encoding="MathML-Content" id="A4.T7.75.75.3.1.1.m1.1b"><cn id="A4.T7.75.75.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.75.75.3.1.1.m1.1.1">0.02509099</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.75.75.3.1.1.m1.1c">0.02509099</annotation><annotation encoding="application/x-llamapun" id="A4.T7.75.75.3.1.1.m1.1d">0.02509099</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.76.76.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.76.76.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.76.76.4.1.1"><math alttext="-0.04452551" class="ltx_Math" display="inline" id="A4.T7.76.76.4.1.1.m1.1"><semantics id="A4.T7.76.76.4.1.1.m1.1a"><mrow id="A4.T7.76.76.4.1.1.m1.1.1.2"><mo id="A4.T7.76.76.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T7.76.76.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.76.76.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T7.76.76.4.1.1.m1.1.1.1.cmml">0.04452551</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.76.76.4.1.1.m1.1b"><cn id="A4.T7.76.76.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.76.76.4.1.1.m1.1.1.2a">-0.04452551</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.76.76.4.1.1.m1.1c">-0.04452551</annotation><annotation encoding="application/x-llamapun" id="A4.T7.76.76.4.1.1.m1.1d">- 0.04452551</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.77.77.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.77.77.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.77.77.5.1.1"><math alttext="0.01835604" class="ltx_Math" display="inline" id="A4.T7.77.77.5.1.1.m1.1"><semantics id="A4.T7.77.77.5.1.1.m1.1a"><mn id="A4.T7.77.77.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.77.77.5.1.1.m1.1.1.cmml">0.01835604</mn><annotation-xml encoding="MathML-Content" id="A4.T7.77.77.5.1.1.m1.1b"><cn id="A4.T7.77.77.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.77.77.5.1.1.m1.1.1">0.01835604</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.77.77.5.1.1.m1.1c">0.01835604</annotation><annotation encoding="application/x-llamapun" id="A4.T7.77.77.5.1.1.m1.1d">0.01835604</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.78.78.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.78.78.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.78.78.6.1.1"><math alttext="0.02947091" class="ltx_Math" display="inline" id="A4.T7.78.78.6.1.1.m1.1"><semantics id="A4.T7.78.78.6.1.1.m1.1a"><mn id="A4.T7.78.78.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.78.78.6.1.1.m1.1.1.cmml">0.02947091</mn><annotation-xml encoding="MathML-Content" id="A4.T7.78.78.6.1.1.m1.1b"><cn id="A4.T7.78.78.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.78.78.6.1.1.m1.1.1">0.02947091</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.78.78.6.1.1.m1.1c">0.02947091</annotation><annotation encoding="application/x-llamapun" id="A4.T7.78.78.6.1.1.m1.1d">0.02947091</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.84.84" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.79.79.1"><math alttext="0.032" class="ltx_Math" display="inline" id="A4.T7.79.79.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T7.79.79.1.m1.1a"><mn id="A4.T7.79.79.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.79.79.1.m1.1.1.cmml">0.032</mn><annotation-xml encoding="MathML-Content" id="A4.T7.79.79.1.m1.1b"><cn id="A4.T7.79.79.1.m1.1.1.cmml" type="float" xref="A4.T7.79.79.1.m1.1.1">0.032</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.79.79.1.m1.1c">0.032</annotation><annotation encoding="application/x-llamapun" id="A4.T7.79.79.1.m1.1d">0.032</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.80.80.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.80.80.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.80.80.2.1.1"><math alttext="0.00535751" class="ltx_Math" display="inline" id="A4.T7.80.80.2.1.1.m1.1"><semantics id="A4.T7.80.80.2.1.1.m1.1a"><mn id="A4.T7.80.80.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.80.80.2.1.1.m1.1.1.cmml">0.00535751</mn><annotation-xml encoding="MathML-Content" id="A4.T7.80.80.2.1.1.m1.1b"><cn id="A4.T7.80.80.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.80.80.2.1.1.m1.1.1">0.00535751</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.80.80.2.1.1.m1.1c">0.00535751</annotation><annotation encoding="application/x-llamapun" id="A4.T7.80.80.2.1.1.m1.1d">0.00535751</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.81.81.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.81.81.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.81.81.3.1.1"><math alttext="0.02517040" class="ltx_Math" display="inline" id="A4.T7.81.81.3.1.1.m1.1"><semantics id="A4.T7.81.81.3.1.1.m1.1a"><mn id="A4.T7.81.81.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.81.81.3.1.1.m1.1.1.cmml">0.02517040</mn><annotation-xml encoding="MathML-Content" id="A4.T7.81.81.3.1.1.m1.1b"><cn id="A4.T7.81.81.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.81.81.3.1.1.m1.1.1">0.02517040</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.81.81.3.1.1.m1.1c">0.02517040</annotation><annotation encoding="application/x-llamapun" id="A4.T7.81.81.3.1.1.m1.1d">0.02517040</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.82.82.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.82.82.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.82.82.4.1.1"><math alttext="-0.04455426" class="ltx_Math" display="inline" id="A4.T7.82.82.4.1.1.m1.1"><semantics id="A4.T7.82.82.4.1.1.m1.1a"><mrow id="A4.T7.82.82.4.1.1.m1.1.1.2"><mo id="A4.T7.82.82.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T7.82.82.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.82.82.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T7.82.82.4.1.1.m1.1.1.1.cmml">0.04455426</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.82.82.4.1.1.m1.1b"><cn id="A4.T7.82.82.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.82.82.4.1.1.m1.1.1.2a">-0.04455426</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.82.82.4.1.1.m1.1c">-0.04455426</annotation><annotation encoding="application/x-llamapun" id="A4.T7.82.82.4.1.1.m1.1d">- 0.04455426</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.83.83.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.83.83.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.83.83.5.1.1"><math alttext="0.01839376" class="ltx_Math" display="inline" id="A4.T7.83.83.5.1.1.m1.1"><semantics id="A4.T7.83.83.5.1.1.m1.1a"><mn id="A4.T7.83.83.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.83.83.5.1.1.m1.1.1.cmml">0.01839376</mn><annotation-xml encoding="MathML-Content" id="A4.T7.83.83.5.1.1.m1.1b"><cn id="A4.T7.83.83.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.83.83.5.1.1.m1.1.1">0.01839376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.83.83.5.1.1.m1.1c">0.01839376</annotation><annotation encoding="application/x-llamapun" id="A4.T7.83.83.5.1.1.m1.1d">0.01839376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.84.84.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.84.84.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.84.84.6.1.1"><math alttext="0.02954882" class="ltx_Math" display="inline" id="A4.T7.84.84.6.1.1.m1.1"><semantics id="A4.T7.84.84.6.1.1.m1.1a"><mn id="A4.T7.84.84.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.84.84.6.1.1.m1.1.1.cmml">0.02954882</mn><annotation-xml encoding="MathML-Content" id="A4.T7.84.84.6.1.1.m1.1b"><cn id="A4.T7.84.84.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.84.84.6.1.1.m1.1.1">0.02954882</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.84.84.6.1.1.m1.1c">0.02954882</annotation><annotation encoding="application/x-llamapun" id="A4.T7.84.84.6.1.1.m1.1d">0.02954882</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.90.90" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.85.85.1"><math alttext="0.089" class="ltx_Math" display="inline" id="A4.T7.85.85.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.85.85.1.m1.1a"><mn id="A4.T7.85.85.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.85.85.1.m1.1.1.cmml">0.089</mn><annotation-xml encoding="MathML-Content" id="A4.T7.85.85.1.m1.1b"><cn id="A4.T7.85.85.1.m1.1.1.cmml" type="float" xref="A4.T7.85.85.1.m1.1.1">0.089</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.85.85.1.m1.1c">0.089</annotation><annotation encoding="application/x-llamapun" id="A4.T7.85.85.1.m1.1d">0.089</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.86.86.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.86.86.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.86.86.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.86.86.2.1.1.m1.1"><semantics id="A4.T7.86.86.2.1.1.m1.1a"><mn id="A4.T7.86.86.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.86.86.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.86.86.2.1.1.m1.1b"><cn id="A4.T7.86.86.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.86.86.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.86.86.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.86.86.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.87.87.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.87.87.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.87.87.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.87.87.3.1.1.m1.1"><semantics id="A4.T7.87.87.3.1.1.m1.1a"><mn id="A4.T7.87.87.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.87.87.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.87.87.3.1.1.m1.1b"><cn id="A4.T7.87.87.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.87.87.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.87.87.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.87.87.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.88.88.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.88.88.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.88.88.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.88.88.4.1.1.m1.1"><semantics id="A4.T7.88.88.4.1.1.m1.1a"><mrow id="A4.T7.88.88.4.1.1.m1.1.1.2"><mo id="A4.T7.88.88.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.88.88.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.88.88.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.88.88.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.88.88.4.1.1.m1.1b"><cn id="A4.T7.88.88.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.88.88.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.88.88.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.88.88.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.89.89.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.89.89.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.89.89.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.89.89.5.1.1.m1.1"><semantics id="A4.T7.89.89.5.1.1.m1.1a"><mn id="A4.T7.89.89.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.89.89.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.89.89.5.1.1.m1.1b"><cn id="A4.T7.89.89.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.89.89.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.89.89.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.89.89.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.90.90.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.90.90.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.90.90.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.90.90.6.1.1.m1.1"><semantics id="A4.T7.90.90.6.1.1.m1.1a"><mn id="A4.T7.90.90.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.90.90.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.90.90.6.1.1.m1.1b"><cn id="A4.T7.90.90.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.90.90.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.90.90.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.90.90.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.96.96" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.91.91.1"><math alttext="0.034" class="ltx_Math" display="inline" id="A4.T7.91.91.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T7.91.91.1.m1.1a"><mn id="A4.T7.91.91.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.91.91.1.m1.1.1.cmml">0.034</mn><annotation-xml encoding="MathML-Content" id="A4.T7.91.91.1.m1.1b"><cn id="A4.T7.91.91.1.m1.1.1.cmml" type="float" xref="A4.T7.91.91.1.m1.1.1">0.034</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.91.91.1.m1.1c">0.034</annotation><annotation encoding="application/x-llamapun" id="A4.T7.91.91.1.m1.1d">0.034</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.92.92.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.92.92.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.92.92.2.1.1"><math alttext="0.00535751" class="ltx_Math" display="inline" id="A4.T7.92.92.2.1.1.m1.1"><semantics id="A4.T7.92.92.2.1.1.m1.1a"><mn id="A4.T7.92.92.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.92.92.2.1.1.m1.1.1.cmml">0.00535751</mn><annotation-xml encoding="MathML-Content" id="A4.T7.92.92.2.1.1.m1.1b"><cn id="A4.T7.92.92.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.92.92.2.1.1.m1.1.1">0.00535751</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.92.92.2.1.1.m1.1c">0.00535751</annotation><annotation encoding="application/x-llamapun" id="A4.T7.92.92.2.1.1.m1.1d">0.00535751</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.93.93.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.93.93.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.93.93.3.1.1"><math alttext="0.02517040" class="ltx_Math" display="inline" id="A4.T7.93.93.3.1.1.m1.1"><semantics id="A4.T7.93.93.3.1.1.m1.1a"><mn id="A4.T7.93.93.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.93.93.3.1.1.m1.1.1.cmml">0.02517040</mn><annotation-xml encoding="MathML-Content" id="A4.T7.93.93.3.1.1.m1.1b"><cn id="A4.T7.93.93.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.93.93.3.1.1.m1.1.1">0.02517040</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.93.93.3.1.1.m1.1c">0.02517040</annotation><annotation encoding="application/x-llamapun" id="A4.T7.93.93.3.1.1.m1.1d">0.02517040</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.94.94.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.94.94.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.94.94.4.1.1"><math alttext="-0.04455426" class="ltx_Math" display="inline" id="A4.T7.94.94.4.1.1.m1.1"><semantics id="A4.T7.94.94.4.1.1.m1.1a"><mrow id="A4.T7.94.94.4.1.1.m1.1.1.2"><mo id="A4.T7.94.94.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T7.94.94.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.94.94.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T7.94.94.4.1.1.m1.1.1.1.cmml">0.04455426</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.94.94.4.1.1.m1.1b"><cn id="A4.T7.94.94.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.94.94.4.1.1.m1.1.1.2a">-0.04455426</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.94.94.4.1.1.m1.1c">-0.04455426</annotation><annotation encoding="application/x-llamapun" id="A4.T7.94.94.4.1.1.m1.1d">- 0.04455426</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.95.95.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.95.95.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.95.95.5.1.1"><math alttext="0.01839376" class="ltx_Math" display="inline" id="A4.T7.95.95.5.1.1.m1.1"><semantics id="A4.T7.95.95.5.1.1.m1.1a"><mn id="A4.T7.95.95.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.95.95.5.1.1.m1.1.1.cmml">0.01839376</mn><annotation-xml encoding="MathML-Content" id="A4.T7.95.95.5.1.1.m1.1b"><cn id="A4.T7.95.95.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.95.95.5.1.1.m1.1.1">0.01839376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.95.95.5.1.1.m1.1c">0.01839376</annotation><annotation encoding="application/x-llamapun" id="A4.T7.95.95.5.1.1.m1.1d">0.01839376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.96.96.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.96.96.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.96.96.6.1.1"><math alttext="0.02954882" class="ltx_Math" display="inline" id="A4.T7.96.96.6.1.1.m1.1"><semantics id="A4.T7.96.96.6.1.1.m1.1a"><mn id="A4.T7.96.96.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.96.96.6.1.1.m1.1.1.cmml">0.02954882</mn><annotation-xml encoding="MathML-Content" id="A4.T7.96.96.6.1.1.m1.1b"><cn id="A4.T7.96.96.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.96.96.6.1.1.m1.1.1">0.02954882</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.96.96.6.1.1.m1.1c">0.02954882</annotation><annotation encoding="application/x-llamapun" id="A4.T7.96.96.6.1.1.m1.1d">0.02954882</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.102.102" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.97.97.1"><math alttext="0.092" class="ltx_Math" display="inline" id="A4.T7.97.97.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.97.97.1.m1.1a"><mn id="A4.T7.97.97.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.97.97.1.m1.1.1.cmml">0.092</mn><annotation-xml encoding="MathML-Content" id="A4.T7.97.97.1.m1.1b"><cn id="A4.T7.97.97.1.m1.1.1.cmml" type="float" xref="A4.T7.97.97.1.m1.1.1">0.092</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.97.97.1.m1.1c">0.092</annotation><annotation encoding="application/x-llamapun" id="A4.T7.97.97.1.m1.1d">0.092</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.98.98.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.98.98.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.98.98.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.98.98.2.1.1.m1.1"><semantics id="A4.T7.98.98.2.1.1.m1.1a"><mn id="A4.T7.98.98.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.98.98.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.98.98.2.1.1.m1.1b"><cn id="A4.T7.98.98.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.98.98.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.98.98.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.98.98.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.99.99.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.99.99.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.99.99.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.99.99.3.1.1.m1.1"><semantics id="A4.T7.99.99.3.1.1.m1.1a"><mn id="A4.T7.99.99.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.99.99.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.99.99.3.1.1.m1.1b"><cn id="A4.T7.99.99.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.99.99.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.99.99.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.99.99.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.100.100.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.100.100.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.100.100.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.100.100.4.1.1.m1.1"><semantics id="A4.T7.100.100.4.1.1.m1.1a"><mrow id="A4.T7.100.100.4.1.1.m1.1.1.2"><mo id="A4.T7.100.100.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.100.100.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.100.100.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.100.100.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.100.100.4.1.1.m1.1b"><cn id="A4.T7.100.100.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.100.100.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.100.100.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.100.100.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.101.101.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.101.101.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.101.101.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.101.101.5.1.1.m1.1"><semantics id="A4.T7.101.101.5.1.1.m1.1a"><mn id="A4.T7.101.101.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.101.101.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.101.101.5.1.1.m1.1b"><cn id="A4.T7.101.101.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.101.101.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.101.101.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.101.101.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.102.102.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.102.102.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.102.102.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.102.102.6.1.1.m1.1"><semantics id="A4.T7.102.102.6.1.1.m1.1a"><mn id="A4.T7.102.102.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.102.102.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.102.102.6.1.1.m1.1b"><cn id="A4.T7.102.102.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.102.102.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.102.102.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.102.102.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.108.108" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.103.103.1"><math alttext="0.089" class="ltx_Math" display="inline" id="A4.T7.103.103.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.103.103.1.m1.1a"><mn id="A4.T7.103.103.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.103.103.1.m1.1.1.cmml">0.089</mn><annotation-xml encoding="MathML-Content" id="A4.T7.103.103.1.m1.1b"><cn id="A4.T7.103.103.1.m1.1.1.cmml" type="float" xref="A4.T7.103.103.1.m1.1.1">0.089</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.103.103.1.m1.1c">0.089</annotation><annotation encoding="application/x-llamapun" id="A4.T7.103.103.1.m1.1d">0.089</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.104.104.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.104.104.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.104.104.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.104.104.2.1.1.m1.1"><semantics id="A4.T7.104.104.2.1.1.m1.1a"><mn id="A4.T7.104.104.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.104.104.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.104.104.2.1.1.m1.1b"><cn id="A4.T7.104.104.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.104.104.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.104.104.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.104.104.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.105.105.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.105.105.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.105.105.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.105.105.3.1.1.m1.1"><semantics id="A4.T7.105.105.3.1.1.m1.1a"><mn id="A4.T7.105.105.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.105.105.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.105.105.3.1.1.m1.1b"><cn id="A4.T7.105.105.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.105.105.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.105.105.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.105.105.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.106.106.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.106.106.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.106.106.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.106.106.4.1.1.m1.1"><semantics id="A4.T7.106.106.4.1.1.m1.1a"><mrow id="A4.T7.106.106.4.1.1.m1.1.1.2"><mo id="A4.T7.106.106.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.106.106.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.106.106.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.106.106.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.106.106.4.1.1.m1.1b"><cn id="A4.T7.106.106.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.106.106.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.106.106.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.106.106.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.107.107.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.107.107.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.107.107.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.107.107.5.1.1.m1.1"><semantics id="A4.T7.107.107.5.1.1.m1.1a"><mn id="A4.T7.107.107.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.107.107.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.107.107.5.1.1.m1.1b"><cn id="A4.T7.107.107.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.107.107.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.107.107.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.107.107.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.108.108.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.108.108.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.108.108.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.108.108.6.1.1.m1.1"><semantics id="A4.T7.108.108.6.1.1.m1.1a"><mn id="A4.T7.108.108.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.108.108.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.108.108.6.1.1.m1.1b"><cn id="A4.T7.108.108.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.108.108.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.108.108.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.108.108.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.114.114" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.109.109.1"><math alttext="0.103" class="ltx_Math" display="inline" id="A4.T7.109.109.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.109.109.1.m1.1a"><mn id="A4.T7.109.109.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.109.109.1.m1.1.1.cmml">0.103</mn><annotation-xml encoding="MathML-Content" id="A4.T7.109.109.1.m1.1b"><cn id="A4.T7.109.109.1.m1.1.1.cmml" type="float" xref="A4.T7.109.109.1.m1.1.1">0.103</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.109.109.1.m1.1c">0.103</annotation><annotation encoding="application/x-llamapun" id="A4.T7.109.109.1.m1.1d">0.103</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.110.110.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.110.110.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.110.110.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.110.110.2.1.1.m1.1"><semantics id="A4.T7.110.110.2.1.1.m1.1a"><mn id="A4.T7.110.110.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.110.110.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.110.110.2.1.1.m1.1b"><cn id="A4.T7.110.110.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.110.110.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.110.110.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.110.110.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.111.111.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.111.111.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.111.111.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.111.111.3.1.1.m1.1"><semantics id="A4.T7.111.111.3.1.1.m1.1a"><mn id="A4.T7.111.111.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.111.111.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.111.111.3.1.1.m1.1b"><cn id="A4.T7.111.111.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.111.111.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.111.111.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.111.111.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.112.112.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.112.112.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.112.112.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.112.112.4.1.1.m1.1"><semantics id="A4.T7.112.112.4.1.1.m1.1a"><mrow id="A4.T7.112.112.4.1.1.m1.1.1.2"><mo id="A4.T7.112.112.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.112.112.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.112.112.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.112.112.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.112.112.4.1.1.m1.1b"><cn id="A4.T7.112.112.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.112.112.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.112.112.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.112.112.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.113.113.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.113.113.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.113.113.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.113.113.5.1.1.m1.1"><semantics id="A4.T7.113.113.5.1.1.m1.1a"><mn id="A4.T7.113.113.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.113.113.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.113.113.5.1.1.m1.1b"><cn id="A4.T7.113.113.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.113.113.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.113.113.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.113.113.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.114.114.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.114.114.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.114.114.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.114.114.6.1.1.m1.1"><semantics id="A4.T7.114.114.6.1.1.m1.1a"><mn id="A4.T7.114.114.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.114.114.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.114.114.6.1.1.m1.1b"><cn id="A4.T7.114.114.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.114.114.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.114.114.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.114.114.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.120.120" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.115.115.1"><math alttext="0.127" class="ltx_Math" display="inline" id="A4.T7.115.115.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T7.115.115.1.m1.1a"><mn id="A4.T7.115.115.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.115.115.1.m1.1.1.cmml">0.127</mn><annotation-xml encoding="MathML-Content" id="A4.T7.115.115.1.m1.1b"><cn id="A4.T7.115.115.1.m1.1.1.cmml" type="float" xref="A4.T7.115.115.1.m1.1.1">0.127</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.115.115.1.m1.1c">0.127</annotation><annotation encoding="application/x-llamapun" id="A4.T7.115.115.1.m1.1d">0.127</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.116.116.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.116.116.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.116.116.2.1.1"><math alttext="0.00523272" class="ltx_Math" display="inline" id="A4.T7.116.116.2.1.1.m1.1"><semantics id="A4.T7.116.116.2.1.1.m1.1a"><mn id="A4.T7.116.116.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.116.116.2.1.1.m1.1.1.cmml">0.00523272</mn><annotation-xml encoding="MathML-Content" id="A4.T7.116.116.2.1.1.m1.1b"><cn id="A4.T7.116.116.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.116.116.2.1.1.m1.1.1">0.00523272</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.116.116.2.1.1.m1.1c">0.00523272</annotation><annotation encoding="application/x-llamapun" id="A4.T7.116.116.2.1.1.m1.1d">0.00523272</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.117.117.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.117.117.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.117.117.3.1.1"><math alttext="0.02513466" class="ltx_Math" display="inline" id="A4.T7.117.117.3.1.1.m1.1"><semantics id="A4.T7.117.117.3.1.1.m1.1a"><mn id="A4.T7.117.117.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.117.117.3.1.1.m1.1.1.cmml">0.02513466</mn><annotation-xml encoding="MathML-Content" id="A4.T7.117.117.3.1.1.m1.1b"><cn id="A4.T7.117.117.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.117.117.3.1.1.m1.1.1">0.02513466</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.117.117.3.1.1.m1.1c">0.02513466</annotation><annotation encoding="application/x-llamapun" id="A4.T7.117.117.3.1.1.m1.1d">0.02513466</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.118.118.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.118.118.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.118.118.4.1.1"><math alttext="-0.04454690" class="ltx_Math" display="inline" id="A4.T7.118.118.4.1.1.m1.1"><semantics id="A4.T7.118.118.4.1.1.m1.1a"><mrow id="A4.T7.118.118.4.1.1.m1.1.1.2"><mo id="A4.T7.118.118.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T7.118.118.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.118.118.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T7.118.118.4.1.1.m1.1.1.1.cmml">0.04454690</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.118.118.4.1.1.m1.1b"><cn id="A4.T7.118.118.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.118.118.4.1.1.m1.1.1.2a">-0.04454690</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.118.118.4.1.1.m1.1c">-0.04454690</annotation><annotation encoding="application/x-llamapun" id="A4.T7.118.118.4.1.1.m1.1d">- 0.04454690</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.119.119.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.119.119.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.119.119.5.1.1"><math alttext="0.01837780" class="ltx_Math" display="inline" id="A4.T7.119.119.5.1.1.m1.1"><semantics id="A4.T7.119.119.5.1.1.m1.1a"><mn id="A4.T7.119.119.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.119.119.5.1.1.m1.1.1.cmml">0.01837780</mn><annotation-xml encoding="MathML-Content" id="A4.T7.119.119.5.1.1.m1.1b"><cn id="A4.T7.119.119.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.119.119.5.1.1.m1.1.1">0.01837780</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.119.119.5.1.1.m1.1c">0.01837780</annotation><annotation encoding="application/x-llamapun" id="A4.T7.119.119.5.1.1.m1.1d">0.01837780</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.120.120.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.120.120.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T7.120.120.6.1.1"><math alttext="0.02944849" class="ltx_Math" display="inline" id="A4.T7.120.120.6.1.1.m1.1"><semantics id="A4.T7.120.120.6.1.1.m1.1a"><mn id="A4.T7.120.120.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T7.120.120.6.1.1.m1.1.1.cmml">0.02944849</mn><annotation-xml encoding="MathML-Content" id="A4.T7.120.120.6.1.1.m1.1b"><cn id="A4.T7.120.120.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.120.120.6.1.1.m1.1.1">0.02944849</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.120.120.6.1.1.m1.1c">0.02944849</annotation><annotation encoding="application/x-llamapun" id="A4.T7.120.120.6.1.1.m1.1d">0.02944849</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.126.126" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.121.121.1"><math alttext="0.094" class="ltx_Math" display="inline" id="A4.T7.121.121.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.121.121.1.m1.1a"><mn id="A4.T7.121.121.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.121.121.1.m1.1.1.cmml">0.094</mn><annotation-xml encoding="MathML-Content" id="A4.T7.121.121.1.m1.1b"><cn id="A4.T7.121.121.1.m1.1.1.cmml" type="float" xref="A4.T7.121.121.1.m1.1.1">0.094</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.121.121.1.m1.1c">0.094</annotation><annotation encoding="application/x-llamapun" id="A4.T7.121.121.1.m1.1d">0.094</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.122.122.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.122.122.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.122.122.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.122.122.2.1.1.m1.1"><semantics id="A4.T7.122.122.2.1.1.m1.1a"><mn id="A4.T7.122.122.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.122.122.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.122.122.2.1.1.m1.1b"><cn id="A4.T7.122.122.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.122.122.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.122.122.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.122.122.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.123.123.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.123.123.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.123.123.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.123.123.3.1.1.m1.1"><semantics id="A4.T7.123.123.3.1.1.m1.1a"><mn id="A4.T7.123.123.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.123.123.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.123.123.3.1.1.m1.1b"><cn id="A4.T7.123.123.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.123.123.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.123.123.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.123.123.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.124.124.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.124.124.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.124.124.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.124.124.4.1.1.m1.1"><semantics id="A4.T7.124.124.4.1.1.m1.1a"><mrow id="A4.T7.124.124.4.1.1.m1.1.1.2"><mo id="A4.T7.124.124.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.124.124.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.124.124.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.124.124.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.124.124.4.1.1.m1.1b"><cn id="A4.T7.124.124.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.124.124.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.124.124.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.124.124.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.125.125.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.125.125.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.125.125.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.125.125.5.1.1.m1.1"><semantics id="A4.T7.125.125.5.1.1.m1.1a"><mn id="A4.T7.125.125.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.125.125.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.125.125.5.1.1.m1.1b"><cn id="A4.T7.125.125.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.125.125.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.125.125.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.125.125.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.126.126.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.126.126.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.126.126.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.126.126.6.1.1.m1.1"><semantics id="A4.T7.126.126.6.1.1.m1.1a"><mn id="A4.T7.126.126.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.126.126.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.126.126.6.1.1.m1.1b"><cn id="A4.T7.126.126.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.126.126.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.126.126.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.126.126.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.132.132" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.127.127.1"><math alttext="0.039" class="ltx_Math" display="inline" id="A4.T7.127.127.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T7.127.127.1.m1.1a"><mn id="A4.T7.127.127.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.127.127.1.m1.1.1.cmml">0.039</mn><annotation-xml encoding="MathML-Content" id="A4.T7.127.127.1.m1.1b"><cn id="A4.T7.127.127.1.m1.1.1.cmml" type="float" xref="A4.T7.127.127.1.m1.1.1">0.039</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.127.127.1.m1.1c">0.039</annotation><annotation encoding="application/x-llamapun" id="A4.T7.127.127.1.m1.1d">0.039</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.128.128.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.128.128.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.128.128.2.1.1"><math alttext="0.00535751" class="ltx_Math" display="inline" id="A4.T7.128.128.2.1.1.m1.1"><semantics id="A4.T7.128.128.2.1.1.m1.1a"><mn id="A4.T7.128.128.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.128.128.2.1.1.m1.1.1.cmml">0.00535751</mn><annotation-xml encoding="MathML-Content" id="A4.T7.128.128.2.1.1.m1.1b"><cn id="A4.T7.128.128.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.128.128.2.1.1.m1.1.1">0.00535751</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.128.128.2.1.1.m1.1c">0.00535751</annotation><annotation encoding="application/x-llamapun" id="A4.T7.128.128.2.1.1.m1.1d">0.00535751</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.129.129.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.129.129.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.129.129.3.1.1"><math alttext="0.02517040" class="ltx_Math" display="inline" id="A4.T7.129.129.3.1.1.m1.1"><semantics id="A4.T7.129.129.3.1.1.m1.1a"><mn id="A4.T7.129.129.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.129.129.3.1.1.m1.1.1.cmml">0.02517040</mn><annotation-xml encoding="MathML-Content" id="A4.T7.129.129.3.1.1.m1.1b"><cn id="A4.T7.129.129.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.129.129.3.1.1.m1.1.1">0.02517040</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.129.129.3.1.1.m1.1c">0.02517040</annotation><annotation encoding="application/x-llamapun" id="A4.T7.129.129.3.1.1.m1.1d">0.02517040</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.130.130.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.130.130.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.130.130.4.1.1"><math alttext="-0.04455426" class="ltx_Math" display="inline" id="A4.T7.130.130.4.1.1.m1.1"><semantics id="A4.T7.130.130.4.1.1.m1.1a"><mrow id="A4.T7.130.130.4.1.1.m1.1.1.2"><mo id="A4.T7.130.130.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T7.130.130.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.130.130.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T7.130.130.4.1.1.m1.1.1.1.cmml">0.04455426</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.130.130.4.1.1.m1.1b"><cn id="A4.T7.130.130.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.130.130.4.1.1.m1.1.1.2a">-0.04455426</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.130.130.4.1.1.m1.1c">-0.04455426</annotation><annotation encoding="application/x-llamapun" id="A4.T7.130.130.4.1.1.m1.1d">- 0.04455426</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.131.131.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.131.131.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.131.131.5.1.1"><math alttext="0.01839376" class="ltx_Math" display="inline" id="A4.T7.131.131.5.1.1.m1.1"><semantics id="A4.T7.131.131.5.1.1.m1.1a"><mn id="A4.T7.131.131.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.131.131.5.1.1.m1.1.1.cmml">0.01839376</mn><annotation-xml encoding="MathML-Content" id="A4.T7.131.131.5.1.1.m1.1b"><cn id="A4.T7.131.131.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.131.131.5.1.1.m1.1.1">0.01839376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.131.131.5.1.1.m1.1c">0.01839376</annotation><annotation encoding="application/x-llamapun" id="A4.T7.131.131.5.1.1.m1.1d">0.01839376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.132.132.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.132.132.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.132.132.6.1.1"><math alttext="0.02954882" class="ltx_Math" display="inline" id="A4.T7.132.132.6.1.1.m1.1"><semantics id="A4.T7.132.132.6.1.1.m1.1a"><mn id="A4.T7.132.132.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.132.132.6.1.1.m1.1.1.cmml">0.02954882</mn><annotation-xml encoding="MathML-Content" id="A4.T7.132.132.6.1.1.m1.1b"><cn id="A4.T7.132.132.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.132.132.6.1.1.m1.1.1">0.02954882</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.132.132.6.1.1.m1.1c">0.02954882</annotation><annotation encoding="application/x-llamapun" id="A4.T7.132.132.6.1.1.m1.1d">0.02954882</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.138.138" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.133.133.1"><math alttext="0.035" class="ltx_Math" display="inline" id="A4.T7.133.133.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T7.133.133.1.m1.1a"><mn id="A4.T7.133.133.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.133.133.1.m1.1.1.cmml">0.035</mn><annotation-xml encoding="MathML-Content" id="A4.T7.133.133.1.m1.1b"><cn id="A4.T7.133.133.1.m1.1.1.cmml" type="float" xref="A4.T7.133.133.1.m1.1.1">0.035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.133.133.1.m1.1c">0.035</annotation><annotation encoding="application/x-llamapun" id="A4.T7.133.133.1.m1.1d">0.035</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.134.134.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.134.134.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.134.134.2.1.1"><math alttext="0.00535751" class="ltx_Math" display="inline" id="A4.T7.134.134.2.1.1.m1.1"><semantics id="A4.T7.134.134.2.1.1.m1.1a"><mn id="A4.T7.134.134.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.134.134.2.1.1.m1.1.1.cmml">0.00535751</mn><annotation-xml encoding="MathML-Content" id="A4.T7.134.134.2.1.1.m1.1b"><cn id="A4.T7.134.134.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.134.134.2.1.1.m1.1.1">0.00535751</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.134.134.2.1.1.m1.1c">0.00535751</annotation><annotation encoding="application/x-llamapun" id="A4.T7.134.134.2.1.1.m1.1d">0.00535751</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.135.135.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.135.135.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.135.135.3.1.1"><math alttext="0.02517040" class="ltx_Math" display="inline" id="A4.T7.135.135.3.1.1.m1.1"><semantics id="A4.T7.135.135.3.1.1.m1.1a"><mn id="A4.T7.135.135.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.135.135.3.1.1.m1.1.1.cmml">0.02517040</mn><annotation-xml encoding="MathML-Content" id="A4.T7.135.135.3.1.1.m1.1b"><cn id="A4.T7.135.135.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.135.135.3.1.1.m1.1.1">0.02517040</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.135.135.3.1.1.m1.1c">0.02517040</annotation><annotation encoding="application/x-llamapun" id="A4.T7.135.135.3.1.1.m1.1d">0.02517040</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.136.136.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.136.136.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.136.136.4.1.1"><math alttext="-0.04455426" class="ltx_Math" display="inline" id="A4.T7.136.136.4.1.1.m1.1"><semantics id="A4.T7.136.136.4.1.1.m1.1a"><mrow id="A4.T7.136.136.4.1.1.m1.1.1.2"><mo id="A4.T7.136.136.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T7.136.136.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.136.136.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T7.136.136.4.1.1.m1.1.1.1.cmml">0.04455426</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.136.136.4.1.1.m1.1b"><cn id="A4.T7.136.136.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.136.136.4.1.1.m1.1.1.2a">-0.04455426</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.136.136.4.1.1.m1.1c">-0.04455426</annotation><annotation encoding="application/x-llamapun" id="A4.T7.136.136.4.1.1.m1.1d">- 0.04455426</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.137.137.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.137.137.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.137.137.5.1.1"><math alttext="0.01839376" class="ltx_Math" display="inline" id="A4.T7.137.137.5.1.1.m1.1"><semantics id="A4.T7.137.137.5.1.1.m1.1a"><mn id="A4.T7.137.137.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.137.137.5.1.1.m1.1.1.cmml">0.01839376</mn><annotation-xml encoding="MathML-Content" id="A4.T7.137.137.5.1.1.m1.1b"><cn id="A4.T7.137.137.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.137.137.5.1.1.m1.1.1">0.01839376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.137.137.5.1.1.m1.1c">0.01839376</annotation><annotation encoding="application/x-llamapun" id="A4.T7.137.137.5.1.1.m1.1d">0.01839376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.138.138.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.138.138.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.138.138.6.1.1"><math alttext="0.02954882" class="ltx_Math" display="inline" id="A4.T7.138.138.6.1.1.m1.1"><semantics id="A4.T7.138.138.6.1.1.m1.1a"><mn id="A4.T7.138.138.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.138.138.6.1.1.m1.1.1.cmml">0.02954882</mn><annotation-xml encoding="MathML-Content" id="A4.T7.138.138.6.1.1.m1.1b"><cn id="A4.T7.138.138.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.138.138.6.1.1.m1.1.1">0.02954882</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.138.138.6.1.1.m1.1c">0.02954882</annotation><annotation encoding="application/x-llamapun" id="A4.T7.138.138.6.1.1.m1.1d">0.02954882</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.144.144" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T7.139.139.1"><math alttext="0.080" class="ltx_Math" display="inline" id="A4.T7.139.139.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T7.139.139.1.m1.1a"><mn id="A4.T7.139.139.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.139.139.1.m1.1.1.cmml">0.080</mn><annotation-xml encoding="MathML-Content" id="A4.T7.139.139.1.m1.1b"><cn id="A4.T7.139.139.1.m1.1.1.cmml" type="float" xref="A4.T7.139.139.1.m1.1.1">0.080</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.139.139.1.m1.1c">0.080</annotation><annotation encoding="application/x-llamapun" id="A4.T7.139.139.1.m1.1d">0.080</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T7.140.140.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.140.140.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.140.140.2.1.1"><math alttext="0.00534875" class="ltx_Math" display="inline" id="A4.T7.140.140.2.1.1.m1.1"><semantics id="A4.T7.140.140.2.1.1.m1.1a"><mn id="A4.T7.140.140.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.140.140.2.1.1.m1.1.1.cmml">0.00534875</mn><annotation-xml encoding="MathML-Content" id="A4.T7.140.140.2.1.1.m1.1b"><cn id="A4.T7.140.140.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.140.140.2.1.1.m1.1.1">0.00534875</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.140.140.2.1.1.m1.1c">0.00534875</annotation><annotation encoding="application/x-llamapun" id="A4.T7.140.140.2.1.1.m1.1d">0.00534875</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.141.141.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.141.141.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.141.141.3.1.1"><math alttext="0.02516800" class="ltx_Math" display="inline" id="A4.T7.141.141.3.1.1.m1.1"><semantics id="A4.T7.141.141.3.1.1.m1.1a"><mn id="A4.T7.141.141.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.141.141.3.1.1.m1.1.1.cmml">0.02516800</mn><annotation-xml encoding="MathML-Content" id="A4.T7.141.141.3.1.1.m1.1b"><cn id="A4.T7.141.141.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.141.141.3.1.1.m1.1.1">0.02516800</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.141.141.3.1.1.m1.1c">0.02516800</annotation><annotation encoding="application/x-llamapun" id="A4.T7.141.141.3.1.1.m1.1d">0.02516800</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.142.142.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.142.142.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.142.142.4.1.1"><math alttext="-0.04450600" class="ltx_Math" display="inline" id="A4.T7.142.142.4.1.1.m1.1"><semantics id="A4.T7.142.142.4.1.1.m1.1a"><mrow id="A4.T7.142.142.4.1.1.m1.1.1.2"><mo id="A4.T7.142.142.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T7.142.142.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.142.142.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T7.142.142.4.1.1.m1.1.1.1.cmml">0.04450600</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.142.142.4.1.1.m1.1b"><cn id="A4.T7.142.142.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.142.142.4.1.1.m1.1.1.2a">-0.04450600</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.142.142.4.1.1.m1.1c">-0.04450600</annotation><annotation encoding="application/x-llamapun" id="A4.T7.142.142.4.1.1.m1.1d">- 0.04450600</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.143.143.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.143.143.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.143.143.5.1.1"><math alttext="0.01841400" class="ltx_Math" display="inline" id="A4.T7.143.143.5.1.1.m1.1"><semantics id="A4.T7.143.143.5.1.1.m1.1a"><mn id="A4.T7.143.143.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.143.143.5.1.1.m1.1.1.cmml">0.01841400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.143.143.5.1.1.m1.1b"><cn id="A4.T7.143.143.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.143.143.5.1.1.m1.1.1">0.01841400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.143.143.5.1.1.m1.1c">0.01841400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.143.143.5.1.1.m1.1d">0.01841400</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T7.144.144.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.144.144.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T7.144.144.6.1.1"><math alttext="0.02952400" class="ltx_Math" display="inline" id="A4.T7.144.144.6.1.1.m1.1"><semantics id="A4.T7.144.144.6.1.1.m1.1a"><mn id="A4.T7.144.144.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T7.144.144.6.1.1.m1.1.1.cmml">0.02952400</mn><annotation-xml encoding="MathML-Content" id="A4.T7.144.144.6.1.1.m1.1b"><cn id="A4.T7.144.144.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.144.144.6.1.1.m1.1.1">0.02952400</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.144.144.6.1.1.m1.1c">0.02952400</annotation><annotation encoding="application/x-llamapun" id="A4.T7.144.144.6.1.1.m1.1d">0.02952400</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.150.150" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T7.145.145.1"><math alttext="0.034" class="ltx_Math" display="inline" id="A4.T7.145.145.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T7.145.145.1.m1.1a"><mn id="A4.T7.145.145.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.145.145.1.m1.1.1.cmml">0.034</mn><annotation-xml encoding="MathML-Content" id="A4.T7.145.145.1.m1.1b"><cn id="A4.T7.145.145.1.m1.1.1.cmml" type="float" xref="A4.T7.145.145.1.m1.1.1">0.034</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.145.145.1.m1.1c">0.034</annotation><annotation encoding="application/x-llamapun" id="A4.T7.145.145.1.m1.1d">0.034</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T7.146.146.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.146.146.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.146.146.2.1.1"><math alttext="0.00535751" class="ltx_Math" display="inline" id="A4.T7.146.146.2.1.1.m1.1"><semantics id="A4.T7.146.146.2.1.1.m1.1a"><mn id="A4.T7.146.146.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.146.146.2.1.1.m1.1.1.cmml">0.00535751</mn><annotation-xml encoding="MathML-Content" id="A4.T7.146.146.2.1.1.m1.1b"><cn id="A4.T7.146.146.2.1.1.m1.1.1.cmml" type="float" xref="A4.T7.146.146.2.1.1.m1.1.1">0.00535751</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.146.146.2.1.1.m1.1c">0.00535751</annotation><annotation encoding="application/x-llamapun" id="A4.T7.146.146.2.1.1.m1.1d">0.00535751</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T7.147.147.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.147.147.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.147.147.3.1.1"><math alttext="0.02517040" class="ltx_Math" display="inline" id="A4.T7.147.147.3.1.1.m1.1"><semantics id="A4.T7.147.147.3.1.1.m1.1a"><mn id="A4.T7.147.147.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.147.147.3.1.1.m1.1.1.cmml">0.02517040</mn><annotation-xml encoding="MathML-Content" id="A4.T7.147.147.3.1.1.m1.1b"><cn id="A4.T7.147.147.3.1.1.m1.1.1.cmml" type="float" xref="A4.T7.147.147.3.1.1.m1.1.1">0.02517040</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.147.147.3.1.1.m1.1c">0.02517040</annotation><annotation encoding="application/x-llamapun" id="A4.T7.147.147.3.1.1.m1.1d">0.02517040</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T7.148.148.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.148.148.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.148.148.4.1.1"><math alttext="-0.04455426" class="ltx_Math" display="inline" id="A4.T7.148.148.4.1.1.m1.1"><semantics id="A4.T7.148.148.4.1.1.m1.1a"><mrow id="A4.T7.148.148.4.1.1.m1.1.1.2"><mo id="A4.T7.148.148.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T7.148.148.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T7.148.148.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T7.148.148.4.1.1.m1.1.1.1.cmml">0.04455426</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.148.148.4.1.1.m1.1b"><cn id="A4.T7.148.148.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T7.148.148.4.1.1.m1.1.1.2a">-0.04455426</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.148.148.4.1.1.m1.1c">-0.04455426</annotation><annotation encoding="application/x-llamapun" id="A4.T7.148.148.4.1.1.m1.1d">- 0.04455426</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T7.149.149.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.149.149.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.149.149.5.1.1"><math alttext="0.01839376" class="ltx_Math" display="inline" id="A4.T7.149.149.5.1.1.m1.1"><semantics id="A4.T7.149.149.5.1.1.m1.1a"><mn id="A4.T7.149.149.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.149.149.5.1.1.m1.1.1.cmml">0.01839376</mn><annotation-xml encoding="MathML-Content" id="A4.T7.149.149.5.1.1.m1.1b"><cn id="A4.T7.149.149.5.1.1.m1.1.1.cmml" type="float" xref="A4.T7.149.149.5.1.1.m1.1.1">0.01839376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.149.149.5.1.1.m1.1c">0.01839376</annotation><annotation encoding="application/x-llamapun" id="A4.T7.149.149.5.1.1.m1.1d">0.01839376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T7.150.150.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.150.150.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T7.150.150.6.1.1"><math alttext="0.02954882" class="ltx_Math" display="inline" id="A4.T7.150.150.6.1.1.m1.1"><semantics id="A4.T7.150.150.6.1.1.m1.1a"><mn id="A4.T7.150.150.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T7.150.150.6.1.1.m1.1.1.cmml">0.02954882</mn><annotation-xml encoding="MathML-Content" id="A4.T7.150.150.6.1.1.m1.1b"><cn id="A4.T7.150.150.6.1.1.m1.1.1.cmml" type="float" xref="A4.T7.150.150.6.1.1.m1.1.1">0.02954882</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.150.150.6.1.1.m1.1c">0.02954882</annotation><annotation encoding="application/x-llamapun" id="A4.T7.150.150.6.1.1.m1.1d">0.02954882</annotation></semantics></math></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a detailed analysis of the OpenAI text-embedding-3-small API's response times and embedding vectors when the same prompt is repeatedly submitted (25 times).  The table highlights three distinct response behaviors: 'Normal' responses (blue) observed under typical conditions (cache miss), 'Cache Hit' responses (green) showing significantly faster processing times indicative of cached data, and 'Alternate' responses (red) exhibiting embeddings differing from both normal and cache hit scenarios. This suggests variability potentially due to factors such as server load or routing, impacting the consistency and reliability of response times and embeddings.  The data underscores the complexity of interpreting response patterns and the challenges inherent in understanding the dynamics of prompt caching within language model APIs.
> <details>
> <summary>read the caption</summary>
> Table 7: Server-side response times and first five embedding coordinates when sending the same prompt 25 consecutive times to the OpenAI text-embedding-3-small API from the same user. Blue denotes the “normal” embedding returned in most of the responses with normal response times, which indicate cache misses. Green denotes fast response times, which indicate cache hits. Red denotes embeddings that differ from both the “normal” and “cache hit” embeddings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T8.150">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T8.150.151.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A4.T8.150.151.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="A4.T8.150.151.1.2">Embedding</th>
</tr>
<tr class="ltx_tr" id="A4.T8.150.152.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A4.T8.150.152.2.1">Time (<span class="ltx_ERROR undefined" id="A4.T8.150.152.2.1.1">\unit</span>)</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T8.150.152.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.150.152.2.2.1">
<span class="ltx_p" id="A4.T8.150.152.2.2.1.1">Coordinate 1</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T8.150.152.2.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.150.152.2.3.1">
<span class="ltx_p" id="A4.T8.150.152.2.3.1.1">Coordinate 2</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T8.150.152.2.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.150.152.2.4.1">
<span class="ltx_p" id="A4.T8.150.152.2.4.1.1">Coordinate 3</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T8.150.152.2.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.150.152.2.5.1">
<span class="ltx_p" id="A4.T8.150.152.2.5.1.1">Coordinate 4</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T8.150.152.2.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.150.152.2.6.1">
<span class="ltx_p" id="A4.T8.150.152.2.6.1.1">Coordinate 5</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.6.6" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T8.1.1.1"><math alttext="0.093" class="ltx_Math" display="inline" id="A4.T8.1.1.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.1.1.1.m1.1a"><mn id="A4.T8.1.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.1.1.1.m1.1.1.cmml">0.093</mn><annotation-xml encoding="MathML-Content" id="A4.T8.1.1.1.m1.1b"><cn id="A4.T8.1.1.1.m1.1.1.cmml" type="float" xref="A4.T8.1.1.1.m1.1.1">0.093</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.1.1.1.m1.1c">0.093</annotation><annotation encoding="application/x-llamapun" id="A4.T8.1.1.1.m1.1d">0.093</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T8.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.2.2.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.2.2.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.2.2.2.1.1.m1.1"><semantics id="A4.T8.2.2.2.1.1.m1.1a"><mn id="A4.T8.2.2.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.2.2.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.2.2.2.1.1.m1.1b"><cn id="A4.T8.2.2.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.2.2.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.2.2.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.2.2.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T8.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.3.3.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.3.3.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.3.3.3.1.1.m1.1"><semantics id="A4.T8.3.3.3.1.1.m1.1a"><mn id="A4.T8.3.3.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.3.3.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.3.3.3.1.1.m1.1b"><cn id="A4.T8.3.3.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.3.3.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.3.3.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.3.3.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T8.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.4.4.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.4.4.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.4.4.4.1.1.m1.1"><semantics id="A4.T8.4.4.4.1.1.m1.1a"><mrow id="A4.T8.4.4.4.1.1.m1.1.1.2"><mo id="A4.T8.4.4.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.4.4.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.4.4.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.4.4.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.4.4.4.1.1.m1.1b"><cn id="A4.T8.4.4.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.4.4.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.4.4.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.4.4.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T8.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.5.5.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.5.5.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.5.5.5.1.1.m1.1"><semantics id="A4.T8.5.5.5.1.1.m1.1a"><mn id="A4.T8.5.5.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.5.5.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.5.5.5.1.1.m1.1b"><cn id="A4.T8.5.5.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.5.5.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.5.5.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.5.5.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T8.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.6.6.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.6.6.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.6.6.6.1.1.m1.1"><semantics id="A4.T8.6.6.6.1.1.m1.1a"><mn id="A4.T8.6.6.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.6.6.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.6.6.6.1.1.m1.1b"><cn id="A4.T8.6.6.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.6.6.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.6.6.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.6.6.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.12.12" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.7.7.1"><math alttext="0.079" class="ltx_Math" display="inline" id="A4.T8.7.7.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.7.7.1.m1.1a"><mn id="A4.T8.7.7.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.7.7.1.m1.1.1.cmml">0.079</mn><annotation-xml encoding="MathML-Content" id="A4.T8.7.7.1.m1.1b"><cn id="A4.T8.7.7.1.m1.1.1.cmml" type="float" xref="A4.T8.7.7.1.m1.1.1">0.079</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.7.7.1.m1.1c">0.079</annotation><annotation encoding="application/x-llamapun" id="A4.T8.7.7.1.m1.1d">0.079</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.8.8.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.8.8.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.8.8.2.1.1.m1.1"><semantics id="A4.T8.8.8.2.1.1.m1.1a"><mn id="A4.T8.8.8.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.8.8.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.8.8.2.1.1.m1.1b"><cn id="A4.T8.8.8.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.8.8.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.8.8.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.8.8.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.9.9.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.9.9.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.9.9.3.1.1.m1.1"><semantics id="A4.T8.9.9.3.1.1.m1.1a"><mn id="A4.T8.9.9.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.9.9.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.9.9.3.1.1.m1.1b"><cn id="A4.T8.9.9.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.9.9.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.9.9.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.9.9.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.10.10.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.10.10.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.10.10.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.10.10.4.1.1.m1.1"><semantics id="A4.T8.10.10.4.1.1.m1.1a"><mrow id="A4.T8.10.10.4.1.1.m1.1.1.2"><mo id="A4.T8.10.10.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.10.10.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.10.10.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.10.10.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.10.10.4.1.1.m1.1b"><cn id="A4.T8.10.10.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.10.10.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.10.10.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.10.10.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.11.11.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.11.11.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.11.11.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.11.11.5.1.1.m1.1"><semantics id="A4.T8.11.11.5.1.1.m1.1a"><mn id="A4.T8.11.11.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.11.11.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.11.11.5.1.1.m1.1b"><cn id="A4.T8.11.11.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.11.11.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.11.11.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.11.11.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.12.12.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.12.12.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.12.12.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.12.12.6.1.1.m1.1"><semantics id="A4.T8.12.12.6.1.1.m1.1a"><mn id="A4.T8.12.12.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.12.12.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.12.12.6.1.1.m1.1b"><cn id="A4.T8.12.12.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.12.12.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.12.12.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.12.12.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.18.18" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.13.13.1"><math alttext="0.081" class="ltx_Math" display="inline" id="A4.T8.13.13.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.13.13.1.m1.1a"><mn id="A4.T8.13.13.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.13.13.1.m1.1.1.cmml">0.081</mn><annotation-xml encoding="MathML-Content" id="A4.T8.13.13.1.m1.1b"><cn id="A4.T8.13.13.1.m1.1.1.cmml" type="float" xref="A4.T8.13.13.1.m1.1.1">0.081</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.13.13.1.m1.1c">0.081</annotation><annotation encoding="application/x-llamapun" id="A4.T8.13.13.1.m1.1d">0.081</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.14.14.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.14.14.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.14.14.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.14.14.2.1.1.m1.1"><semantics id="A4.T8.14.14.2.1.1.m1.1a"><mn id="A4.T8.14.14.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.14.14.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.14.14.2.1.1.m1.1b"><cn id="A4.T8.14.14.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.14.14.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.14.14.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.14.14.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.15.15.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.15.15.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.15.15.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.15.15.3.1.1.m1.1"><semantics id="A4.T8.15.15.3.1.1.m1.1a"><mn id="A4.T8.15.15.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.15.15.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.15.15.3.1.1.m1.1b"><cn id="A4.T8.15.15.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.15.15.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.15.15.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.15.15.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.16.16.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.16.16.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.16.16.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.16.16.4.1.1.m1.1"><semantics id="A4.T8.16.16.4.1.1.m1.1a"><mrow id="A4.T8.16.16.4.1.1.m1.1.1.2"><mo id="A4.T8.16.16.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.16.16.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.16.16.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.16.16.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.16.16.4.1.1.m1.1b"><cn id="A4.T8.16.16.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.16.16.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.16.16.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.16.16.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.17.17.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.17.17.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.17.17.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.17.17.5.1.1.m1.1"><semantics id="A4.T8.17.17.5.1.1.m1.1a"><mn id="A4.T8.17.17.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.17.17.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.17.17.5.1.1.m1.1b"><cn id="A4.T8.17.17.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.17.17.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.17.17.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.17.17.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.18.18.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.18.18.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.18.18.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.18.18.6.1.1.m1.1"><semantics id="A4.T8.18.18.6.1.1.m1.1a"><mn id="A4.T8.18.18.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.18.18.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.18.18.6.1.1.m1.1b"><cn id="A4.T8.18.18.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.18.18.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.18.18.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.18.18.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.24.24" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.19.19.1"><math alttext="0.087" class="ltx_Math" display="inline" id="A4.T8.19.19.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.19.19.1.m1.1a"><mn id="A4.T8.19.19.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.19.19.1.m1.1.1.cmml">0.087</mn><annotation-xml encoding="MathML-Content" id="A4.T8.19.19.1.m1.1b"><cn id="A4.T8.19.19.1.m1.1.1.cmml" type="float" xref="A4.T8.19.19.1.m1.1.1">0.087</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.19.19.1.m1.1c">0.087</annotation><annotation encoding="application/x-llamapun" id="A4.T8.19.19.1.m1.1d">0.087</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.20.20.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.20.20.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.20.20.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.20.20.2.1.1.m1.1"><semantics id="A4.T8.20.20.2.1.1.m1.1a"><mn id="A4.T8.20.20.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.20.20.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.20.20.2.1.1.m1.1b"><cn id="A4.T8.20.20.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.20.20.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.20.20.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.20.20.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.21.21.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.21.21.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.21.21.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.21.21.3.1.1.m1.1"><semantics id="A4.T8.21.21.3.1.1.m1.1a"><mn id="A4.T8.21.21.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.21.21.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.21.21.3.1.1.m1.1b"><cn id="A4.T8.21.21.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.21.21.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.21.21.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.21.21.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.22.22.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.22.22.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.22.22.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.22.22.4.1.1.m1.1"><semantics id="A4.T8.22.22.4.1.1.m1.1a"><mrow id="A4.T8.22.22.4.1.1.m1.1.1.2"><mo id="A4.T8.22.22.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.22.22.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.22.22.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.22.22.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.22.22.4.1.1.m1.1b"><cn id="A4.T8.22.22.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.22.22.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.22.22.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.22.22.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.23.23.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.23.23.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.23.23.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.23.23.5.1.1.m1.1"><semantics id="A4.T8.23.23.5.1.1.m1.1a"><mn id="A4.T8.23.23.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.23.23.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.23.23.5.1.1.m1.1b"><cn id="A4.T8.23.23.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.23.23.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.23.23.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.23.23.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.24.24.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.24.24.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.24.24.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.24.24.6.1.1.m1.1"><semantics id="A4.T8.24.24.6.1.1.m1.1a"><mn id="A4.T8.24.24.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.24.24.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.24.24.6.1.1.m1.1b"><cn id="A4.T8.24.24.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.24.24.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.24.24.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.24.24.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.30.30" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.25.25.1"><math alttext="0.112" class="ltx_Math" display="inline" id="A4.T8.25.25.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T8.25.25.1.m1.1a"><mn id="A4.T8.25.25.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.25.25.1.m1.1.1.cmml">0.112</mn><annotation-xml encoding="MathML-Content" id="A4.T8.25.25.1.m1.1b"><cn id="A4.T8.25.25.1.m1.1.1.cmml" type="float" xref="A4.T8.25.25.1.m1.1.1">0.112</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.25.25.1.m1.1c">0.112</annotation><annotation encoding="application/x-llamapun" id="A4.T8.25.25.1.m1.1d">0.112</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.26.26.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.26.26.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.26.26.2.1.1"><math alttext="0.00455518" class="ltx_Math" display="inline" id="A4.T8.26.26.2.1.1.m1.1"><semantics id="A4.T8.26.26.2.1.1.m1.1a"><mn id="A4.T8.26.26.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.26.26.2.1.1.m1.1.1.cmml">0.00455518</mn><annotation-xml encoding="MathML-Content" id="A4.T8.26.26.2.1.1.m1.1b"><cn id="A4.T8.26.26.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.26.26.2.1.1.m1.1.1">0.00455518</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.26.26.2.1.1.m1.1c">0.00455518</annotation><annotation encoding="application/x-llamapun" id="A4.T8.26.26.2.1.1.m1.1d">0.00455518</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.27.27.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.27.27.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.27.27.3.1.1"><math alttext="0.02146046" class="ltx_Math" display="inline" id="A4.T8.27.27.3.1.1.m1.1"><semantics id="A4.T8.27.27.3.1.1.m1.1a"><mn id="A4.T8.27.27.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.27.27.3.1.1.m1.1.1.cmml">0.02146046</mn><annotation-xml encoding="MathML-Content" id="A4.T8.27.27.3.1.1.m1.1b"><cn id="A4.T8.27.27.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.27.27.3.1.1.m1.1.1">0.02146046</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.27.27.3.1.1.m1.1c">0.02146046</annotation><annotation encoding="application/x-llamapun" id="A4.T8.27.27.3.1.1.m1.1d">0.02146046</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.28.28.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.28.28.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.28.28.4.1.1"><math alttext="-0.05157467" class="ltx_Math" display="inline" id="A4.T8.28.28.4.1.1.m1.1"><semantics id="A4.T8.28.28.4.1.1.m1.1a"><mrow id="A4.T8.28.28.4.1.1.m1.1.1.2"><mo id="A4.T8.28.28.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T8.28.28.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.28.28.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T8.28.28.4.1.1.m1.1.1.1.cmml">0.05157467</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.28.28.4.1.1.m1.1b"><cn id="A4.T8.28.28.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.28.28.4.1.1.m1.1.1.2a">-0.05157467</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.28.28.4.1.1.m1.1c">-0.05157467</annotation><annotation encoding="application/x-llamapun" id="A4.T8.28.28.4.1.1.m1.1d">- 0.05157467</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.29.29.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.29.29.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.29.29.5.1.1"><math alttext="0.01972101" class="ltx_Math" display="inline" id="A4.T8.29.29.5.1.1.m1.1"><semantics id="A4.T8.29.29.5.1.1.m1.1a"><mn id="A4.T8.29.29.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.29.29.5.1.1.m1.1.1.cmml">0.01972101</mn><annotation-xml encoding="MathML-Content" id="A4.T8.29.29.5.1.1.m1.1b"><cn id="A4.T8.29.29.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.29.29.5.1.1.m1.1.1">0.01972101</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.29.29.5.1.1.m1.1c">0.01972101</annotation><annotation encoding="application/x-llamapun" id="A4.T8.29.29.5.1.1.m1.1d">0.01972101</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.30.30.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.30.30.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.30.30.6.1.1"><math alttext="0.02807036" class="ltx_Math" display="inline" id="A4.T8.30.30.6.1.1.m1.1"><semantics id="A4.T8.30.30.6.1.1.m1.1a"><mn id="A4.T8.30.30.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.30.30.6.1.1.m1.1.1.cmml">0.02807036</mn><annotation-xml encoding="MathML-Content" id="A4.T8.30.30.6.1.1.m1.1b"><cn id="A4.T8.30.30.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.30.30.6.1.1.m1.1.1">0.02807036</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.30.30.6.1.1.m1.1c">0.02807036</annotation><annotation encoding="application/x-llamapun" id="A4.T8.30.30.6.1.1.m1.1d">0.02807036</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.36.36" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.31.31.1"><math alttext="0.038" class="ltx_Math" display="inline" id="A4.T8.31.31.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T8.31.31.1.m1.1a"><mn id="A4.T8.31.31.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.31.31.1.m1.1.1.cmml">0.038</mn><annotation-xml encoding="MathML-Content" id="A4.T8.31.31.1.m1.1b"><cn id="A4.T8.31.31.1.m1.1.1.cmml" type="float" xref="A4.T8.31.31.1.m1.1.1">0.038</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.31.31.1.m1.1c">0.038</annotation><annotation encoding="application/x-llamapun" id="A4.T8.31.31.1.m1.1d">0.038</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.32.32.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.32.32.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.32.32.2.1.1"><math alttext="0.00453244" class="ltx_Math" display="inline" id="A4.T8.32.32.2.1.1.m1.1"><semantics id="A4.T8.32.32.2.1.1.m1.1a"><mn id="A4.T8.32.32.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.32.32.2.1.1.m1.1.1.cmml">0.00453244</mn><annotation-xml encoding="MathML-Content" id="A4.T8.32.32.2.1.1.m1.1b"><cn id="A4.T8.32.32.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.32.32.2.1.1.m1.1.1">0.00453244</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.32.32.2.1.1.m1.1c">0.00453244</annotation><annotation encoding="application/x-llamapun" id="A4.T8.32.32.2.1.1.m1.1d">0.00453244</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.33.33.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.33.33.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.33.33.3.1.1"><math alttext="0.02149035" class="ltx_Math" display="inline" id="A4.T8.33.33.3.1.1.m1.1"><semantics id="A4.T8.33.33.3.1.1.m1.1a"><mn id="A4.T8.33.33.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.33.33.3.1.1.m1.1.1.cmml">0.02149035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.33.33.3.1.1.m1.1b"><cn id="A4.T8.33.33.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.33.33.3.1.1.m1.1.1">0.02149035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.33.33.3.1.1.m1.1c">0.02149035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.33.33.3.1.1.m1.1d">0.02149035</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.34.34.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.34.34.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.34.34.4.1.1"><math alttext="-0.05159424" class="ltx_Math" display="inline" id="A4.T8.34.34.4.1.1.m1.1"><semantics id="A4.T8.34.34.4.1.1.m1.1a"><mrow id="A4.T8.34.34.4.1.1.m1.1.1.2"><mo id="A4.T8.34.34.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T8.34.34.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.34.34.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T8.34.34.4.1.1.m1.1.1.1.cmml">0.05159424</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.34.34.4.1.1.m1.1b"><cn id="A4.T8.34.34.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.34.34.4.1.1.m1.1.1.2a">-0.05159424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.34.34.4.1.1.m1.1c">-0.05159424</annotation><annotation encoding="application/x-llamapun" id="A4.T8.34.34.4.1.1.m1.1d">- 0.05159424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.35.35.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.35.35.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.35.35.5.1.1"><math alttext="0.01968498" class="ltx_Math" display="inline" id="A4.T8.35.35.5.1.1.m1.1"><semantics id="A4.T8.35.35.5.1.1.m1.1a"><mn id="A4.T8.35.35.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.35.35.5.1.1.m1.1.1.cmml">0.01968498</mn><annotation-xml encoding="MathML-Content" id="A4.T8.35.35.5.1.1.m1.1b"><cn id="A4.T8.35.35.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.35.35.5.1.1.m1.1.1">0.01968498</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.35.35.5.1.1.m1.1c">0.01968498</annotation><annotation encoding="application/x-llamapun" id="A4.T8.35.35.5.1.1.m1.1d">0.01968498</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.36.36.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.36.36.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.36.36.6.1.1"><math alttext="0.02810276" class="ltx_Math" display="inline" id="A4.T8.36.36.6.1.1.m1.1"><semantics id="A4.T8.36.36.6.1.1.m1.1a"><mn id="A4.T8.36.36.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.36.36.6.1.1.m1.1.1.cmml">0.02810276</mn><annotation-xml encoding="MathML-Content" id="A4.T8.36.36.6.1.1.m1.1b"><cn id="A4.T8.36.36.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.36.36.6.1.1.m1.1.1">0.02810276</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.36.36.6.1.1.m1.1c">0.02810276</annotation><annotation encoding="application/x-llamapun" id="A4.T8.36.36.6.1.1.m1.1d">0.02810276</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.42.42" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.37.37.1"><math alttext="0.113" class="ltx_Math" display="inline" id="A4.T8.37.37.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.37.37.1.m1.1a"><mn id="A4.T8.37.37.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.37.37.1.m1.1.1.cmml">0.113</mn><annotation-xml encoding="MathML-Content" id="A4.T8.37.37.1.m1.1b"><cn id="A4.T8.37.37.1.m1.1.1.cmml" type="float" xref="A4.T8.37.37.1.m1.1.1">0.113</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.37.37.1.m1.1c">0.113</annotation><annotation encoding="application/x-llamapun" id="A4.T8.37.37.1.m1.1d">0.113</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.38.38.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.38.38.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.38.38.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.38.38.2.1.1.m1.1"><semantics id="A4.T8.38.38.2.1.1.m1.1a"><mn id="A4.T8.38.38.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.38.38.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.38.38.2.1.1.m1.1b"><cn id="A4.T8.38.38.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.38.38.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.38.38.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.38.38.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.39.39.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.39.39.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.39.39.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.39.39.3.1.1.m1.1"><semantics id="A4.T8.39.39.3.1.1.m1.1a"><mn id="A4.T8.39.39.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.39.39.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.39.39.3.1.1.m1.1b"><cn id="A4.T8.39.39.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.39.39.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.39.39.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.39.39.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.40.40.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.40.40.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.40.40.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.40.40.4.1.1.m1.1"><semantics id="A4.T8.40.40.4.1.1.m1.1a"><mrow id="A4.T8.40.40.4.1.1.m1.1.1.2"><mo id="A4.T8.40.40.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.40.40.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.40.40.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.40.40.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.40.40.4.1.1.m1.1b"><cn id="A4.T8.40.40.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.40.40.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.40.40.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.40.40.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.41.41.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.41.41.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.41.41.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.41.41.5.1.1.m1.1"><semantics id="A4.T8.41.41.5.1.1.m1.1a"><mn id="A4.T8.41.41.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.41.41.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.41.41.5.1.1.m1.1b"><cn id="A4.T8.41.41.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.41.41.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.41.41.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.41.41.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.42.42.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.42.42.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.42.42.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.42.42.6.1.1.m1.1"><semantics id="A4.T8.42.42.6.1.1.m1.1a"><mn id="A4.T8.42.42.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.42.42.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.42.42.6.1.1.m1.1b"><cn id="A4.T8.42.42.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.42.42.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.42.42.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.42.42.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.48.48" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.43.43.1"><math alttext="0.036" class="ltx_Math" display="inline" id="A4.T8.43.43.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T8.43.43.1.m1.1a"><mn id="A4.T8.43.43.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.43.43.1.m1.1.1.cmml">0.036</mn><annotation-xml encoding="MathML-Content" id="A4.T8.43.43.1.m1.1b"><cn id="A4.T8.43.43.1.m1.1.1.cmml" type="float" xref="A4.T8.43.43.1.m1.1.1">0.036</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.43.43.1.m1.1c">0.036</annotation><annotation encoding="application/x-llamapun" id="A4.T8.43.43.1.m1.1d">0.036</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.44.44.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.44.44.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.44.44.2.1.1"><math alttext="0.00453244" class="ltx_Math" display="inline" id="A4.T8.44.44.2.1.1.m1.1"><semantics id="A4.T8.44.44.2.1.1.m1.1a"><mn id="A4.T8.44.44.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.44.44.2.1.1.m1.1.1.cmml">0.00453244</mn><annotation-xml encoding="MathML-Content" id="A4.T8.44.44.2.1.1.m1.1b"><cn id="A4.T8.44.44.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.44.44.2.1.1.m1.1.1">0.00453244</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.44.44.2.1.1.m1.1c">0.00453244</annotation><annotation encoding="application/x-llamapun" id="A4.T8.44.44.2.1.1.m1.1d">0.00453244</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.45.45.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.45.45.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.45.45.3.1.1"><math alttext="0.02149035" class="ltx_Math" display="inline" id="A4.T8.45.45.3.1.1.m1.1"><semantics id="A4.T8.45.45.3.1.1.m1.1a"><mn id="A4.T8.45.45.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.45.45.3.1.1.m1.1.1.cmml">0.02149035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.45.45.3.1.1.m1.1b"><cn id="A4.T8.45.45.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.45.45.3.1.1.m1.1.1">0.02149035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.45.45.3.1.1.m1.1c">0.02149035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.45.45.3.1.1.m1.1d">0.02149035</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.46.46.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.46.46.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.46.46.4.1.1"><math alttext="-0.05159424" class="ltx_Math" display="inline" id="A4.T8.46.46.4.1.1.m1.1"><semantics id="A4.T8.46.46.4.1.1.m1.1a"><mrow id="A4.T8.46.46.4.1.1.m1.1.1.2"><mo id="A4.T8.46.46.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T8.46.46.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.46.46.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T8.46.46.4.1.1.m1.1.1.1.cmml">0.05159424</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.46.46.4.1.1.m1.1b"><cn id="A4.T8.46.46.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.46.46.4.1.1.m1.1.1.2a">-0.05159424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.46.46.4.1.1.m1.1c">-0.05159424</annotation><annotation encoding="application/x-llamapun" id="A4.T8.46.46.4.1.1.m1.1d">- 0.05159424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.47.47.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.47.47.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.47.47.5.1.1"><math alttext="0.01968498" class="ltx_Math" display="inline" id="A4.T8.47.47.5.1.1.m1.1"><semantics id="A4.T8.47.47.5.1.1.m1.1a"><mn id="A4.T8.47.47.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.47.47.5.1.1.m1.1.1.cmml">0.01968498</mn><annotation-xml encoding="MathML-Content" id="A4.T8.47.47.5.1.1.m1.1b"><cn id="A4.T8.47.47.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.47.47.5.1.1.m1.1.1">0.01968498</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.47.47.5.1.1.m1.1c">0.01968498</annotation><annotation encoding="application/x-llamapun" id="A4.T8.47.47.5.1.1.m1.1d">0.01968498</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.48.48.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.48.48.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.48.48.6.1.1"><math alttext="0.02810276" class="ltx_Math" display="inline" id="A4.T8.48.48.6.1.1.m1.1"><semantics id="A4.T8.48.48.6.1.1.m1.1a"><mn id="A4.T8.48.48.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.48.48.6.1.1.m1.1.1.cmml">0.02810276</mn><annotation-xml encoding="MathML-Content" id="A4.T8.48.48.6.1.1.m1.1b"><cn id="A4.T8.48.48.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.48.48.6.1.1.m1.1.1">0.02810276</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.48.48.6.1.1.m1.1c">0.02810276</annotation><annotation encoding="application/x-llamapun" id="A4.T8.48.48.6.1.1.m1.1d">0.02810276</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.54.54" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.49.49.1"><math alttext="0.078" class="ltx_Math" display="inline" id="A4.T8.49.49.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.49.49.1.m1.1a"><mn id="A4.T8.49.49.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.49.49.1.m1.1.1.cmml">0.078</mn><annotation-xml encoding="MathML-Content" id="A4.T8.49.49.1.m1.1b"><cn id="A4.T8.49.49.1.m1.1.1.cmml" type="float" xref="A4.T8.49.49.1.m1.1.1">0.078</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.49.49.1.m1.1c">0.078</annotation><annotation encoding="application/x-llamapun" id="A4.T8.49.49.1.m1.1d">0.078</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.50.50.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.50.50.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.50.50.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.50.50.2.1.1.m1.1"><semantics id="A4.T8.50.50.2.1.1.m1.1a"><mn id="A4.T8.50.50.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.50.50.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.50.50.2.1.1.m1.1b"><cn id="A4.T8.50.50.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.50.50.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.50.50.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.50.50.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.51.51.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.51.51.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.51.51.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.51.51.3.1.1.m1.1"><semantics id="A4.T8.51.51.3.1.1.m1.1a"><mn id="A4.T8.51.51.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.51.51.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.51.51.3.1.1.m1.1b"><cn id="A4.T8.51.51.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.51.51.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.51.51.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.51.51.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.52.52.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.52.52.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.52.52.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.52.52.4.1.1.m1.1"><semantics id="A4.T8.52.52.4.1.1.m1.1a"><mrow id="A4.T8.52.52.4.1.1.m1.1.1.2"><mo id="A4.T8.52.52.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.52.52.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.52.52.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.52.52.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.52.52.4.1.1.m1.1b"><cn id="A4.T8.52.52.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.52.52.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.52.52.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.52.52.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.53.53.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.53.53.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.53.53.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.53.53.5.1.1.m1.1"><semantics id="A4.T8.53.53.5.1.1.m1.1a"><mn id="A4.T8.53.53.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.53.53.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.53.53.5.1.1.m1.1b"><cn id="A4.T8.53.53.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.53.53.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.53.53.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.53.53.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.54.54.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.54.54.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.54.54.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.54.54.6.1.1.m1.1"><semantics id="A4.T8.54.54.6.1.1.m1.1a"><mn id="A4.T8.54.54.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.54.54.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.54.54.6.1.1.m1.1b"><cn id="A4.T8.54.54.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.54.54.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.54.54.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.54.54.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.60.60" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.55.55.1"><math alttext="0.118" class="ltx_Math" display="inline" id="A4.T8.55.55.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T8.55.55.1.m1.1a"><mn id="A4.T8.55.55.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.55.55.1.m1.1.1.cmml">0.118</mn><annotation-xml encoding="MathML-Content" id="A4.T8.55.55.1.m1.1b"><cn id="A4.T8.55.55.1.m1.1.1.cmml" type="float" xref="A4.T8.55.55.1.m1.1.1">0.118</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.55.55.1.m1.1c">0.118</annotation><annotation encoding="application/x-llamapun" id="A4.T8.55.55.1.m1.1d">0.118</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.56.56.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.56.56.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.56.56.2.1.1"><math alttext="0.00455531" class="ltx_Math" display="inline" id="A4.T8.56.56.2.1.1.m1.1"><semantics id="A4.T8.56.56.2.1.1.m1.1a"><mn id="A4.T8.56.56.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.56.56.2.1.1.m1.1.1.cmml">0.00455531</mn><annotation-xml encoding="MathML-Content" id="A4.T8.56.56.2.1.1.m1.1b"><cn id="A4.T8.56.56.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.56.56.2.1.1.m1.1.1">0.00455531</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.56.56.2.1.1.m1.1c">0.00455531</annotation><annotation encoding="application/x-llamapun" id="A4.T8.56.56.2.1.1.m1.1d">0.00455531</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.57.57.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.57.57.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.57.57.3.1.1"><math alttext="0.02148279" class="ltx_Math" display="inline" id="A4.T8.57.57.3.1.1.m1.1"><semantics id="A4.T8.57.57.3.1.1.m1.1a"><mn id="A4.T8.57.57.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.57.57.3.1.1.m1.1.1.cmml">0.02148279</mn><annotation-xml encoding="MathML-Content" id="A4.T8.57.57.3.1.1.m1.1b"><cn id="A4.T8.57.57.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.57.57.3.1.1.m1.1.1">0.02148279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.57.57.3.1.1.m1.1c">0.02148279</annotation><annotation encoding="application/x-llamapun" id="A4.T8.57.57.3.1.1.m1.1d">0.02148279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.58.58.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.58.58.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.58.58.4.1.1"><math alttext="-0.05153262" class="ltx_Math" display="inline" id="A4.T8.58.58.4.1.1.m1.1"><semantics id="A4.T8.58.58.4.1.1.m1.1a"><mrow id="A4.T8.58.58.4.1.1.m1.1.1.2"><mo id="A4.T8.58.58.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T8.58.58.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.58.58.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T8.58.58.4.1.1.m1.1.1.1.cmml">0.05153262</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.58.58.4.1.1.m1.1b"><cn id="A4.T8.58.58.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.58.58.4.1.1.m1.1.1.2a">-0.05153262</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.58.58.4.1.1.m1.1c">-0.05153262</annotation><annotation encoding="application/x-llamapun" id="A4.T8.58.58.4.1.1.m1.1d">- 0.05153262</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.59.59.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.59.59.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.59.59.5.1.1"><math alttext="0.01974330" class="ltx_Math" display="inline" id="A4.T8.59.59.5.1.1.m1.1"><semantics id="A4.T8.59.59.5.1.1.m1.1a"><mn id="A4.T8.59.59.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.59.59.5.1.1.m1.1.1.cmml">0.01974330</mn><annotation-xml encoding="MathML-Content" id="A4.T8.59.59.5.1.1.m1.1b"><cn id="A4.T8.59.59.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.59.59.5.1.1.m1.1.1">0.01974330</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.59.59.5.1.1.m1.1c">0.01974330</annotation><annotation encoding="application/x-llamapun" id="A4.T8.59.59.5.1.1.m1.1d">0.01974330</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.60.60.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.60.60.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.60.60.6.1.1"><math alttext="0.02809289" class="ltx_Math" display="inline" id="A4.T8.60.60.6.1.1.m1.1"><semantics id="A4.T8.60.60.6.1.1.m1.1a"><mn id="A4.T8.60.60.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.60.60.6.1.1.m1.1.1.cmml">0.02809289</mn><annotation-xml encoding="MathML-Content" id="A4.T8.60.60.6.1.1.m1.1b"><cn id="A4.T8.60.60.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.60.60.6.1.1.m1.1.1">0.02809289</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.60.60.6.1.1.m1.1c">0.02809289</annotation><annotation encoding="application/x-llamapun" id="A4.T8.60.60.6.1.1.m1.1d">0.02809289</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.66.66" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.61.61.1"><math alttext="0.079" class="ltx_Math" display="inline" id="A4.T8.61.61.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T8.61.61.1.m1.1a"><mn id="A4.T8.61.61.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.61.61.1.m1.1.1.cmml">0.079</mn><annotation-xml encoding="MathML-Content" id="A4.T8.61.61.1.m1.1b"><cn id="A4.T8.61.61.1.m1.1.1.cmml" type="float" xref="A4.T8.61.61.1.m1.1.1">0.079</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.61.61.1.m1.1c">0.079</annotation><annotation encoding="application/x-llamapun" id="A4.T8.61.61.1.m1.1d">0.079</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.62.62.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.62.62.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.62.62.2.1.1"><math alttext="0.00455518" class="ltx_Math" display="inline" id="A4.T8.62.62.2.1.1.m1.1"><semantics id="A4.T8.62.62.2.1.1.m1.1a"><mn id="A4.T8.62.62.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.62.62.2.1.1.m1.1.1.cmml">0.00455518</mn><annotation-xml encoding="MathML-Content" id="A4.T8.62.62.2.1.1.m1.1b"><cn id="A4.T8.62.62.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.62.62.2.1.1.m1.1.1">0.00455518</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.62.62.2.1.1.m1.1c">0.00455518</annotation><annotation encoding="application/x-llamapun" id="A4.T8.62.62.2.1.1.m1.1d">0.00455518</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.63.63.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.63.63.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.63.63.3.1.1"><math alttext="0.02146046" class="ltx_Math" display="inline" id="A4.T8.63.63.3.1.1.m1.1"><semantics id="A4.T8.63.63.3.1.1.m1.1a"><mn id="A4.T8.63.63.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.63.63.3.1.1.m1.1.1.cmml">0.02146046</mn><annotation-xml encoding="MathML-Content" id="A4.T8.63.63.3.1.1.m1.1b"><cn id="A4.T8.63.63.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.63.63.3.1.1.m1.1.1">0.02146046</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.63.63.3.1.1.m1.1c">0.02146046</annotation><annotation encoding="application/x-llamapun" id="A4.T8.63.63.3.1.1.m1.1d">0.02146046</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.64.64.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.64.64.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.64.64.4.1.1"><math alttext="-0.05157467" class="ltx_Math" display="inline" id="A4.T8.64.64.4.1.1.m1.1"><semantics id="A4.T8.64.64.4.1.1.m1.1a"><mrow id="A4.T8.64.64.4.1.1.m1.1.1.2"><mo id="A4.T8.64.64.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T8.64.64.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.64.64.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T8.64.64.4.1.1.m1.1.1.1.cmml">0.05157467</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.64.64.4.1.1.m1.1b"><cn id="A4.T8.64.64.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.64.64.4.1.1.m1.1.1.2a">-0.05157467</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.64.64.4.1.1.m1.1c">-0.05157467</annotation><annotation encoding="application/x-llamapun" id="A4.T8.64.64.4.1.1.m1.1d">- 0.05157467</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.65.65.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.65.65.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.65.65.5.1.1"><math alttext="0.01972101" class="ltx_Math" display="inline" id="A4.T8.65.65.5.1.1.m1.1"><semantics id="A4.T8.65.65.5.1.1.m1.1a"><mn id="A4.T8.65.65.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.65.65.5.1.1.m1.1.1.cmml">0.01972101</mn><annotation-xml encoding="MathML-Content" id="A4.T8.65.65.5.1.1.m1.1b"><cn id="A4.T8.65.65.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.65.65.5.1.1.m1.1.1">0.01972101</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.65.65.5.1.1.m1.1c">0.01972101</annotation><annotation encoding="application/x-llamapun" id="A4.T8.65.65.5.1.1.m1.1d">0.01972101</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.66.66.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.66.66.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.66.66.6.1.1"><math alttext="0.02807036" class="ltx_Math" display="inline" id="A4.T8.66.66.6.1.1.m1.1"><semantics id="A4.T8.66.66.6.1.1.m1.1a"><mn id="A4.T8.66.66.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.66.66.6.1.1.m1.1.1.cmml">0.02807036</mn><annotation-xml encoding="MathML-Content" id="A4.T8.66.66.6.1.1.m1.1b"><cn id="A4.T8.66.66.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.66.66.6.1.1.m1.1.1">0.02807036</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.66.66.6.1.1.m1.1c">0.02807036</annotation><annotation encoding="application/x-llamapun" id="A4.T8.66.66.6.1.1.m1.1d">0.02807036</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.72.72" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.67.67.1"><math alttext="0.084" class="ltx_Math" display="inline" id="A4.T8.67.67.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.67.67.1.m1.1a"><mn id="A4.T8.67.67.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.67.67.1.m1.1.1.cmml">0.084</mn><annotation-xml encoding="MathML-Content" id="A4.T8.67.67.1.m1.1b"><cn id="A4.T8.67.67.1.m1.1.1.cmml" type="float" xref="A4.T8.67.67.1.m1.1.1">0.084</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.67.67.1.m1.1c">0.084</annotation><annotation encoding="application/x-llamapun" id="A4.T8.67.67.1.m1.1d">0.084</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.68.68.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.68.68.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.68.68.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.68.68.2.1.1.m1.1"><semantics id="A4.T8.68.68.2.1.1.m1.1a"><mn id="A4.T8.68.68.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.68.68.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.68.68.2.1.1.m1.1b"><cn id="A4.T8.68.68.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.68.68.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.68.68.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.68.68.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.69.69.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.69.69.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.69.69.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.69.69.3.1.1.m1.1"><semantics id="A4.T8.69.69.3.1.1.m1.1a"><mn id="A4.T8.69.69.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.69.69.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.69.69.3.1.1.m1.1b"><cn id="A4.T8.69.69.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.69.69.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.69.69.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.69.69.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.70.70.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.70.70.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.70.70.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.70.70.4.1.1.m1.1"><semantics id="A4.T8.70.70.4.1.1.m1.1a"><mrow id="A4.T8.70.70.4.1.1.m1.1.1.2"><mo id="A4.T8.70.70.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.70.70.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.70.70.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.70.70.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.70.70.4.1.1.m1.1b"><cn id="A4.T8.70.70.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.70.70.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.70.70.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.70.70.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.71.71.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.71.71.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.71.71.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.71.71.5.1.1.m1.1"><semantics id="A4.T8.71.71.5.1.1.m1.1a"><mn id="A4.T8.71.71.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.71.71.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.71.71.5.1.1.m1.1b"><cn id="A4.T8.71.71.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.71.71.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.71.71.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.71.71.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.72.72.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.72.72.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.72.72.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.72.72.6.1.1.m1.1"><semantics id="A4.T8.72.72.6.1.1.m1.1a"><mn id="A4.T8.72.72.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.72.72.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.72.72.6.1.1.m1.1b"><cn id="A4.T8.72.72.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.72.72.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.72.72.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.72.72.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.78.78" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.73.73.1"><math alttext="0.096" class="ltx_Math" display="inline" id="A4.T8.73.73.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.73.73.1.m1.1a"><mn id="A4.T8.73.73.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.73.73.1.m1.1.1.cmml">0.096</mn><annotation-xml encoding="MathML-Content" id="A4.T8.73.73.1.m1.1b"><cn id="A4.T8.73.73.1.m1.1.1.cmml" type="float" xref="A4.T8.73.73.1.m1.1.1">0.096</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.73.73.1.m1.1c">0.096</annotation><annotation encoding="application/x-llamapun" id="A4.T8.73.73.1.m1.1d">0.096</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.74.74.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.74.74.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.74.74.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.74.74.2.1.1.m1.1"><semantics id="A4.T8.74.74.2.1.1.m1.1a"><mn id="A4.T8.74.74.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.74.74.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.74.74.2.1.1.m1.1b"><cn id="A4.T8.74.74.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.74.74.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.74.74.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.74.74.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.75.75.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.75.75.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.75.75.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.75.75.3.1.1.m1.1"><semantics id="A4.T8.75.75.3.1.1.m1.1a"><mn id="A4.T8.75.75.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.75.75.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.75.75.3.1.1.m1.1b"><cn id="A4.T8.75.75.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.75.75.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.75.75.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.75.75.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.76.76.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.76.76.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.76.76.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.76.76.4.1.1.m1.1"><semantics id="A4.T8.76.76.4.1.1.m1.1a"><mrow id="A4.T8.76.76.4.1.1.m1.1.1.2"><mo id="A4.T8.76.76.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.76.76.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.76.76.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.76.76.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.76.76.4.1.1.m1.1b"><cn id="A4.T8.76.76.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.76.76.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.76.76.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.76.76.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.77.77.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.77.77.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.77.77.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.77.77.5.1.1.m1.1"><semantics id="A4.T8.77.77.5.1.1.m1.1a"><mn id="A4.T8.77.77.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.77.77.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.77.77.5.1.1.m1.1b"><cn id="A4.T8.77.77.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.77.77.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.77.77.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.77.77.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.78.78.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.78.78.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.78.78.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.78.78.6.1.1.m1.1"><semantics id="A4.T8.78.78.6.1.1.m1.1a"><mn id="A4.T8.78.78.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.78.78.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.78.78.6.1.1.m1.1b"><cn id="A4.T8.78.78.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.78.78.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.78.78.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.78.78.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.84.84" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.79.79.1"><math alttext="0.110" class="ltx_Math" display="inline" id="A4.T8.79.79.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.79.79.1.m1.1a"><mn id="A4.T8.79.79.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.79.79.1.m1.1.1.cmml">0.110</mn><annotation-xml encoding="MathML-Content" id="A4.T8.79.79.1.m1.1b"><cn id="A4.T8.79.79.1.m1.1.1.cmml" type="float" xref="A4.T8.79.79.1.m1.1.1">0.110</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.79.79.1.m1.1c">0.110</annotation><annotation encoding="application/x-llamapun" id="A4.T8.79.79.1.m1.1d">0.110</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.80.80.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.80.80.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.80.80.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.80.80.2.1.1.m1.1"><semantics id="A4.T8.80.80.2.1.1.m1.1a"><mn id="A4.T8.80.80.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.80.80.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.80.80.2.1.1.m1.1b"><cn id="A4.T8.80.80.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.80.80.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.80.80.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.80.80.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.81.81.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.81.81.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.81.81.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.81.81.3.1.1.m1.1"><semantics id="A4.T8.81.81.3.1.1.m1.1a"><mn id="A4.T8.81.81.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.81.81.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.81.81.3.1.1.m1.1b"><cn id="A4.T8.81.81.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.81.81.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.81.81.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.81.81.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.82.82.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.82.82.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.82.82.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.82.82.4.1.1.m1.1"><semantics id="A4.T8.82.82.4.1.1.m1.1a"><mrow id="A4.T8.82.82.4.1.1.m1.1.1.2"><mo id="A4.T8.82.82.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.82.82.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.82.82.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.82.82.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.82.82.4.1.1.m1.1b"><cn id="A4.T8.82.82.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.82.82.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.82.82.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.82.82.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.83.83.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.83.83.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.83.83.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.83.83.5.1.1.m1.1"><semantics id="A4.T8.83.83.5.1.1.m1.1a"><mn id="A4.T8.83.83.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.83.83.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.83.83.5.1.1.m1.1b"><cn id="A4.T8.83.83.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.83.83.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.83.83.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.83.83.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.84.84.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.84.84.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.84.84.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.84.84.6.1.1.m1.1"><semantics id="A4.T8.84.84.6.1.1.m1.1a"><mn id="A4.T8.84.84.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.84.84.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.84.84.6.1.1.m1.1b"><cn id="A4.T8.84.84.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.84.84.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.84.84.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.84.84.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.90.90" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.85.85.1"><math alttext="0.089" class="ltx_Math" display="inline" id="A4.T8.85.85.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.85.85.1.m1.1a"><mn id="A4.T8.85.85.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.85.85.1.m1.1.1.cmml">0.089</mn><annotation-xml encoding="MathML-Content" id="A4.T8.85.85.1.m1.1b"><cn id="A4.T8.85.85.1.m1.1.1.cmml" type="float" xref="A4.T8.85.85.1.m1.1.1">0.089</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.85.85.1.m1.1c">0.089</annotation><annotation encoding="application/x-llamapun" id="A4.T8.85.85.1.m1.1d">0.089</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.86.86.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.86.86.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.86.86.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.86.86.2.1.1.m1.1"><semantics id="A4.T8.86.86.2.1.1.m1.1a"><mn id="A4.T8.86.86.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.86.86.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.86.86.2.1.1.m1.1b"><cn id="A4.T8.86.86.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.86.86.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.86.86.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.86.86.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.87.87.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.87.87.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.87.87.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.87.87.3.1.1.m1.1"><semantics id="A4.T8.87.87.3.1.1.m1.1a"><mn id="A4.T8.87.87.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.87.87.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.87.87.3.1.1.m1.1b"><cn id="A4.T8.87.87.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.87.87.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.87.87.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.87.87.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.88.88.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.88.88.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.88.88.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.88.88.4.1.1.m1.1"><semantics id="A4.T8.88.88.4.1.1.m1.1a"><mrow id="A4.T8.88.88.4.1.1.m1.1.1.2"><mo id="A4.T8.88.88.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.88.88.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.88.88.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.88.88.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.88.88.4.1.1.m1.1b"><cn id="A4.T8.88.88.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.88.88.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.88.88.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.88.88.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.89.89.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.89.89.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.89.89.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.89.89.5.1.1.m1.1"><semantics id="A4.T8.89.89.5.1.1.m1.1a"><mn id="A4.T8.89.89.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.89.89.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.89.89.5.1.1.m1.1b"><cn id="A4.T8.89.89.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.89.89.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.89.89.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.89.89.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.90.90.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.90.90.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.90.90.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.90.90.6.1.1.m1.1"><semantics id="A4.T8.90.90.6.1.1.m1.1a"><mn id="A4.T8.90.90.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.90.90.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.90.90.6.1.1.m1.1b"><cn id="A4.T8.90.90.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.90.90.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.90.90.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.90.90.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.96.96" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.91.91.1"><math alttext="0.063" class="ltx_Math" display="inline" id="A4.T8.91.91.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T8.91.91.1.m1.1a"><mn id="A4.T8.91.91.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.91.91.1.m1.1.1.cmml">0.063</mn><annotation-xml encoding="MathML-Content" id="A4.T8.91.91.1.m1.1b"><cn id="A4.T8.91.91.1.m1.1.1.cmml" type="float" xref="A4.T8.91.91.1.m1.1.1">0.063</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.91.91.1.m1.1c">0.063</annotation><annotation encoding="application/x-llamapun" id="A4.T8.91.91.1.m1.1d">0.063</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.92.92.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.92.92.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.92.92.2.1.1"><math alttext="0.00453244" class="ltx_Math" display="inline" id="A4.T8.92.92.2.1.1.m1.1"><semantics id="A4.T8.92.92.2.1.1.m1.1a"><mn id="A4.T8.92.92.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.92.92.2.1.1.m1.1.1.cmml">0.00453244</mn><annotation-xml encoding="MathML-Content" id="A4.T8.92.92.2.1.1.m1.1b"><cn id="A4.T8.92.92.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.92.92.2.1.1.m1.1.1">0.00453244</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.92.92.2.1.1.m1.1c">0.00453244</annotation><annotation encoding="application/x-llamapun" id="A4.T8.92.92.2.1.1.m1.1d">0.00453244</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.93.93.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.93.93.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.93.93.3.1.1"><math alttext="0.02149035" class="ltx_Math" display="inline" id="A4.T8.93.93.3.1.1.m1.1"><semantics id="A4.T8.93.93.3.1.1.m1.1a"><mn id="A4.T8.93.93.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.93.93.3.1.1.m1.1.1.cmml">0.02149035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.93.93.3.1.1.m1.1b"><cn id="A4.T8.93.93.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.93.93.3.1.1.m1.1.1">0.02149035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.93.93.3.1.1.m1.1c">0.02149035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.93.93.3.1.1.m1.1d">0.02149035</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.94.94.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.94.94.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.94.94.4.1.1"><math alttext="-0.05159424" class="ltx_Math" display="inline" id="A4.T8.94.94.4.1.1.m1.1"><semantics id="A4.T8.94.94.4.1.1.m1.1a"><mrow id="A4.T8.94.94.4.1.1.m1.1.1.2"><mo id="A4.T8.94.94.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T8.94.94.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.94.94.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T8.94.94.4.1.1.m1.1.1.1.cmml">0.05159424</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.94.94.4.1.1.m1.1b"><cn id="A4.T8.94.94.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.94.94.4.1.1.m1.1.1.2a">-0.05159424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.94.94.4.1.1.m1.1c">-0.05159424</annotation><annotation encoding="application/x-llamapun" id="A4.T8.94.94.4.1.1.m1.1d">- 0.05159424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.95.95.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.95.95.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.95.95.5.1.1"><math alttext="0.01968498" class="ltx_Math" display="inline" id="A4.T8.95.95.5.1.1.m1.1"><semantics id="A4.T8.95.95.5.1.1.m1.1a"><mn id="A4.T8.95.95.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.95.95.5.1.1.m1.1.1.cmml">0.01968498</mn><annotation-xml encoding="MathML-Content" id="A4.T8.95.95.5.1.1.m1.1b"><cn id="A4.T8.95.95.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.95.95.5.1.1.m1.1.1">0.01968498</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.95.95.5.1.1.m1.1c">0.01968498</annotation><annotation encoding="application/x-llamapun" id="A4.T8.95.95.5.1.1.m1.1d">0.01968498</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.96.96.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.96.96.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.96.96.6.1.1"><math alttext="0.02810276" class="ltx_Math" display="inline" id="A4.T8.96.96.6.1.1.m1.1"><semantics id="A4.T8.96.96.6.1.1.m1.1a"><mn id="A4.T8.96.96.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.96.96.6.1.1.m1.1.1.cmml">0.02810276</mn><annotation-xml encoding="MathML-Content" id="A4.T8.96.96.6.1.1.m1.1b"><cn id="A4.T8.96.96.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.96.96.6.1.1.m1.1.1">0.02810276</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.96.96.6.1.1.m1.1c">0.02810276</annotation><annotation encoding="application/x-llamapun" id="A4.T8.96.96.6.1.1.m1.1d">0.02810276</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.102.102" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.97.97.1"><math alttext="0.035" class="ltx_Math" display="inline" id="A4.T8.97.97.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T8.97.97.1.m1.1a"><mn id="A4.T8.97.97.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.97.97.1.m1.1.1.cmml">0.035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.97.97.1.m1.1b"><cn id="A4.T8.97.97.1.m1.1.1.cmml" type="float" xref="A4.T8.97.97.1.m1.1.1">0.035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.97.97.1.m1.1c">0.035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.97.97.1.m1.1d">0.035</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.98.98.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.98.98.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.98.98.2.1.1"><math alttext="0.00453244" class="ltx_Math" display="inline" id="A4.T8.98.98.2.1.1.m1.1"><semantics id="A4.T8.98.98.2.1.1.m1.1a"><mn id="A4.T8.98.98.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.98.98.2.1.1.m1.1.1.cmml">0.00453244</mn><annotation-xml encoding="MathML-Content" id="A4.T8.98.98.2.1.1.m1.1b"><cn id="A4.T8.98.98.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.98.98.2.1.1.m1.1.1">0.00453244</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.98.98.2.1.1.m1.1c">0.00453244</annotation><annotation encoding="application/x-llamapun" id="A4.T8.98.98.2.1.1.m1.1d">0.00453244</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.99.99.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.99.99.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.99.99.3.1.1"><math alttext="0.02149035" class="ltx_Math" display="inline" id="A4.T8.99.99.3.1.1.m1.1"><semantics id="A4.T8.99.99.3.1.1.m1.1a"><mn id="A4.T8.99.99.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.99.99.3.1.1.m1.1.1.cmml">0.02149035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.99.99.3.1.1.m1.1b"><cn id="A4.T8.99.99.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.99.99.3.1.1.m1.1.1">0.02149035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.99.99.3.1.1.m1.1c">0.02149035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.99.99.3.1.1.m1.1d">0.02149035</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.100.100.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.100.100.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.100.100.4.1.1"><math alttext="-0.05159424" class="ltx_Math" display="inline" id="A4.T8.100.100.4.1.1.m1.1"><semantics id="A4.T8.100.100.4.1.1.m1.1a"><mrow id="A4.T8.100.100.4.1.1.m1.1.1.2"><mo id="A4.T8.100.100.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T8.100.100.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.100.100.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T8.100.100.4.1.1.m1.1.1.1.cmml">0.05159424</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.100.100.4.1.1.m1.1b"><cn id="A4.T8.100.100.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.100.100.4.1.1.m1.1.1.2a">-0.05159424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.100.100.4.1.1.m1.1c">-0.05159424</annotation><annotation encoding="application/x-llamapun" id="A4.T8.100.100.4.1.1.m1.1d">- 0.05159424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.101.101.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.101.101.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.101.101.5.1.1"><math alttext="0.01968498" class="ltx_Math" display="inline" id="A4.T8.101.101.5.1.1.m1.1"><semantics id="A4.T8.101.101.5.1.1.m1.1a"><mn id="A4.T8.101.101.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.101.101.5.1.1.m1.1.1.cmml">0.01968498</mn><annotation-xml encoding="MathML-Content" id="A4.T8.101.101.5.1.1.m1.1b"><cn id="A4.T8.101.101.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.101.101.5.1.1.m1.1.1">0.01968498</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.101.101.5.1.1.m1.1c">0.01968498</annotation><annotation encoding="application/x-llamapun" id="A4.T8.101.101.5.1.1.m1.1d">0.01968498</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.102.102.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.102.102.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.102.102.6.1.1"><math alttext="0.02810276" class="ltx_Math" display="inline" id="A4.T8.102.102.6.1.1.m1.1"><semantics id="A4.T8.102.102.6.1.1.m1.1a"><mn id="A4.T8.102.102.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.102.102.6.1.1.m1.1.1.cmml">0.02810276</mn><annotation-xml encoding="MathML-Content" id="A4.T8.102.102.6.1.1.m1.1b"><cn id="A4.T8.102.102.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.102.102.6.1.1.m1.1.1">0.02810276</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.102.102.6.1.1.m1.1c">0.02810276</annotation><annotation encoding="application/x-llamapun" id="A4.T8.102.102.6.1.1.m1.1d">0.02810276</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.108.108" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.103.103.1"><math alttext="0.094" class="ltx_Math" display="inline" id="A4.T8.103.103.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.103.103.1.m1.1a"><mn id="A4.T8.103.103.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.103.103.1.m1.1.1.cmml">0.094</mn><annotation-xml encoding="MathML-Content" id="A4.T8.103.103.1.m1.1b"><cn id="A4.T8.103.103.1.m1.1.1.cmml" type="float" xref="A4.T8.103.103.1.m1.1.1">0.094</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.103.103.1.m1.1c">0.094</annotation><annotation encoding="application/x-llamapun" id="A4.T8.103.103.1.m1.1d">0.094</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.104.104.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.104.104.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.104.104.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.104.104.2.1.1.m1.1"><semantics id="A4.T8.104.104.2.1.1.m1.1a"><mn id="A4.T8.104.104.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.104.104.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.104.104.2.1.1.m1.1b"><cn id="A4.T8.104.104.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.104.104.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.104.104.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.104.104.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.105.105.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.105.105.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.105.105.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.105.105.3.1.1.m1.1"><semantics id="A4.T8.105.105.3.1.1.m1.1a"><mn id="A4.T8.105.105.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.105.105.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.105.105.3.1.1.m1.1b"><cn id="A4.T8.105.105.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.105.105.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.105.105.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.105.105.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.106.106.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.106.106.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.106.106.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.106.106.4.1.1.m1.1"><semantics id="A4.T8.106.106.4.1.1.m1.1a"><mrow id="A4.T8.106.106.4.1.1.m1.1.1.2"><mo id="A4.T8.106.106.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.106.106.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.106.106.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.106.106.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.106.106.4.1.1.m1.1b"><cn id="A4.T8.106.106.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.106.106.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.106.106.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.106.106.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.107.107.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.107.107.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.107.107.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.107.107.5.1.1.m1.1"><semantics id="A4.T8.107.107.5.1.1.m1.1a"><mn id="A4.T8.107.107.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.107.107.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.107.107.5.1.1.m1.1b"><cn id="A4.T8.107.107.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.107.107.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.107.107.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.107.107.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.108.108.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.108.108.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.108.108.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.108.108.6.1.1.m1.1"><semantics id="A4.T8.108.108.6.1.1.m1.1a"><mn id="A4.T8.108.108.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.108.108.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.108.108.6.1.1.m1.1b"><cn id="A4.T8.108.108.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.108.108.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.108.108.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.108.108.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.114.114" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.109.109.1"><math alttext="0.100" class="ltx_Math" display="inline" id="A4.T8.109.109.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.109.109.1.m1.1a"><mn id="A4.T8.109.109.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.109.109.1.m1.1.1.cmml">0.100</mn><annotation-xml encoding="MathML-Content" id="A4.T8.109.109.1.m1.1b"><cn id="A4.T8.109.109.1.m1.1.1.cmml" type="float" xref="A4.T8.109.109.1.m1.1.1">0.100</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.109.109.1.m1.1c">0.100</annotation><annotation encoding="application/x-llamapun" id="A4.T8.109.109.1.m1.1d">0.100</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.110.110.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.110.110.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.110.110.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.110.110.2.1.1.m1.1"><semantics id="A4.T8.110.110.2.1.1.m1.1a"><mn id="A4.T8.110.110.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.110.110.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.110.110.2.1.1.m1.1b"><cn id="A4.T8.110.110.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.110.110.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.110.110.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.110.110.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.111.111.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.111.111.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.111.111.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.111.111.3.1.1.m1.1"><semantics id="A4.T8.111.111.3.1.1.m1.1a"><mn id="A4.T8.111.111.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.111.111.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.111.111.3.1.1.m1.1b"><cn id="A4.T8.111.111.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.111.111.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.111.111.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.111.111.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.112.112.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.112.112.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.112.112.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.112.112.4.1.1.m1.1"><semantics id="A4.T8.112.112.4.1.1.m1.1a"><mrow id="A4.T8.112.112.4.1.1.m1.1.1.2"><mo id="A4.T8.112.112.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.112.112.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.112.112.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.112.112.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.112.112.4.1.1.m1.1b"><cn id="A4.T8.112.112.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.112.112.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.112.112.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.112.112.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.113.113.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.113.113.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.113.113.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.113.113.5.1.1.m1.1"><semantics id="A4.T8.113.113.5.1.1.m1.1a"><mn id="A4.T8.113.113.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.113.113.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.113.113.5.1.1.m1.1b"><cn id="A4.T8.113.113.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.113.113.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.113.113.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.113.113.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.114.114.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.114.114.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.114.114.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.114.114.6.1.1.m1.1"><semantics id="A4.T8.114.114.6.1.1.m1.1a"><mn id="A4.T8.114.114.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.114.114.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.114.114.6.1.1.m1.1b"><cn id="A4.T8.114.114.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.114.114.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.114.114.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.114.114.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.120.120" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.115.115.1"><math alttext="0.033" class="ltx_Math" display="inline" id="A4.T8.115.115.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T8.115.115.1.m1.1a"><mn id="A4.T8.115.115.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.115.115.1.m1.1.1.cmml">0.033</mn><annotation-xml encoding="MathML-Content" id="A4.T8.115.115.1.m1.1b"><cn id="A4.T8.115.115.1.m1.1.1.cmml" type="float" xref="A4.T8.115.115.1.m1.1.1">0.033</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.115.115.1.m1.1c">0.033</annotation><annotation encoding="application/x-llamapun" id="A4.T8.115.115.1.m1.1d">0.033</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.116.116.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.116.116.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.116.116.2.1.1"><math alttext="0.00453244" class="ltx_Math" display="inline" id="A4.T8.116.116.2.1.1.m1.1"><semantics id="A4.T8.116.116.2.1.1.m1.1a"><mn id="A4.T8.116.116.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.116.116.2.1.1.m1.1.1.cmml">0.00453244</mn><annotation-xml encoding="MathML-Content" id="A4.T8.116.116.2.1.1.m1.1b"><cn id="A4.T8.116.116.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.116.116.2.1.1.m1.1.1">0.00453244</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.116.116.2.1.1.m1.1c">0.00453244</annotation><annotation encoding="application/x-llamapun" id="A4.T8.116.116.2.1.1.m1.1d">0.00453244</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.117.117.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.117.117.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.117.117.3.1.1"><math alttext="0.02149035" class="ltx_Math" display="inline" id="A4.T8.117.117.3.1.1.m1.1"><semantics id="A4.T8.117.117.3.1.1.m1.1a"><mn id="A4.T8.117.117.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.117.117.3.1.1.m1.1.1.cmml">0.02149035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.117.117.3.1.1.m1.1b"><cn id="A4.T8.117.117.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.117.117.3.1.1.m1.1.1">0.02149035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.117.117.3.1.1.m1.1c">0.02149035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.117.117.3.1.1.m1.1d">0.02149035</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.118.118.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.118.118.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.118.118.4.1.1"><math alttext="-0.05159424" class="ltx_Math" display="inline" id="A4.T8.118.118.4.1.1.m1.1"><semantics id="A4.T8.118.118.4.1.1.m1.1a"><mrow id="A4.T8.118.118.4.1.1.m1.1.1.2"><mo id="A4.T8.118.118.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T8.118.118.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.118.118.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T8.118.118.4.1.1.m1.1.1.1.cmml">0.05159424</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.118.118.4.1.1.m1.1b"><cn id="A4.T8.118.118.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.118.118.4.1.1.m1.1.1.2a">-0.05159424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.118.118.4.1.1.m1.1c">-0.05159424</annotation><annotation encoding="application/x-llamapun" id="A4.T8.118.118.4.1.1.m1.1d">- 0.05159424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.119.119.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.119.119.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.119.119.5.1.1"><math alttext="0.01968498" class="ltx_Math" display="inline" id="A4.T8.119.119.5.1.1.m1.1"><semantics id="A4.T8.119.119.5.1.1.m1.1a"><mn id="A4.T8.119.119.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.119.119.5.1.1.m1.1.1.cmml">0.01968498</mn><annotation-xml encoding="MathML-Content" id="A4.T8.119.119.5.1.1.m1.1b"><cn id="A4.T8.119.119.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.119.119.5.1.1.m1.1.1">0.01968498</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.119.119.5.1.1.m1.1c">0.01968498</annotation><annotation encoding="application/x-llamapun" id="A4.T8.119.119.5.1.1.m1.1d">0.01968498</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.120.120.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.120.120.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.120.120.6.1.1"><math alttext="0.02810276" class="ltx_Math" display="inline" id="A4.T8.120.120.6.1.1.m1.1"><semantics id="A4.T8.120.120.6.1.1.m1.1a"><mn id="A4.T8.120.120.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.120.120.6.1.1.m1.1.1.cmml">0.02810276</mn><annotation-xml encoding="MathML-Content" id="A4.T8.120.120.6.1.1.m1.1b"><cn id="A4.T8.120.120.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.120.120.6.1.1.m1.1.1">0.02810276</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.120.120.6.1.1.m1.1c">0.02810276</annotation><annotation encoding="application/x-llamapun" id="A4.T8.120.120.6.1.1.m1.1d">0.02810276</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.126.126" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.121.121.1"><math alttext="0.112" class="ltx_Math" display="inline" id="A4.T8.121.121.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.121.121.1.m1.1a"><mn id="A4.T8.121.121.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.121.121.1.m1.1.1.cmml">0.112</mn><annotation-xml encoding="MathML-Content" id="A4.T8.121.121.1.m1.1b"><cn id="A4.T8.121.121.1.m1.1.1.cmml" type="float" xref="A4.T8.121.121.1.m1.1.1">0.112</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.121.121.1.m1.1c">0.112</annotation><annotation encoding="application/x-llamapun" id="A4.T8.121.121.1.m1.1d">0.112</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.122.122.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.122.122.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.122.122.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.122.122.2.1.1.m1.1"><semantics id="A4.T8.122.122.2.1.1.m1.1a"><mn id="A4.T8.122.122.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.122.122.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.122.122.2.1.1.m1.1b"><cn id="A4.T8.122.122.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.122.122.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.122.122.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.122.122.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.123.123.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.123.123.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.123.123.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.123.123.3.1.1.m1.1"><semantics id="A4.T8.123.123.3.1.1.m1.1a"><mn id="A4.T8.123.123.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.123.123.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.123.123.3.1.1.m1.1b"><cn id="A4.T8.123.123.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.123.123.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.123.123.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.123.123.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.124.124.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.124.124.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.124.124.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.124.124.4.1.1.m1.1"><semantics id="A4.T8.124.124.4.1.1.m1.1a"><mrow id="A4.T8.124.124.4.1.1.m1.1.1.2"><mo id="A4.T8.124.124.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.124.124.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.124.124.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.124.124.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.124.124.4.1.1.m1.1b"><cn id="A4.T8.124.124.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.124.124.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.124.124.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.124.124.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.125.125.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.125.125.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.125.125.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.125.125.5.1.1.m1.1"><semantics id="A4.T8.125.125.5.1.1.m1.1a"><mn id="A4.T8.125.125.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.125.125.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.125.125.5.1.1.m1.1b"><cn id="A4.T8.125.125.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.125.125.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.125.125.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.125.125.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.126.126.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.126.126.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.126.126.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.126.126.6.1.1.m1.1"><semantics id="A4.T8.126.126.6.1.1.m1.1a"><mn id="A4.T8.126.126.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.126.126.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.126.126.6.1.1.m1.1b"><cn id="A4.T8.126.126.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.126.126.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.126.126.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.126.126.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.132.132" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.127.127.1"><math alttext="0.036" class="ltx_Math" display="inline" id="A4.T8.127.127.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T8.127.127.1.m1.1a"><mn id="A4.T8.127.127.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.127.127.1.m1.1.1.cmml">0.036</mn><annotation-xml encoding="MathML-Content" id="A4.T8.127.127.1.m1.1b"><cn id="A4.T8.127.127.1.m1.1.1.cmml" type="float" xref="A4.T8.127.127.1.m1.1.1">0.036</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.127.127.1.m1.1c">0.036</annotation><annotation encoding="application/x-llamapun" id="A4.T8.127.127.1.m1.1d">0.036</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.128.128.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.128.128.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.128.128.2.1.1"><math alttext="0.00453244" class="ltx_Math" display="inline" id="A4.T8.128.128.2.1.1.m1.1"><semantics id="A4.T8.128.128.2.1.1.m1.1a"><mn id="A4.T8.128.128.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.128.128.2.1.1.m1.1.1.cmml">0.00453244</mn><annotation-xml encoding="MathML-Content" id="A4.T8.128.128.2.1.1.m1.1b"><cn id="A4.T8.128.128.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.128.128.2.1.1.m1.1.1">0.00453244</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.128.128.2.1.1.m1.1c">0.00453244</annotation><annotation encoding="application/x-llamapun" id="A4.T8.128.128.2.1.1.m1.1d">0.00453244</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.129.129.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.129.129.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.129.129.3.1.1"><math alttext="0.02149035" class="ltx_Math" display="inline" id="A4.T8.129.129.3.1.1.m1.1"><semantics id="A4.T8.129.129.3.1.1.m1.1a"><mn id="A4.T8.129.129.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.129.129.3.1.1.m1.1.1.cmml">0.02149035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.129.129.3.1.1.m1.1b"><cn id="A4.T8.129.129.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.129.129.3.1.1.m1.1.1">0.02149035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.129.129.3.1.1.m1.1c">0.02149035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.129.129.3.1.1.m1.1d">0.02149035</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.130.130.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.130.130.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.130.130.4.1.1"><math alttext="-0.05159424" class="ltx_Math" display="inline" id="A4.T8.130.130.4.1.1.m1.1"><semantics id="A4.T8.130.130.4.1.1.m1.1a"><mrow id="A4.T8.130.130.4.1.1.m1.1.1.2"><mo id="A4.T8.130.130.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T8.130.130.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.130.130.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T8.130.130.4.1.1.m1.1.1.1.cmml">0.05159424</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.130.130.4.1.1.m1.1b"><cn id="A4.T8.130.130.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.130.130.4.1.1.m1.1.1.2a">-0.05159424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.130.130.4.1.1.m1.1c">-0.05159424</annotation><annotation encoding="application/x-llamapun" id="A4.T8.130.130.4.1.1.m1.1d">- 0.05159424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.131.131.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.131.131.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.131.131.5.1.1"><math alttext="0.01968498" class="ltx_Math" display="inline" id="A4.T8.131.131.5.1.1.m1.1"><semantics id="A4.T8.131.131.5.1.1.m1.1a"><mn id="A4.T8.131.131.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.131.131.5.1.1.m1.1.1.cmml">0.01968498</mn><annotation-xml encoding="MathML-Content" id="A4.T8.131.131.5.1.1.m1.1b"><cn id="A4.T8.131.131.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.131.131.5.1.1.m1.1.1">0.01968498</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.131.131.5.1.1.m1.1c">0.01968498</annotation><annotation encoding="application/x-llamapun" id="A4.T8.131.131.5.1.1.m1.1d">0.01968498</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.132.132.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.132.132.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.132.132.6.1.1"><math alttext="0.02810276" class="ltx_Math" display="inline" id="A4.T8.132.132.6.1.1.m1.1"><semantics id="A4.T8.132.132.6.1.1.m1.1a"><mn id="A4.T8.132.132.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.132.132.6.1.1.m1.1.1.cmml">0.02810276</mn><annotation-xml encoding="MathML-Content" id="A4.T8.132.132.6.1.1.m1.1b"><cn id="A4.T8.132.132.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.132.132.6.1.1.m1.1.1">0.02810276</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.132.132.6.1.1.m1.1c">0.02810276</annotation><annotation encoding="application/x-llamapun" id="A4.T8.132.132.6.1.1.m1.1d">0.02810276</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.138.138" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.133.133.1"><math alttext="0.033" class="ltx_Math" display="inline" id="A4.T8.133.133.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T8.133.133.1.m1.1a"><mn id="A4.T8.133.133.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.133.133.1.m1.1.1.cmml">0.033</mn><annotation-xml encoding="MathML-Content" id="A4.T8.133.133.1.m1.1b"><cn id="A4.T8.133.133.1.m1.1.1.cmml" type="float" xref="A4.T8.133.133.1.m1.1.1">0.033</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.133.133.1.m1.1c">0.033</annotation><annotation encoding="application/x-llamapun" id="A4.T8.133.133.1.m1.1d">0.033</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.134.134.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.134.134.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.134.134.2.1.1"><math alttext="0.00453244" class="ltx_Math" display="inline" id="A4.T8.134.134.2.1.1.m1.1"><semantics id="A4.T8.134.134.2.1.1.m1.1a"><mn id="A4.T8.134.134.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.134.134.2.1.1.m1.1.1.cmml">0.00453244</mn><annotation-xml encoding="MathML-Content" id="A4.T8.134.134.2.1.1.m1.1b"><cn id="A4.T8.134.134.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.134.134.2.1.1.m1.1.1">0.00453244</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.134.134.2.1.1.m1.1c">0.00453244</annotation><annotation encoding="application/x-llamapun" id="A4.T8.134.134.2.1.1.m1.1d">0.00453244</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.135.135.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.135.135.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.135.135.3.1.1"><math alttext="0.02149035" class="ltx_Math" display="inline" id="A4.T8.135.135.3.1.1.m1.1"><semantics id="A4.T8.135.135.3.1.1.m1.1a"><mn id="A4.T8.135.135.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.135.135.3.1.1.m1.1.1.cmml">0.02149035</mn><annotation-xml encoding="MathML-Content" id="A4.T8.135.135.3.1.1.m1.1b"><cn id="A4.T8.135.135.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.135.135.3.1.1.m1.1.1">0.02149035</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.135.135.3.1.1.m1.1c">0.02149035</annotation><annotation encoding="application/x-llamapun" id="A4.T8.135.135.3.1.1.m1.1d">0.02149035</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.136.136.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.136.136.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.136.136.4.1.1"><math alttext="-0.05159424" class="ltx_Math" display="inline" id="A4.T8.136.136.4.1.1.m1.1"><semantics id="A4.T8.136.136.4.1.1.m1.1a"><mrow id="A4.T8.136.136.4.1.1.m1.1.1.2"><mo id="A4.T8.136.136.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T8.136.136.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.136.136.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T8.136.136.4.1.1.m1.1.1.1.cmml">0.05159424</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.136.136.4.1.1.m1.1b"><cn id="A4.T8.136.136.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.136.136.4.1.1.m1.1.1.2a">-0.05159424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.136.136.4.1.1.m1.1c">-0.05159424</annotation><annotation encoding="application/x-llamapun" id="A4.T8.136.136.4.1.1.m1.1d">- 0.05159424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.137.137.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.137.137.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.137.137.5.1.1"><math alttext="0.01968498" class="ltx_Math" display="inline" id="A4.T8.137.137.5.1.1.m1.1"><semantics id="A4.T8.137.137.5.1.1.m1.1a"><mn id="A4.T8.137.137.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.137.137.5.1.1.m1.1.1.cmml">0.01968498</mn><annotation-xml encoding="MathML-Content" id="A4.T8.137.137.5.1.1.m1.1b"><cn id="A4.T8.137.137.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.137.137.5.1.1.m1.1.1">0.01968498</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.137.137.5.1.1.m1.1c">0.01968498</annotation><annotation encoding="application/x-llamapun" id="A4.T8.137.137.5.1.1.m1.1d">0.01968498</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.138.138.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.138.138.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T8.138.138.6.1.1"><math alttext="0.02810276" class="ltx_Math" display="inline" id="A4.T8.138.138.6.1.1.m1.1"><semantics id="A4.T8.138.138.6.1.1.m1.1a"><mn id="A4.T8.138.138.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T8.138.138.6.1.1.m1.1.1.cmml">0.02810276</mn><annotation-xml encoding="MathML-Content" id="A4.T8.138.138.6.1.1.m1.1b"><cn id="A4.T8.138.138.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.138.138.6.1.1.m1.1.1">0.02810276</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.138.138.6.1.1.m1.1c">0.02810276</annotation><annotation encoding="application/x-llamapun" id="A4.T8.138.138.6.1.1.m1.1d">0.02810276</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.144.144" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T8.139.139.1"><math alttext="0.092" class="ltx_Math" display="inline" id="A4.T8.139.139.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T8.139.139.1.m1.1a"><mn id="A4.T8.139.139.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.139.139.1.m1.1.1.cmml">0.092</mn><annotation-xml encoding="MathML-Content" id="A4.T8.139.139.1.m1.1b"><cn id="A4.T8.139.139.1.m1.1.1.cmml" type="float" xref="A4.T8.139.139.1.m1.1.1">0.092</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.139.139.1.m1.1c">0.092</annotation><annotation encoding="application/x-llamapun" id="A4.T8.139.139.1.m1.1d">0.092</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T8.140.140.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.140.140.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.140.140.2.1.1"><math alttext="0.00455398" class="ltx_Math" display="inline" id="A4.T8.140.140.2.1.1.m1.1"><semantics id="A4.T8.140.140.2.1.1.m1.1a"><mn id="A4.T8.140.140.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.140.140.2.1.1.m1.1.1.cmml">0.00455398</mn><annotation-xml encoding="MathML-Content" id="A4.T8.140.140.2.1.1.m1.1b"><cn id="A4.T8.140.140.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.140.140.2.1.1.m1.1.1">0.00455398</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.140.140.2.1.1.m1.1c">0.00455398</annotation><annotation encoding="application/x-llamapun" id="A4.T8.140.140.2.1.1.m1.1d">0.00455398</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.141.141.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.141.141.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.141.141.3.1.1"><math alttext="0.02148935" class="ltx_Math" display="inline" id="A4.T8.141.141.3.1.1.m1.1"><semantics id="A4.T8.141.141.3.1.1.m1.1a"><mn id="A4.T8.141.141.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.141.141.3.1.1.m1.1.1.cmml">0.02148935</mn><annotation-xml encoding="MathML-Content" id="A4.T8.141.141.3.1.1.m1.1b"><cn id="A4.T8.141.141.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.141.141.3.1.1.m1.1.1">0.02148935</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.141.141.3.1.1.m1.1c">0.02148935</annotation><annotation encoding="application/x-llamapun" id="A4.T8.141.141.3.1.1.m1.1d">0.02148935</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.142.142.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.142.142.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.142.142.4.1.1"><math alttext="-0.05159185" class="ltx_Math" display="inline" id="A4.T8.142.142.4.1.1.m1.1"><semantics id="A4.T8.142.142.4.1.1.m1.1a"><mrow id="A4.T8.142.142.4.1.1.m1.1.1.2"><mo id="A4.T8.142.142.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T8.142.142.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.142.142.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T8.142.142.4.1.1.m1.1.1.1.cmml">0.05159185</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.142.142.4.1.1.m1.1b"><cn id="A4.T8.142.142.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.142.142.4.1.1.m1.1.1.2a">-0.05159185</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.142.142.4.1.1.m1.1c">-0.05159185</annotation><annotation encoding="application/x-llamapun" id="A4.T8.142.142.4.1.1.m1.1d">- 0.05159185</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.143.143.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.143.143.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.143.143.5.1.1"><math alttext="0.01970582" class="ltx_Math" display="inline" id="A4.T8.143.143.5.1.1.m1.1"><semantics id="A4.T8.143.143.5.1.1.m1.1a"><mn id="A4.T8.143.143.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.143.143.5.1.1.m1.1.1.cmml">0.01970582</mn><annotation-xml encoding="MathML-Content" id="A4.T8.143.143.5.1.1.m1.1b"><cn id="A4.T8.143.143.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.143.143.5.1.1.m1.1.1">0.01970582</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.143.143.5.1.1.m1.1c">0.01970582</annotation><annotation encoding="application/x-llamapun" id="A4.T8.143.143.5.1.1.m1.1d">0.01970582</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T8.144.144.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.144.144.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T8.144.144.6.1.1"><math alttext="0.02810146" class="ltx_Math" display="inline" id="A4.T8.144.144.6.1.1.m1.1"><semantics id="A4.T8.144.144.6.1.1.m1.1a"><mn id="A4.T8.144.144.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T8.144.144.6.1.1.m1.1.1.cmml">0.02810146</mn><annotation-xml encoding="MathML-Content" id="A4.T8.144.144.6.1.1.m1.1b"><cn id="A4.T8.144.144.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.144.144.6.1.1.m1.1.1">0.02810146</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.144.144.6.1.1.m1.1c">0.02810146</annotation><annotation encoding="application/x-llamapun" id="A4.T8.144.144.6.1.1.m1.1d">0.02810146</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T8.150.150" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T8.145.145.1"><math alttext="0.118" class="ltx_Math" display="inline" id="A4.T8.145.145.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T8.145.145.1.m1.1a"><mn id="A4.T8.145.145.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.145.145.1.m1.1.1.cmml">0.118</mn><annotation-xml encoding="MathML-Content" id="A4.T8.145.145.1.m1.1b"><cn id="A4.T8.145.145.1.m1.1.1.cmml" type="float" xref="A4.T8.145.145.1.m1.1.1">0.118</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.145.145.1.m1.1c">0.118</annotation><annotation encoding="application/x-llamapun" id="A4.T8.145.145.1.m1.1d">0.118</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T8.146.146.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.146.146.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.146.146.2.1.1"><math alttext="0.00454002" class="ltx_Math" display="inline" id="A4.T8.146.146.2.1.1.m1.1"><semantics id="A4.T8.146.146.2.1.1.m1.1a"><mn id="A4.T8.146.146.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.146.146.2.1.1.m1.1.1.cmml">0.00454002</mn><annotation-xml encoding="MathML-Content" id="A4.T8.146.146.2.1.1.m1.1b"><cn id="A4.T8.146.146.2.1.1.m1.1.1.cmml" type="float" xref="A4.T8.146.146.2.1.1.m1.1.1">0.00454002</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.146.146.2.1.1.m1.1c">0.00454002</annotation><annotation encoding="application/x-llamapun" id="A4.T8.146.146.2.1.1.m1.1d">0.00454002</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T8.147.147.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.147.147.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.147.147.3.1.1"><math alttext="0.02149847" class="ltx_Math" display="inline" id="A4.T8.147.147.3.1.1.m1.1"><semantics id="A4.T8.147.147.3.1.1.m1.1a"><mn id="A4.T8.147.147.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.147.147.3.1.1.m1.1.1.cmml">0.02149847</mn><annotation-xml encoding="MathML-Content" id="A4.T8.147.147.3.1.1.m1.1b"><cn id="A4.T8.147.147.3.1.1.m1.1.1.cmml" type="float" xref="A4.T8.147.147.3.1.1.m1.1.1">0.02149847</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.147.147.3.1.1.m1.1c">0.02149847</annotation><annotation encoding="application/x-llamapun" id="A4.T8.147.147.3.1.1.m1.1d">0.02149847</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T8.148.148.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.148.148.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.148.148.4.1.1"><math alttext="-0.05158763" class="ltx_Math" display="inline" id="A4.T8.148.148.4.1.1.m1.1"><semantics id="A4.T8.148.148.4.1.1.m1.1a"><mrow id="A4.T8.148.148.4.1.1.m1.1.1.2"><mo id="A4.T8.148.148.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T8.148.148.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T8.148.148.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T8.148.148.4.1.1.m1.1.1.1.cmml">0.05158763</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.148.148.4.1.1.m1.1b"><cn id="A4.T8.148.148.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T8.148.148.4.1.1.m1.1.1.2a">-0.05158763</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.148.148.4.1.1.m1.1c">-0.05158763</annotation><annotation encoding="application/x-llamapun" id="A4.T8.148.148.4.1.1.m1.1d">- 0.05158763</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T8.149.149.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.149.149.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.149.149.5.1.1"><math alttext="0.01983471" class="ltx_Math" display="inline" id="A4.T8.149.149.5.1.1.m1.1"><semantics id="A4.T8.149.149.5.1.1.m1.1a"><mn id="A4.T8.149.149.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.149.149.5.1.1.m1.1.1.cmml">0.01983471</mn><annotation-xml encoding="MathML-Content" id="A4.T8.149.149.5.1.1.m1.1b"><cn id="A4.T8.149.149.5.1.1.m1.1.1.cmml" type="float" xref="A4.T8.149.149.5.1.1.m1.1.1">0.01983471</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.149.149.5.1.1.m1.1c">0.01983471</annotation><annotation encoding="application/x-llamapun" id="A4.T8.149.149.5.1.1.m1.1d">0.01983471</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T8.150.150.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T8.150.150.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T8.150.150.6.1.1"><math alttext="0.02807742" class="ltx_Math" display="inline" id="A4.T8.150.150.6.1.1.m1.1"><semantics id="A4.T8.150.150.6.1.1.m1.1a"><mn id="A4.T8.150.150.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T8.150.150.6.1.1.m1.1.1.cmml">0.02807742</mn><annotation-xml encoding="MathML-Content" id="A4.T8.150.150.6.1.1.m1.1b"><cn id="A4.T8.150.150.6.1.1.m1.1.1.cmml" type="float" xref="A4.T8.150.150.6.1.1.m1.1.1">0.02807742</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.150.150.6.1.1.m1.1c">0.02807742</annotation><annotation encoding="application/x-llamapun" id="A4.T8.150.150.6.1.1.m1.1d">0.02807742</annotation></semantics></math></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents data from an experiment designed to analyze the impact of prompt caching on the OpenAI text-embedding-3-small API.  The experiment involved sending the same prompt 25 times consecutively to the API and recording the server-side response time and the first five coordinates of the resulting embedding vector for each request. The color-coding helps in interpreting the results: blue indicates a typical response time and embedding vector representing a cache miss, green indicates a faster response time and embedding vector suggesting a cache hit, and red indicates anomalous response times and embeddings that deviate from the expected patterns of cache hits and misses. This data serves to illustrate the variability in response times and embeddings introduced by prompt caching.
> <details>
> <summary>read the caption</summary>
> Table 8: Server-side response times and first five embedding coordinates when sending the same prompt 25 consecutive times to the OpenAI text-embedding-3-small API from the same user. Blue denotes the “normal” embedding returned in most of the responses with normal response times, which indicate cache misses. Green denotes fast response times, which indicate cache hits. Red denotes embeddings that differ from both the “normal” and “cache hit” embeddings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T9.150">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A4.T9.150.151.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A4.T9.150.151.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="5" id="A4.T9.150.151.1.2">Embedding</th>
</tr>
<tr class="ltx_tr" id="A4.T9.150.152.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="A4.T9.150.152.2.1">Time (<span class="ltx_ERROR undefined" id="A4.T9.150.152.2.1.1">\unit</span>)</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T9.150.152.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.150.152.2.2.1">
<span class="ltx_p" id="A4.T9.150.152.2.2.1.1">Coordinate 1</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T9.150.152.2.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.150.152.2.3.1">
<span class="ltx_p" id="A4.T9.150.152.2.3.1.1">Coordinate 2</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T9.150.152.2.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.150.152.2.4.1">
<span class="ltx_p" id="A4.T9.150.152.2.4.1.1">Coordinate 3</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T9.150.152.2.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.150.152.2.5.1">
<span class="ltx_p" id="A4.T9.150.152.2.5.1.1">Coordinate 4</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_th ltx_th_column ltx_border_t" id="A4.T9.150.152.2.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.150.152.2.6.1">
<span class="ltx_p" id="A4.T9.150.152.2.6.1.1">Coordinate 5</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T9.6.6" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T9.1.1.1"><math alttext="0.113" class="ltx_Math" display="inline" id="A4.T9.1.1.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.1.1.1.m1.1a"><mn id="A4.T9.1.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.1.1.1.m1.1.1.cmml">0.113</mn><annotation-xml encoding="MathML-Content" id="A4.T9.1.1.1.m1.1b"><cn id="A4.T9.1.1.1.m1.1.1.cmml" type="float" xref="A4.T9.1.1.1.m1.1.1">0.113</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.1.1.1.m1.1c">0.113</annotation><annotation encoding="application/x-llamapun" id="A4.T9.1.1.1.m1.1d">0.113</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T9.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.2.2.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.2.2.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.2.2.2.1.1.m1.1"><semantics id="A4.T9.2.2.2.1.1.m1.1a"><mn id="A4.T9.2.2.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.2.2.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.2.2.2.1.1.m1.1b"><cn id="A4.T9.2.2.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.2.2.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.2.2.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.2.2.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T9.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.3.3.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.3.3.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.3.3.3.1.1.m1.1"><semantics id="A4.T9.3.3.3.1.1.m1.1a"><mn id="A4.T9.3.3.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.3.3.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.3.3.3.1.1.m1.1b"><cn id="A4.T9.3.3.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.3.3.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.3.3.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.3.3.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T9.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.4.4.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.4.4.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.4.4.4.1.1.m1.1"><semantics id="A4.T9.4.4.4.1.1.m1.1a"><mrow id="A4.T9.4.4.4.1.1.m1.1.1.2"><mo id="A4.T9.4.4.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.4.4.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.4.4.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.4.4.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.4.4.4.1.1.m1.1b"><cn id="A4.T9.4.4.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.4.4.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.4.4.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.4.4.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T9.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.5.5.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.5.5.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.5.5.5.1.1.m1.1"><semantics id="A4.T9.5.5.5.1.1.m1.1a"><mn id="A4.T9.5.5.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.5.5.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.5.5.5.1.1.m1.1b"><cn id="A4.T9.5.5.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.5.5.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.5.5.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.5.5.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T9.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.6.6.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.6.6.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.6.6.6.1.1.m1.1"><semantics id="A4.T9.6.6.6.1.1.m1.1a"><mn id="A4.T9.6.6.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.6.6.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.6.6.6.1.1.m1.1b"><cn id="A4.T9.6.6.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.6.6.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.6.6.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.6.6.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.12.12" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.7.7.1"><math alttext="0.033" class="ltx_Math" display="inline" id="A4.T9.7.7.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.7.7.1.m1.1a"><mn id="A4.T9.7.7.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.7.7.1.m1.1.1.cmml">0.033</mn><annotation-xml encoding="MathML-Content" id="A4.T9.7.7.1.m1.1b"><cn id="A4.T9.7.7.1.m1.1.1.cmml" type="float" xref="A4.T9.7.7.1.m1.1.1">0.033</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.7.7.1.m1.1c">0.033</annotation><annotation encoding="application/x-llamapun" id="A4.T9.7.7.1.m1.1d">0.033</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.8.8.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.8.8.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.8.8.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.8.8.2.1.1.m1.1"><semantics id="A4.T9.8.8.2.1.1.m1.1a"><mn id="A4.T9.8.8.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.8.8.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.8.8.2.1.1.m1.1b"><cn id="A4.T9.8.8.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.8.8.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.8.8.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.8.8.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.9.9.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.9.9.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.9.9.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.9.9.3.1.1.m1.1"><semantics id="A4.T9.9.9.3.1.1.m1.1a"><mn id="A4.T9.9.9.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.9.9.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.9.9.3.1.1.m1.1b"><cn id="A4.T9.9.9.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.9.9.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.9.9.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.9.9.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.10.10.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.10.10.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.10.10.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.10.10.4.1.1.m1.1"><semantics id="A4.T9.10.10.4.1.1.m1.1a"><mrow id="A4.T9.10.10.4.1.1.m1.1.1.2"><mo id="A4.T9.10.10.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.10.10.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.10.10.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.10.10.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.10.10.4.1.1.m1.1b"><cn id="A4.T9.10.10.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.10.10.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.10.10.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.10.10.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.11.11.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.11.11.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.11.11.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.11.11.5.1.1.m1.1"><semantics id="A4.T9.11.11.5.1.1.m1.1a"><mn id="A4.T9.11.11.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.11.11.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.11.11.5.1.1.m1.1b"><cn id="A4.T9.11.11.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.11.11.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.11.11.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.11.11.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.12.12.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.12.12.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.12.12.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.12.12.6.1.1.m1.1"><semantics id="A4.T9.12.12.6.1.1.m1.1a"><mn id="A4.T9.12.12.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.12.12.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.12.12.6.1.1.m1.1b"><cn id="A4.T9.12.12.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.12.12.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.12.12.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.12.12.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.18.18" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.13.13.1"><math alttext="0.087" class="ltx_Math" display="inline" id="A4.T9.13.13.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.13.13.1.m1.1a"><mn id="A4.T9.13.13.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.13.13.1.m1.1.1.cmml">0.087</mn><annotation-xml encoding="MathML-Content" id="A4.T9.13.13.1.m1.1b"><cn id="A4.T9.13.13.1.m1.1.1.cmml" type="float" xref="A4.T9.13.13.1.m1.1.1">0.087</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.13.13.1.m1.1c">0.087</annotation><annotation encoding="application/x-llamapun" id="A4.T9.13.13.1.m1.1d">0.087</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.14.14.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.14.14.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.14.14.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.14.14.2.1.1.m1.1"><semantics id="A4.T9.14.14.2.1.1.m1.1a"><mn id="A4.T9.14.14.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.14.14.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.14.14.2.1.1.m1.1b"><cn id="A4.T9.14.14.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.14.14.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.14.14.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.14.14.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.15.15.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.15.15.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.15.15.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.15.15.3.1.1.m1.1"><semantics id="A4.T9.15.15.3.1.1.m1.1a"><mn id="A4.T9.15.15.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.15.15.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.15.15.3.1.1.m1.1b"><cn id="A4.T9.15.15.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.15.15.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.15.15.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.15.15.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.16.16.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.16.16.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.16.16.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.16.16.4.1.1.m1.1"><semantics id="A4.T9.16.16.4.1.1.m1.1a"><mrow id="A4.T9.16.16.4.1.1.m1.1.1.2"><mo id="A4.T9.16.16.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.16.16.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.16.16.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.16.16.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.16.16.4.1.1.m1.1b"><cn id="A4.T9.16.16.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.16.16.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.16.16.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.16.16.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.17.17.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.17.17.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.17.17.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.17.17.5.1.1.m1.1"><semantics id="A4.T9.17.17.5.1.1.m1.1a"><mn id="A4.T9.17.17.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.17.17.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.17.17.5.1.1.m1.1b"><cn id="A4.T9.17.17.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.17.17.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.17.17.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.17.17.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.18.18.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.18.18.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.18.18.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.18.18.6.1.1.m1.1"><semantics id="A4.T9.18.18.6.1.1.m1.1a"><mn id="A4.T9.18.18.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.18.18.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.18.18.6.1.1.m1.1b"><cn id="A4.T9.18.18.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.18.18.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.18.18.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.18.18.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.24.24" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.19.19.1"><math alttext="0.097" class="ltx_Math" display="inline" id="A4.T9.19.19.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.19.19.1.m1.1a"><mn id="A4.T9.19.19.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.19.19.1.m1.1.1.cmml">0.097</mn><annotation-xml encoding="MathML-Content" id="A4.T9.19.19.1.m1.1b"><cn id="A4.T9.19.19.1.m1.1.1.cmml" type="float" xref="A4.T9.19.19.1.m1.1.1">0.097</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.19.19.1.m1.1c">0.097</annotation><annotation encoding="application/x-llamapun" id="A4.T9.19.19.1.m1.1d">0.097</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.20.20.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.20.20.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.20.20.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.20.20.2.1.1.m1.1"><semantics id="A4.T9.20.20.2.1.1.m1.1a"><mn id="A4.T9.20.20.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.20.20.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.20.20.2.1.1.m1.1b"><cn id="A4.T9.20.20.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.20.20.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.20.20.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.20.20.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.21.21.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.21.21.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.21.21.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.21.21.3.1.1.m1.1"><semantics id="A4.T9.21.21.3.1.1.m1.1a"><mn id="A4.T9.21.21.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.21.21.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.21.21.3.1.1.m1.1b"><cn id="A4.T9.21.21.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.21.21.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.21.21.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.21.21.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.22.22.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.22.22.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.22.22.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.22.22.4.1.1.m1.1"><semantics id="A4.T9.22.22.4.1.1.m1.1a"><mrow id="A4.T9.22.22.4.1.1.m1.1.1.2"><mo id="A4.T9.22.22.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.22.22.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.22.22.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.22.22.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.22.22.4.1.1.m1.1b"><cn id="A4.T9.22.22.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.22.22.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.22.22.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.22.22.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.23.23.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.23.23.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.23.23.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.23.23.5.1.1.m1.1"><semantics id="A4.T9.23.23.5.1.1.m1.1a"><mn id="A4.T9.23.23.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.23.23.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.23.23.5.1.1.m1.1b"><cn id="A4.T9.23.23.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.23.23.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.23.23.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.23.23.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.24.24.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.24.24.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.24.24.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.24.24.6.1.1.m1.1"><semantics id="A4.T9.24.24.6.1.1.m1.1a"><mn id="A4.T9.24.24.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.24.24.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.24.24.6.1.1.m1.1b"><cn id="A4.T9.24.24.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.24.24.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.24.24.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.24.24.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.30.30" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.25.25.1"><math alttext="0.163" class="ltx_Math" display="inline" id="A4.T9.25.25.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.25.25.1.m1.1a"><mn id="A4.T9.25.25.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.25.25.1.m1.1.1.cmml">0.163</mn><annotation-xml encoding="MathML-Content" id="A4.T9.25.25.1.m1.1b"><cn id="A4.T9.25.25.1.m1.1.1.cmml" type="float" xref="A4.T9.25.25.1.m1.1.1">0.163</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.25.25.1.m1.1c">0.163</annotation><annotation encoding="application/x-llamapun" id="A4.T9.25.25.1.m1.1d">0.163</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.26.26.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.26.26.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.26.26.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.26.26.2.1.1.m1.1"><semantics id="A4.T9.26.26.2.1.1.m1.1a"><mn id="A4.T9.26.26.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.26.26.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.26.26.2.1.1.m1.1b"><cn id="A4.T9.26.26.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.26.26.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.26.26.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.26.26.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.27.27.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.27.27.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.27.27.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.27.27.3.1.1.m1.1"><semantics id="A4.T9.27.27.3.1.1.m1.1a"><mn id="A4.T9.27.27.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.27.27.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.27.27.3.1.1.m1.1b"><cn id="A4.T9.27.27.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.27.27.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.27.27.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.27.27.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.28.28.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.28.28.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.28.28.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.28.28.4.1.1.m1.1"><semantics id="A4.T9.28.28.4.1.1.m1.1a"><mrow id="A4.T9.28.28.4.1.1.m1.1.1.2"><mo id="A4.T9.28.28.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.28.28.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.28.28.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.28.28.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.28.28.4.1.1.m1.1b"><cn id="A4.T9.28.28.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.28.28.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.28.28.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.28.28.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.29.29.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.29.29.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.29.29.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.29.29.5.1.1.m1.1"><semantics id="A4.T9.29.29.5.1.1.m1.1a"><mn id="A4.T9.29.29.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.29.29.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.29.29.5.1.1.m1.1b"><cn id="A4.T9.29.29.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.29.29.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.29.29.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.29.29.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.30.30.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.30.30.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.30.30.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.30.30.6.1.1.m1.1"><semantics id="A4.T9.30.30.6.1.1.m1.1a"><mn id="A4.T9.30.30.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.30.30.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.30.30.6.1.1.m1.1b"><cn id="A4.T9.30.30.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.30.30.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.30.30.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.30.30.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.36.36" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.31.31.1"><math alttext="0.142" class="ltx_Math" display="inline" id="A4.T9.31.31.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T9.31.31.1.m1.1a"><mn id="A4.T9.31.31.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.31.31.1.m1.1.1.cmml">0.142</mn><annotation-xml encoding="MathML-Content" id="A4.T9.31.31.1.m1.1b"><cn id="A4.T9.31.31.1.m1.1.1.cmml" type="float" xref="A4.T9.31.31.1.m1.1.1">0.142</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.31.31.1.m1.1c">0.142</annotation><annotation encoding="application/x-llamapun" id="A4.T9.31.31.1.m1.1d">0.142</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.32.32.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.32.32.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.32.32.2.1.1"><math alttext="0.00305834" class="ltx_Math" display="inline" id="A4.T9.32.32.2.1.1.m1.1"><semantics id="A4.T9.32.32.2.1.1.m1.1a"><mn id="A4.T9.32.32.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.32.32.2.1.1.m1.1.1.cmml">0.00305834</mn><annotation-xml encoding="MathML-Content" id="A4.T9.32.32.2.1.1.m1.1b"><cn id="A4.T9.32.32.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.32.32.2.1.1.m1.1.1">0.00305834</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.32.32.2.1.1.m1.1c">0.00305834</annotation><annotation encoding="application/x-llamapun" id="A4.T9.32.32.2.1.1.m1.1d">0.00305834</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.33.33.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.33.33.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.33.33.3.1.1"><math alttext="0.02536461" class="ltx_Math" display="inline" id="A4.T9.33.33.3.1.1.m1.1"><semantics id="A4.T9.33.33.3.1.1.m1.1a"><mn id="A4.T9.33.33.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.33.33.3.1.1.m1.1.1.cmml">0.02536461</mn><annotation-xml encoding="MathML-Content" id="A4.T9.33.33.3.1.1.m1.1b"><cn id="A4.T9.33.33.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.33.33.3.1.1.m1.1.1">0.02536461</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.33.33.3.1.1.m1.1c">0.02536461</annotation><annotation encoding="application/x-llamapun" id="A4.T9.33.33.3.1.1.m1.1d">0.02536461</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.34.34.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.34.34.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.34.34.4.1.1"><math alttext="-0.05647554" class="ltx_Math" display="inline" id="A4.T9.34.34.4.1.1.m1.1"><semantics id="A4.T9.34.34.4.1.1.m1.1a"><mrow id="A4.T9.34.34.4.1.1.m1.1.1.2"><mo id="A4.T9.34.34.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T9.34.34.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.34.34.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T9.34.34.4.1.1.m1.1.1.1.cmml">0.05647554</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.34.34.4.1.1.m1.1b"><cn id="A4.T9.34.34.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.34.34.4.1.1.m1.1.1.2a">-0.05647554</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.34.34.4.1.1.m1.1c">-0.05647554</annotation><annotation encoding="application/x-llamapun" id="A4.T9.34.34.4.1.1.m1.1d">- 0.05647554</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.35.35.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.35.35.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.35.35.5.1.1"><math alttext="0.02572376" class="ltx_Math" display="inline" id="A4.T9.35.35.5.1.1.m1.1"><semantics id="A4.T9.35.35.5.1.1.m1.1a"><mn id="A4.T9.35.35.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.35.35.5.1.1.m1.1.1.cmml">0.02572376</mn><annotation-xml encoding="MathML-Content" id="A4.T9.35.35.5.1.1.m1.1b"><cn id="A4.T9.35.35.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.35.35.5.1.1.m1.1.1">0.02572376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.35.35.5.1.1.m1.1c">0.02572376</annotation><annotation encoding="application/x-llamapun" id="A4.T9.35.35.5.1.1.m1.1d">0.02572376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.36.36.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.36.36.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.36.36.6.1.1"><math alttext="0.02826022" class="ltx_Math" display="inline" id="A4.T9.36.36.6.1.1.m1.1"><semantics id="A4.T9.36.36.6.1.1.m1.1a"><mn id="A4.T9.36.36.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.36.36.6.1.1.m1.1.1.cmml">0.02826022</mn><annotation-xml encoding="MathML-Content" id="A4.T9.36.36.6.1.1.m1.1b"><cn id="A4.T9.36.36.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.36.36.6.1.1.m1.1.1">0.02826022</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.36.36.6.1.1.m1.1c">0.02826022</annotation><annotation encoding="application/x-llamapun" id="A4.T9.36.36.6.1.1.m1.1d">0.02826022</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.42.42" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.37.37.1"><math alttext="0.033" class="ltx_Math" display="inline" id="A4.T9.37.37.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.37.37.1.m1.1a"><mn id="A4.T9.37.37.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.37.37.1.m1.1.1.cmml">0.033</mn><annotation-xml encoding="MathML-Content" id="A4.T9.37.37.1.m1.1b"><cn id="A4.T9.37.37.1.m1.1.1.cmml" type="float" xref="A4.T9.37.37.1.m1.1.1">0.033</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.37.37.1.m1.1c">0.033</annotation><annotation encoding="application/x-llamapun" id="A4.T9.37.37.1.m1.1d">0.033</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.38.38.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.38.38.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.38.38.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.38.38.2.1.1.m1.1"><semantics id="A4.T9.38.38.2.1.1.m1.1a"><mn id="A4.T9.38.38.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.38.38.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.38.38.2.1.1.m1.1b"><cn id="A4.T9.38.38.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.38.38.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.38.38.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.38.38.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.39.39.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.39.39.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.39.39.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.39.39.3.1.1.m1.1"><semantics id="A4.T9.39.39.3.1.1.m1.1a"><mn id="A4.T9.39.39.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.39.39.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.39.39.3.1.1.m1.1b"><cn id="A4.T9.39.39.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.39.39.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.39.39.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.39.39.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.40.40.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.40.40.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.40.40.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.40.40.4.1.1.m1.1"><semantics id="A4.T9.40.40.4.1.1.m1.1a"><mrow id="A4.T9.40.40.4.1.1.m1.1.1.2"><mo id="A4.T9.40.40.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.40.40.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.40.40.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.40.40.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.40.40.4.1.1.m1.1b"><cn id="A4.T9.40.40.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.40.40.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.40.40.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.40.40.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.41.41.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.41.41.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.41.41.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.41.41.5.1.1.m1.1"><semantics id="A4.T9.41.41.5.1.1.m1.1a"><mn id="A4.T9.41.41.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.41.41.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.41.41.5.1.1.m1.1b"><cn id="A4.T9.41.41.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.41.41.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.41.41.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.41.41.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.42.42.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.42.42.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.42.42.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.42.42.6.1.1.m1.1"><semantics id="A4.T9.42.42.6.1.1.m1.1a"><mn id="A4.T9.42.42.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.42.42.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.42.42.6.1.1.m1.1b"><cn id="A4.T9.42.42.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.42.42.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.42.42.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.42.42.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.48.48" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.43.43.1"><math alttext="0.119" class="ltx_Math" display="inline" id="A4.T9.43.43.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T9.43.43.1.m1.1a"><mn id="A4.T9.43.43.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.43.43.1.m1.1.1.cmml">0.119</mn><annotation-xml encoding="MathML-Content" id="A4.T9.43.43.1.m1.1b"><cn id="A4.T9.43.43.1.m1.1.1.cmml" type="float" xref="A4.T9.43.43.1.m1.1.1">0.119</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.43.43.1.m1.1c">0.119</annotation><annotation encoding="application/x-llamapun" id="A4.T9.43.43.1.m1.1d">0.119</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.44.44.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.44.44.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.44.44.2.1.1"><math alttext="0.00306308" class="ltx_Math" display="inline" id="A4.T9.44.44.2.1.1.m1.1"><semantics id="A4.T9.44.44.2.1.1.m1.1a"><mn id="A4.T9.44.44.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.44.44.2.1.1.m1.1.1.cmml">0.00306308</mn><annotation-xml encoding="MathML-Content" id="A4.T9.44.44.2.1.1.m1.1b"><cn id="A4.T9.44.44.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.44.44.2.1.1.m1.1.1">0.00306308</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.44.44.2.1.1.m1.1c">0.00306308</annotation><annotation encoding="application/x-llamapun" id="A4.T9.44.44.2.1.1.m1.1d">0.00306308</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.45.45.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.45.45.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.45.45.3.1.1"><math alttext="0.02531247" class="ltx_Math" display="inline" id="A4.T9.45.45.3.1.1.m1.1"><semantics id="A4.T9.45.45.3.1.1.m1.1a"><mn id="A4.T9.45.45.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.45.45.3.1.1.m1.1.1.cmml">0.02531247</mn><annotation-xml encoding="MathML-Content" id="A4.T9.45.45.3.1.1.m1.1b"><cn id="A4.T9.45.45.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.45.45.3.1.1.m1.1.1">0.02531247</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.45.45.3.1.1.m1.1c">0.02531247</annotation><annotation encoding="application/x-llamapun" id="A4.T9.45.45.3.1.1.m1.1d">0.02531247</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.46.46.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.46.46.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.46.46.4.1.1"><math alttext="-0.05650425" class="ltx_Math" display="inline" id="A4.T9.46.46.4.1.1.m1.1"><semantics id="A4.T9.46.46.4.1.1.m1.1a"><mrow id="A4.T9.46.46.4.1.1.m1.1.1.2"><mo id="A4.T9.46.46.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T9.46.46.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.46.46.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T9.46.46.4.1.1.m1.1.1.1.cmml">0.05650425</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.46.46.4.1.1.m1.1b"><cn id="A4.T9.46.46.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.46.46.4.1.1.m1.1.1.2a">-0.05650425</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.46.46.4.1.1.m1.1c">-0.05650425</annotation><annotation encoding="application/x-llamapun" id="A4.T9.46.46.4.1.1.m1.1d">- 0.05650425</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.47.47.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.47.47.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.47.47.5.1.1"><math alttext="0.02569395" class="ltx_Math" display="inline" id="A4.T9.47.47.5.1.1.m1.1"><semantics id="A4.T9.47.47.5.1.1.m1.1a"><mn id="A4.T9.47.47.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.47.47.5.1.1.m1.1.1.cmml">0.02569395</mn><annotation-xml encoding="MathML-Content" id="A4.T9.47.47.5.1.1.m1.1b"><cn id="A4.T9.47.47.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.47.47.5.1.1.m1.1.1">0.02569395</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.47.47.5.1.1.m1.1c">0.02569395</annotation><annotation encoding="application/x-llamapun" id="A4.T9.47.47.5.1.1.m1.1d">0.02569395</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.48.48.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.48.48.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.48.48.6.1.1"><math alttext="0.02827457" class="ltx_Math" display="inline" id="A4.T9.48.48.6.1.1.m1.1"><semantics id="A4.T9.48.48.6.1.1.m1.1a"><mn id="A4.T9.48.48.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.48.48.6.1.1.m1.1.1.cmml">0.02827457</mn><annotation-xml encoding="MathML-Content" id="A4.T9.48.48.6.1.1.m1.1b"><cn id="A4.T9.48.48.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.48.48.6.1.1.m1.1.1">0.02827457</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.48.48.6.1.1.m1.1c">0.02827457</annotation><annotation encoding="application/x-llamapun" id="A4.T9.48.48.6.1.1.m1.1d">0.02827457</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.54.54" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.49.49.1"><math alttext="0.090" class="ltx_Math" display="inline" id="A4.T9.49.49.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.49.49.1.m1.1a"><mn id="A4.T9.49.49.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.49.49.1.m1.1.1.cmml">0.090</mn><annotation-xml encoding="MathML-Content" id="A4.T9.49.49.1.m1.1b"><cn id="A4.T9.49.49.1.m1.1.1.cmml" type="float" xref="A4.T9.49.49.1.m1.1.1">0.090</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.49.49.1.m1.1c">0.090</annotation><annotation encoding="application/x-llamapun" id="A4.T9.49.49.1.m1.1d">0.090</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.50.50.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.50.50.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.50.50.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.50.50.2.1.1.m1.1"><semantics id="A4.T9.50.50.2.1.1.m1.1a"><mn id="A4.T9.50.50.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.50.50.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.50.50.2.1.1.m1.1b"><cn id="A4.T9.50.50.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.50.50.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.50.50.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.50.50.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.51.51.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.51.51.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.51.51.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.51.51.3.1.1.m1.1"><semantics id="A4.T9.51.51.3.1.1.m1.1a"><mn id="A4.T9.51.51.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.51.51.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.51.51.3.1.1.m1.1b"><cn id="A4.T9.51.51.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.51.51.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.51.51.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.51.51.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.52.52.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.52.52.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.52.52.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.52.52.4.1.1.m1.1"><semantics id="A4.T9.52.52.4.1.1.m1.1a"><mrow id="A4.T9.52.52.4.1.1.m1.1.1.2"><mo id="A4.T9.52.52.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.52.52.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.52.52.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.52.52.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.52.52.4.1.1.m1.1b"><cn id="A4.T9.52.52.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.52.52.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.52.52.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.52.52.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.53.53.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.53.53.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.53.53.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.53.53.5.1.1.m1.1"><semantics id="A4.T9.53.53.5.1.1.m1.1a"><mn id="A4.T9.53.53.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.53.53.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.53.53.5.1.1.m1.1b"><cn id="A4.T9.53.53.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.53.53.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.53.53.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.53.53.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.54.54.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.54.54.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.54.54.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.54.54.6.1.1.m1.1"><semantics id="A4.T9.54.54.6.1.1.m1.1a"><mn id="A4.T9.54.54.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.54.54.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.54.54.6.1.1.m1.1b"><cn id="A4.T9.54.54.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.54.54.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.54.54.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.54.54.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.60.60" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.55.55.1"><math alttext="0.100" class="ltx_Math" display="inline" id="A4.T9.55.55.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.55.55.1.m1.1a"><mn id="A4.T9.55.55.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.55.55.1.m1.1.1.cmml">0.100</mn><annotation-xml encoding="MathML-Content" id="A4.T9.55.55.1.m1.1b"><cn id="A4.T9.55.55.1.m1.1.1.cmml" type="float" xref="A4.T9.55.55.1.m1.1.1">0.100</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.55.55.1.m1.1c">0.100</annotation><annotation encoding="application/x-llamapun" id="A4.T9.55.55.1.m1.1d">0.100</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.56.56.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.56.56.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.56.56.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.56.56.2.1.1.m1.1"><semantics id="A4.T9.56.56.2.1.1.m1.1a"><mn id="A4.T9.56.56.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.56.56.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.56.56.2.1.1.m1.1b"><cn id="A4.T9.56.56.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.56.56.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.56.56.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.56.56.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.57.57.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.57.57.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.57.57.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.57.57.3.1.1.m1.1"><semantics id="A4.T9.57.57.3.1.1.m1.1a"><mn id="A4.T9.57.57.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.57.57.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.57.57.3.1.1.m1.1b"><cn id="A4.T9.57.57.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.57.57.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.57.57.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.57.57.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.58.58.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.58.58.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.58.58.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.58.58.4.1.1.m1.1"><semantics id="A4.T9.58.58.4.1.1.m1.1a"><mrow id="A4.T9.58.58.4.1.1.m1.1.1.2"><mo id="A4.T9.58.58.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.58.58.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.58.58.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.58.58.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.58.58.4.1.1.m1.1b"><cn id="A4.T9.58.58.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.58.58.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.58.58.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.58.58.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.59.59.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.59.59.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.59.59.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.59.59.5.1.1.m1.1"><semantics id="A4.T9.59.59.5.1.1.m1.1a"><mn id="A4.T9.59.59.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.59.59.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.59.59.5.1.1.m1.1b"><cn id="A4.T9.59.59.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.59.59.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.59.59.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.59.59.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.60.60.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.60.60.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.60.60.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.60.60.6.1.1.m1.1"><semantics id="A4.T9.60.60.6.1.1.m1.1a"><mn id="A4.T9.60.60.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.60.60.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.60.60.6.1.1.m1.1b"><cn id="A4.T9.60.60.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.60.60.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.60.60.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.60.60.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.66.66" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.61.61.1"><math alttext="0.261" class="ltx_Math" display="inline" id="A4.T9.61.61.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T9.61.61.1.m1.1a"><mn id="A4.T9.61.61.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.61.61.1.m1.1.1.cmml">0.261</mn><annotation-xml encoding="MathML-Content" id="A4.T9.61.61.1.m1.1b"><cn id="A4.T9.61.61.1.m1.1.1.cmml" type="float" xref="A4.T9.61.61.1.m1.1.1">0.261</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.61.61.1.m1.1c">0.261</annotation><annotation encoding="application/x-llamapun" id="A4.T9.61.61.1.m1.1d">0.261</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.62.62.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.62.62.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.62.62.2.1.1"><math alttext="0.00306656" class="ltx_Math" display="inline" id="A4.T9.62.62.2.1.1.m1.1"><semantics id="A4.T9.62.62.2.1.1.m1.1a"><mn id="A4.T9.62.62.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.62.62.2.1.1.m1.1.1.cmml">0.00306656</mn><annotation-xml encoding="MathML-Content" id="A4.T9.62.62.2.1.1.m1.1b"><cn id="A4.T9.62.62.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.62.62.2.1.1.m1.1.1">0.00306656</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.62.62.2.1.1.m1.1c">0.00306656</annotation><annotation encoding="application/x-llamapun" id="A4.T9.62.62.2.1.1.m1.1d">0.00306656</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.63.63.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.63.63.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.63.63.3.1.1"><math alttext="0.02531808" class="ltx_Math" display="inline" id="A4.T9.63.63.3.1.1.m1.1"><semantics id="A4.T9.63.63.3.1.1.m1.1a"><mn id="A4.T9.63.63.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.63.63.3.1.1.m1.1.1.cmml">0.02531808</mn><annotation-xml encoding="MathML-Content" id="A4.T9.63.63.3.1.1.m1.1b"><cn id="A4.T9.63.63.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.63.63.3.1.1.m1.1.1">0.02531808</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.63.63.3.1.1.m1.1c">0.02531808</annotation><annotation encoding="application/x-llamapun" id="A4.T9.63.63.3.1.1.m1.1d">0.02531808</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.64.64.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.64.64.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.64.64.4.1.1"><math alttext="-0.05647188" class="ltx_Math" display="inline" id="A4.T9.64.64.4.1.1.m1.1"><semantics id="A4.T9.64.64.4.1.1.m1.1a"><mrow id="A4.T9.64.64.4.1.1.m1.1.1.2"><mo id="A4.T9.64.64.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T9.64.64.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.64.64.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T9.64.64.4.1.1.m1.1.1.1.cmml">0.05647188</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.64.64.4.1.1.m1.1b"><cn id="A4.T9.64.64.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.64.64.4.1.1.m1.1.1.2a">-0.05647188</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.64.64.4.1.1.m1.1c">-0.05647188</annotation><annotation encoding="application/x-llamapun" id="A4.T9.64.64.4.1.1.m1.1d">- 0.05647188</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.65.65.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.65.65.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.65.65.5.1.1"><math alttext="0.02576698" class="ltx_Math" display="inline" id="A4.T9.65.65.5.1.1.m1.1"><semantics id="A4.T9.65.65.5.1.1.m1.1a"><mn id="A4.T9.65.65.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.65.65.5.1.1.m1.1.1.cmml">0.02576698</mn><annotation-xml encoding="MathML-Content" id="A4.T9.65.65.5.1.1.m1.1b"><cn id="A4.T9.65.65.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.65.65.5.1.1.m1.1.1">0.02576698</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.65.65.5.1.1.m1.1c">0.02576698</annotation><annotation encoding="application/x-llamapun" id="A4.T9.65.65.5.1.1.m1.1d">0.02576698</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.66.66.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.66.66.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.66.66.6.1.1"><math alttext="0.02823594" class="ltx_Math" display="inline" id="A4.T9.66.66.6.1.1.m1.1"><semantics id="A4.T9.66.66.6.1.1.m1.1a"><mn id="A4.T9.66.66.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.66.66.6.1.1.m1.1.1.cmml">0.02823594</mn><annotation-xml encoding="MathML-Content" id="A4.T9.66.66.6.1.1.m1.1b"><cn id="A4.T9.66.66.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.66.66.6.1.1.m1.1.1">0.02823594</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.66.66.6.1.1.m1.1c">0.02823594</annotation><annotation encoding="application/x-llamapun" id="A4.T9.66.66.6.1.1.m1.1d">0.02823594</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.72.72" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.67.67.1"><math alttext="0.426" class="ltx_Math" display="inline" id="A4.T9.67.67.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T9.67.67.1.m1.1a"><mn id="A4.T9.67.67.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.67.67.1.m1.1.1.cmml">0.426</mn><annotation-xml encoding="MathML-Content" id="A4.T9.67.67.1.m1.1b"><cn id="A4.T9.67.67.1.m1.1.1.cmml" type="float" xref="A4.T9.67.67.1.m1.1.1">0.426</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.67.67.1.m1.1c">0.426</annotation><annotation encoding="application/x-llamapun" id="A4.T9.67.67.1.m1.1d">0.426</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.68.68.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.68.68.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.68.68.2.1.1"><math alttext="0.00308757" class="ltx_Math" display="inline" id="A4.T9.68.68.2.1.1.m1.1"><semantics id="A4.T9.68.68.2.1.1.m1.1a"><mn id="A4.T9.68.68.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.68.68.2.1.1.m1.1.1.cmml">0.00308757</mn><annotation-xml encoding="MathML-Content" id="A4.T9.68.68.2.1.1.m1.1b"><cn id="A4.T9.68.68.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.68.68.2.1.1.m1.1.1">0.00308757</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.68.68.2.1.1.m1.1c">0.00308757</annotation><annotation encoding="application/x-llamapun" id="A4.T9.68.68.2.1.1.m1.1d">0.00308757</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.69.69.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.69.69.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.69.69.3.1.1"><math alttext="0.02537424" class="ltx_Math" display="inline" id="A4.T9.69.69.3.1.1.m1.1"><semantics id="A4.T9.69.69.3.1.1.m1.1a"><mn id="A4.T9.69.69.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.69.69.3.1.1.m1.1.1.cmml">0.02537424</mn><annotation-xml encoding="MathML-Content" id="A4.T9.69.69.3.1.1.m1.1b"><cn id="A4.T9.69.69.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.69.69.3.1.1.m1.1.1">0.02537424</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.69.69.3.1.1.m1.1c">0.02537424</annotation><annotation encoding="application/x-llamapun" id="A4.T9.69.69.3.1.1.m1.1d">0.02537424</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.70.70.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.70.70.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.70.70.4.1.1"><math alttext="-0.05663172" class="ltx_Math" display="inline" id="A4.T9.70.70.4.1.1.m1.1"><semantics id="A4.T9.70.70.4.1.1.m1.1a"><mrow id="A4.T9.70.70.4.1.1.m1.1.1.2"><mo id="A4.T9.70.70.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T9.70.70.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.70.70.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T9.70.70.4.1.1.m1.1.1.1.cmml">0.05663172</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.70.70.4.1.1.m1.1b"><cn id="A4.T9.70.70.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.70.70.4.1.1.m1.1.1.2a">-0.05663172</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.70.70.4.1.1.m1.1c">-0.05663172</annotation><annotation encoding="application/x-llamapun" id="A4.T9.70.70.4.1.1.m1.1d">- 0.05663172</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.71.71.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.71.71.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.71.71.5.1.1"><math alttext="0.02575598" class="ltx_Math" display="inline" id="A4.T9.71.71.5.1.1.m1.1"><semantics id="A4.T9.71.71.5.1.1.m1.1a"><mn id="A4.T9.71.71.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.71.71.5.1.1.m1.1.1.cmml">0.02575598</mn><annotation-xml encoding="MathML-Content" id="A4.T9.71.71.5.1.1.m1.1b"><cn id="A4.T9.71.71.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.71.71.5.1.1.m1.1.1">0.02575598</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.71.71.5.1.1.m1.1c">0.02575598</annotation><annotation encoding="application/x-llamapun" id="A4.T9.71.71.5.1.1.m1.1d">0.02575598</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.72.72.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.72.72.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.72.72.6.1.1"><math alttext="0.02822604" class="ltx_Math" display="inline" id="A4.T9.72.72.6.1.1.m1.1"><semantics id="A4.T9.72.72.6.1.1.m1.1a"><mn id="A4.T9.72.72.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.72.72.6.1.1.m1.1.1.cmml">0.02822604</mn><annotation-xml encoding="MathML-Content" id="A4.T9.72.72.6.1.1.m1.1b"><cn id="A4.T9.72.72.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.72.72.6.1.1.m1.1.1">0.02822604</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.72.72.6.1.1.m1.1c">0.02822604</annotation><annotation encoding="application/x-llamapun" id="A4.T9.72.72.6.1.1.m1.1d">0.02822604</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.78.78" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.73.73.1"><math alttext="0.040" class="ltx_Math" display="inline" id="A4.T9.73.73.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.73.73.1.m1.1a"><mn id="A4.T9.73.73.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.73.73.1.m1.1.1.cmml">0.040</mn><annotation-xml encoding="MathML-Content" id="A4.T9.73.73.1.m1.1b"><cn id="A4.T9.73.73.1.m1.1.1.cmml" type="float" xref="A4.T9.73.73.1.m1.1.1">0.040</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.73.73.1.m1.1c">0.040</annotation><annotation encoding="application/x-llamapun" id="A4.T9.73.73.1.m1.1d">0.040</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.74.74.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.74.74.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.74.74.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.74.74.2.1.1.m1.1"><semantics id="A4.T9.74.74.2.1.1.m1.1a"><mn id="A4.T9.74.74.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.74.74.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.74.74.2.1.1.m1.1b"><cn id="A4.T9.74.74.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.74.74.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.74.74.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.74.74.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.75.75.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.75.75.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.75.75.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.75.75.3.1.1.m1.1"><semantics id="A4.T9.75.75.3.1.1.m1.1a"><mn id="A4.T9.75.75.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.75.75.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.75.75.3.1.1.m1.1b"><cn id="A4.T9.75.75.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.75.75.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.75.75.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.75.75.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.76.76.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.76.76.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.76.76.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.76.76.4.1.1.m1.1"><semantics id="A4.T9.76.76.4.1.1.m1.1a"><mrow id="A4.T9.76.76.4.1.1.m1.1.1.2"><mo id="A4.T9.76.76.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.76.76.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.76.76.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.76.76.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.76.76.4.1.1.m1.1b"><cn id="A4.T9.76.76.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.76.76.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.76.76.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.76.76.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.77.77.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.77.77.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.77.77.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.77.77.5.1.1.m1.1"><semantics id="A4.T9.77.77.5.1.1.m1.1a"><mn id="A4.T9.77.77.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.77.77.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.77.77.5.1.1.m1.1b"><cn id="A4.T9.77.77.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.77.77.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.77.77.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.77.77.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.78.78.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.78.78.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.78.78.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.78.78.6.1.1.m1.1"><semantics id="A4.T9.78.78.6.1.1.m1.1a"><mn id="A4.T9.78.78.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.78.78.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.78.78.6.1.1.m1.1b"><cn id="A4.T9.78.78.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.78.78.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.78.78.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.78.78.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.84.84" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.79.79.1"><math alttext="0.036" class="ltx_Math" display="inline" id="A4.T9.79.79.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.79.79.1.m1.1a"><mn id="A4.T9.79.79.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.79.79.1.m1.1.1.cmml">0.036</mn><annotation-xml encoding="MathML-Content" id="A4.T9.79.79.1.m1.1b"><cn id="A4.T9.79.79.1.m1.1.1.cmml" type="float" xref="A4.T9.79.79.1.m1.1.1">0.036</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.79.79.1.m1.1c">0.036</annotation><annotation encoding="application/x-llamapun" id="A4.T9.79.79.1.m1.1d">0.036</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.80.80.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.80.80.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.80.80.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.80.80.2.1.1.m1.1"><semantics id="A4.T9.80.80.2.1.1.m1.1a"><mn id="A4.T9.80.80.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.80.80.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.80.80.2.1.1.m1.1b"><cn id="A4.T9.80.80.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.80.80.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.80.80.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.80.80.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.81.81.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.81.81.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.81.81.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.81.81.3.1.1.m1.1"><semantics id="A4.T9.81.81.3.1.1.m1.1a"><mn id="A4.T9.81.81.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.81.81.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.81.81.3.1.1.m1.1b"><cn id="A4.T9.81.81.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.81.81.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.81.81.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.81.81.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.82.82.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.82.82.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.82.82.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.82.82.4.1.1.m1.1"><semantics id="A4.T9.82.82.4.1.1.m1.1a"><mrow id="A4.T9.82.82.4.1.1.m1.1.1.2"><mo id="A4.T9.82.82.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.82.82.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.82.82.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.82.82.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.82.82.4.1.1.m1.1b"><cn id="A4.T9.82.82.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.82.82.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.82.82.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.82.82.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.83.83.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.83.83.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.83.83.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.83.83.5.1.1.m1.1"><semantics id="A4.T9.83.83.5.1.1.m1.1a"><mn id="A4.T9.83.83.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.83.83.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.83.83.5.1.1.m1.1b"><cn id="A4.T9.83.83.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.83.83.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.83.83.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.83.83.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.84.84.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.84.84.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.84.84.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.84.84.6.1.1.m1.1"><semantics id="A4.T9.84.84.6.1.1.m1.1a"><mn id="A4.T9.84.84.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.84.84.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.84.84.6.1.1.m1.1b"><cn id="A4.T9.84.84.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.84.84.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.84.84.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.84.84.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.90.90" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.85.85.1"><math alttext="0.075" class="ltx_Math" display="inline" id="A4.T9.85.85.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.85.85.1.m1.1a"><mn id="A4.T9.85.85.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.85.85.1.m1.1.1.cmml">0.075</mn><annotation-xml encoding="MathML-Content" id="A4.T9.85.85.1.m1.1b"><cn id="A4.T9.85.85.1.m1.1.1.cmml" type="float" xref="A4.T9.85.85.1.m1.1.1">0.075</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.85.85.1.m1.1c">0.075</annotation><annotation encoding="application/x-llamapun" id="A4.T9.85.85.1.m1.1d">0.075</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.86.86.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.86.86.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.86.86.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.86.86.2.1.1.m1.1"><semantics id="A4.T9.86.86.2.1.1.m1.1a"><mn id="A4.T9.86.86.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.86.86.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.86.86.2.1.1.m1.1b"><cn id="A4.T9.86.86.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.86.86.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.86.86.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.86.86.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.87.87.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.87.87.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.87.87.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.87.87.3.1.1.m1.1"><semantics id="A4.T9.87.87.3.1.1.m1.1a"><mn id="A4.T9.87.87.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.87.87.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.87.87.3.1.1.m1.1b"><cn id="A4.T9.87.87.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.87.87.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.87.87.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.87.87.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.88.88.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.88.88.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.88.88.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.88.88.4.1.1.m1.1"><semantics id="A4.T9.88.88.4.1.1.m1.1a"><mrow id="A4.T9.88.88.4.1.1.m1.1.1.2"><mo id="A4.T9.88.88.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.88.88.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.88.88.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.88.88.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.88.88.4.1.1.m1.1b"><cn id="A4.T9.88.88.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.88.88.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.88.88.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.88.88.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.89.89.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.89.89.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.89.89.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.89.89.5.1.1.m1.1"><semantics id="A4.T9.89.89.5.1.1.m1.1a"><mn id="A4.T9.89.89.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.89.89.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.89.89.5.1.1.m1.1b"><cn id="A4.T9.89.89.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.89.89.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.89.89.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.89.89.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.90.90.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.90.90.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.90.90.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.90.90.6.1.1.m1.1"><semantics id="A4.T9.90.90.6.1.1.m1.1a"><mn id="A4.T9.90.90.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.90.90.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.90.90.6.1.1.m1.1b"><cn id="A4.T9.90.90.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.90.90.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.90.90.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.90.90.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.96.96" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.91.91.1"><math alttext="0.087" class="ltx_Math" display="inline" id="A4.T9.91.91.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.91.91.1.m1.1a"><mn id="A4.T9.91.91.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.91.91.1.m1.1.1.cmml">0.087</mn><annotation-xml encoding="MathML-Content" id="A4.T9.91.91.1.m1.1b"><cn id="A4.T9.91.91.1.m1.1.1.cmml" type="float" xref="A4.T9.91.91.1.m1.1.1">0.087</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.91.91.1.m1.1c">0.087</annotation><annotation encoding="application/x-llamapun" id="A4.T9.91.91.1.m1.1d">0.087</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.92.92.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.92.92.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.92.92.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.92.92.2.1.1.m1.1"><semantics id="A4.T9.92.92.2.1.1.m1.1a"><mn id="A4.T9.92.92.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.92.92.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.92.92.2.1.1.m1.1b"><cn id="A4.T9.92.92.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.92.92.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.92.92.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.92.92.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.93.93.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.93.93.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.93.93.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.93.93.3.1.1.m1.1"><semantics id="A4.T9.93.93.3.1.1.m1.1a"><mn id="A4.T9.93.93.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.93.93.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.93.93.3.1.1.m1.1b"><cn id="A4.T9.93.93.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.93.93.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.93.93.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.93.93.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.94.94.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.94.94.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.94.94.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.94.94.4.1.1.m1.1"><semantics id="A4.T9.94.94.4.1.1.m1.1a"><mrow id="A4.T9.94.94.4.1.1.m1.1.1.2"><mo id="A4.T9.94.94.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.94.94.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.94.94.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.94.94.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.94.94.4.1.1.m1.1b"><cn id="A4.T9.94.94.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.94.94.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.94.94.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.94.94.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.95.95.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.95.95.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.95.95.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.95.95.5.1.1.m1.1"><semantics id="A4.T9.95.95.5.1.1.m1.1a"><mn id="A4.T9.95.95.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.95.95.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.95.95.5.1.1.m1.1b"><cn id="A4.T9.95.95.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.95.95.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.95.95.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.95.95.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.96.96.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.96.96.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.96.96.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.96.96.6.1.1.m1.1"><semantics id="A4.T9.96.96.6.1.1.m1.1a"><mn id="A4.T9.96.96.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.96.96.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.96.96.6.1.1.m1.1b"><cn id="A4.T9.96.96.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.96.96.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.96.96.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.96.96.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.102.102" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.97.97.1"><math alttext="0.093" class="ltx_Math" display="inline" id="A4.T9.97.97.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.97.97.1.m1.1a"><mn id="A4.T9.97.97.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.97.97.1.m1.1.1.cmml">0.093</mn><annotation-xml encoding="MathML-Content" id="A4.T9.97.97.1.m1.1b"><cn id="A4.T9.97.97.1.m1.1.1.cmml" type="float" xref="A4.T9.97.97.1.m1.1.1">0.093</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.97.97.1.m1.1c">0.093</annotation><annotation encoding="application/x-llamapun" id="A4.T9.97.97.1.m1.1d">0.093</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.98.98.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.98.98.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.98.98.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.98.98.2.1.1.m1.1"><semantics id="A4.T9.98.98.2.1.1.m1.1a"><mn id="A4.T9.98.98.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.98.98.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.98.98.2.1.1.m1.1b"><cn id="A4.T9.98.98.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.98.98.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.98.98.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.98.98.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.99.99.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.99.99.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.99.99.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.99.99.3.1.1.m1.1"><semantics id="A4.T9.99.99.3.1.1.m1.1a"><mn id="A4.T9.99.99.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.99.99.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.99.99.3.1.1.m1.1b"><cn id="A4.T9.99.99.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.99.99.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.99.99.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.99.99.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.100.100.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.100.100.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.100.100.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.100.100.4.1.1.m1.1"><semantics id="A4.T9.100.100.4.1.1.m1.1a"><mrow id="A4.T9.100.100.4.1.1.m1.1.1.2"><mo id="A4.T9.100.100.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.100.100.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.100.100.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.100.100.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.100.100.4.1.1.m1.1b"><cn id="A4.T9.100.100.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.100.100.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.100.100.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.100.100.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.101.101.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.101.101.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.101.101.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.101.101.5.1.1.m1.1"><semantics id="A4.T9.101.101.5.1.1.m1.1a"><mn id="A4.T9.101.101.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.101.101.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.101.101.5.1.1.m1.1b"><cn id="A4.T9.101.101.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.101.101.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.101.101.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.101.101.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.102.102.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.102.102.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.102.102.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.102.102.6.1.1.m1.1"><semantics id="A4.T9.102.102.6.1.1.m1.1a"><mn id="A4.T9.102.102.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.102.102.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.102.102.6.1.1.m1.1b"><cn id="A4.T9.102.102.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.102.102.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.102.102.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.102.102.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.108.108" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.103.103.1"><math alttext="0.116" class="ltx_Math" display="inline" id="A4.T9.103.103.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T9.103.103.1.m1.1a"><mn id="A4.T9.103.103.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.103.103.1.m1.1.1.cmml">0.116</mn><annotation-xml encoding="MathML-Content" id="A4.T9.103.103.1.m1.1b"><cn id="A4.T9.103.103.1.m1.1.1.cmml" type="float" xref="A4.T9.103.103.1.m1.1.1">0.116</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.103.103.1.m1.1c">0.116</annotation><annotation encoding="application/x-llamapun" id="A4.T9.103.103.1.m1.1d">0.116</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.104.104.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.104.104.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.104.104.2.1.1"><math alttext="0.00305834" class="ltx_Math" display="inline" id="A4.T9.104.104.2.1.1.m1.1"><semantics id="A4.T9.104.104.2.1.1.m1.1a"><mn id="A4.T9.104.104.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.104.104.2.1.1.m1.1.1.cmml">0.00305834</mn><annotation-xml encoding="MathML-Content" id="A4.T9.104.104.2.1.1.m1.1b"><cn id="A4.T9.104.104.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.104.104.2.1.1.m1.1.1">0.00305834</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.104.104.2.1.1.m1.1c">0.00305834</annotation><annotation encoding="application/x-llamapun" id="A4.T9.104.104.2.1.1.m1.1d">0.00305834</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.105.105.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.105.105.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.105.105.3.1.1"><math alttext="0.02536461" class="ltx_Math" display="inline" id="A4.T9.105.105.3.1.1.m1.1"><semantics id="A4.T9.105.105.3.1.1.m1.1a"><mn id="A4.T9.105.105.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.105.105.3.1.1.m1.1.1.cmml">0.02536461</mn><annotation-xml encoding="MathML-Content" id="A4.T9.105.105.3.1.1.m1.1b"><cn id="A4.T9.105.105.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.105.105.3.1.1.m1.1.1">0.02536461</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.105.105.3.1.1.m1.1c">0.02536461</annotation><annotation encoding="application/x-llamapun" id="A4.T9.105.105.3.1.1.m1.1d">0.02536461</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.106.106.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.106.106.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.106.106.4.1.1"><math alttext="-0.05647554" class="ltx_Math" display="inline" id="A4.T9.106.106.4.1.1.m1.1"><semantics id="A4.T9.106.106.4.1.1.m1.1a"><mrow id="A4.T9.106.106.4.1.1.m1.1.1.2"><mo id="A4.T9.106.106.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T9.106.106.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.106.106.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T9.106.106.4.1.1.m1.1.1.1.cmml">0.05647554</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.106.106.4.1.1.m1.1b"><cn id="A4.T9.106.106.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.106.106.4.1.1.m1.1.1.2a">-0.05647554</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.106.106.4.1.1.m1.1c">-0.05647554</annotation><annotation encoding="application/x-llamapun" id="A4.T9.106.106.4.1.1.m1.1d">- 0.05647554</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.107.107.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.107.107.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.107.107.5.1.1"><math alttext="0.02572376" class="ltx_Math" display="inline" id="A4.T9.107.107.5.1.1.m1.1"><semantics id="A4.T9.107.107.5.1.1.m1.1a"><mn id="A4.T9.107.107.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.107.107.5.1.1.m1.1.1.cmml">0.02572376</mn><annotation-xml encoding="MathML-Content" id="A4.T9.107.107.5.1.1.m1.1b"><cn id="A4.T9.107.107.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.107.107.5.1.1.m1.1.1">0.02572376</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.107.107.5.1.1.m1.1c">0.02572376</annotation><annotation encoding="application/x-llamapun" id="A4.T9.107.107.5.1.1.m1.1d">0.02572376</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.108.108.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.108.108.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.108.108.6.1.1"><math alttext="0.02826022" class="ltx_Math" display="inline" id="A4.T9.108.108.6.1.1.m1.1"><semantics id="A4.T9.108.108.6.1.1.m1.1a"><mn id="A4.T9.108.108.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.108.108.6.1.1.m1.1.1.cmml">0.02826022</mn><annotation-xml encoding="MathML-Content" id="A4.T9.108.108.6.1.1.m1.1b"><cn id="A4.T9.108.108.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.108.108.6.1.1.m1.1.1">0.02826022</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.108.108.6.1.1.m1.1c">0.02826022</annotation><annotation encoding="application/x-llamapun" id="A4.T9.108.108.6.1.1.m1.1d">0.02826022</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.114.114" style="background-color:#FFBFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.109.109.1"><math alttext="0.140" class="ltx_Math" display="inline" id="A4.T9.109.109.1.m1.1" style="background-color:#FFBFBF;"><semantics id="A4.T9.109.109.1.m1.1a"><mn id="A4.T9.109.109.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.109.109.1.m1.1.1.cmml">0.140</mn><annotation-xml encoding="MathML-Content" id="A4.T9.109.109.1.m1.1b"><cn id="A4.T9.109.109.1.m1.1.1.cmml" type="float" xref="A4.T9.109.109.1.m1.1.1">0.140</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.109.109.1.m1.1c">0.140</annotation><annotation encoding="application/x-llamapun" id="A4.T9.109.109.1.m1.1d">0.140</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.110.110.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.110.110.2.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.110.110.2.1.1"><math alttext="0.00306308" class="ltx_Math" display="inline" id="A4.T9.110.110.2.1.1.m1.1"><semantics id="A4.T9.110.110.2.1.1.m1.1a"><mn id="A4.T9.110.110.2.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.110.110.2.1.1.m1.1.1.cmml">0.00306308</mn><annotation-xml encoding="MathML-Content" id="A4.T9.110.110.2.1.1.m1.1b"><cn id="A4.T9.110.110.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.110.110.2.1.1.m1.1.1">0.00306308</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.110.110.2.1.1.m1.1c">0.00306308</annotation><annotation encoding="application/x-llamapun" id="A4.T9.110.110.2.1.1.m1.1d">0.00306308</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.111.111.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.111.111.3.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.111.111.3.1.1"><math alttext="0.02531247" class="ltx_Math" display="inline" id="A4.T9.111.111.3.1.1.m1.1"><semantics id="A4.T9.111.111.3.1.1.m1.1a"><mn id="A4.T9.111.111.3.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.111.111.3.1.1.m1.1.1.cmml">0.02531247</mn><annotation-xml encoding="MathML-Content" id="A4.T9.111.111.3.1.1.m1.1b"><cn id="A4.T9.111.111.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.111.111.3.1.1.m1.1.1">0.02531247</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.111.111.3.1.1.m1.1c">0.02531247</annotation><annotation encoding="application/x-llamapun" id="A4.T9.111.111.3.1.1.m1.1d">0.02531247</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.112.112.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.112.112.4.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.112.112.4.1.1"><math alttext="-0.05650425" class="ltx_Math" display="inline" id="A4.T9.112.112.4.1.1.m1.1"><semantics id="A4.T9.112.112.4.1.1.m1.1a"><mrow id="A4.T9.112.112.4.1.1.m1.1.1.2"><mo id="A4.T9.112.112.4.1.1.m1.1.1.2a" mathbackground="#FFBFBF" xref="A4.T9.112.112.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.112.112.4.1.1.m1.1.1.2.2" mathbackground="#FFBFBF" xref="A4.T9.112.112.4.1.1.m1.1.1.1.cmml">0.05650425</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.112.112.4.1.1.m1.1b"><cn id="A4.T9.112.112.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.112.112.4.1.1.m1.1.1.2a">-0.05650425</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.112.112.4.1.1.m1.1c">-0.05650425</annotation><annotation encoding="application/x-llamapun" id="A4.T9.112.112.4.1.1.m1.1d">- 0.05650425</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.113.113.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.113.113.5.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.113.113.5.1.1"><math alttext="0.02569395" class="ltx_Math" display="inline" id="A4.T9.113.113.5.1.1.m1.1"><semantics id="A4.T9.113.113.5.1.1.m1.1a"><mn id="A4.T9.113.113.5.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.113.113.5.1.1.m1.1.1.cmml">0.02569395</mn><annotation-xml encoding="MathML-Content" id="A4.T9.113.113.5.1.1.m1.1b"><cn id="A4.T9.113.113.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.113.113.5.1.1.m1.1.1">0.02569395</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.113.113.5.1.1.m1.1c">0.02569395</annotation><annotation encoding="application/x-llamapun" id="A4.T9.113.113.5.1.1.m1.1d">0.02569395</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.114.114.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.114.114.6.1" style="background-color:#FFBFBF;">
<span class="ltx_p" id="A4.T9.114.114.6.1.1"><math alttext="0.02827457" class="ltx_Math" display="inline" id="A4.T9.114.114.6.1.1.m1.1"><semantics id="A4.T9.114.114.6.1.1.m1.1a"><mn id="A4.T9.114.114.6.1.1.m1.1.1" mathbackground="#FFBFBF" xref="A4.T9.114.114.6.1.1.m1.1.1.cmml">0.02827457</mn><annotation-xml encoding="MathML-Content" id="A4.T9.114.114.6.1.1.m1.1b"><cn id="A4.T9.114.114.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.114.114.6.1.1.m1.1.1">0.02827457</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.114.114.6.1.1.m1.1c">0.02827457</annotation><annotation encoding="application/x-llamapun" id="A4.T9.114.114.6.1.1.m1.1d">0.02827457</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.120.120" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.115.115.1"><math alttext="0.034" class="ltx_Math" display="inline" id="A4.T9.115.115.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.115.115.1.m1.1a"><mn id="A4.T9.115.115.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.115.115.1.m1.1.1.cmml">0.034</mn><annotation-xml encoding="MathML-Content" id="A4.T9.115.115.1.m1.1b"><cn id="A4.T9.115.115.1.m1.1.1.cmml" type="float" xref="A4.T9.115.115.1.m1.1.1">0.034</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.115.115.1.m1.1c">0.034</annotation><annotation encoding="application/x-llamapun" id="A4.T9.115.115.1.m1.1d">0.034</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.116.116.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.116.116.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.116.116.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.116.116.2.1.1.m1.1"><semantics id="A4.T9.116.116.2.1.1.m1.1a"><mn id="A4.T9.116.116.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.116.116.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.116.116.2.1.1.m1.1b"><cn id="A4.T9.116.116.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.116.116.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.116.116.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.116.116.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.117.117.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.117.117.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.117.117.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.117.117.3.1.1.m1.1"><semantics id="A4.T9.117.117.3.1.1.m1.1a"><mn id="A4.T9.117.117.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.117.117.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.117.117.3.1.1.m1.1b"><cn id="A4.T9.117.117.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.117.117.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.117.117.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.117.117.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.118.118.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.118.118.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.118.118.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.118.118.4.1.1.m1.1"><semantics id="A4.T9.118.118.4.1.1.m1.1a"><mrow id="A4.T9.118.118.4.1.1.m1.1.1.2"><mo id="A4.T9.118.118.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.118.118.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.118.118.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.118.118.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.118.118.4.1.1.m1.1b"><cn id="A4.T9.118.118.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.118.118.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.118.118.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.118.118.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.119.119.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.119.119.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.119.119.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.119.119.5.1.1.m1.1"><semantics id="A4.T9.119.119.5.1.1.m1.1a"><mn id="A4.T9.119.119.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.119.119.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.119.119.5.1.1.m1.1b"><cn id="A4.T9.119.119.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.119.119.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.119.119.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.119.119.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.120.120.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.120.120.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.120.120.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.120.120.6.1.1.m1.1"><semantics id="A4.T9.120.120.6.1.1.m1.1a"><mn id="A4.T9.120.120.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.120.120.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.120.120.6.1.1.m1.1b"><cn id="A4.T9.120.120.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.120.120.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.120.120.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.120.120.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.126.126" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.121.121.1"><math alttext="0.033" class="ltx_Math" display="inline" id="A4.T9.121.121.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.121.121.1.m1.1a"><mn id="A4.T9.121.121.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.121.121.1.m1.1.1.cmml">0.033</mn><annotation-xml encoding="MathML-Content" id="A4.T9.121.121.1.m1.1b"><cn id="A4.T9.121.121.1.m1.1.1.cmml" type="float" xref="A4.T9.121.121.1.m1.1.1">0.033</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.121.121.1.m1.1c">0.033</annotation><annotation encoding="application/x-llamapun" id="A4.T9.121.121.1.m1.1d">0.033</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.122.122.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.122.122.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.122.122.2.1.1"><math alttext="0.00306686" class="ltx_Math" display="inline" id="A4.T9.122.122.2.1.1.m1.1"><semantics id="A4.T9.122.122.2.1.1.m1.1a"><mn id="A4.T9.122.122.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.122.122.2.1.1.m1.1.1.cmml">0.00306686</mn><annotation-xml encoding="MathML-Content" id="A4.T9.122.122.2.1.1.m1.1b"><cn id="A4.T9.122.122.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.122.122.2.1.1.m1.1.1">0.00306686</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.122.122.2.1.1.m1.1c">0.00306686</annotation><annotation encoding="application/x-llamapun" id="A4.T9.122.122.2.1.1.m1.1d">0.00306686</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.123.123.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.123.123.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.123.123.3.1.1"><math alttext="0.02536540" class="ltx_Math" display="inline" id="A4.T9.123.123.3.1.1.m1.1"><semantics id="A4.T9.123.123.3.1.1.m1.1a"><mn id="A4.T9.123.123.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.123.123.3.1.1.m1.1.1.cmml">0.02536540</mn><annotation-xml encoding="MathML-Content" id="A4.T9.123.123.3.1.1.m1.1b"><cn id="A4.T9.123.123.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.123.123.3.1.1.m1.1.1">0.02536540</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.123.123.3.1.1.m1.1c">0.02536540</annotation><annotation encoding="application/x-llamapun" id="A4.T9.123.123.3.1.1.m1.1d">0.02536540</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.124.124.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.124.124.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.124.124.4.1.1"><math alttext="-0.05638750" class="ltx_Math" display="inline" id="A4.T9.124.124.4.1.1.m1.1"><semantics id="A4.T9.124.124.4.1.1.m1.1a"><mrow id="A4.T9.124.124.4.1.1.m1.1.1.2"><mo id="A4.T9.124.124.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.124.124.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.124.124.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.124.124.4.1.1.m1.1.1.1.cmml">0.05638750</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.124.124.4.1.1.m1.1b"><cn id="A4.T9.124.124.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.124.124.4.1.1.m1.1.1.2a">-0.05638750</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.124.124.4.1.1.m1.1c">-0.05638750</annotation><annotation encoding="application/x-llamapun" id="A4.T9.124.124.4.1.1.m1.1d">- 0.05638750</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.125.125.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.125.125.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.125.125.5.1.1"><math alttext="0.02572455" class="ltx_Math" display="inline" id="A4.T9.125.125.5.1.1.m1.1"><semantics id="A4.T9.125.125.5.1.1.m1.1a"><mn id="A4.T9.125.125.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.125.125.5.1.1.m1.1.1.cmml">0.02572455</mn><annotation-xml encoding="MathML-Content" id="A4.T9.125.125.5.1.1.m1.1b"><cn id="A4.T9.125.125.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.125.125.5.1.1.m1.1.1">0.02572455</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.125.125.5.1.1.m1.1c">0.02572455</annotation><annotation encoding="application/x-llamapun" id="A4.T9.125.125.5.1.1.m1.1d">0.02572455</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.126.126.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.126.126.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.126.126.6.1.1"><math alttext="0.02823864" class="ltx_Math" display="inline" id="A4.T9.126.126.6.1.1.m1.1"><semantics id="A4.T9.126.126.6.1.1.m1.1a"><mn id="A4.T9.126.126.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.126.126.6.1.1.m1.1.1.cmml">0.02823864</mn><annotation-xml encoding="MathML-Content" id="A4.T9.126.126.6.1.1.m1.1b"><cn id="A4.T9.126.126.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.126.126.6.1.1.m1.1.1">0.02823864</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.126.126.6.1.1.m1.1c">0.02823864</annotation><annotation encoding="application/x-llamapun" id="A4.T9.126.126.6.1.1.m1.1d">0.02823864</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.132.132" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.127.127.1"><math alttext="0.033" class="ltx_Math" display="inline" id="A4.T9.127.127.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.127.127.1.m1.1a"><mn id="A4.T9.127.127.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.127.127.1.m1.1.1.cmml">0.033</mn><annotation-xml encoding="MathML-Content" id="A4.T9.127.127.1.m1.1b"><cn id="A4.T9.127.127.1.m1.1.1.cmml" type="float" xref="A4.T9.127.127.1.m1.1.1">0.033</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.127.127.1.m1.1c">0.033</annotation><annotation encoding="application/x-llamapun" id="A4.T9.127.127.1.m1.1d">0.033</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.128.128.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.128.128.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.128.128.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.128.128.2.1.1.m1.1"><semantics id="A4.T9.128.128.2.1.1.m1.1a"><mn id="A4.T9.128.128.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.128.128.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.128.128.2.1.1.m1.1b"><cn id="A4.T9.128.128.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.128.128.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.128.128.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.128.128.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.129.129.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.129.129.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.129.129.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.129.129.3.1.1.m1.1"><semantics id="A4.T9.129.129.3.1.1.m1.1a"><mn id="A4.T9.129.129.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.129.129.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.129.129.3.1.1.m1.1b"><cn id="A4.T9.129.129.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.129.129.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.129.129.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.129.129.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.130.130.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.130.130.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.130.130.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.130.130.4.1.1.m1.1"><semantics id="A4.T9.130.130.4.1.1.m1.1a"><mrow id="A4.T9.130.130.4.1.1.m1.1.1.2"><mo id="A4.T9.130.130.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.130.130.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.130.130.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.130.130.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.130.130.4.1.1.m1.1b"><cn id="A4.T9.130.130.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.130.130.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.130.130.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.130.130.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.131.131.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.131.131.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.131.131.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.131.131.5.1.1.m1.1"><semantics id="A4.T9.131.131.5.1.1.m1.1a"><mn id="A4.T9.131.131.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.131.131.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.131.131.5.1.1.m1.1b"><cn id="A4.T9.131.131.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.131.131.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.131.131.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.131.131.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.132.132.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.132.132.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.132.132.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.132.132.6.1.1.m1.1"><semantics id="A4.T9.132.132.6.1.1.m1.1a"><mn id="A4.T9.132.132.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.132.132.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.132.132.6.1.1.m1.1b"><cn id="A4.T9.132.132.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.132.132.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.132.132.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.132.132.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.138.138" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.133.133.1"><math alttext="0.032" class="ltx_Math" display="inline" id="A4.T9.133.133.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.133.133.1.m1.1a"><mn id="A4.T9.133.133.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.133.133.1.m1.1.1.cmml">0.032</mn><annotation-xml encoding="MathML-Content" id="A4.T9.133.133.1.m1.1b"><cn id="A4.T9.133.133.1.m1.1.1.cmml" type="float" xref="A4.T9.133.133.1.m1.1.1">0.032</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.133.133.1.m1.1c">0.032</annotation><annotation encoding="application/x-llamapun" id="A4.T9.133.133.1.m1.1d">0.032</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.134.134.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.134.134.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.134.134.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.134.134.2.1.1.m1.1"><semantics id="A4.T9.134.134.2.1.1.m1.1a"><mn id="A4.T9.134.134.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.134.134.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.134.134.2.1.1.m1.1b"><cn id="A4.T9.134.134.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.134.134.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.134.134.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.134.134.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.135.135.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.135.135.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.135.135.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.135.135.3.1.1.m1.1"><semantics id="A4.T9.135.135.3.1.1.m1.1a"><mn id="A4.T9.135.135.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.135.135.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.135.135.3.1.1.m1.1b"><cn id="A4.T9.135.135.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.135.135.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.135.135.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.135.135.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.136.136.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.136.136.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.136.136.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.136.136.4.1.1.m1.1"><semantics id="A4.T9.136.136.4.1.1.m1.1a"><mrow id="A4.T9.136.136.4.1.1.m1.1.1.2"><mo id="A4.T9.136.136.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.136.136.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.136.136.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.136.136.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.136.136.4.1.1.m1.1b"><cn id="A4.T9.136.136.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.136.136.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.136.136.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.136.136.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.137.137.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.137.137.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.137.137.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.137.137.5.1.1.m1.1"><semantics id="A4.T9.137.137.5.1.1.m1.1a"><mn id="A4.T9.137.137.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.137.137.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.137.137.5.1.1.m1.1b"><cn id="A4.T9.137.137.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.137.137.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.137.137.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.137.137.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.138.138.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.138.138.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.138.138.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.138.138.6.1.1.m1.1"><semantics id="A4.T9.138.138.6.1.1.m1.1a"><mn id="A4.T9.138.138.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.138.138.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.138.138.6.1.1.m1.1b"><cn id="A4.T9.138.138.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.138.138.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.138.138.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.138.138.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.144.144" style="background-color:#BFBFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T9.139.139.1"><math alttext="0.089" class="ltx_Math" display="inline" id="A4.T9.139.139.1.m1.1" style="background-color:#BFBFFF;"><semantics id="A4.T9.139.139.1.m1.1a"><mn id="A4.T9.139.139.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.139.139.1.m1.1.1.cmml">0.089</mn><annotation-xml encoding="MathML-Content" id="A4.T9.139.139.1.m1.1b"><cn id="A4.T9.139.139.1.m1.1.1.cmml" type="float" xref="A4.T9.139.139.1.m1.1.1">0.089</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.139.139.1.m1.1c">0.089</annotation><annotation encoding="application/x-llamapun" id="A4.T9.139.139.1.m1.1d">0.089</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify" id="A4.T9.140.140.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.140.140.2.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.140.140.2.1.1"><math alttext="0.00306934" class="ltx_Math" display="inline" id="A4.T9.140.140.2.1.1.m1.1"><semantics id="A4.T9.140.140.2.1.1.m1.1a"><mn id="A4.T9.140.140.2.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.140.140.2.1.1.m1.1.1.cmml">0.00306934</mn><annotation-xml encoding="MathML-Content" id="A4.T9.140.140.2.1.1.m1.1b"><cn id="A4.T9.140.140.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.140.140.2.1.1.m1.1.1">0.00306934</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.140.140.2.1.1.m1.1c">0.00306934</annotation><annotation encoding="application/x-llamapun" id="A4.T9.140.140.2.1.1.m1.1d">0.00306934</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.141.141.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.141.141.3.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.141.141.3.1.1"><math alttext="0.02534029" class="ltx_Math" display="inline" id="A4.T9.141.141.3.1.1.m1.1"><semantics id="A4.T9.141.141.3.1.1.m1.1a"><mn id="A4.T9.141.141.3.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.141.141.3.1.1.m1.1.1.cmml">0.02534029</mn><annotation-xml encoding="MathML-Content" id="A4.T9.141.141.3.1.1.m1.1b"><cn id="A4.T9.141.141.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.141.141.3.1.1.m1.1.1">0.02534029</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.141.141.3.1.1.m1.1c">0.02534029</annotation><annotation encoding="application/x-llamapun" id="A4.T9.141.141.3.1.1.m1.1d">0.02534029</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.142.142.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.142.142.4.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.142.142.4.1.1"><math alttext="-0.05656114" class="ltx_Math" display="inline" id="A4.T9.142.142.4.1.1.m1.1"><semantics id="A4.T9.142.142.4.1.1.m1.1a"><mrow id="A4.T9.142.142.4.1.1.m1.1.1.2"><mo id="A4.T9.142.142.4.1.1.m1.1.1.2a" mathbackground="#BFBFFF" xref="A4.T9.142.142.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.142.142.4.1.1.m1.1.1.2.2" mathbackground="#BFBFFF" xref="A4.T9.142.142.4.1.1.m1.1.1.1.cmml">0.05656114</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.142.142.4.1.1.m1.1b"><cn id="A4.T9.142.142.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.142.142.4.1.1.m1.1.1.2a">-0.05656114</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.142.142.4.1.1.m1.1c">-0.05656114</annotation><annotation encoding="application/x-llamapun" id="A4.T9.142.142.4.1.1.m1.1d">- 0.05656114</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.143.143.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.143.143.5.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.143.143.5.1.1"><math alttext="0.02567696" class="ltx_Math" display="inline" id="A4.T9.143.143.5.1.1.m1.1"><semantics id="A4.T9.143.143.5.1.1.m1.1a"><mn id="A4.T9.143.143.5.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.143.143.5.1.1.m1.1.1.cmml">0.02567696</mn><annotation-xml encoding="MathML-Content" id="A4.T9.143.143.5.1.1.m1.1b"><cn id="A4.T9.143.143.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.143.143.5.1.1.m1.1.1">0.02567696</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.143.143.5.1.1.m1.1c">0.02567696</annotation><annotation encoding="application/x-llamapun" id="A4.T9.143.143.5.1.1.m1.1d">0.02567696</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="A4.T9.144.144.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.144.144.6.1" style="background-color:#BFBFFF;">
<span class="ltx_p" id="A4.T9.144.144.6.1.1"><math alttext="0.02828057" class="ltx_Math" display="inline" id="A4.T9.144.144.6.1.1.m1.1"><semantics id="A4.T9.144.144.6.1.1.m1.1a"><mn id="A4.T9.144.144.6.1.1.m1.1.1" mathbackground="#BFBFFF" xref="A4.T9.144.144.6.1.1.m1.1.1.cmml">0.02828057</mn><annotation-xml encoding="MathML-Content" id="A4.T9.144.144.6.1.1.m1.1b"><cn id="A4.T9.144.144.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.144.144.6.1.1.m1.1.1">0.02828057</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.144.144.6.1.1.m1.1c">0.02828057</annotation><annotation encoding="application/x-llamapun" id="A4.T9.144.144.6.1.1.m1.1d">0.02828057</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T9.150.150" style="background-color:#BFDFBF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T9.145.145.1"><math alttext="0.032" class="ltx_Math" display="inline" id="A4.T9.145.145.1.m1.1" style="background-color:#BFDFBF;"><semantics id="A4.T9.145.145.1.m1.1a"><mn id="A4.T9.145.145.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.145.145.1.m1.1.1.cmml">0.032</mn><annotation-xml encoding="MathML-Content" id="A4.T9.145.145.1.m1.1b"><cn id="A4.T9.145.145.1.m1.1.1.cmml" type="float" xref="A4.T9.145.145.1.m1.1.1">0.032</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.145.145.1.m1.1c">0.032</annotation><annotation encoding="application/x-llamapun" id="A4.T9.145.145.1.m1.1d">0.032</annotation></semantics></math></th>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T9.146.146.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.146.146.2.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.146.146.2.1.1"><math alttext="0.00308367" class="ltx_Math" display="inline" id="A4.T9.146.146.2.1.1.m1.1"><semantics id="A4.T9.146.146.2.1.1.m1.1a"><mn id="A4.T9.146.146.2.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.146.146.2.1.1.m1.1.1.cmml">0.00308367</mn><annotation-xml encoding="MathML-Content" id="A4.T9.146.146.2.1.1.m1.1b"><cn id="A4.T9.146.146.2.1.1.m1.1.1.cmml" type="float" xref="A4.T9.146.146.2.1.1.m1.1.1">0.00308367</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.146.146.2.1.1.m1.1c">0.00308367</annotation><annotation encoding="application/x-llamapun" id="A4.T9.146.146.2.1.1.m1.1d">0.00308367</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T9.147.147.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.147.147.3.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.147.147.3.1.1"><math alttext="0.02534279" class="ltx_Math" display="inline" id="A4.T9.147.147.3.1.1.m1.1"><semantics id="A4.T9.147.147.3.1.1.m1.1a"><mn id="A4.T9.147.147.3.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.147.147.3.1.1.m1.1.1.cmml">0.02534279</mn><annotation-xml encoding="MathML-Content" id="A4.T9.147.147.3.1.1.m1.1b"><cn id="A4.T9.147.147.3.1.1.m1.1.1.cmml" type="float" xref="A4.T9.147.147.3.1.1.m1.1.1">0.02534279</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.147.147.3.1.1.m1.1c">0.02534279</annotation><annotation encoding="application/x-llamapun" id="A4.T9.147.147.3.1.1.m1.1d">0.02534279</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T9.148.148.4">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.148.148.4.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.148.148.4.1.1"><math alttext="-0.05652182" class="ltx_Math" display="inline" id="A4.T9.148.148.4.1.1.m1.1"><semantics id="A4.T9.148.148.4.1.1.m1.1a"><mrow id="A4.T9.148.148.4.1.1.m1.1.1.2"><mo id="A4.T9.148.148.4.1.1.m1.1.1.2a" mathbackground="#BFDFBF" xref="A4.T9.148.148.4.1.1.m1.1.1.1.cmml">−</mo><mn id="A4.T9.148.148.4.1.1.m1.1.1.2.2" mathbackground="#BFDFBF" xref="A4.T9.148.148.4.1.1.m1.1.1.1.cmml">0.05652182</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.148.148.4.1.1.m1.1b"><cn id="A4.T9.148.148.4.1.1.m1.1.1.1.cmml" type="float" xref="A4.T9.148.148.4.1.1.m1.1.1.2a">-0.05652182</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.148.148.4.1.1.m1.1c">-0.05652182</annotation><annotation encoding="application/x-llamapun" id="A4.T9.148.148.4.1.1.m1.1d">- 0.05652182</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T9.149.149.5">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.149.149.5.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.149.149.5.1.1"><math alttext="0.02570194" class="ltx_Math" display="inline" id="A4.T9.149.149.5.1.1.m1.1"><semantics id="A4.T9.149.149.5.1.1.m1.1a"><mn id="A4.T9.149.149.5.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.149.149.5.1.1.m1.1.1.cmml">0.02570194</mn><annotation-xml encoding="MathML-Content" id="A4.T9.149.149.5.1.1.m1.1b"><cn id="A4.T9.149.149.5.1.1.m1.1.1.cmml" type="float" xref="A4.T9.149.149.5.1.1.m1.1.1">0.02570194</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.149.149.5.1.1.m1.1c">0.02570194</annotation><annotation encoding="application/x-llamapun" id="A4.T9.149.149.5.1.1.m1.1d">0.02570194</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T9.150.150.6">
<span class="ltx_inline-block ltx_align_top" id="A4.T9.150.150.6.1" style="background-color:#BFDFBF;">
<span class="ltx_p" id="A4.T9.150.150.6.1.1"><math alttext="0.02821602" class="ltx_Math" display="inline" id="A4.T9.150.150.6.1.1.m1.1"><semantics id="A4.T9.150.150.6.1.1.m1.1a"><mn id="A4.T9.150.150.6.1.1.m1.1.1" mathbackground="#BFDFBF" xref="A4.T9.150.150.6.1.1.m1.1.1.cmml">0.02821602</mn><annotation-xml encoding="MathML-Content" id="A4.T9.150.150.6.1.1.m1.1b"><cn id="A4.T9.150.150.6.1.1.m1.1.1.cmml" type="float" xref="A4.T9.150.150.6.1.1.m1.1.1">0.02821602</cn></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.150.150.6.1.1.m1.1c">0.02821602</annotation><annotation encoding="application/x-llamapun" id="A4.T9.150.150.6.1.1.m1.1d">0.02821602</annotation></semantics></math></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents data from an experiment designed to reveal the impact of prompt caching on the OpenAI text-embedding-3-small API.  The experiment involved sending the same prompt 25 times consecutively to the API.  The table lists the server-side response time for each request, along with the first five coordinates of the resulting embedding vector.  Response times and embeddings are color-coded to highlight different patterns: blue indicates typical responses (cache misses); green, fast responses (likely cache hits); and red, unusual responses (neither a typical cache miss nor a clear cache hit). This color-coding helps visualize the variability introduced by the caching mechanism and potentially its influence on the embedding's accuracy and consistency.
> <details>
> <summary>read the caption</summary>
> Table 9: Server-side response times and first five embedding coordinates when sending the same prompt 25 consecutive times to the OpenAI text-embedding-3-small API from the same user. Blue denotes the “normal” embedding returned in most of the responses with normal response times, which indicate cache misses. Green denotes fast response times, which indicate cache hits. Red denotes embeddings that differ from both the “normal” and “cache hit” embeddings.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.07776/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.07776/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}