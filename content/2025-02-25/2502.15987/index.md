---
title: "Forecasting Open-Weight AI Model Growth on Hugging Face"
summary: "Predicting open-weight AI model growth on Hugging Face using a citation-style model, revealing adoption dynamics and influencing factors."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Representation Learning", "🏢 Rensselaer Polytechnic Institute",]
showSummary: true
date: 2025-02-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15987 {{< /keyword >}}
{{< keyword icon="writer" >}} Kushal Raj Bhandari et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15987" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15987" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15987/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

The open-weight AI ecosystem's expansion raises questions about model influence. This paper draws parallels with scientific literature, using a citation dynamics framework to predict which open-weight models will drive innovation. It examines critical questions about long-term influence and impact in the AI landscape, highlighting governance, strategy, and scientific progress.



The paper adapts Wang et al.'s scientific citation model, using immediacy, longevity, and relative fitness to track the number of fine-tuned models. Findings show this approach captures diverse adoption trajectories, identifying influential factors. The analysis underscores the value of this framework and provides insights for strategic decisions.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A citation-style model can effectively predict the adoption trajectories of open-weight AI models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Immediacy, longevity, and relative fitness are key parameters influencing model adoption. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Organization-level factors significantly shape model usage patterns and ecosystem support. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers in **AI governance, business strategy, and open-source AI development**. By providing a predictive model for open-weight AI adoption, the study offers valuable tools for stakeholders navigating the evolving AI landscape, enhancing strategic decision-making and future research.

------
#### Visual Insights



