---
title: "ZClip: Adaptive Spike Mitigation for LLM Pre-Training"
summary: "ZClip: An adaptive gradient clipping algorithm that mitigates loss spikes in LLM pre-training by dynamically adjusting clipping thresholds based on gradient norm statistics."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 BluOrion",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02507 {{< /keyword >}}
{{< keyword icon="writer" >}} Abhay Kumar et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02507" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02507" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02507/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Training large language models (LLMs) faces challenges like gradient instability and loss spikes, leading to catastrophic divergence and costly interventions. Traditional gradient clipping techniques often fail due to fixed thresholds or heuristics, resulting in inefficient learning and frequent manual adjustments, increasing engineering complexity, compute overhead, and environmental impact during LLM pre-training.



To address these issues, the paper introduces ZClip, an adaptive gradient clipping algorithm for LLM pre-training. ZClip dynamically adjusts the clipping threshold based on the statistical properties of gradient norms over time, leveraging z-score-based anomaly detection and exponential moving averages. Unlike prior reactive strategies, ZClip proactively adapts to training dynamics without prior assumptions. Empirical results demonstrate that ZClip effectively eliminates loss spikes, enables faster convergence, and achieves baseline performance with a smaller computational budget. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ZClip adaptively mitigates loss spikes in LLM pre-training by dynamically adjusting gradient clipping based on z-score anomaly detection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} ZClip enhances training stability, accelerates convergence, and improves downstream task performance compared to fixed-threshold clipping. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ZClip offers a more efficient and automated approach to gradient clipping, reducing the need for manual intervention and saving computational resources. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers facing **instabilities and loss spikes** in LLM pre-training. ZClip's adaptive approach reduces the need for manual intervention, saves computational resources, and opens new research avenues in efficient and stable LLM training.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/zclip3.png)

> 🔼 Figure 1 presents a comparison of training loss curves for three different gradient clipping methods applied to a 1B parameter LLaMA language model.  The x-axis represents the number of tokens processed during training, while the y-axis displays the training loss. The three curves represent: 1) training without any gradient clipping, 2) training with a fixed threshold gradient clipping method where the threshold is set to 1.0, and 3) training with the proposed ZClip adaptive gradient clipping method.  The learning rate was held constant at 3.0 x 10^-3 for all three experiments. The figure clearly shows that both training without clipping and training with fixed threshold clipping exhibit substantial instability, indicated by sharp spikes and eventual divergence. In contrast, ZClip maintains stability and consistently decreases the training loss, demonstrating its effectiveness in mitigating gradient instability during training. The hyperparameters used in ZClip for this experiment are z_thres = 2.5 and alpha = 0.97.
> <details>
> <summary>read the caption</summary>
> Figure 1: Training loss graph comparing 1) training without clipping, 2) clipping with fixed threshold 1.0, and 3) ZClip for a LLaMA 1B model. The learning rate for all three experiments is 3.0×10−33.0superscript1033.0\times 10^{-3}3.0 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT. While both “no clipping” and “constant clipping” exhibit spiky behavior and diverge early, ZClip (with zthressubscript𝑧thresz_{\text{thres}}italic_z start_POSTSUBSCRIPT thres end_POSTSUBSCRIPT=2.5 and α=0.97𝛼0.97\alpha=0.97italic_α = 0.97) remains stable and continues to optimize effectively throughout training. Details on the model configuration and other training hyperparameters are presented in Appendix Section 6.1.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.5.6.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.5.6.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.1.1">Hyperparameter</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S3.T1.5.6.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.1.2.1">
<span class="ltx_p" id="S3.T1.5.6.1.2.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.2.1.1.1">Value</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S3.T1.3.3.4">Optimizer</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S3.T1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.3.3.3.3">
<span class="ltx_p" id="S3.T1.3.3.3.3.3" style="width:256.1pt;">Fused AdamW (<math alttext="\beta_{1}=0.9" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml"><msub id="S3.T1.1.1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.1.1.m1.1.1.2.cmml"><mi id="S3.T1.1.1.1.1.1.m1.1.1.2.2" xref="S3.T1.1.1.1.1.1.m1.1.1.2.2.cmml">β</mi><mn id="S3.T1.1.1.1.1.1.m1.1.1.2.3" xref="S3.T1.1.1.1.1.1.m1.1.1.2.3.cmml">1</mn></msub><mo id="S3.T1.1.1.1.1.1.m1.1.1.1" xref="S3.T1.1.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S3.T1.1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.1.m1.1.1.3.cmml">0.9</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1"><eq id="S3.T1.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.1"></eq><apply id="S3.T1.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.2"><csymbol cd="ambiguous" id="S3.T1.1.1.1.1.1.m1.1.1.2.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.2">subscript</csymbol><ci id="S3.T1.1.1.1.1.1.m1.1.1.2.2.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.2.2">𝛽</ci><cn id="S3.T1.1.1.1.1.1.m1.1.1.2.3.cmml" type="integer" xref="S3.T1.1.1.1.1.1.m1.1.1.2.3">1</cn></apply><cn id="S3.T1.1.1.1.1.1.m1.1.1.3.cmml" type="float" xref="S3.T1.1.1.1.1.1.m1.1.1.3">0.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\beta_{1}=0.9</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT = 0.9</annotation></semantics></math>, <math alttext="\beta_{2}=0.999" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.2.m2.1"><semantics id="S3.T1.2.2.2.2.2.m2.1a"><mrow id="S3.T1.2.2.2.2.2.m2.1.1" xref="S3.T1.2.2.2.2.2.m2.1.1.cmml"><msub id="S3.T1.2.2.2.2.2.m2.1.1.2" xref="S3.T1.2.2.2.2.2.m2.1.1.2.cmml"><mi id="S3.T1.2.2.2.2.2.m2.1.1.2.2" xref="S3.T1.2.2.2.2.2.m2.1.1.2.2.cmml">β</mi><mn id="S3.T1.2.2.2.2.2.m2.1.1.2.3" xref="S3.T1.2.2.2.2.2.m2.1.1.2.3.cmml">2</mn></msub><mo id="S3.T1.2.2.2.2.2.m2.1.1.1" xref="S3.T1.2.2.2.2.2.m2.1.1.1.cmml">=</mo><mn id="S3.T1.2.2.2.2.2.m2.1.1.3" xref="S3.T1.2.2.2.2.2.m2.1.1.3.cmml">0.999</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.2.m2.1b"><apply id="S3.T1.2.2.2.2.2.m2.1.1.cmml" xref="S3.T1.2.2.2.2.2.m2.1.1"><eq id="S3.T1.2.2.2.2.2.m2.1.1.1.cmml" xref="S3.T1.2.2.2.2.2.m2.1.1.1"></eq><apply id="S3.T1.2.2.2.2.2.m2.1.1.2.cmml" xref="S3.T1.2.2.2.2.2.m2.1.1.2"><csymbol cd="ambiguous" id="S3.T1.2.2.2.2.2.m2.1.1.2.1.cmml" xref="S3.T1.2.2.2.2.2.m2.1.1.2">subscript</csymbol><ci id="S3.T1.2.2.2.2.2.m2.1.1.2.2.cmml" xref="S3.T1.2.2.2.2.2.m2.1.1.2.2">𝛽</ci><cn id="S3.T1.2.2.2.2.2.m2.1.1.2.3.cmml" type="integer" xref="S3.T1.2.2.2.2.2.m2.1.1.2.3">2</cn></apply><cn id="S3.T1.2.2.2.2.2.m2.1.1.3.cmml" type="float" xref="S3.T1.2.2.2.2.2.m2.1.1.3">0.999</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.2.m2.1c">\beta_{2}=0.999</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.2.m2.1d">italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.999</annotation></semantics></math>, <math alttext="\epsilon=1\times 10^{-7}" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.3.m3.1"><semantics id="S3.T1.3.3.3.3.3.m3.1a"><mrow id="S3.T1.3.3.3.3.3.m3.1.1" xref="S3.T1.3.3.3.3.3.m3.1.1.cmml"><mi id="S3.T1.3.3.3.3.3.m3.1.1.2" xref="S3.T1.3.3.3.3.3.m3.1.1.2.cmml">ϵ</mi><mo id="S3.T1.3.3.3.3.3.m3.1.1.1" xref="S3.T1.3.3.3.3.3.m3.1.1.1.cmml">=</mo><mrow id="S3.T1.3.3.3.3.3.m3.1.1.3" xref="S3.T1.3.3.3.3.3.m3.1.1.3.cmml"><mn id="S3.T1.3.3.3.3.3.m3.1.1.3.2" xref="S3.T1.3.3.3.3.3.m3.1.1.3.2.cmml">1</mn><mo id="S3.T1.3.3.3.3.3.m3.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.3.3.3.3.3.m3.1.1.3.1.cmml">×</mo><msup id="S3.T1.3.3.3.3.3.m3.1.1.3.3" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.cmml"><mn id="S3.T1.3.3.3.3.3.m3.1.1.3.3.2" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.2.cmml">10</mn><mrow id="S3.T1.3.3.3.3.3.m3.1.1.3.3.3" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.cmml"><mo id="S3.T1.3.3.3.3.3.m3.1.1.3.3.3a" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.cmml">−</mo><mn id="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.2" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.2.cmml">7</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.3.m3.1b"><apply id="S3.T1.3.3.3.3.3.m3.1.1.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1"><eq id="S3.T1.3.3.3.3.3.m3.1.1.1.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.1"></eq><ci id="S3.T1.3.3.3.3.3.m3.1.1.2.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.2">italic-ϵ</ci><apply id="S3.T1.3.3.3.3.3.m3.1.1.3.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.3"><times id="S3.T1.3.3.3.3.3.m3.1.1.3.1.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.3.1"></times><cn id="S3.T1.3.3.3.3.3.m3.1.1.3.2.cmml" type="integer" xref="S3.T1.3.3.3.3.3.m3.1.1.3.2">1</cn><apply id="S3.T1.3.3.3.3.3.m3.1.1.3.3.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3"><csymbol cd="ambiguous" id="S3.T1.3.3.3.3.3.m3.1.1.3.3.1.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3">superscript</csymbol><cn id="S3.T1.3.3.3.3.3.m3.1.1.3.3.2.cmml" type="integer" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.2">10</cn><apply id="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.3"><minus id="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.1.cmml" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.3"></minus><cn id="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.2.cmml" type="integer" xref="S3.T1.3.3.3.3.3.m3.1.1.3.3.3.2">7</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.3.m3.1c">\epsilon=1\times 10^{-7}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.3.m3.1d">italic_ϵ = 1 × 10 start_POSTSUPERSCRIPT - 7 end_POSTSUPERSCRIPT</annotation></semantics></math>)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.5.7.1.1">Learning Rate Schedule</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.5.7.1.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.1.2.1">
<span class="ltx_p" id="S3.T1.5.7.1.2.1.1" style="width:256.1pt;">Linear warm-up followed by cosine decay</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.5.5.3">Max. Learning Rate</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.5.2.2">
<span class="ltx_p" id="S3.T1.5.5.2.2.2" style="width:256.1pt;"><math alttext="1\times 10^{-4}" class="ltx_Math" display="inline" id="S3.T1.4.4.1.1.1.m1.1"><semantics id="S3.T1.4.4.1.1.1.m1.1a"><mrow id="S3.T1.4.4.1.1.1.m1.1.1" xref="S3.T1.4.4.1.1.1.m1.1.1.cmml"><mn id="S3.T1.4.4.1.1.1.m1.1.1.2" xref="S3.T1.4.4.1.1.1.m1.1.1.2.cmml">1</mn><mo id="S3.T1.4.4.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.4.4.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S3.T1.4.4.1.1.1.m1.1.1.3" xref="S3.T1.4.4.1.1.1.m1.1.1.3.cmml"><mn id="S3.T1.4.4.1.1.1.m1.1.1.3.2" xref="S3.T1.4.4.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="S3.T1.4.4.1.1.1.m1.1.1.3.3" xref="S3.T1.4.4.1.1.1.m1.1.1.3.3.cmml"><mo id="S3.T1.4.4.1.1.1.m1.1.1.3.3a" xref="S3.T1.4.4.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S3.T1.4.4.1.1.1.m1.1.1.3.3.2" xref="S3.T1.4.4.1.1.1.m1.1.1.3.3.2.cmml">4</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.1.1.m1.1b"><apply id="S3.T1.4.4.1.1.1.m1.1.1.cmml" xref="S3.T1.4.4.1.1.1.m1.1.1"><times id="S3.T1.4.4.1.1.1.m1.1.1.1.cmml" xref="S3.T1.4.4.1.1.1.m1.1.1.1"></times><cn id="S3.T1.4.4.1.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.4.4.1.1.1.m1.1.1.2">1</cn><apply id="S3.T1.4.4.1.1.1.m1.1.1.3.cmml" xref="S3.T1.4.4.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S3.T1.4.4.1.1.1.m1.1.1.3.1.cmml" xref="S3.T1.4.4.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S3.T1.4.4.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.4.4.1.1.1.m1.1.1.3.2">10</cn><apply id="S3.T1.4.4.1.1.1.m1.1.1.3.3.cmml" xref="S3.T1.4.4.1.1.1.m1.1.1.3.3"><minus id="S3.T1.4.4.1.1.1.m1.1.1.3.3.1.cmml" xref="S3.T1.4.4.1.1.1.m1.1.1.3.3"></minus><cn id="S3.T1.4.4.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S3.T1.4.4.1.1.1.m1.1.1.3.3.2">4</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.1.1.m1.1c">1\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math> to <math alttext="5\times 10^{-3}" class="ltx_Math" display="inline" id="S3.T1.5.5.2.2.2.m2.1"><semantics id="S3.T1.5.5.2.2.2.m2.1a"><mrow id="S3.T1.5.5.2.2.2.m2.1.1" xref="S3.T1.5.5.2.2.2.m2.1.1.cmml"><mn id="S3.T1.5.5.2.2.2.m2.1.1.2" xref="S3.T1.5.5.2.2.2.m2.1.1.2.cmml">5</mn><mo id="S3.T1.5.5.2.2.2.m2.1.1.1" lspace="0.222em" rspace="0.222em" xref="S3.T1.5.5.2.2.2.m2.1.1.1.cmml">×</mo><msup id="S3.T1.5.5.2.2.2.m2.1.1.3" xref="S3.T1.5.5.2.2.2.m2.1.1.3.cmml"><mn id="S3.T1.5.5.2.2.2.m2.1.1.3.2" xref="S3.T1.5.5.2.2.2.m2.1.1.3.2.cmml">10</mn><mrow id="S3.T1.5.5.2.2.2.m2.1.1.3.3" xref="S3.T1.5.5.2.2.2.m2.1.1.3.3.cmml"><mo id="S3.T1.5.5.2.2.2.m2.1.1.3.3a" xref="S3.T1.5.5.2.2.2.m2.1.1.3.3.cmml">−</mo><mn id="S3.T1.5.5.2.2.2.m2.1.1.3.3.2" xref="S3.T1.5.5.2.2.2.m2.1.1.3.3.2.cmml">3</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.2.2.2.m2.1b"><apply id="S3.T1.5.5.2.2.2.m2.1.1.cmml" xref="S3.T1.5.5.2.2.2.m2.1.1"><times id="S3.T1.5.5.2.2.2.m2.1.1.1.cmml" xref="S3.T1.5.5.2.2.2.m2.1.1.1"></times><cn id="S3.T1.5.5.2.2.2.m2.1.1.2.cmml" type="integer" xref="S3.T1.5.5.2.2.2.m2.1.1.2">5</cn><apply id="S3.T1.5.5.2.2.2.m2.1.1.3.cmml" xref="S3.T1.5.5.2.2.2.m2.1.1.3"><csymbol cd="ambiguous" id="S3.T1.5.5.2.2.2.m2.1.1.3.1.cmml" xref="S3.T1.5.5.2.2.2.m2.1.1.3">superscript</csymbol><cn id="S3.T1.5.5.2.2.2.m2.1.1.3.2.cmml" type="integer" xref="S3.T1.5.5.2.2.2.m2.1.1.3.2">10</cn><apply id="S3.T1.5.5.2.2.2.m2.1.1.3.3.cmml" xref="S3.T1.5.5.2.2.2.m2.1.1.3.3"><minus id="S3.T1.5.5.2.2.2.m2.1.1.3.3.1.cmml" xref="S3.T1.5.5.2.2.2.m2.1.1.3.3"></minus><cn id="S3.T1.5.5.2.2.2.m2.1.1.3.3.2.cmml" type="integer" xref="S3.T1.5.5.2.2.2.m2.1.1.3.3.2">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.2.2.2.m2.1c">5\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.2.2.2.m2.1d">5 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.5.8.2.1">End Learning Rate</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.5.8.2.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.2.2.1">
<span class="ltx_p" id="S3.T1.5.8.2.2.1.1" style="width:256.1pt;">10% of Maximum Learning Rate</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.5.9.3.1">Warm-up Tokens</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.5.9.3.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.3.2.1">
<span class="ltx_p" id="S3.T1.5.9.3.2.1.1" style="width:256.1pt;">2 billion tokens (2BT)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.5.10.4.1">Weight Decay</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.5.10.4.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.4.2.1">
<span class="ltx_p" id="S3.T1.5.10.4.2.1.1" style="width:256.1pt;">0.01 (AdamW implementation)</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.5.11.5.1">Global Batch Size</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.5.11.5.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.5.2.1">
<span class="ltx_p" id="S3.T1.5.11.5.2.1.1" style="width:256.1pt;">2048</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S3.T1.5.12.6.1">Sequence Length</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S3.T1.5.12.6.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.6.2.1">
<span class="ltx_p" id="S3.T1.5.12.6.2.1.1" style="width:256.1pt;">2048</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.13.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S3.T1.5.13.7.1">Precision</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r" id="S3.T1.5.13.7.2">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.7.2.1">
<span class="ltx_p" id="S3.T1.5.13.7.2.1.1" style="width:256.1pt;">Mixed Precision BFloat16</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table lists the default hyperparameters used in the pre-training experiments for the 1B parameter LLaMA model.  It includes details about the optimizer used (Fused AdamW), the learning rate schedule (linear warm-up followed by cosine decay), the maximum and end learning rates, the number of warm-up tokens, weight decay, global batch size, sequence length, and the precision used (mixed precision BF16). These parameters are crucial for understanding the training setup and how they impact the results.
> <details>
> <summary>read the caption</summary>
> Table 1: Default training hyperparameters for the presented 1B LLaMA pre-training experiments.
> </details>





### In-depth insights


#### Adaptive Clipping
Adaptive clipping is a dynamic technique used in machine learning to **mitigate issues like exploding gradients**, commonly encountered during the training of deep neural networks. Unlike traditional, static gradient clipping methods that rely on fixed thresholds, adaptive clipping adjusts the clipping threshold during training based on the observed gradient magnitudes. This adaptability allows for **more efficient and stable training**, especially in complex models and datasets where gradient behavior can vary significantly. Adaptive methods often employ statistical measures, such as moving averages or percentiles of gradient norms, to dynamically determine appropriate clipping levels. By responding to the evolving training dynamics, adaptive clipping can **prevent both under-clipping and over-clipping**, which can hinder convergence. The goal is to balance stability and learning, allowing the model to train effectively without being disrupted by large gradient spikes or overly restricted by conservative clipping thresholds, ultimately improving overall performance and reducing the need for manual intervention.

#### ZClip Algorithm
The ZClip algorithm, as I interpret it, represents an adaptive approach to gradient clipping, dynamically adjusting the clipping threshold during neural network training based on statistical properties of gradient norms. Unlike static methods, ZClip aims to proactively mitigate loss spikes and gradient instability, leading to more stable and efficient training. **Key features likely include**: a mechanism for real-time gradient norm monitoring, potentially using Exponential Moving Average(EMA) to estimate mean and variance, a spike detection component using z-score analysis or similar statistical measure to identify outliers in gradient norms, an adaptive clipping strategy that scales the clipping threshold in response to detected spikes, and a stabilization mechanism to prevent over-clipping and maintain convergence. **It's design focus on not rely on fixed thresholds or heuristics to offer greater robustness across diverse training dynamics and model architectures.** The algorithm probably prioritizes memory and computational efficiency for large-scale language model training, by avoiding large memory overhead from saving all gradient norms. By dynamically adapting the clipping, ZClip balances stability and convergence, enabling training with larger learning rates and potentially faster convergence than fixed-threshold methods. 

#### Mitigating Spikes
Mitigating spikes in LLM training is crucial because these sudden increases in loss can lead to catastrophic divergence, requiring costly checkpoint restorations. Traditional methods like fixed-threshold gradient clipping often fail due to their inflexibility, leading to inefficient learning. Adaptive strategies, dynamically adjusting clipping based on gradient norm statistics, offer a promising solution. Approaches based on z-scores and EMA can proactively adapt to training dynamics, preventing malignant loss spikes without interfering with convergence. Effective spike mitigation techniques enhance training stability, accelerate convergence, and reduce the computational budget. A good approach here must also be lightweight and less sensitive to hyperparameter tuning to support practical large model pre-training. **Mitigating spikes involves strategies that need careful balance between stability and regularization**. The best approach is to mitigate spikes without overly constraining gradients and still promote faster convergence.

#### Normality Checks
When performing normality checks in the context of gradient norms during large language model (LLM) training, the primary goal is to assess whether the distribution of gradient norms approximates a normal (Gaussian) distribution. This is crucial because many statistical techniques, including anomaly detection methods used in adaptive gradient clipping algorithms like ZClip, assume normality. **Significant deviations from normality can impact the reliability of these methods**. Typically, this involves visually inspecting histograms and Q-Q plots of the gradient norms, as well as conducting statistical tests like the Shapiro-Wilk test. **Histograms help visualize the shape of the distribution**, while **Q-Q plots compare the quantiles of the sample data against the quantiles of a normal distribution**; deviations from a straight line suggest non-normality. The Shapiro-Wilk test provides a numerical assessment of normality, with a p-value above a chosen significance level (e.g., 0.05) indicating that the data do not significantly deviate from a normal distribution. **If the distribution of gradient norms is non-normal, transformations or non-parametric methods may be considered to improve the effectiveness of downstream statistical analyses and algorithms.** Furthermore, evaluating normality across different training stages is essential, as the distribution of gradient norms may evolve as the model converges, potentially requiring adjustments to adaptive strategies over time. Understanding the limitations and potential biases introduced by non-normality is vital for robust LLM training.

#### Future Scaling
Future scaling of the ZClip algorithm presents several interesting avenues. Primarily, investigating its effectiveness across a wider array of **model architectures**, including transformers beyond the 1B scale and potentially recurrent networks, is crucial. Expanding the experiments to larger models, such as 7B to 70B parameter models, will reveal its robustness and adaptability in more complex scenarios. Furthermore, exploring its applicability in other training paradigms, such as **reinforcement learning (RL)** and **multimodal learning**, could unlock new possibilities for stabilizing training in those challenging contexts. Adapting ZClip to handle the unique instabilities present in RL or the diverse data modalities encountered in multimodal learning would be a valuable contribution. Further research into **optimal hyperparameter settings** is essential to unlock its full potential. Analyzing the interaction between alpha and threshold values in diverse training setups could lead to more informed and automated hyperparameter selection strategies. Finally, studying its performance in different hardware configurations could reveal bottlenecks and opportunities for optimization, potentially leading to more efficient and scalable training workflows.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02507/extracted/6297715/data/1.png)