![](https://arxiv.org/html/2502.15987/x1.png)

> 🔼 This figure visualizes the growth of fine-tuned models derived from various base open-weight AI models over time.  The x-axis represents the time elapsed since the release of each base model, and the y-axis shows the cumulative number of fine-tuned models created. Each line represents a different base model, and the color of the line indicates the model's release date. This allows for a visual comparison of the adoption rates and overall popularity of different open-weight AI models over their lifespans.
> <details>
> <summary>read the caption</summary>
> Figure 1: Monthly number of fine-tuned models after a base model’s release, with colors denoting the time when it was created.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T1.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T1.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A3.T1.3.3.3.4" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T1.3.3.3.4.1">Model Name</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T1.1.1.1.1" style="padding:1pt 5.0pt;"><math alttext="\lambda_{i}" class="ltx_Math" display="inline" id="A3.T1.1.1.1.1.m1.1"><semantics id="A3.T1.1.1.1.1.m1.1a"><msub id="A3.T1.1.1.1.1.m1.1.1" xref="A3.T1.1.1.1.1.m1.1.1.cmml"><mi id="A3.T1.1.1.1.1.m1.1.1.2" xref="A3.T1.1.1.1.1.m1.1.1.2.cmml">λ</mi><mi id="A3.T1.1.1.1.1.m1.1.1.3" xref="A3.T1.1.1.1.1.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T1.1.1.1.1.m1.1b"><apply id="A3.T1.1.1.1.1.m1.1.1.cmml" xref="A3.T1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T1.1.1.1.1.m1.1.1.1.cmml" xref="A3.T1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T1.1.1.1.1.m1.1.1.2.cmml" xref="A3.T1.1.1.1.1.m1.1.1.2">𝜆</ci><ci id="A3.T1.1.1.1.1.m1.1.1.3.cmml" xref="A3.T1.1.1.1.1.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T1.1.1.1.1.m1.1c">\lambda_{i}</annotation><annotation encoding="application/x-llamapun" id="A3.T1.1.1.1.1.m1.1d">italic_λ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T1.2.2.2.2" style="padding:1pt 5.0pt;"><math alttext="\mu_{i}" class="ltx_Math" display="inline" id="A3.T1.2.2.2.2.m1.1"><semantics id="A3.T1.2.2.2.2.m1.1a"><msub id="A3.T1.2.2.2.2.m1.1.1" xref="A3.T1.2.2.2.2.m1.1.1.cmml"><mi id="A3.T1.2.2.2.2.m1.1.1.2" xref="A3.T1.2.2.2.2.m1.1.1.2.cmml">μ</mi><mi id="A3.T1.2.2.2.2.m1.1.1.3" xref="A3.T1.2.2.2.2.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T1.2.2.2.2.m1.1b"><apply id="A3.T1.2.2.2.2.m1.1.1.cmml" xref="A3.T1.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A3.T1.2.2.2.2.m1.1.1.1.cmml" xref="A3.T1.2.2.2.2.m1.1.1">subscript</csymbol><ci id="A3.T1.2.2.2.2.m1.1.1.2.cmml" xref="A3.T1.2.2.2.2.m1.1.1.2">𝜇</ci><ci id="A3.T1.2.2.2.2.m1.1.1.3.cmml" xref="A3.T1.2.2.2.2.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T1.2.2.2.2.m1.1c">\mu_{i}</annotation><annotation encoding="application/x-llamapun" id="A3.T1.2.2.2.2.m1.1d">italic_μ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A3.T1.3.3.3.3" style="padding:1pt 5.0pt;"><math alttext="\sigma_{i}" class="ltx_Math" display="inline" id="A3.T1.3.3.3.3.m1.1"><semantics id="A3.T1.3.3.3.3.m1.1a"><msub id="A3.T1.3.3.3.3.m1.1.1" xref="A3.T1.3.3.3.3.m1.1.1.cmml"><mi id="A3.T1.3.3.3.3.m1.1.1.2" xref="A3.T1.3.3.3.3.m1.1.1.2.cmml">σ</mi><mi id="A3.T1.3.3.3.3.m1.1.1.3" xref="A3.T1.3.3.3.3.m1.1.1.3.cmml">i</mi></msub><annotation-xml encoding="MathML-Content" id="A3.T1.3.3.3.3.m1.1b"><apply id="A3.T1.3.3.3.3.m1.1.1.cmml" xref="A3.T1.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="A3.T1.3.3.3.3.m1.1.1.1.cmml" xref="A3.T1.3.3.3.3.m1.1.1">subscript</csymbol><ci id="A3.T1.3.3.3.3.m1.1.1.2.cmml" xref="A3.T1.3.3.3.3.m1.1.1.2">𝜎</ci><ci id="A3.T1.3.3.3.3.m1.1.1.3.cmml" xref="A3.T1.3.3.3.3.m1.1.1.3">𝑖</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T1.3.3.3.3.m1.1c">\sigma_{i}</annotation><annotation encoding="application/x-llamapun" id="A3.T1.3.3.3.3.m1.1d">italic_σ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T1.3.3.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T1.3.3.4.1.1" style="padding:1pt 5.0pt;">Qwen/Qwen1.5-0.5B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T1.3.3.4.1.2" style="padding:1pt 5.0pt;">21.2340</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T1.3.3.4.1.3" style="padding:1pt 5.0pt;">1.18e-15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T1.3.3.4.1.4" style="padding:1pt 5.0pt;">3.9044</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.5.2">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.5.2.1" style="padding:1pt 5.0pt;">Qwen/Qwen1.5-1.8B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.5.2.2" style="padding:1pt 5.0pt;">21.1198</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.5.2.3" style="padding:1pt 5.0pt;">1.00e-15</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.5.2.4" style="padding:1pt 5.0pt;">3.8795</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.6.3">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.6.3.1" style="padding:1pt 5.0pt;">google/gemma-2b</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.6.3.2" style="padding:1pt 5.0pt;">20.7799</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.6.3.3" style="padding:1pt 5.0pt;">2.56e-14</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.6.3.4" style="padding:1pt 5.0pt;">4.8182</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.7.4">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.7.4.1" style="padding:1pt 5.0pt;">google/gemma-7b</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.7.4.2" style="padding:1pt 5.0pt;">18.9374</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.7.4.3" style="padding:1pt 5.0pt;">9.78e-15</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.7.4.4" style="padding:1pt 5.0pt;">4.5854</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.8.5">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.8.5.1" style="padding:1pt 5.0pt;">Qwen/Qwen1.5-7B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.8.5.2" style="padding:1pt 5.0pt;">18.0948</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.8.5.3" style="padding:1pt 5.0pt;">1.41e-19</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.8.5.4" style="padding:1pt 5.0pt;">4.6136</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.9.6">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.9.6.1" style="padding:1pt 5.0pt;">openai/whisper-small</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.9.6.2" style="padding:1pt 5.0pt;">294604.7393</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.9.6.3" style="padding:1pt 5.0pt;">90.9031</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.9.6.4" style="padding:1pt 5.0pt;">22.4477</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.10.7">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.10.7.1" style="padding:1pt 5.0pt;">meta-llama/Llama-2-7b</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.10.7.2" style="padding:1pt 5.0pt;">17.2144</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.10.7.3" style="padding:1pt 5.0pt;">1.04e-17</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.10.7.4" style="padding:1pt 5.0pt;">8.8424</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.11.8">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.11.8.1" style="padding:1pt 5.0pt;">stabilityai/stable-diffusion-xl-base-1.0</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.11.8.2" style="padding:1pt 5.0pt;">16.9046</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.11.8.3" style="padding:1pt 5.0pt;">5.80e-11</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.11.8.4" style="padding:1pt 5.0pt;">7.8304</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.12.9">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.12.9.1" style="padding:1pt 5.0pt;">BAAI/EVA</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.12.9.2" style="padding:1pt 5.0pt;">454253.6120</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.12.9.3" style="padding:1pt 5.0pt;">95.8721</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.12.9.4" style="padding:1pt 5.0pt;">23.0329</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.13.10">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.13.10.1" style="padding:1pt 5.0pt;">mistralai/Mistral-7B-Instruct-v0.2</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.13.10.2" style="padding:1pt 5.0pt;">16.1882</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.13.10.3" style="padding:1pt 5.0pt;">7.18e-15</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.13.10.4" style="padding:1pt 5.0pt;">7.7386</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.14.11">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.14.11.1" style="padding:1pt 5.0pt;">meta-llama/Llama-2-7b-hf</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.14.11.2" style="padding:1pt 5.0pt;">15.3191</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.14.11.3" style="padding:1pt 5.0pt;">1.76e-14</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.14.11.4" style="padding:1pt 5.0pt;">4.9636</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.15.12">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.15.12.1" style="padding:1pt 5.0pt;">mistralai/Mistral-7B-v0.1</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.15.12.2" style="padding:1pt 5.0pt;">15.9177</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.15.12.3" style="padding:1pt 5.0pt;">1.03e-15</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.15.12.4" style="padding:1pt 5.0pt;">8.2057</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.16.13">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.16.13.1" style="padding:1pt 5.0pt;">meta-llama/Llama-2-7b-chat-hf</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.16.13.2" style="padding:1pt 5.0pt;">15.2853</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.16.13.3" style="padding:1pt 5.0pt;">9.88e-12</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.16.13.4" style="padding:1pt 5.0pt;">5.5452</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.17.14">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.17.14.1" style="padding:1pt 5.0pt;">meta-llama/Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.17.14.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.17.14.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.17.14.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.18.15">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.18.15.1" style="padding:1pt 5.0pt;">meta-llama/Llama-3.1-8B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.18.15.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.18.15.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.18.15.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.19.16">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.19.16.1" style="padding:1pt 5.0pt;">allenai/DREAM</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.19.16.2" style="padding:1pt 5.0pt;">24.2332</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.19.16.3" style="padding:1pt 5.0pt;">4.9102</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.19.16.4" style="padding:1pt 5.0pt;">9.2243</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.20.17">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.20.17.1" style="padding:1pt 5.0pt;">meta-llama/Meta-Llama-3-8B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.20.17.2" style="padding:1pt 5.0pt;">15.9664</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.20.17.3" style="padding:1pt 5.0pt;">1.47e-10</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.20.17.4" style="padding:1pt 5.0pt;">10.6965</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.21.18">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.21.18.1" style="padding:1pt 5.0pt;">openai/whisper-tiny</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.21.18.2" style="padding:1pt 5.0pt;">13.4653</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.21.18.3" style="padding:1pt 5.0pt;">2.04e-15</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.21.18.4" style="padding:1pt 5.0pt;">4.1449</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.22.19">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.22.19.1" style="padding:1pt 5.0pt;">microsoft/phi-2</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.22.19.2" style="padding:1pt 5.0pt;">15.2437</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.22.19.3" style="padding:1pt 5.0pt;">8.83e-18</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.22.19.4" style="padding:1pt 5.0pt;">9.5035</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.23.20">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.23.20.1" style="padding:1pt 5.0pt;">openai/whisper-large-v3</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.23.20.2" style="padding:1pt 5.0pt;">528070.6635</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.23.20.3" style="padding:1pt 5.0pt;">66.4680</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.23.20.4" style="padding:1pt 5.0pt;">15.8209</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.24.21">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.24.21.1" style="padding:1pt 5.0pt;">openai/whisper-medium</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.24.21.2" style="padding:1pt 5.0pt;">460695.9213</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.24.21.3" style="padding:1pt 5.0pt;">88.9759</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.24.21.4" style="padding:1pt 5.0pt;">21.2067</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.25.22">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.25.22.1" style="padding:1pt 5.0pt;">Qwen/Qwen2-1.5B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.25.22.2" style="padding:1pt 5.0pt;">16.0543</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.25.22.3" style="padding:1pt 5.0pt;">4.44e-12</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.25.22.4" style="padding:1pt 5.0pt;">6.1988</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.26.23">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.26.23.1" style="padding:1pt 5.0pt;">meta-llama/Meta-Llama-3-8B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.26.23.2" style="padding:1pt 5.0pt;">15.2420</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.26.23.3" style="padding:1pt 5.0pt;">1.06e-10</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.26.23.4" style="padding:1pt 5.0pt;">11.5625</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.27.24">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.27.24.1" style="padding:1pt 5.0pt;">meta-llama/Llama-3.2-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.27.24.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.27.24.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.27.24.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.28.25">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.28.25.1" style="padding:1pt 5.0pt;">meta-llama/Llama-3.2-1B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.28.25.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.28.25.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.28.25.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.29.26">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.29.26.1" style="padding:1pt 5.0pt;">microsoft/Phi-3-mini-4k-instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.29.26.2" style="padding:1pt 5.0pt;">114364.7070</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.29.26.3" style="padding:1pt 5.0pt;">142.1125</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.29.26.4" style="padding:1pt 5.0pt;">37.0978</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.30.27">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.30.27.1" style="padding:1pt 5.0pt;">microsoft/speecht5_tts</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.30.27.2" style="padding:1pt 5.0pt;">12.3327</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.30.27.3" style="padding:1pt 5.0pt;">6.40e-10</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.30.27.4" style="padding:1pt 5.0pt;">3.5563</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.31.28">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.31.28.1" style="padding:1pt 5.0pt;">openai/whisper-large-v2</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.31.28.2" style="padding:1pt 5.0pt;">68.7205</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.31.28.3" style="padding:1pt 5.0pt;">13.4940</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.31.28.4" style="padding:1pt 5.0pt;">10.0765</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.32.29">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.32.29.1" style="padding:1pt 5.0pt;">meta-llama/Llama-3.2-1B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.32.29.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.32.29.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.32.29.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.33.30">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.33.30.1" style="padding:1pt 5.0pt;">Qwen/Qwen2-1.5B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.33.30.2" style="padding:1pt 5.0pt;">15.1078</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.33.30.3" style="padding:1pt 5.0pt;">1.70e-17</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.33.30.4" style="padding:1pt 5.0pt;">4.9109</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.34.31">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.34.31.1" style="padding:1pt 5.0pt;">apple/AIM</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.34.31.2" style="padding:1pt 5.0pt;">120131.6996</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.34.31.3" style="padding:1pt 5.0pt;">66.9603</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.34.31.4" style="padding:1pt 5.0pt;">17.3784</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.35.32">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.35.32.1" style="padding:1pt 5.0pt;">Qwen/Qwen2-0.5B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.35.32.2" style="padding:1pt 5.0pt;">32058.6364</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.35.32.3" style="padding:1pt 5.0pt;">76.6518</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.35.32.4" style="padding:1pt 5.0pt;">21.8903</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.36.33">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.36.33.1" style="padding:1pt 5.0pt;">Qwen/Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.36.33.2" style="padding:1pt 5.0pt;">415361.3050</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.36.33.3" style="padding:1pt 5.0pt;">78.3713</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.36.33.4" style="padding:1pt 5.0pt;">18.9740</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.37.34">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.37.34.1" style="padding:1pt 5.0pt;">openai/whisper-base</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.37.34.2" style="padding:1pt 5.0pt;">11.2185</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.37.34.3" style="padding:1pt 5.0pt;">6.13e-20</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.37.34.4" style="padding:1pt 5.0pt;">2.7420</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.38.35">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.38.35.1" style="padding:1pt 5.0pt;">google/gemma-2-2b</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.38.35.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.38.35.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.38.35.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.39.36">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.39.36.1" style="padding:1pt 5.0pt;">meta-llama/Llama-3.2-3B</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.39.36.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.39.36.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.39.36.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.40.37">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.40.37.1" style="padding:1pt 5.0pt;">mistralai/Mistral-7B-Instruct-v0.1</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.40.37.2" style="padding:1pt 5.0pt;">13.4460</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.40.37.3" style="padding:1pt 5.0pt;">7.33e-15</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.40.37.4" style="padding:1pt 5.0pt;">8.2182</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.41.38">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.41.38.1" style="padding:1pt 5.0pt;">google/gemma-2-2b-it</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.41.38.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.41.38.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.41.38.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.42.39">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.42.39.1" style="padding:1pt 5.0pt;">facebook/opt-125m</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.42.39.2" style="padding:1pt 5.0pt;">9.2155</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.42.39.3" style="padding:1pt 5.0pt;">1.68e-14</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.42.39.4" style="padding:1pt 5.0pt;">1.4702</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.43.40">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.43.40.1" style="padding:1pt 5.0pt;">Salesforce/BLIP</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.43.40.2" style="padding:1pt 5.0pt;">11.6421</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.43.40.3" style="padding:1pt 5.0pt;">0.2335</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.43.40.4" style="padding:1pt 5.0pt;">2.7321</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.44.41">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.44.41.1" style="padding:1pt 5.0pt;">mistralai/Mistral-7B-Instruct-v0.3</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.44.41.2" style="padding:1pt 5.0pt;">14.0439</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.44.41.3" style="padding:1pt 5.0pt;">3.31e-09</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.44.41.4" style="padding:1pt 5.0pt;">7.2751</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.45.42">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.45.42.1" style="padding:1pt 5.0pt;">microsoft/resnet-50</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.45.42.2" style="padding:1pt 5.0pt;">9.0884</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.45.42.3" style="padding:1pt 5.0pt;">4.48e-21</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.45.42.4" style="padding:1pt 5.0pt;">1.6266</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.46.43">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.46.43.1" style="padding:1pt 5.0pt;">facebook/esm2_t12_35M_UR50D</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.46.43.2" style="padding:1pt 5.0pt;">11.4140</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.46.43.3" style="padding:1pt 5.0pt;">6.74e-19</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.46.43.4" style="padding:1pt 5.0pt;">3.5063</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.47.44">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.47.44.1" style="padding:1pt 5.0pt;">google/flan-t5-base</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.47.44.2" style="padding:1pt 5.0pt;">10.3708</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.47.44.3" style="padding:1pt 5.0pt;">1.28e-19</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.47.44.4" style="padding:1pt 5.0pt;">1.9899</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.48.45">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.48.45.1" style="padding:1pt 5.0pt;">google/flan-t5-large</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.48.45.2" style="padding:1pt 5.0pt;">11.8440</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.48.45.3" style="padding:1pt 5.0pt;">8.27e-14</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.48.45.4" style="padding:1pt 5.0pt;">4.6042</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.49.46">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.49.46.1" style="padding:1pt 5.0pt;">openai/whisper-large</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.49.46.2" style="padding:1pt 5.0pt;">364711.2741</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.49.46.3" style="padding:1pt 5.0pt;">64.2591</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.49.46.4" style="padding:1pt 5.0pt;">15.3622</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.50.47">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.50.47.1" style="padding:1pt 5.0pt;">microsoft/Phi-3.5-mini-instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.50.47.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.50.47.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.50.47.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.51.48">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.51.48.1" style="padding:1pt 5.0pt;">microsoft/phi-1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.51.48.2" style="padding:1pt 5.0pt;">12.9090</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.51.48.3" style="padding:1pt 5.0pt;">6.94e-10</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.51.48.4" style="padding:1pt 5.0pt;">9.6670</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.52.49">
<td class="ltx_td ltx_align_left" id="A3.T1.3.3.52.49.1" style="padding:1pt 5.0pt;">google/gemma-2-9b-it</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.52.49.2" style="padding:1pt 5.0pt;">280939.5667</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.52.49.3" style="padding:1pt 5.0pt;">102.4015</td>
<td class="ltx_td ltx_align_center" id="A3.T1.3.3.52.49.4" style="padding:1pt 5.0pt;">25.2924</td>
</tr>
<tr class="ltx_tr" id="A3.T1.3.3.53.50">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T1.3.3.53.50.1" style="padding:1pt 5.0pt;">Qwen/Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T1.3.3.53.50.2" style="padding:1pt 5.0pt;">0.5*</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T1.3.3.53.50.3" style="padding:1pt 5.0pt;">2.0*</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T1.3.3.53.50.4" style="padding:1pt 5.0pt;">0.5*</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive summary of the key parameters derived from fitting a citation-based model to the adoption data of the top 50 open-weight AI models on Hugging Face.  These parameters—λᵢ (relative fitness), μᵢ (immediacy), and σᵢ (longevity)—quantify how quickly a model gains popularity, how long its influence lasts, and its overall relative success compared to others.  The table highlights the diversity of model adoption trajectories by showing the values of these parameters for each model.  The asterisk (*) indicates cases where the model failed to fit the data well, suggesting that some models’ adoption patterns may deviate significantly from the assumed dynamics of the citation model and may require alternative modeling approaches.
> <details>
> <summary>read the caption</summary>
> Table 1: Summary of model parameters (λisubscript𝜆𝑖\lambda_{i}italic_λ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, μisubscript𝜇𝑖\mu_{i}italic_μ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, σisubscript𝜎𝑖\sigma_{i}italic_σ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT) for different top 50 models with the largest number of fine-tuned models. Here, “*” indicates the framework equation 1 failed to fit the empirical data.
> </details>





### In-depth insights


#### AI Model Growth
**AI model growth** is a multifaceted phenomenon, encompassing not only the expansion in model size and complexity but also the proliferation of fine-tuned variants and their adoption across diverse applications. Understanding the **trajectory of AI model growth** requires analyzing factors such as model architecture, training data, computational resources, and community engagement. **Rapid growth** can signify high utility or novelty, while slower growth may reflect niche applications or limitations in accessibility. **Forecasting model growth** necessitates considering both intrinsic qualities (performance, efficiency) and extrinsic factors (community support, licensing). Furthermore, growth dynamics vary across organizations, reflecting their strategic priorities and open-source contributions. Analyzing fine-tuning patterns reveals how base models are adapted to different tasks, highlighting their versatility and the ecosystem's collaborative nature.

#### Citation Dynamic
The paper draws a parallel between the dynamics of open-weight AI model adoption on platforms like Hugging Face and the **citation dynamics observed in scientific literature**. This analogy suggests that the growth and influence of AI models can be understood through a lens similar to how scientific papers gain citations. This 'citation dynamic' hinges on factors such as the model's initial appeal (**immediacy**), its sustained relevance (**longevity**), and its overall impact relative to other models (**relative fitness**). By adapting a citation model, the study tries to offer a framework for quantifying how an open-weight model's influence evolves, potentially **predicting which models will ultimately drive innovation**.

#### Parameter Fit
Analyzing parameter fits in AI model growth provides valuable insights. **Immediacy dictates peak adoption timing**, while **longevity governs influence decay**. **Relative fitness measures model attractiveness**. Outliers signal unusual adoption, meriting deeper investigation. High fitness paired with low longevity suggests initial appeal fades quickly. Moderate fitness with high longevity indicates sustained engagement. These parameter relationships reveal diverse model lifecycles, crucial for predicting long-term influence. Understanding these dynamics is essential for strategic decisions and AI governance, enabling better forecasting of model impact.

#### Organizational Role
The organizational context significantly shapes the adoption of open-weight AI models. Larger, well-resourced organizations like **Meta** and **Google** often have the resources to rapidly fine-tune and deploy models, leading to quicker initial adoption. Smaller organizations or individual researchers may face resource constraints, resulting in slower or more specialized adoption patterns. An organization's strategic priorities also play a role, with some focusing on specific model architectures or application domains, influencing the trajectory of model usage. **The open-source community**, including companies like **BAAI** and **StabilityAI**, support specific ecosystem. This translates into varying levels of community support, documentation, and tooling, all of which influence the model's long-term popularity and impact.

#### Download Data
The research paper explores the topic of 'Download Data' by collecting data on open-weight model adoption using the Hugging Face API, a prominent repository for open-source AI models. **Quantifying fine-tuning activity involves tracking fine-tuned models after a base model's release, aggregating monthly counts.** The initial models like GPT-2 and BERT variants were excluded to prevent distortion of the adoption timeline. **Identifying fine-tuned models relies on tags and model names, with potential labeling inconsistencies affecting data accuracy.** Download data collected after September 2024 allows researchers to approximate temporal trends in adoption. The model predicts downloads without scaling by arbitrary reference counts, so it can measure the relative fitness. Finally, the paper also notes it adjusts counting the number of fine tuned models to monthly to reduce any noise.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.15987/x2.png)

> 🔼 Figure 2 is a two-part figure that visualizes the distribution and relationships of three key parameters from a model of open-weight AI model adoption.  Part (a) shows the distribution of values for immediacy (μi), longevity (σi), and relative fitness (λi) through histograms.  This illustrates the range of adoption patterns observed across various AI models.  Part (b) presents scatter plots showing the pairwise correlations between these three parameters on log-scale axes. These plots reveal how the parameters interrelate; for instance, they show how models with high relative fitness may have varying immediacy and longevity values.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) Distribution of values for λ𝜆\lambdaitalic_λ, μ𝜇\muitalic_μ, and σ𝜎\sigmaitalic_σ. (b) Pairwise relationships among immediacy (μisubscript𝜇𝑖\mu_{i}italic_μ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT), longevity (σisubscript𝜎𝑖\sigma_{i}italic_σ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT), and relative fitness (λisubscript𝜆𝑖\lambda_{i}italic_λ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT) on log-scale axes.
> </details>