> 🔼 This figure shows the training loss for a 1B parameter LLaMA model using fixed-threshold gradient clipping with a threshold of 1.0.  Despite the clipping, large spikes in the gradient norm persist throughout training. This is because the fixed threshold doesn't adapt to the changing distribution of the gradient norms during training. The graph highlights a major weakness of fixed-threshold clipping: its inability to handle the dynamic nature of gradient behavior in large language model training.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Training loss graph for a LLaMA 1B model trained with fixed-threshold clipping c = 1.0. Gradient norm spikes persist due to a mismatch between the static threshold and the running distribution. This reveals a key limitation of fixed-threshold clipping in dynamically changing training regimes.
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/zt_zstar_2_5.png)

> 🔼 Figure 3 displays three alternative functions for adjusting the z-score, which is a measure of how many standard deviations the current gradient norm is from the running mean.  The x-axis represents the z-score (zt), and the y-axis represents the adjusted z-score (ξ(zt)). The three functions shown are:  1.  **Clipping to mean:**  Sets the adjusted z-score to 0, effectively clipping the gradient norm to the running mean. This creates a discontinuity at the threshold. 2.  **Clipping to max:** Sets the adjusted z-score to the threshold (zthres). This maintains continuity at the threshold but results in a less aggressive form of clipping than reciprocal clipping. 3.  **Reciprocal clipping:**  The adjusted z-score is calculated as zthres²/zt. This function is continuous at the threshold and exhibits more aggressive clipping for larger z-scores (i.e., more extreme outliers).  This approach is used in the paper's proposed ZClip algorithm.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Three possible choices for the z-score adjustment function ξ⁢(zt)𝜉subscript𝑧𝑡\xi(z_{t})italic_ξ ( italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) illustrated for zthres=2.5subscript𝑧thres2.5z_{\text{thres}}=2.5italic_z start_POSTSUBSCRIPT thres end_POSTSUBSCRIPT = 2.5. Note the discontinuity for ξ⁢(zt)=0𝜉subscript𝑧𝑡0\xi(z_{t})=0italic_ξ ( italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) = 0, and the reciprocal nature of ξ⁢(zt)=zthres2/zt𝜉subscript𝑧𝑡superscriptsubscript𝑧thres2subscript𝑧𝑡\xi(z_{t})=\nicefrac{{z_{\text{thres}}^{2}}}{{z_{t}}}italic_ξ ( italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT ) = / start_ARG italic_z start_POSTSUBSCRIPT thres end_POSTSUBSCRIPT start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT end_ARG start_ARG italic_z start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT end_ARG leading to more aggressive clipping for more extreme outliers.
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/low_high.png)

> 🔼 Figure 4 presents a comparison of the test loss achieved by two different training methods: ZClip with a learning rate of 3e-3 and a baseline model with a learning rate of 5e-4.  Both models were trained on a 50-billion token corpus. The key finding is that ZClip reached the same final test loss as the baseline model but required 18.6 billion fewer tokens to reach that point. The graph shows training loss over time, using a logarithmic scale for better visualization. Smoothing was applied to the loss curves to minimize the impact of noise, enabling clearer comparison of the overall trends. This demonstrates that ZClip achieves faster convergence to a comparable final test loss without sacrificing performance. 
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of Test Loss between ZClip (lr=3e-3) and a baseline model (lr=5e-4) on a 50B token corpus. ZClip achieved the same final loss as the baseline while requiring 18.6B fewer tokens to get there. The plot uses log-scaled training loss for visibility, and smoothing has been applied to reduce noise. ZClip allows for faster convergence without compromising on final loss value.
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/5e3.png)

> 🔼 Figure 7(a) shows the gradient norms before clipping during the training process for both ZClip and fixed-threshold clipping methods, using a learning rate of 1e-3.  It highlights that in early training, ZClip exhibits only small and transient spikes in the gradient norms, whereas the fixed-threshold clipping method experiences larger and more frequent deviations from the mean. This visualization emphasizes the adaptive nature of ZClip in handling fluctuations.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_5e3_before.png)

> 🔼 Figure 7(b) shows the gradient norms after clipping for both ZClip and fixed-threshold clipping methods.  The graph demonstrates that ZClip effectively suppresses the fluctuations of the gradient norms, making them smooth and stable throughout the training process.  This is in contrast to the fixed-threshold clipping method, which fails to adapt to the changing distribution of gradient norms and results in persistent spikes after clipping, indicating instability.
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_5e3_after.png)

> 🔼 This figure shows the comparison of gradient norms before and after clipping for ZClip and fixed-threshold clipping, trained with a learning rate of 1e-3.  The left panel shows the gradient norms before clipping, where ZClip exhibits small, transient spikes early in training, while fixed-threshold clipping shows larger and more frequent deviations.  The right panel shows the gradient norms after clipping, demonstrating that ZClip effectively suppresses fluctuations, maintaining smooth and stable norms, while fixed-threshold clipping fails to adapt, resulting in persistent spikes and instability.
> <details>
> <summary>read the caption</summary>
> ((c))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/3e3.png)

> 🔼 This figure is not present in the provided document.  Therefore, no description or section can be provided.
> <details>
> <summary>read the caption</summary>
> ((d))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_3e3_before.png)

> 🔼 Figure 7 shows a comparison of gradient norms for ZClip and fixed-threshold clipping.  Subfigure (a) displays the gradient norms before clipping, demonstrating that ZClip exhibits small, transient spikes early in training, whereas fixed-threshold clipping shows larger and more frequent deviations. Subfigure (b) shows the gradient norms after clipping, revealing ZClip effectively suppresses fluctuations and maintains smooth, stable norms, unlike fixed-threshold clipping, which fails to adapt and results in persistent spikes and instability.
> <details>
> <summary>read the caption</summary>
> ((e))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_3e3_after.png)

> 🔼 Figure 7(a) displays gradient norms before clipping, illustrating that fixed-threshold clipping has larger and more frequent deviations compared to ZClip. Figure 7(b) shows gradient norms after clipping, where ZClip effectively suppresses fluctuations, maintaining smooth and stable norms, unlike fixed-threshold clipping which has persistent post-clipping spikes.
> <details>
> <summary>read the caption</summary>
> ((f))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/1e3.png)

> 🔼 This figure compares the performance of ZClip and fixed-threshold gradient clipping methods under high learning rates (3.0e-3 and 5.0e-3).  The figure is structured in rows, each row representing a different learning rate. Each row contains three subplots: training loss, gradient norm before clipping, and gradient norm after clipping.  At the lower learning rate (3.0e-3), ZClip effectively stabilizes the gradients and reduces the post-clipping spikes, demonstrating its adaptive nature. In contrast, the fixed-threshold method shows accumulating instability as it fails to adapt dynamically. At the higher learning rate (5.0e-3), both methods exhibit saturation, indicating that even adaptive clipping may not always prevent divergence under excessively high learning rates.
> <details>
> <summary>read the caption</summary>
> Figure 5: ZClip and fixed-threshold clipping at higher learning rates. Each row shows training loss (left), gradient norm before clipping (middle), and after clipping (right). For 3.0×10−33.0superscript1033.0\times 10^{-3}3.0 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT ZClip stabilized gradients and reduces post-clipping spikes, unlike fixed-threshold clipping which accumulates instability. For 5.0×10−35.0superscript1035.0\times 10^{-3}5.0 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT both clipping methods saturated.
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_1e3_before.png)

> 🔼 The figure shows the comparison of the gradient norms before and after clipping for different learning rates. The left column displays training loss, the middle column shows gradient norms before clipping, and the right column shows gradient norms after clipping.  In each row, a different learning rate is used, showing how ZClip (in blue) stabilizes the gradients and reduces post-clipping spikes, unlike fixed-threshold clipping (in orange) which can accumulate instability, especially at higher learning rates.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_1e3_after.png)