![](https://arxiv.org/html/2502.15987/x3.png)

> 🔼 Figure 3 presents density plots illustrating the distribution of the cumulative number of fine-tuned models for open-weight models with a relative fitness (λi) between 1 and 10.  The distributions are shown separately for 2, 6, and 12 months after the model's release.  The plots are further segmented by company to visualize the differences in model adoption patterns across different organizations.  This allows for the observation of temporal changes in the frequency of fine-tuned models, revealing how various organizations' models evolve in their attractiveness over time. 
> <details>
> <summary>read the caption</summary>
> Figure 3: Density plots illustrating the cumulative number of fine-tuned models for relative fitness of (1≤λi≤101subscript𝜆𝑖101\leq\lambda_{i}\leq 101 ≤ italic_λ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT ≤ 10) at the 2-month, 6-month, and 12-month marks, segmented by companies.
> </details>



![](https://arxiv.org/html/2502.15987/x4.png)

> 🔼 Figure 4 presents a graph showing the cumulative number of fine-tuned models created each month after the release of various base models.  The x-axis represents time in months since the base model's release, and the y-axis represents the cumulative count of fine-tuned models.  Each line on the graph represents a different base model, with the color of the line indicating the year the corresponding base model was created. The figure visually demonstrates the varying adoption rates and overall popularity of different base models over time, highlighting the trends and patterns in the growth of fine-tuned models within the Hugging Face ecosystem.
> <details>
> <summary>read the caption</summary>
> Figure 4: Monthly cumulative number of fine-tuned models following the release of the base model, with colors indicating the base models’ creation years, illustrating trends in fine-tuning patterns over time.
> </details>



![](https://arxiv.org/html/2502.15987/x5.png)

> 🔼 Figure 5 visualizes the cumulative adoption trajectories of numerous AI models over time. Each subplot focuses on a single model, plotting the cumulative number of fine-tuned models (y-axis) against the time since the model's release in months (x-axis).  The y-axis uses a logarithmic scale to better represent the wide range of adoption levels.  Red dots represent the observed, empirical data points. The blue curve in each subplot is a fitted curve generated using a model with three parameters (λᵢ, μᵢ, σᵢ), which were derived from fitting a model to the data. These parameters capture different aspects of the adoption curve's shape, such as growth rate, the time until peak adoption, and the decay rate of adoption.
> <details>
> <summary>read the caption</summary>
> Figure 5: Each subplot represents models, where the x-axis denotes the time, t(month), after release, and the y-axis represents the cumulative count (citsuperscriptsubscript𝑐𝑖𝑡c_{i}^{t}italic_c start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT) on a logarithmic scale. Red dots indicate empirical data points, while blue curves correspond to the fitted function using the extracted parameters (λisubscript𝜆𝑖\lambda_{i}italic_λ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, μisubscript𝜇𝑖\mu_{i}italic_μ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT, σisubscript𝜎𝑖\sigma_{i}italic_σ start_POSTSUBSCRIPT italic_i end_POSTSUBSCRIPT).
> </details>



![](https://arxiv.org/html/2502.15987/x6.png)

> 🔼 This figure displays the cumulative number of fine-tuned models created over time (in months) for six different organizations: Allen AI, Amazon, Apple, Beijing Academy of Artificial Intelligence (BAAI), CohereAI, and DeepSeek.  Each organization's data is shown as a separate line graph. The y-axis represents the cumulative number of fine-tuned models, and the x-axis represents the time elapsed in months. This visualization helps illustrate the relative popularity and adoption rates of models from each organization within the Hugging Face ecosystem.
> <details>
> <summary>read the caption</summary>
> Figure 6: The cumulative number of fine-tuned models (ctsubscript𝑐𝑡c_{t}italic_c start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT) over time (months) for Allen AI, Amazon, Apple, Beijing Academy of Artificial Intelligence(BAAI), CohereAI and DeepSeek.
> </details>



![](https://arxiv.org/html/2502.15987/x7.png)

> 🔼 This figure presents a comparison of the cumulative number of fine-tuned models over time (in months) for six prominent AI companies: Meta, Google, Hugging Face, IBM, Microsoft, and MistralAI.  Each company's data is displayed as a separate line graph, allowing for a visual comparison of the adoption rates and overall popularity of their respective base models within the HuggingFace platform. The graph provides insights into the temporal dynamics of model fine-tuning and the relative popularity of models released by these companies.
> <details>
> <summary>read the caption</summary>
> Figure 7: The cumulative number of fine-tuned models (ctsubscript𝑐𝑡c_{t}italic_c start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT) over time (months) for Meta, Google, HuggingFace, IBM, Microsoft, and MistralAI.
> </details>



![](https://arxiv.org/html/2502.15987/x8.png)

> 🔼 This figure displays the cumulative number of fine-tuned models created from the base models of Nvidia, OpenAI, Qwen, Salesforce, and StabilityAI over a period of time (in months).  Each line represents a specific company and illustrates how the number of fine-tuned models derived from its base models increased over the months. This visualization provides a clear view of the adoption and usage trends for the open-source models released by these companies. The figure shows not only the growth in adoption but also possibly the duration of each company’s model's popularity.
> <details>
> <summary>read the caption</summary>
> Figure 8: The cumulative number of fine-tuned models (ctsubscript𝑐𝑡c_{t}italic_c start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT) over time (months) for Nvidia, OpenAI, Qwen, Salesforce, and StabilityAI.
> </details>



![](https://arxiv.org/html/2502.15987/x9.png)

> 🔼 This figure visualizes the cumulative downloads of various open-weight AI models over time, displayed as individual line plots ordered by their total downloads. Each line represents a specific model, illustrating its download trajectory.  A key aspect of the visualization is the comparison between the actual download counts (represented by colored markers) and the predicted cumulative downloads generated by the citation model (the blue line). This comparison allows for an assessment of the model's predictive accuracy. The x-axis represents time in days, and the y-axis shows the cumulative number of downloads on a logarithmic scale.
> <details>
> <summary>read the caption</summary>
> Figure 9: The line plot of the cumulative number of downloads over time (day) for individual models ordered based on the most cumulative downloads. The blue plot is the predictive trajectory using the citation model.
> </details>



![](https://arxiv.org/html/2502.15987/x10.png)

> 🔼 Figure 10 presents the predicted cumulative download counts for various DeepSeek models over a 75-day period following their release.  Each colored line represents a different DeepSeek model variant, showing the actual download trajectory. The black line represents the model's prediction of the cumulative downloads for each variant up to 75 days post-release. This visualization demonstrates the model's ability to forecast the adoption trajectory of newly released open-source AI models based on early download data.  The graph displays the diverse growth patterns among different DeepSeek models.  Some models exhibit rapid initial adoption followed by slower growth, while others show more gradual, sustained increases in downloads.
> <details>
> <summary>read the caption</summary>
> Figure 10: Predicting number of downloads of recently popular DeepSeek models. The black line plot predicts the cumulative number of downloads of DeepSeek models up to 75 days after its release.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15987/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15987/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}