> 🔼 Figure 7(b) shows the gradient norms *after* clipping has been applied for both ZClip and fixed-threshold clipping methods, trained with a learning rate of 1e-3.  The plot highlights that ZClip effectively suppresses fluctuations in the gradient norms, maintaining smooth and stable values. In contrast, the fixed-threshold method fails to adapt to the changing gradient norm distribution, leading to persistent spikes and instability after clipping.
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/7e4.png)

> 🔼 Figure 7 shows a comparison of gradient norms before and after clipping for both ZClip and fixed-threshold clipping methods.  Panel (c) is not included in the provided document.  Panel (a) shows that before clipping, ZClip exhibits small, transient spikes early in training, while the fixed-threshold method displays larger and more frequent deviations.  Panel (b) demonstrates that after clipping, ZClip effectively suppresses fluctuations, maintaining smooth and stable gradient norms, unlike the fixed-threshold method which fails to adapt and exhibits persistent spikes.
> <details>
> <summary>read the caption</summary>
> ((c))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_7e4_before.png)

> 🔼 Figure 7(d) visualizes the distribution of gradient norms after applying clipping.  It shows that, unlike the fixed-threshold clipping method which exhibits frequent spikes even after clipping, ZClip effectively suppresses large gradient norm fluctuations, maintaining a smooth and stable distribution. This highlights ZClip's ability to adapt to the dynamic nature of training while simultaneously ensuring stability.
> <details>
> <summary>read the caption</summary>
> ((d))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_7e4_after.png)

> 🔼 Figure 5 shows the training loss, gradient norms before clipping, and gradient norms after clipping for a LLaMA 1B model trained with two different gradient clipping methods (ZClip and fixed-threshold clipping) at two different learning rates (5.0e-3 and 3.0e-3).  At the higher learning rate (3.0e-3), ZClip successfully stabilized gradients and prevented post-clipping spikes, unlike the fixed-threshold clipping which resulted in instability. At the higher learning rate (5.0e-3), both methods saturated, indicating that even the adaptive approach of ZClip cannot handle excessively high learning rates.
> <details>
> <summary>read the caption</summary>
> ((e))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/5e4.png)

> 🔼 This figure shows the comparison of gradient norms before and after clipping for ZClip and fixed-threshold clipping at various learning rates.  The left column displays the training loss, the middle column shows the gradient norms before clipping, and the right column shows the gradient norms after clipping.  For higher learning rates, ZClip stabilizes gradients and significantly reduces post-clipping spikes, while fixed-threshold clipping results in accumulated instability.  At lower learning rates, both methods show more stability, but ZClip generally maintains smoother gradient behavior.
> <details>
> <summary>read the caption</summary>
> ((f))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_5e4_before.png)

> 🔼 Figure 7 visualizes the gradient norms for ZClip and fixed-threshold clipping methods (threshold = 1.0) during training with a learning rate of 1e-3.  Subfigure (a) shows the gradient norms *before* clipping. ZClip initially displays small, transient spikes early in training, while fixed-threshold clipping exhibits larger and more frequent deviations from the mean. Subfigure (b) presents the gradient norms *after* clipping. ZClip effectively suppresses fluctuations, maintaining smooth and stable norms. In contrast, fixed-threshold clipping fails to adapt to the changing distribution, resulting in persistent post-clipping spikes and instability. This highlights ZClip's superior ability to maintain stable gradients and handle variations in gradient norm distributions during training.
> <details>
> <summary>read the caption</summary>
> ((g))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_5e4_after.png)

> 🔼 This figure shows the training loss curves for three different z-score adjustment functions used in ZClip: clipping to mean (red), clipping to max (green), and reciprocal clipping (purple).  The x-axis represents the z-score (zt), which measures how many standard deviations the current gradient norm is from the running mean, and the y-axis represents the adjusted z-score (z't) after applying the clipping function. The reciprocal clipping function provides a continuous and more balanced adjustment compared to the others, avoiding sharp discontinuities while still effectively controlling extreme gradients.
> <details>
> <summary>read the caption</summary>
> ((h))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/3e4.png)

> 🔼 This figure shows the distribution of gradient norms during early training (steps 500-635) and mid-training (steps 3050-3185).  The black curve represents the best-fit normal distribution.  Early training shows a mild skewness and heavier tails, while mid-training displays improved symmetry and tighter variance, indicating a better approximation to a normal distribution as training progresses.  This is visual evidence supporting the assumption in ZClip that gradient norms approximately follow a normal distribution in short time windows.
> <details>
> <summary>read the caption</summary>
> ((i))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_3e4_before.png)

> 🔼 This figure compares the training loss and gradient norms (before and after clipping) for ZClip and fixed-threshold clipping across different learning rates. It shows that ZClip effectively stabilizes training, especially at higher learning rates, preventing spikes and maintaining smoother convergence. In contrast, fixed-threshold clipping struggles to adapt to the changing dynamics of gradient norms, leading to instability and persistent spikes, especially at higher learning rates.
> <details>
> <summary>read the caption</summary>
> ((j))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_3e4_after.png)

> 🔼 This figure compares the training loss for three different methods: training without gradient clipping, using fixed-threshold gradient clipping, and using the proposed ZClip method.  The x-axis represents the number of tokens processed during training, and the y-axis represents the training loss.  The graph shows that training without clipping results in unstable training with large loss spikes and divergence. Fixed-threshold clipping helps to stabilize training somewhat but still leads to some divergence. In contrast, ZClip shows smooth and stable loss, demonstrating its effectiveness at mitigating loss spikes.
> <details>
> <summary>read the caption</summary>
> ((k))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/1e4.png)

> 🔼 This figure compares the training loss, gradient norm before clipping, and gradient norm after clipping for different learning rates using both ZClip and fixed-threshold clipping.  It demonstrates ZClip's effectiveness in stabilizing training even at higher learning rates where fixed-threshold clipping fails, due to ZClip's ability to adapt dynamically to the evolving gradient norm distribution.
> <details>
> <summary>read the caption</summary>
> ((l))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_1e4_before.png)

> 🔼 The figure displays training loss graphs for three different training scenarios using a LLaMA 1B model: training without any clipping, using a constant clipping threshold of 1.0, and employing ZClip.  It visually demonstrates how ZClip helps prevent the sharp, unstable loss spikes observed in the other two methods, allowing for smoother, more efficient training.  The x-axis represents the total number of tokens processed during training, while the y-axis represents the training loss.
> <details>
> <summary>read the caption</summary>
> ((m))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/lr_1e4_after.png)

> 🔼 This figure compares the training loss curves for three different approaches: training without gradient clipping, training with a fixed threshold gradient clipping method, and training with the proposed ZClip method.  The x-axis represents the number of tokens processed during training (in billions), and the y-axis represents the training loss. The plot visually demonstrates that ZClip effectively prevents the large loss spikes that are observed with the other two methods, while maintaining comparable convergence speed.
> <details>
> <summary>read the caption</summary>
> ((n))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/grad_norm_before3.png)

> 🔼 Figure 7 visualizes the comparison of gradient norms between ZClip and fixed-threshold clipping with a threshold of 1.0, trained using a learning rate of 1e-3.  The subfigure (a) presents the gradient norms before clipping, demonstrating that ZClip exhibits small, transient spikes only in the initial stages of training, while fixed-threshold clipping shows larger and more frequent deviations. Subfigure (b) displays the gradient norms after clipping, illustrating that ZClip effectively suppresses these fluctuations, maintaining smooth and stable norms. In contrast, fixed-threshold clipping fails to adapt to the evolving distribution, resulting in persistent post-clipping spikes and instability. This highlights ZClip's adaptive nature, making it superior for maintaining gradient stability during training.
> <details>
> <summary>read the caption</summary>
> ((o))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/grad_norm_after3.png)

> 🔼 Figure 6 presents a comparison of ZClip and fixed-threshold gradient clipping methods under lower learning rates.  It's organized into rows, each displaying three plots for a specific learning rate:  training loss, gradient norm before clipping, and gradient norm after clipping.  The plots visually demonstrate that ZClip maintains stability and convergence even with lower learning rates, preventing the benign spikes observed with the traditional fixed-threshold approach.  This suggests ZClip's effectiveness in handling minor fluctuations without excessive regularization.
> <details>
> <summary>read the caption</summary>
> Figure 6: ZClip and fixed-threshold clipping at lower learning rates. Each row shows training loss (left), gradient norm before clipping (middle), and after clipping (right). ZClip preserves stability and convergence also at smaller learning rates, while fixed-threshold still struggles with (benign) spikes.
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/clip_algo2.png)

> 🔼 Figure 7(a) presents a comparison of the gradient norms before clipping for ZClip and fixed-threshold clipping methods.  The figure shows that, early in the training process, ZClip exhibits small, transient spikes in gradient norms, while the fixed-threshold method demonstrates larger and more frequent deviations. This highlights the adaptive nature of ZClip and its ability to effectively manage smaller fluctuations while the fixed-threshold method does not adapt to the evolving distribution and overreacts to even small changes.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/nd1.png)

> 🔼 Figure 7(b) displays the gradient norms after clipping is applied.  It visually demonstrates the effectiveness of ZClip in stabilizing gradient norms compared to fixed-threshold clipping. ZClip maintains smooth, stable norms throughout training, while fixed-threshold clipping continues to exhibit fluctuations and larger deviations post-clipping, showing its inability to adapt to the dynamically changing gradient distribution during training.
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/nd2.png)

> 🔼 Figure 7 presents a comparison of gradient norms before and after applying ZClip and fixed-threshold clipping methods during training.  The comparison is performed using a learning rate of 1e-3. Panel (a) shows the gradient norms *before* clipping. ZClip displays small, temporary spikes in the early phase of training, whereas the fixed-threshold approach exhibits noticeably larger and more frequent deviations.  Panel (b) presents the gradient norms *after* clipping has been applied. ZClip effectively reduces the fluctuations to smooth, stable levels; however, the fixed-threshold method fails to adapt to the changes in data distribution over time, leading to persistent, large spikes even after clipping.  This visualization demonstrates ZClip’s superiority in maintaining stable training dynamics by dynamically adjusting to the evolving gradient norm distribution, unlike the fixed-threshold method which uses a static threshold ill-suited for changing distributions.
> <details>
> <summary>read the caption</summary>
> Figure 7: Comparison of gradient norms for ZClip and fixed-threshold clipping with threshold value of 1.0, trained with a learning rate of 1e-3. (a) Before clipping: ZClip exhibits small, transient spikes early in training, while fixed-threshold clipping shows larger and more frequent deviations. (b) After clipping: ZClip effectively suppresses these fluctuations, maintaining smooth and stable norms. In contrast, fixed-threshold clipping fails to adapt to the evolving distribution, resulting in persistent post-clipping spikes and instability.
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/through.png)

> 🔼 This figure compares the training loss curves for three variations of the ZClip algorithm: max, reciprocal, and mean.  Each variation uses a different approach for adjusting the gradient norm when a spike is detected.  The experiment is conducted with a fixed learning rate of 1.0 x 10^-3, allowing for a comparison of how effectively each approach handles gradient instabilities during training.
> <details>
> <summary>read the caption</summary>
> Figure 8: Training loss for three ZClip variants—max, reciprocal, and mean. The learning rate for all experiments is 1.0×10−31.0superscript1031.0\times 10^{-3}1.0 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT.
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/clip_percent.png)

> 🔼 Figure 7(a) shows the comparison of gradient norms before clipping for ZClip and fixed-threshold clipping methods.  It visualizes the gradient norms for both methods throughout the training process.  This comparison reveals that ZClip, unlike the fixed-threshold method, exhibits only small, short-lived spikes early in the training. The fixed-threshold method displays significantly larger and more frequent deviations of gradient norms. This difference highlights ZClip's ability to maintain smoother and more stable gradient norms compared to the traditional fixed-threshold method.
> <details>
> <summary>read the caption</summary>
> ((a))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/mean.png)

> 🔼 Figure 7(b) displays the gradient norms *after* clipping has been applied.  It shows the impact of ZClip and standard fixed-threshold clipping methods.  ZClip's results show stable, smooth gradient norms, indicating its effective suppression of sudden, large gradient increases. In contrast, the fixed-threshold approach demonstrates ongoing, frequent spikes even after clipping, highlighting its inability to maintain stable gradients.
> <details>
> <summary>read the caption</summary>
> ((b))
> </details>



![](https://arxiv.org/html/2504.02507/extracted/6297715/data/std.png)

> 🔼 Figure 9 presents the distributions of gradient norms during early (steps 500-635) and mid (steps 3050-3185) training phases.  Histograms are shown alongside the best-fit normal distributions.  The early training phase shows a distribution with mild skewness (a slight asymmetry) and heavier tails (more data points far from the mean) compared to a perfect normal distribution. In contrast, the mid-training phase displays a distribution that is more symmetrical and has a tighter variance (data points are more concentrated around the mean). This visual comparison illustrates how the distribution of gradient norms evolves during the training process, becoming more normally distributed as training progresses. This is important because ZClip's anomaly detection algorithm relies on the assumption that gradient norms approximately follow a normal distribution.
> <details>
> <summary>read the caption</summary>
> Figure 9: Distribution of gradient norms in (a) Early training (steps 500–635) and (b) Mid training (steps 3050–3185). The black curve shows the best-fit normal distribution. Early training exhibits mild skewness and heavier tails, while mid training displays improved symmetry and tighter variance.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.11">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.11.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T2.11.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T2.11.1.1.1.1">Learning</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T2.11.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.11.1.1.2.1">Train Loss</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T2.11.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.1.1.3.1">HellaSwag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" colspan="2" id="S4.T2.11.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.11.1.1.4.1">WinoGrande</span></th>
</tr>
<tr class="ltx_tr" id="S4.T2.11.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.11.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.11.2.2.1.1">Rate</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.11.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.11.2.2.2.1">Fixed Threshold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.11.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.2.2.3.1">ZClip</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.11.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.11.2.2.4.1">Fixed Threshold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.11.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.2.2.5.1">ZClip</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T2.11.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.11.2.2.6.1">Fixed Threshold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T2.11.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.11.2.2.7.1">ZClip</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.11.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T2.11.3.1.1">5e-3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.3.1.2">7.28</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.3.1.3.1">5.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.11.3.1.4.1">25.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.3.1.5">25.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.3.1.6"><span class="ltx_text ltx_font_bold" id="S4.T2.11.3.1.6.1">49.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.3.1.7">48.46</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.11.4.2.1">3e-3</th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.4.2.2">5.14</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.4.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.4.2.3.1">2.14</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.4.2.4">25.60</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.4.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.4.2.5.1">50.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.4.2.6">49.03</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.4.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.11.4.2.7.1">53.27</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.5.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.11.5.3.1">1e-3</th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.5.3.2">2.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.5.3.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.5.3.3.1">2.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.5.3.4">43.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.5.3.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.5.3.5.1">49.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.5.3.6">52.32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.5.3.7"><span class="ltx_text ltx_font_bold" id="S4.T2.11.5.3.7.1">54.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.6.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.11.6.4.1">7e-4</th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.6.4.2">2.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.6.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.6.4.3.1">2.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.6.4.4">44.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.6.4.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.6.4.5.1">46.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.6.4.6"><span class="ltx_text ltx_font_bold" id="S4.T2.11.6.4.6.1">54.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.6.4.7">52.72</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.7.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.11.7.5.1">5e-4</th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.7.5.2">2.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.7.5.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.7.5.3.1">2.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.7.5.4">45.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.7.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.7.5.5.1">45.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.7.5.6">52.32</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.7.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.11.7.5.7.1">52.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.8.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T2.11.8.6.1">3e-4</th>
<td class="ltx_td ltx_align_center" id="S4.T2.11.8.6.2">2.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.8.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.11.8.6.3.1">2.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.8.6.4">42.34</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.8.6.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.8.6.5.1">42.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.11.8.6.6">50.35</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.11.8.6.7"><span class="ltx_text ltx_font_bold" id="S4.T2.11.8.6.7.1">51.53</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.9.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S4.T2.11.9.7.1">1e-4</th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.11.9.7.2">2.46</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.11.9.7.3">2.46</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.11.9.7.4">33.92</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.11.9.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.11.9.7.5.1">34.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.11.9.7.6">51.22</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.11.9.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.11.9.7.7.1">53.35</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of ZClip against fixed-threshold gradient clipping across various learning rates.  The comparison includes training loss and downstream task performance (HellaSwag and Winogrande).  Note that different z-score thresholds (zthres) were used for ZClip depending on the learning rate: zthres=2.0 for learning rates of 3e-3 and 5e-3, and zthres=2.5 for all other learning rates.  Fixed-threshold clipping consistently used a threshold of c=1.0.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of ZClip to fixed-threshold clipping across a range of learning rates on train loss and downstream task performance. For learning rates of 3×10−33superscript1033\times 10^{-3}3 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT and 5×10−35superscript1035\times 10^{-3}5 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT, we set zthres=2.0subscript𝑧thres2.0z_{\text{thres}}=2.0italic_z start_POSTSUBSCRIPT thres end_POSTSUBSCRIPT = 2.0. For the other experiments, the clipping parameters were zthres=2.5subscript𝑧thres2.5z_{\text{thres}}=2.5italic_z start_POSTSUBSCRIPT thres end_POSTSUBSCRIPT = 2.5 for ZClip and c=1.0𝑐1.0c=1.0italic_c = 1.0 for fixed-threshold clipping, respectively.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">Spike Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1">Test Loss</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1">HellaSwag (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S4.T3.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.5.1">WinoGrande (%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S4.T3.1.2.1.1">No Clipping</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T3.1.2.1.2">12</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.2.1.3">2.90</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.2.1.4">31.01</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.1.2.1.5">51.01</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T3.1.3.2.1">Clipping=1.0</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.3.2.2">6</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.3.2.3">2.33</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.3.2.4">43.01</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.3.2.5">52.32</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S4.T3.1.4.3.1">Autoclip</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T3.1.4.3.2">0</th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.4.3.3">2.20</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.4.3.4">48.10</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.1.4.3.5">53.67</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S4.T3.1.5.4.1">ZClip</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S4.T3.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.5.4.2.1">0</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.5.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.5.4.3.1">2.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.5.4.4.1">49.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.5.4.5.1">54.85</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different gradient clipping methods' performance on the HellaSwag and Winogrande benchmark tasks.  The results are based on training with 50 billion tokens and a learning rate of 1e-3. The comparison includes the performance of training without any clipping, using fixed threshold clipping, Autoclip, and ZClip. The key metrics presented are the number of loss spikes encountered during training, the final test loss, and the accuracy scores on both HellaSwag and Winogrande.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance comparison of gradient clipping methods on HellaSwag and Winogrande after 50BT with a learning rate of 1e-3.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T4.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T4.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="S6.T4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S6.T4.1.2.1.1.1">Parameter</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T4.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S6.T4.1.2.1.2.1">Value</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T4.1.3.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="S6.T4.1.3.1.1">Hidden Size</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T4.1.3.1.2">2048</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.4.2">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.4.2.1">Intermediate Size (FFN)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.4.2.2">5440</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.5.3">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.5.3.1">Number of Hidden Layers</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.5.3.2">16</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.6.4">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.6.4.1">Number of Attention Heads</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.6.4.2">16</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.7.5">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.7.5.1">Number of Key-Value Heads</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.7.5.2">16</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.8.6">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.8.6.1">Activation Function</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.8.6.2">SwiGLU</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.9.7">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.9.7.1">Normalization Type</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.9.7.2">RMSNorm</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.1.2">RMSNorm Epsilon</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.1.1"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="S6.T4.1.1.1.m1.1"><semantics id="S6.T4.1.1.1.m1.1a"><mrow id="S6.T4.1.1.1.m1.1.1" xref="S6.T4.1.1.1.m1.1.1.cmml"><mn id="S6.T4.1.1.1.m1.1.1.2" xref="S6.T4.1.1.1.m1.1.1.2.cmml">1</mn><mo id="S6.T4.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="S6.T4.1.1.1.m1.1.1.1.cmml">×</mo><msup id="S6.T4.1.1.1.m1.1.1.3" xref="S6.T4.1.1.1.m1.1.1.3.cmml"><mn id="S6.T4.1.1.1.m1.1.1.3.2" xref="S6.T4.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="S6.T4.1.1.1.m1.1.1.3.3" xref="S6.T4.1.1.1.m1.1.1.3.3.cmml"><mo id="S6.T4.1.1.1.m1.1.1.3.3a" xref="S6.T4.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="S6.T4.1.1.1.m1.1.1.3.3.2" xref="S6.T4.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="S6.T4.1.1.1.m1.1b"><apply id="S6.T4.1.1.1.m1.1.1.cmml" xref="S6.T4.1.1.1.m1.1.1"><times id="S6.T4.1.1.1.m1.1.1.1.cmml" xref="S6.T4.1.1.1.m1.1.1.1"></times><cn id="S6.T4.1.1.1.m1.1.1.2.cmml" type="integer" xref="S6.T4.1.1.1.m1.1.1.2">1</cn><apply id="S6.T4.1.1.1.m1.1.1.3.cmml" xref="S6.T4.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S6.T4.1.1.1.m1.1.1.3.1.cmml" xref="S6.T4.1.1.1.m1.1.1.3">superscript</csymbol><cn id="S6.T4.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S6.T4.1.1.1.m1.1.1.3.2">10</cn><apply id="S6.T4.1.1.1.m1.1.1.3.3.cmml" xref="S6.T4.1.1.1.m1.1.1.3.3"><minus id="S6.T4.1.1.1.m1.1.1.3.3.1.cmml" xref="S6.T4.1.1.1.m1.1.1.3.3"></minus><cn id="S6.T4.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="S6.T4.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T4.1.1.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="S6.T4.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.10.8">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r" id="S6.T4.1.10.8.1">Vocabulary Size</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T4.1.10.8.2">65,536</td>
</tr>
<tr class="ltx_tr" id="S6.T4.1.11.9">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r" id="S6.T4.1.11.9.1">Max Position Embeddings</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S6.T4.1.11.9.2">2048</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the specific hyperparameters and architectural choices used in the ZClip experiments.  It provides a precise specification of the LLaMA-based model used, including its hidden size, the number of layers and attention heads, activation function, normalization method, and vocabulary size. This level of detail is crucial for reproducibility and allows researchers to understand the exact model configuration used to obtain the results presented in the paper.
> <details>
> <summary>read the caption</summary>
> Table 4: Model Configuration used for ZClip experiments.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T5.3.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T5.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.1.1">Clipping Strategy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S6.T5.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.2.1">Spike Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.3.1">Test Loss</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.4.1">HellaSwag (%)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="S6.T5.3.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T5.3.1.1.5.1">WinoGrande (%)</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T5.3.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r ltx_border_t" id="S6.T5.3.2.1.1">max</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T5.3.2.1.2">1</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.3.2.1.3">2.19</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.3.2.1.4">48.02</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S6.T5.3.2.1.5">53.35</td>
</tr>
<tr class="ltx_tr" id="S6.T5.3.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_l ltx_border_r" id="S6.T5.3.3.2.1">mean</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T5.3.3.2.2"><span class="ltx_text ltx_font_bold" id="S6.T5.3.3.2.2.1">0</span></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.3.3.2.3"><span class="ltx_text ltx_font_bold" id="S6.T5.3.3.2.3.1">2.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.3.3.2.4">48.90</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T5.3.3.2.5">54.22</td>
</tr>
<tr class="ltx_tr" id="S6.T5.3.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_l ltx_border_r" id="S6.T5.3.4.3.1">reciprocal</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S6.T5.3.4.3.2"><span class="ltx_text ltx_font_bold" id="S6.T5.3.4.3.2.1">0</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S6.T5.3.4.3.3"><span class="ltx_text ltx_font_bold" id="S6.T5.3.4.3.3.1">2.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S6.T5.3.4.3.4"><span class="ltx_text ltx_font_bold" id="S6.T5.3.4.3.4.1">49.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S6.T5.3.4.3.5"><span class="ltx_text ltx_font_bold" id="S6.T5.3.4.3.5.1">54.85</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of three variations of the ZClip algorithm (max, reciprocal, and mean) on their performance in downstream tasks, specifically HellaSwag and Winogrande.  The results are based on experiments conducted with a learning rate of 1.0 x 10^-3 and a token budget of 50 billion tokens (50BT).  Each row shows the spike count (number of anomalies detected), the final training loss, and the accuracy scores (in percentage) achieved on both HellaSwag and Winogrande benchmarks. This allows for a comparison of the effectiveness and stability of the different ZClip variants.
> <details>
> <summary>read the caption</summary>
> Table 5: Downstream task performance on HellaSwag and Winogrande benchmarks compraing three ZClip variants—max, reciprocal, and mean. The learning rate for all experiments is 1.0×10−31.0superscript1031.0\times 10^{-3}1.0 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT. The token budget was 50BT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T6.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T6.3.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_tt ltx_border_t" id="S6.T6.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T6.3.1.1.1.1">Z-Score Threshold</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T6.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T6.3.1.1.2.1">Train Loss</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T6.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T6.3.1.1.3.1">Spike Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T6.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T6.3.1.1.4.1">HellaSwag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T6.3.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T6.3.1.1.5.1">Winogrande</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T6.3.2.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_tt" id="S6.T6.3.2.1.1">1.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.3.2.1.2">2.182</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.3.2.1.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.3.2.1.4">48.70</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T6.3.2.1.5">52.23</td>
</tr>
<tr class="ltx_tr" id="S6.T6.3.3.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T6.3.3.2.1">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.3.2.2"><span class="ltx_text ltx_font_bold" id="S6.T6.3.3.2.2.1">2.180</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.3.2.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.3.2.4">48.75</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.3.2.5">54.23</td>
</tr>
<tr class="ltx_tr" id="S6.T6.3.4.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T6.3.4.3.1"><span class="ltx_text ltx_font_bold" id="S6.T6.3.4.3.1.1">2.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.4.3.2"><span class="ltx_text ltx_font_bold" id="S6.T6.3.4.3.2.1">2.180</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.4.3.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.4.3.4"><span class="ltx_text ltx_font_bold" id="S6.T6.3.4.3.4.1">49.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.4.3.5">54.85</td>
</tr>
<tr class="ltx_tr" id="S6.T6.3.5.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T6.3.5.4.1">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.5.4.2">2.194</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.5.4.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.5.4.4">48.94</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.5.4.5">53.27</td>
</tr>
<tr class="ltx_tr" id="S6.T6.3.6.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T6.3.6.5.1">3.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.6.5.2">2.202</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.6.5.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.6.5.4">48.30</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T6.3.6.5.5">53.67</td>
</tr>
<tr class="ltx_tr" id="S6.T6.3.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_l ltx_border_r" id="S6.T6.3.7.6.1">4.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T6.3.7.6.2">2.201</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T6.3.7.6.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T6.3.7.6.4">48.58</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T6.3.7.6.5"><span class="ltx_text ltx_font_bold" id="S6.T6.3.7.6.5.1">55.40</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an experiment that investigates the impact of the Z-score threshold on the performance of the ZClip algorithm. The experiment was conducted using multiple models that were trained with a learning rate of 1.0 x 10^-3 and a token budget of 50 billion tokens. The table shows the values of the Z-score threshold used, the resulting training loss, the number of spikes observed during training, and the performance of the models on the HellaSwag and Winogrande benchmark tasks.
> <details>
> <summary>read the caption</summary>
> Table 6: Impact of Z-Score threshold on downstream task performance. All models trained with a learning rate of 1.0×10−31.0superscript1031.0\times 10^{-3}1.0 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT and a token budget of 50B tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T7.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S6.T7.7.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_tt ltx_border_t" id="S6.T7.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T7.7.1.1.1.1">Alpha</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T7.7.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T7.7.1.1.2.1">Train Loss</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T7.7.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T7.7.1.1.3.1">Spike Count</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T7.7.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T7.7.1.1.4.1">HellaSwag</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt ltx_border_t" id="S6.T7.7.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T7.7.1.1.5.1">Winogrande</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T7.7.2.1">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r ltx_border_tt" id="S6.T7.7.2.1.1">0.90</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T7.7.2.1.2">2.190</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T7.7.2.1.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T7.7.2.1.4">48.04</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S6.T7.7.2.1.5">54.01</td>
</tr>
<tr class="ltx_tr" id="S6.T7.7.3.2">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T7.7.3.2.1">0.93</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.3.2.2">2.185</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.3.2.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.3.2.4">48.99</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.3.2.5">54.38</td>
</tr>
<tr class="ltx_tr" id="S6.T7.7.4.3">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T7.7.4.3.1">0.95</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.4.3.2">2.186</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.4.3.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.4.3.4">48.91</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.4.3.5">53.98</td>
</tr>
<tr class="ltx_tr" id="S6.T7.7.5.4">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T7.7.5.4.1"><span class="ltx_text ltx_font_bold" id="S6.T7.7.5.4.1.1">0.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.5.4.2"><span class="ltx_text ltx_font_bold" id="S6.T7.7.5.4.2.1">2.180</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.5.4.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.5.4.4"><span class="ltx_text ltx_font_bold" id="S6.T7.7.5.4.4.1">49.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.5.4.5"><span class="ltx_text ltx_font_bold" id="S6.T7.7.5.4.5.1">54.85</span></td>
</tr>
<tr class="ltx_tr" id="S6.T7.7.6.5">
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_r" id="S6.T7.7.6.5.1">0.98</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.6.5.2">2.189</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.6.5.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.6.5.4">48.51</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S6.T7.7.6.5.5">52.09</td>
</tr>
<tr class="ltx_tr" id="S6.T7.7.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_l ltx_border_r" id="S6.T7.7.7.6.1">0.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T7.7.7.6.2">2.189</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T7.7.7.6.3">0</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T7.7.7.6.4">48.45</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_r" id="S6.T7.7.7.6.5">53.74</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments assessing the impact of the smoothing factor (alpha) in the ZClip algorithm on model stability and performance in downstream tasks.  Different alpha values were tested in the training process while maintaining a constant learning rate (1.0 × 10⁻³) and z-score threshold (2.5). The table shows the resulting training loss, number of loss spikes, and performance on HellaSwag and Winogrande benchmark tasks. The token budget was consistent across all experiments at 50 billion tokens.
> <details>
> <summary>read the caption</summary>
> Table 7: Impact of different values for α𝛼\alphaitalic_α on stability and downstream performance. All models trained with a learning rate of 1.0×10−31.0superscript1031.0\times 10^{-3}1.0 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT and a z-score threshold zthres=2.5subscript𝑧thres2.5z_{\text{thres}}=2.5italic_z start_POSTSUBSCRIPT thres end_POSTSUBSCRIPT = 2.5. The token budget was 50B tokens.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02507/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02507/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}