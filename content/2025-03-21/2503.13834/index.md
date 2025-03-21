---
title: "See-Saw Modality Balance: See Gradient, and Sew Impaired Vision-Language Balance to Mitigate Dominant Modality Bias"
summary: "BALGRAD mitigates dominant modality bias in vision-language models by reweighting gradients and aligning task directions for balanced learning and improved performance."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Chung-Ang University",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13834 {{< /keyword >}}
{{< keyword icon="writer" >}} JuneHyoung Kwon et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13834" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13834" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13834/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision-language(VL) models show great results but often rely too much on one type of information leading to a "dominant modality bias." This hurts performance, especially when one data source is weak. The paper looks at how this bias affects models, finding that mismatched gradients stop the loss from balancing out. This suggests that some data types are more vital to target performance. 



The paper presents **BALGRAD to reduce dominant modality bias by rebalancing gradient**. It adjusts gradients depending on each data source's contribution and makes sure task directions line up properly. Results on datasets like UPMC Food-101 show BALGRAD stops over-reliance on certain data sources, especially when one source is not as reliable.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Dominant modality bias in VL models stems from unaligned gradients and varying gradient magnitudes. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} BALGRAD effectively reweights gradients between modalities and aligns target task gradients to ensure balanced convergence. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} BALGRAD improves performance and robustness in VL models, particularly when dealing with impaired or missing modalities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work is crucial because it **tackles the widespread issue of dominant modality bias** in VL models, offering a way to enhance their robustness and reliability in real-world applications. By **enabling more balanced and effective use of multimodal data**, this research promotes the development of more advanced, adaptable, and versatile VL systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/figure1-1.jpg)

> 🔼 Figure 1 illustrates the concept of dominant modality bias in vision-language (VL) models.  Dominant modality bias refers to situations where a VL model relies disproportionately on one modality (either visual or textual) for its predictions, even when information from both modalities is available.  The figure shows two examples: (a) Hate recognition: Here, the text associated with a meme is more influential in determining whether it is hateful than the image itself. The model primarily focuses on the textual content to make the prediction. (b) Food Classification: Conversely, in this task, the visual information (the image of the food) is significantly more important than the textual description for correct classification. The model heavily relies on the visual data to make the prediction. This bias can negatively impact the model's performance, especially when one modality is impaired or unavailable.
> <details>
> <summary>read the caption</summary>
> Figure 1: Conceptual visualization of dominant modality bias. The key modality differs by task: (a) For the hate recognition task, text descriptions of memes lead, while (b) for the food classification task, food images play a crucial role in prediction.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.6.6">
<tr class="ltx_tr" id="S4.T1.6.6.7">
<td class="ltx_td ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.6.6.7.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T1.6.6.7.2" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.7.2.1" style="background-color:#FFFFFF;">UPMC Food-101</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T1.6.6.7.3" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.7.3.1" style="background-color:#FFFFFF;">Hateful Memes</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T1.6.6.7.4" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.7.4.1" style="background-color:#FFFFFF;">MM-IMDb</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.8" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T1.6.6.8.1" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.1.1" style="background-color:#FFFFFF;">Modality</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.2.1" style="background-color:#FFFFFF;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.3.1" style="background-color:#FFFFFF;">MSLR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.4.1" style="background-color:#FFFFFF;">OGM-GE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.5.1" style="background-color:#FFFFFF;">AGM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.8.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.6.6.8.6.1" style="background-color:#FFFFFF;">BalGrad</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.7.1" style="background-color:#FFFFFF;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.8.1" style="background-color:#FFFFFF;">MSLR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.9.1" style="background-color:#FFFFFF;">OGM-GE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.10.1" style="background-color:#FFFFFF;">AGM</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.8.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.6.6.8.11.1" style="background-color:#FFFFFF;">BalGrad</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.12.1" style="background-color:#FFFFFF;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.13.1" style="background-color:#FFFFFF;">MSLR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.14.1" style="background-color:#FFFFFF;">OGM-GE</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.8.15.1" style="background-color:#FFFFFF;">AGM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.8.16" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T1.6.6.8.16.1" style="background-color:#FFFFFF;">BalGrad</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.9" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T1.6.6.9.1" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.1.1" style="background-color:#FFFFFF;">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.2.1" style="background-color:#FFFFFF;">76.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.3.1" style="background-color:#FFFFFF;">78.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.4.1" style="background-color:#FFFFFF;">77.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.5" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.9.5.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.9.5.2" style="background-color:#FFFFFF;">78.93</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.9.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.9.6.1" style="background-color:#FFFFFF;">80.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.7.1" style="background-color:#FFFFFF;">65.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.8.1" style="background-color:#FFFFFF;">65.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.9" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.9.9.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.9.9.2" style="background-color:#FFFFFF;">66.70</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.10.1" style="background-color:#FFFFFF;">64.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.9.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.9.11.1" style="background-color:#FFFFFF;">67.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.9.12.1" style="background-color:#FFFFFF;">44.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.9.13.1" style="background-color:#FFFFFF;">44.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.14.1" style="background-color:#FFFFFF;">42.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.15.1" style="background-color:#FFFFFF;">43.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.9.16" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.9.16.1" style="background-color:#FFFFFF;">43.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.10">
<td class="ltx_td ltx_border_t" id="S4.T1.6.6.10.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.10.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.2.1" style="background-color:#FFFFFF;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.3.1" style="background-color:#FFFFFF;">12.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.4.1" style="background-color:#FFFFFF;">20.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.5.1" style="background-color:#FFFFFF;">13.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.6" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.10.6.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.10.6.2" style="background-color:#FFFFFF;">22.60</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.10.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.10.7.1" style="background-color:#FFFFFF;">25.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.8.1" style="background-color:#FFFFFF;">64.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.9.1" style="background-color:#FFFFFF;">66.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.10.10.1" style="color:#808080;background-color:#FFFFFF;">66.83*</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.11" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.10.11.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.10.11.2" style="color:#808080;background-color:#FFFFFF;">66.25*</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.10.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.12.1" style="background-color:#FFFFFF;">65.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.13.1" style="background-color:#FFFFFF;">18.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.14" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.10.14.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.10.14.2" style="background-color:#FFFFFF;">19.26</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.10.15.1" style="background-color:#FFFFFF;">24.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.16" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.16.1" style="background-color:#FFFFFF;">17.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.10.17" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.10.17.1" style="background-color:#FFFFFF;">18.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.11">
<td class="ltx_td" id="S4.T1.6.6.11.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.11.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.2.1" style="background-color:#FFFFFF;">Text</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.11.3.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.11.3.2" style="background-color:#FFFFFF;">63.52</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.4.1" style="background-color:#FFFFFF;">63.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.5.1" style="background-color:#FFFFFF;">61.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.6.1" style="background-color:#FFFFFF;">63.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.11.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.11.7.1" style="background-color:#FFFFFF;">65.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.8.1" style="background-color:#FFFFFF;">55.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.9.1" style="background-color:#FFFFFF;">55.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.10" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.11.10.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.11.10.2" style="background-color:#FFFFFF;">57.20</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.11.1" style="background-color:#FFFFFF;">56.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.11.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.11.12.1" style="background-color:#FFFFFF;">57.58</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.11.13.1" style="background-color:#FFFFFF;">18.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.14.1" style="background-color:#FFFFFF;">14.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.15.1" style="background-color:#FFFFFF;">12.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.16" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.11.16.1" style="background-color:#FFFFFF;">15.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.11.17" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.11.17.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.11.17.2" style="background-color:#FFFFFF;">17.47</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.1">
<td class="ltx_td" id="S4.T1.1.1.1.2" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.1.1.1" style="background-color:#EFEFEF;">Avg.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1" style="background-color:#EFEFEF;"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" mathbackground="#EFEFEF" stretchy="false" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.3.1" style="background-color:#EFEFEF;">38.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.4.1" style="background-color:#EFEFEF;">41.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.5.1" style="background-color:#EFEFEF;">37.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.6" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.1.1.1.6.1">\ul</span><span class="ltx_text" id="S4.T1.1.1.1.6.2" style="background-color:#EFEFEF;">42.87</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.7.1" style="background-color:#EFEFEF;">45.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.8.1" style="background-color:#EFEFEF;">59.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.9.1" style="background-color:#EFEFEF;">60.85</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.10.1" style="background-color:#EFEFEF;">62.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.11.1" style="background-color:#EFEFEF;">61.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.12" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.1.1.1.12.1">\ul</span><span class="ltx_text" id="S4.T1.1.1.1.12.2" style="background-color:#EFEFEF;">61.72</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.13.1" style="background-color:#EFEFEF;">18.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.14.1" style="background-color:#EFEFEF;">16.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.15" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.1.1.1.15.1">\ul</span><span class="ltx_text" id="S4.T1.1.1.1.15.2" style="background-color:#EFEFEF;">18.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.16" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.16.1" style="background-color:#EFEFEF;">16.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.1.17" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.1.1.1.17.1" style="background-color:#EFEFEF;">18.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.3" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.3.1" style="background-color:#FFFFFF;">Missing</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.3.2" style="padding:0.5pt 2.0pt;">
<math alttext="\Delta_{\textit{Gap}}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1" style="background-color:#EFEFEF;"><semantics id="S4.T1.2.2.2.1.m1.1a"><msub id="S4.T1.2.2.2.1.m1.1.1" xref="S4.T1.2.2.2.1.m1.1.1.cmml"><mi id="S4.T1.2.2.2.1.m1.1.1.2" mathbackground="#EFEFEF" mathvariant="normal" xref="S4.T1.2.2.2.1.m1.1.1.2.cmml">Δ</mi><mtext class="ltx_mathvariant_italic" id="S4.T1.2.2.2.1.m1.1.1.3" mathbackground="#EFEFEF" xref="S4.T1.2.2.2.1.m1.1.1.3a.cmml">Gap</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><apply id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.2.2.2.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T1.2.2.2.1.m1.1.1.2.cmml" xref="S4.T1.2.2.2.1.m1.1.1.2">Δ</ci><ci id="S4.T1.2.2.2.1.m1.1.1.3a.cmml" xref="S4.T1.2.2.2.1.m1.1.1.3"><mtext class="ltx_mathvariant_italic" id="S4.T1.2.2.2.1.m1.1.1.3.cmml" mathbackground="#EFEFEF" mathsize="70%" xref="S4.T1.2.2.2.1.m1.1.1.3">Gap</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">\Delta_{\textit{Gap}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.2.m2.1" style="background-color:#EFEFEF;"><semantics id="S4.T1.3.3.3.2.m2.1a"><mo id="S4.T1.3.3.3.2.m2.1.1" mathbackground="#EFEFEF" stretchy="false" xref="S4.T1.3.3.3.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.2.m2.1b"><ci id="S4.T1.3.3.3.2.m2.1.1.cmml" xref="S4.T1.3.3.3.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.2.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.4.1" style="background-color:#EFEFEF;">50.53</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.5.1" style="background-color:#EFEFEF;">42.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.6.1" style="background-color:#EFEFEF;">47.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.7" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.3.3.7.1">\ul</span><span class="ltx_text" id="S4.T1.3.3.3.7.2" style="background-color:#EFEFEF;">40.53</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.3.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.8.1" style="background-color:#EFEFEF;">39.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.9" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.3.3.9.1">\ul</span><span class="ltx_text" id="S4.T1.3.3.3.9.2" style="background-color:#EFEFEF;">8.74</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.10.1" style="background-color:#EFEFEF;">10.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.11.1" style="background-color:#EFEFEF;">9.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.12.1" style="background-color:#EFEFEF;">10.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.3.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.13.1" style="background-color:#EFEFEF;">8.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.14.1" style="background-color:#EFEFEF;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.15.1" style="background-color:#EFEFEF;">4.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.16" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.16.1" style="background-color:#EFEFEF;">12.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.17" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.3.3.3.17.1" style="background-color:#EFEFEF;">2.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3.18" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.3.3.3.18.1">\ul</span><span class="ltx_text" id="S4.T1.3.3.3.18.2" style="background-color:#EFEFEF;">1.34</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.12">
<td class="ltx_td ltx_border_t" id="S4.T1.6.6.12.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.12.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.2.1" style="background-color:#FFFFFF;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.3.1" style="background-color:#FFFFFF;">41.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.4.1" style="background-color:#FFFFFF;">52.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.5.1" style="background-color:#FFFFFF;">46.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.12.6.1" style="background-color:#FFFFFF;">56.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.12.7" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.12.7.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.12.7.2" style="background-color:#FFFFFF;">55.58</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.8.1" style="background-color:#FFFFFF;">63.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.9" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.12.9.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.12.9.2" style="background-color:#FFFFFF;">64.21</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.10.1" style="background-color:#FFFFFF;">63.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.11.1" style="background-color:#FFFFFF;">61.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.6.6.12.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.12.12.1" style="background-color:#FFFFFF;">65.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.13.1" style="background-color:#FFFFFF;">30.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.14.1" style="background-color:#FFFFFF;">33.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.12.15.1" style="background-color:#FFFFFF;">35.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.16" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.12.16.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.12.16.2" style="background-color:#FFFFFF;">35.73</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.6.12.17" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.12.17.1" style="background-color:#FFFFFF;">37.76</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.13">
<td class="ltx_td" id="S4.T1.6.6.13.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.13.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.2.1" style="background-color:#FFFFFF;">Text</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.3.1" style="background-color:#FFFFFF;">67.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.13.4.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.13.4.2" style="background-color:#FFFFFF;">77.71</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.5.1" style="background-color:#FFFFFF;">75.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.6.1" style="background-color:#FFFFFF;">77.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.13.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.7.1" style="background-color:#FFFFFF;">78.54</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.8.1" style="background-color:#FFFFFF;">65.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.9.1" style="background-color:#FFFFFF;">63.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.10.1" style="color:#808080;background-color:#FFFFFF;">67.16*</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.11.1" style="background-color:#FFFFFF;">63.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.13.12" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.13.12.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.13.12.2" style="background-color:#FFFFFF;">65.60</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.13.1" style="background-color:#FFFFFF;">38.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.13.14.1" style="background-color:#FFFFFF;">43.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.15.1" style="background-color:#FFFFFF;">40.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.16" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.13.16.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.13.16.2" style="background-color:#FFFFFF;">42.66</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.13.17" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.13.17.1" style="background-color:#FFFFFF;">41.80</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4">
<td class="ltx_td" id="S4.T1.4.4.4.2" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.4.1" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T1.4.4.4.1.1" style="background-color:#EFEFEF;">Avg.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.1.1.m1.1" style="background-color:#EFEFEF;"><semantics id="S4.T1.4.4.4.1.1.m1.1a"><mo id="S4.T1.4.4.4.1.1.m1.1.1" mathbackground="#EFEFEF" stretchy="false" xref="S4.T1.4.4.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.1.1.m1.1b"><ci id="S4.T1.4.4.4.1.1.m1.1.1.cmml" xref="S4.T1.4.4.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.3.1" style="background-color:#EFEFEF;">54.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.4.1" style="background-color:#EFEFEF;">65.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.5.1" style="background-color:#EFEFEF;">61.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.6" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.4.4.4.6.1">\ul</span><span class="ltx_text" id="S4.T1.4.4.4.6.2" style="background-color:#EFEFEF;">67.00</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.4.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.7.1" style="background-color:#EFEFEF;">67.06</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.8.1" style="background-color:#EFEFEF;">64.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.9.1" style="background-color:#EFEFEF;">63.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.10" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.4.4.4.10.1">\ul</span><span class="ltx_text" id="S4.T1.4.4.4.10.2" style="background-color:#EFEFEF;">65.44</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.11.1" style="background-color:#EFEFEF;">62.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.4.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.12.1" style="background-color:#EFEFEF;">65.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.13.1" style="background-color:#EFEFEF;">34.49</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.14.1" style="background-color:#EFEFEF;">38.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.4.4.4.15.1" style="background-color:#EFEFEF;">37.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.16" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.4.4.4.16.1">\ul</span><span class="ltx_text" id="S4.T1.4.4.4.16.2" style="background-color:#EFEFEF;">39.20</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.17" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.4.4.17.1" style="background-color:#EFEFEF;">39.78</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.3" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.3.1" style="background-color:#FFFFFF;">Noisy</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.6.6.2" style="padding:0.5pt 2.0pt;">
<math alttext="\Delta_{\textit{Gap}}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.1.m1.1" style="background-color:#EFEFEF;"><semantics id="S4.T1.5.5.5.1.m1.1a"><msub id="S4.T1.5.5.5.1.m1.1.1" xref="S4.T1.5.5.5.1.m1.1.1.cmml"><mi id="S4.T1.5.5.5.1.m1.1.1.2" mathbackground="#EFEFEF" mathvariant="normal" xref="S4.T1.5.5.5.1.m1.1.1.2.cmml">Δ</mi><mtext class="ltx_mathvariant_italic" id="S4.T1.5.5.5.1.m1.1.1.3" mathbackground="#EFEFEF" xref="S4.T1.5.5.5.1.m1.1.1.3a.cmml">Gap</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.1.m1.1b"><apply id="S4.T1.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.1.m1.1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1">subscript</csymbol><ci id="S4.T1.5.5.5.1.m1.1.1.2.cmml" xref="S4.T1.5.5.5.1.m1.1.1.2">Δ</ci><ci id="S4.T1.5.5.5.1.m1.1.1.3a.cmml" xref="S4.T1.5.5.5.1.m1.1.1.3"><mtext class="ltx_mathvariant_italic" id="S4.T1.5.5.5.1.m1.1.1.3.cmml" mathbackground="#EFEFEF" mathsize="70%" xref="S4.T1.5.5.5.1.m1.1.1.3">Gap</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.1.m1.1c">\Delta_{\textit{Gap}}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.1.m1.1d">roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.2.m2.1" style="background-color:#EFEFEF;"><semantics id="S4.T1.6.6.6.2.m2.1a"><mo id="S4.T1.6.6.6.2.m2.1.1" mathbackground="#EFEFEF" stretchy="false" xref="S4.T1.6.6.6.2.m2.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.2.m2.1b"><ci id="S4.T1.6.6.6.2.m2.1.1.cmml" xref="S4.T1.6.6.6.2.m2.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.2.m2.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.2.m2.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.4" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.4.1" style="background-color:#EFEFEF;">25.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.5.1" style="background-color:#EFEFEF;">24.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.6.1" style="background-color:#EFEFEF;">29.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.7.1" style="background-color:#EFEFEF;">20.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.6.6.8" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.6.8.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.6.8.2" style="background-color:#EFEFEF;">22.96</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.9.1" style="background-color:#EFEFEF;">1.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.10" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.6.10.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.6.10.2" style="background-color:#EFEFEF;">0.55</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.11.1" style="background-color:#EFEFEF;">3.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.12.1" style="background-color:#EFEFEF;">1.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.6.6.6.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.13.1" style="background-color:#EFEFEF;">0.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.14.1" style="background-color:#EFEFEF;">7.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.15" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.15.1" style="background-color:#EFEFEF;">9.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.16" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T1.6.6.6.16.1">\ul</span><span class="ltx_text" id="S4.T1.6.6.6.16.2" style="background-color:#EFEFEF;">5.02</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.17" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T1.6.6.6.17.1" style="background-color:#EFEFEF;">6.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.6.6.18" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.6.6.6.18.1" style="background-color:#EFEFEF;">4.04</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance comparison of the proposed BalGrad model against several baseline models on three vision-language datasets: UPMC Food-101, Hateful Memes, and MM-IMDb.  The evaluation considers three scenarios:  data with both modalities (full), data missing the image modality (missing image), and data missing the text modality (missing text).  For each dataset and scenario, the table shows the accuracy of each model.  The 'Avg' column represents the average accuracy across the missing image and missing text conditions. The 'ΔGap' column indicates the difference in accuracy between the missing image and missing text conditions, quantifying the model's reliance on either modality.  A smaller ΔGap suggests a better balance between modalities, mitigating dominant modality bias.  Values marked with an asterisk (*) represent cases of negative transfer, where adding more modality data hurts performance compared to using only one modality.
> <details>
> <summary>read the caption</summary>
> Table 1: The experimental result to validate the effectiveness of BalGrad on the UPMC Food-101, Hateful Memes, and MM-IMDb datasets. The best result in each test dataset is boldfaced, and the second best is presented with underlining. “Avg.” represents the average performance under conditions where one of the modalities is impaired (missing or noisy), while “ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT” indicates the performance difference. The value that is displayed in gray* represents a negative transfer. The unit for “ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT” is %p, and the unit for all other values is %.
> </details>





### In-depth insights


#### Modality Balance
Modality balance in vision-language (VL) models is a critical aspect that determines the robustness and generalizability of these models. **Effective modality balance ensures that the model leverages both visual and textual information equally**, preventing reliance on a single modality, which leads to issues like dominant modality bias. This bias can severely degrade performance, especially when one modality is impaired or missing. Achieving modality balance requires careful consideration of gradient magnitudes and directions during training. **Techniques like gradient reweighting and projection are employed to ensure that both modalities contribute equally to the loss reduction**, preventing one modality from overshadowing the other. Furthermore, the architecture and training scheme, including the fusion mechanism, play crucial roles in maintaining this balance. By addressing these factors, VL models can achieve more stable and balanced learning, leading to improved performance and robustness across various vision-language tasks and datasets. **Focusing on this enables models to generalize better and avoid negative transfer**, which is vital for real-world applications.

#### Gradient Control
**Gradient control** in multimodal learning is a critical area, aiming to mitigate biases and ensure balanced contributions from different modalities. Approaches often involve modulating gradients based on modality confidence or using modality-specific learning rates. The goal is to prevent dominant modalities from overshadowing weaker ones, which can lead to under-exploration and poor generalization. Techniques like gradient reweighting, projection, and surgery are used to align gradients and avoid conflicts. Effective gradient control enhances model robustness and enables synergistic integration of multimodal information, improving overall performance. The challenge lies in dynamically adjusting gradients to reflect the learning status of each modality while avoiding negative transfer and maintaining stability.

#### Avoiding Bias
Addressing bias in vision-language models is crucial for fairness and reliability. **Dominant modality bias**, where models overly rely on one modality (text or image), can lead to poor performance, especially when that modality is impaired. **BALGRAD** framework addresses this by **reweighting gradients** to ensure balanced contributions from both modalities. By adjusting gradient magnitudes and aligning task directions, BALGRAD mitigates over-reliance on specific modalities and avoids negative transfer. This approach enhances robustness and promotes effective joint learning, leading to improved performance in various vision-language tasks. Addressing bias leads to **fair, generalizable and reliable models**, which is an essential step towards real-world deployment.

#### Experiments
The experiments section is crucial for validating the proposed method, BALGRAD. The setup involves using standard datasets like UPMC Food-101, Hateful Memes, and MM-IMDb to benchmark performance under various conditions. A key aspect is the introduction of **controlled impairments** such as missing or noisy modalities (image or text) to simulate real-world scenarios where data quality varies. This allows for a rigorous assessment of BALGRAD's robustness to modality bias. Performance metrics like accuracy and F1-macro are used, along with a careful analysis of the **performance gap** (∆Gap) between image-impaired and text-impaired conditions, offering insights into modality balance. Furthermore, analyzing the training dynamics and gradient behavior contributes to understanding how BALGRAD achieves this balance. The experiments section also analyzes the individual contributions of gradient reweighting and projection towards overall improvements. The use of text decoder-based architecture is tested through BLIP and is experimented with various fusion mechanisms and backbone models, reinforcing the validity and wide applicability of the method. Datasets with additional modalities help test the generalizability of the model.

#### Limitations
The paper acknowledges a limitation in extending its approach, BALGRAD, to multimodal models beyond two modalities, citing a **rapid increase in training costs** due to the need to consider relationships between gradients of each pair of modalities. The complexity in gradient management becomes computationally intensive and difficult to maintain effectively when dealing with three or more modalities. While BALGRAD is effective in bi-modal settings, its application in multimodal scenarios requires further refinement to manage the higher computational demands and ensure **balanced performance across all modalities**. The study is limited to two modalities, so future work must be done to extend BALGRAD to more modalities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/figure2.jpg)

> 🔼 This figure presents the experimental results evaluating the impact of dominant modality bias on three vision-language datasets: UPMC Food-101, Hateful Memes, and MM-IMDb.  Subfigure (a) shows a comparison of model performance across three conditions: when both image and text modalities are available ('Full'), when only the image modality is available ('Image only'), and when only the text modality is available ('Text only'). This visualization reveals the extent to which each dataset exhibits a dominant modality bias.  Subfigure (b) illustrates the training dynamics of the models. By plotting the loss curves for each modality (image and text) across the different datasets, the visualization helps demonstrate how the dominant modality achieves faster convergence and lower loss compared to the weaker modality. This difference in convergence rates underscores the existence of dominant modality bias, where one modality is disproportionately influential in the model's predictions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Experimental results on the UPMC Food-101, Hateful Memes, and MM-IMDb datasets in the presence of dominant modality bias. (a) Performance visualization under different missing conditions (full, image only (missing text), text only (missing image)) for each dataset. (b) Illustration of learning curves for each modality across datasets.
> </details>



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/figure3.jpg)

> 🔼 Figure 3 illustrates the architecture and training process of the proposed BalGrad model. (a) shows the overall framework where the image and text encoders produce embeddings that are concatenated and passed to a final classifier. The classifier is updated using the cross-entropy (CE) loss gradient and the gradients for the individual modalities and the KL divergence between the two modalities' predictions. (b) details the inter-modality gradient reweighting and inter-task gradient projection components.  Inter-modality gradient reweighting adjusts the magnitudes of KL divergence gradients based on each modality's contribution. Inter-task gradient projection projects the main task gradient orthogonally to the KL divergence gradient when they conflict, ensuring balanced updates across modalities.
> <details>
> <summary>read the caption</summary>
> Figure 3: (a) The overall training framework of our proposed BalGrad. The final classifier f𝒯⁢(⋅)subscript𝑓𝒯⋅f_{\mathcal{T}}(\cdot)italic_f start_POSTSUBSCRIPT caligraphic_T end_POSTSUBSCRIPT ( ⋅ ) is updated with the gradient g𝒯⟂subscriptsuperscript𝑔perpendicular-to𝒯g^{\perp}_{\mathcal{T}}italic_g start_POSTSUPERSCRIPT ⟂ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT caligraphic_T end_POSTSUBSCRIPT for cross entropy (CE) loss. The image and text embedding layers hv⁢(⋅),hl⁢(⋅)subscriptℎ𝑣⋅subscriptℎ𝑙⋅h_{v}(\cdot),h_{l}(\cdot)italic_h start_POSTSUBSCRIPT italic_v end_POSTSUBSCRIPT ( ⋅ ) , italic_h start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT ( ⋅ ) are also updated with g𝒯⟂subscriptsuperscript𝑔perpendicular-to𝒯g^{\perp}_{\mathcal{T}}italic_g start_POSTSUPERSCRIPT ⟂ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT caligraphic_T end_POSTSUBSCRIPT along with the gradients of the CE loss for each modality g𝒯v,g𝒯lsubscriptsuperscript𝑔𝑣𝒯subscriptsuperscript𝑔𝑙𝒯g^{v}_{\mathcal{T}},g^{l}_{\mathcal{T}}italic_g start_POSTSUPERSCRIPT italic_v end_POSTSUPERSCRIPT start_POSTSUBSCRIPT caligraphic_T end_POSTSUBSCRIPT , italic_g start_POSTSUPERSCRIPT italic_l end_POSTSUPERSCRIPT start_POSTSUBSCRIPT caligraphic_T end_POSTSUBSCRIPT, and the gradients of the KL divergence between the two modalities’ predictions gk⁢lv,gk⁢llsubscriptsuperscript𝑔𝑣𝑘𝑙subscriptsuperscript𝑔𝑙𝑘𝑙g^{v}_{kl},g^{l}_{kl}italic_g start_POSTSUPERSCRIPT italic_v end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_k italic_l end_POSTSUBSCRIPT , italic_g start_POSTSUPERSCRIPT italic_l end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_k italic_l end_POSTSUBSCRIPT. (b) Inter-modality gradient reweighting adjusts the magnitudes of gk⁢lvsubscriptsuperscript𝑔𝑣𝑘𝑙g^{v}_{kl}italic_g start_POSTSUPERSCRIPT italic_v end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_k italic_l end_POSTSUBSCRIPT and gk⁢llsubscriptsuperscript𝑔𝑙𝑘𝑙g^{l}_{kl}italic_g start_POSTSUPERSCRIPT italic_l end_POSTSUPERSCRIPT start_POSTSUBSCRIPT italic_k italic_l end_POSTSUBSCRIPT to obtain gk⁢lsubscript𝑔𝑘𝑙g_{kl}italic_g start_POSTSUBSCRIPT italic_k italic_l end_POSTSUBSCRIPT. If a conflict occurs, we project g𝒯⟂subscriptsuperscript𝑔perpendicular-to𝒯g^{\perp}_{\mathcal{T}}italic_g start_POSTSUPERSCRIPT ⟂ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT caligraphic_T end_POSTSUBSCRIPT on the orthogonal direction of gk⁢lsubscript𝑔𝑘𝑙g_{kl}italic_g start_POSTSUBSCRIPT italic_k italic_l end_POSTSUBSCRIPT by inter-task gradient projection.
> </details>



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/figure4.jpg)

> 🔼 This figure displays the robustness of the proposed BALGRAD model and three other existing models (MSLR, OGM-GE, and AGM) against varying degrees of missing data.  The x-axis represents the percentage of missing data (missing ratio r) for either the image or text modality. The y-axis shows the performance gap, which is the difference in performance between conditions where only the image modality is missing and conditions where only the text modality is missing. The results are shown for three different datasets: UPMC Food-101, Hateful Memes, and MM-IMDb. A smaller performance gap indicates that the model is less biased toward a specific modality.
> <details>
> <summary>read the caption</summary>
> Figure 4: Evaluation on robustness to different missing ratio r𝑟ritalic_r of BalGrad and existing methods on UPMC Food-101, Hateful Memes, and MM-IMDb datasets.
> </details>



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/BLIP_gap.png)

> 🔼 Figure 5 presents a comparison of the performance of several methods for mitigating dominant modality bias in vision-language models, specifically focusing on the impact of missing modalities. The models were evaluated using the BLIP architecture, and the results are shown in terms of ΔGap, which is the difference in performance between cases where only the image is available (missing text) and cases where only the text is available (missing image).  Each bar in the plot represents the ΔGap for a specific method on one of the three datasets used in the study (UPMC Food-101, Hateful Memes, and MM-IMDb). A smaller ΔGap indicates better balance between the modalities and suggests less reliance on a dominant modality. The figure visually summarizes how effectively each model maintains performance across these missing modality conditions, highlighting BalGrad's relative effectiveness in achieving modality balance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Bar plots comparing the performance of existing methods and BalGrad using BLIP. Each bar represents ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT(%), defined as the performance difference between missing image and missing text conditions.
> </details>



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/figure5.png)

> 🔼 This figure displays the training loss curves for both image and text modalities across two datasets: UPMC Food-101 and Hateful Memes.  Separate curves are shown for each modality under two conditions: with and without inter-modality gradient reweighting. This visual representation allows for a comparison of how the loss decreases over training iterations for each modality and the impact of the proposed inter-modality gradient reweighting technique on balancing the training dynamics between the image and text modalities.
> <details>
> <summary>read the caption</summary>
> Figure 6: Training iteration loss curves for image and text modalities on the UPMC Food-101 and Hateful Memes datasets, comparing the effects of the existence of inter-modality gradient reweighting.
> </details>



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/figure6.png)

> 🔼 This figure displays histograms showing the distribution of cosine similarity between image and text gradients during the training process for two datasets: UPMC Food-101 and Hateful Memes.  The cosine similarity measures the alignment of the gradients. A higher positive value indicates stronger alignment, implying that both modalities contribute effectively to the learning process. Conversely, negative values suggest conflicting gradients, where one modality might hinder the other's learning. The histograms compare the gradient distributions with and without gradient projection.  μw/o represents the average cosine similarity without gradient projection, while μw/ represents the average cosine similarity with gradient projection. The difference between these values illustrates the effectiveness of the gradient projection in reducing conflicts between modalities during training.
> <details>
> <summary>read the caption</summary>
> Figure 7: Histogram visualization of the frequency of gradient conflicts between image and text gradients during training iterations on the UPMC Food-101 and Hateful Memes datasets. μw/osubscript𝜇𝑤𝑜\mu_{w/o}italic_μ start_POSTSUBSCRIPT italic_w / italic_o end_POSTSUBSCRIPT and μw⁣/subscript𝜇𝑤\mu_{w/}italic_μ start_POSTSUBSCRIPT italic_w / end_POSTSUBSCRIPT represent the average cosine similarity values w/o and w/ projection, respectively.
> </details>



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/ap_fusion_mechanism_2.jpg)

> 🔼 Figure 8 presents a comparative analysis of various multi-modal learning approaches, including BalGrad, across different fusion mechanisms (addition and attention).  The experiments were conducted on three benchmark datasets: UPMC Food-101, Hateful Memes, and MM-IMDb.  The bar plots display the performance difference (ΔGap) between scenarios where either the image or text modality was missing. A smaller ΔGap indicates a better balance in the model's reliance on both modalities, with less over-dependence on one modality over the other.
> <details>
> <summary>read the caption</summary>
> Figure 8: Bar plots illustrating the performance of existing methods and BalGrad with different fusion mechanisms: (a) addition and (b) attention, evaluated on the UPMC Food-101, Hateful Memes, and MM-IMDb datasets. Each bar indicates ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT(%), which quantifies the performance variation between missing image and missing text conditions.
> </details>



![](https://arxiv.org/html/2503.13834/extracted/6288576/fig/ap_backbone_models.jpg)

> 🔼 Figure 9 presents a comparative analysis of the performance of various methods, including BalGrad, across different vision-language model architectures.  Specifically, it uses ResNet and DistilBERT in part (a), and CLIP in part (b) as backbone models. The datasets used for this comparison are UPMC Food-101, Hateful Memes, and MM-IMDb.  The key metric shown is ΔGap, representing the performance difference between scenarios where either the image or text modality is missing.  This illustrates the robustness of each model in handling scenarios with missing data from one of the modalities.
> <details>
> <summary>read the caption</summary>
> Figure 9: Bar plots presenting the performance comparison between existing methods and BalGrad across different backbone models: (a) ResNet and DistilBERT, and (b) CLIP, on the UPMC Food-101, Hateful Memes, and MM-IMDb datasets. Each bar represents ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT(%), measuring the performance discrepancy under missing image and missing text conditions.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1">
<tr class="ltx_tr" id="S4.T2.3.1.1">
<td class="ltx_td ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.3.1.1.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.3.1.1.2" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.2.1" style="background-color:#FFFFFF;">UPMC Food-101</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.3.1.1.3" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.3.1" style="background-color:#FFFFFF;">Hateful Memes</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.3.1.1.4" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.1.4.1" style="background-color:#FFFFFF;">MM-IMDb</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T2.3.1.2.1" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.2.1.1" style="background-color:#FFFFFF;">Modality</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.2.2.1" style="background-color:#FFFFFF;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.3" style="padding:0.5pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.3.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.3.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.3.1.2.1" style="padding:0.5pt 2.0pt;">reweighting</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.2.4" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.4.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.4.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.4.1.2.1" style="padding:0.5pt 2.0pt;">projection</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.2.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.3.1.2.5.1" style="background-color:#FFFFFF;">BalGrad</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.2.6.1" style="background-color:#FFFFFF;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.7" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.7.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.7.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.7.1.2.1" style="padding:0.5pt 2.0pt;">reweighting</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.2.8" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.8.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.8.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.8.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.8.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.8.1.2.1" style="padding:0.5pt 2.0pt;">projection</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.2.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.3.1.2.9.1" style="background-color:#FFFFFF;">BalGrad</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.2.10.1" style="background-color:#FFFFFF;">Baseline</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.11" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.11.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.11.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.11.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.11.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.11.1.2.1" style="padding:0.5pt 2.0pt;">reweighting</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.2.12" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.12.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.12.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.12.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.12.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.12.1.2.1" style="padding:0.5pt 2.0pt;">projection</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.2.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T2.3.1.2.13.1" style="background-color:#FFFFFF;">BalGrad</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.3.1.3.1" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.3.1.1" style="background-color:#FFFFFF;">Full</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.3.2.1" style="background-color:#FFFFFF;">76.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.3" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.3.3.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.3.3.2" style="background-color:#FFFFFF;">78.17</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.4" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.3.4.1" style="background-color:#FFFFFF;">76.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.5" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.3.5.1" style="background-color:#FFFFFF;">80.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.3.6.1" style="background-color:#FFFFFF;">65.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.3.7.1" style="background-color:#FFFFFF;">65.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.8" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.3.8.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.3.8.2" style="background-color:#FFFFFF;">66.30</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.9" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.3.9.1" style="background-color:#FFFFFF;">67.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.10" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.3.10.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.3.10.2" style="background-color:#FFFFFF;">44.09</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.3.11.1" style="background-color:#FFFFFF;">44.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.3.12" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.3.12.1" style="background-color:#FFFFFF;">42.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.3.13" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.3.13.1" style="background-color:#FFFFFF;">43.19</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.4">
<td class="ltx_td ltx_border_t" id="S4.T2.3.1.4.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.4.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.2.1" style="background-color:#FFFFFF;">Image</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.3.1" style="background-color:#FFFFFF;">12.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.4.4.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.4.4.2" style="background-color:#FFFFFF;">22.30</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.4.5" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.5.1" style="background-color:#FFFFFF;">19.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.4.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.4.6.1" style="background-color:#FFFFFF;">25.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.7.1" style="background-color:#FFFFFF;">64.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.8.1" style="color:#FFFFFF;background-color:#FFFFFF;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.4.8.1.1" style="color:#808080;">66.37*</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.4.9" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.9.1" style="background-color:#FFFFFF;">65.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.4.10" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.4.10.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.4.10.2" style="background-color:#FFFFFF;">65.86</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.11" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.4.11.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.4.11.2" style="background-color:#FFFFFF;">18.85</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.4.12.1" style="background-color:#FFFFFF;">21.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.3.1.4.13" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.13.1" style="background-color:#FFFFFF;">18.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.1.4.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.4.14.1" style="background-color:#FFFFFF;">18.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.5">
<td class="ltx_td" id="S4.T2.3.1.5.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.5.2.1" style="background-color:#FFFFFF;">Text</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.5.3.1" style="background-color:#FFFFFF;">63.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.5.4.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.5.4.2" style="background-color:#FFFFFF;">64.10</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.5" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.5.5.1" style="background-color:#FFFFFF;">63.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.5.6.1" style="background-color:#FFFFFF;">65.03</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.5.7.1" style="background-color:#FFFFFF;">55.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.8" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.5.8.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.5.8.2" style="background-color:#FFFFFF;">57.03</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.9" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.5.9.1" style="background-color:#FFFFFF;">56.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.5.10.1" style="background-color:#FFFFFF;">57.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.11" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.5.11.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.5.11.2" style="background-color:#FFFFFF;">18.40</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.5.12.1" style="background-color:#FFFFFF;">17.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.5.13" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.5.13.1" style="background-color:#FFFFFF;">18.80</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.5.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.5.14.1" style="background-color:#FFFFFF;">17.47</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.6">
<td class="ltx_td" id="S4.T2.3.1.6.1" style="padding:0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.6.2.1" style="background-color:#EFEFEF;">Avg.↑</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.6.3.1" style="background-color:#EFEFEF;">38.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.6.4.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.6.4.2" style="background-color:#EFEFEF;">43.20</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.5" style="background-color:#EFEFEF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.6.5.1" style="background-color:#EFEFEF;">41.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.6.1" style="background-color:#EFEFEF;">45.26</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.7" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.6.7.1" style="background-color:#EFEFEF;">59.97</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.8.1" style="background-color:#EFEFEF;">61.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.9" style="background-color:#EFEFEF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.6.9.1" style="background-color:#EFEFEF;">60.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.10" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.6.10.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.6.10.2" style="background-color:#EFEFEF;">61.67</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.11" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.6.11.1" style="background-color:#EFEFEF;">18.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.6.12.1" style="background-color:#EFEFEF;">19.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.1.6.13" style="background-color:#EFEFEF;padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.6.13.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.6.13.2" style="background-color:#EFEFEF;">18.64</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.1.6.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.6.14.1" style="background-color:#EFEFEF;">18.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.7" style="background-color:#EFEFEF;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.1" style="background-color:#FFFFFF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.1.1" style="background-color:#FFFFFF;">Missing</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.7.2" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.2.1" style="background-color:#EFEFEF;">Gap</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.3" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.3.1" style="background-color:#EFEFEF;">50.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.4" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.7.4.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.7.4.2" style="background-color:#EFEFEF;">41.80</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.7.5" style="background-color:#EFEFEF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.5.1" style="background-color:#EFEFEF;">43.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.7.6" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.6.1" style="background-color:#EFEFEF;">39.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.7" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.7.7.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.7.7.2" style="background-color:#EFEFEF;">8.74</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.8" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.8.1" style="background-color:#EFEFEF;">9.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.7.9" style="background-color:#EFEFEF;padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.9.1" style="background-color:#EFEFEF;">9.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.7.10" style="padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.10.1" style="background-color:#EFEFEF;">8.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.11" style="padding:0.5pt 2.0pt;">
<span class="ltx_ERROR undefined" id="S4.T2.3.1.7.11.1">\ul</span><span class="ltx_text" id="S4.T2.3.1.7.11.2" style="background-color:#EFEFEF;">0.45</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.12" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.12.1" style="background-color:#EFEFEF;">4.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.3.1.7.13" style="background-color:#EFEFEF;padding:0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.3.1.7.13.1" style="background-color:#EFEFEF;">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.1.7.14" style="padding:0.5pt 2.0pt;"><span class="ltx_text" id="S4.T2.3.1.7.14.1" style="background-color:#EFEFEF;">1.34</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the effects of inter-modality gradient reweighting and inter-task gradient projection on model performance.  The table compares results across three vision-language datasets (UPMC Food-101, Hateful Memes, and MM-IMDb) under various conditions: full modality data, image-only, and text-only.  Performance metrics (accuracy and ΔGap, the performance difference between image-only and text-only conditions) are reported to assess the impact of the proposed components on dominant modality bias and negative transfer.  Bold values represent the best performance, italicized values represent the second-best performance, and gray values indicate negative transfer (performance decrease with additional modalities).  ΔGap is presented in percentage points while other values are in percentages.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study results compares performance with and without inter-modality gradient reweighting and inter-task gradient projection to evaluate their impact on modality balance and transfer effects on UPMC Food-101, Hateful Memes, and MM-IMDb datasets. The best results are highlighted in bold, the second-best in italics, and values shown in gray* indicate negative transfer. “ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT” is reported in %p, while all other values are in %.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.3.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.3.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.3.1.2.1" style="padding:0.5pt 2.0pt;">reweighting</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of inter-task gradient projection in the BalGrad model.  It shows, for the UPMC Food-101 and Hateful Memes datasets, the fraction of times conflicting gradients occurred during training (i.e., where the gradients of the main task and the KL divergence loss had negative cosine similarity). It also reports the performance difference (ΔGap) between the scenarios with and without the projection.  The results demonstrate that the inter-task gradient projection in BalGrad effectively reduces the occurrence of gradient conflicts and improves the balance between modalities.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablative results show the fraction of conflicting gradients and ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT on the UPMC Food-101 and Hateful Memes datasets, comparing scenarios without inter-task gradient projection (“w/o Projection”) and with standard BalGrad (“w/ Projection”).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.4.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.4.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.4.1.2.1" style="padding:0.5pt 2.0pt;">projection</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of the BALGRAD model on the Memotion dataset, which focuses on classifying the humor level of memes.  It compares the performance of BALGRAD against baseline methods under different conditions: when all modalities (image and text) are available ('Full'), when the image modality is missing ('Missing Image'), and when the text modality is missing ('Missing Text'). The table shows the performance metrics (presumably accuracy or similar) for each condition and calculates the average performance ('Avg.') across the missing modality conditions.  Finally, it calculates the difference between the performance when the image is missing and the performance when the text is missing ('ΔGap'), highlighting the model's balance between modalities. A smaller 'ΔGap' indicates better balance.
> <details>
> <summary>read the caption</summary>
> Table 4: The experimental result of BalGrad on the Memotion dataset. The best result in each test dataset is boldfaced, and the second best is presented with underlining. “Avg.” represents the average performance under conditions where one of the modality is missing, while “ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT(%)” indicates the performance difference.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.3.1.2.7.1" style="background-color:#FFFFFF;">
<tr class="ltx_tr" id="S4.T2.3.1.2.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.7.1.1.1" style="padding:0.5pt 2.0pt;">w/ Gradient</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.1.2.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.3.1.2.7.1.2.1" style="padding:0.5pt 2.0pt;">reweighting</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the performance of the BALGRAD model on the CUB-200-2011 dataset, focusing on scenarios with missing modalities (either image or text).  The table shows the model's performance under three conditions: when both image and text are present ('Full'), when the image modality is missing ('Missing Image'), and when the text modality is missing ('Missing Text'). The 'Avg.' column represents the average performance across these missing modality conditions, illustrating the model's robustness to missing data. Finally, the 'ΔGap' column displays the performance difference between 'Missing Image' and 'Missing Text' conditions.  A smaller ΔGap suggests a more balanced model that doesn't over-rely on a specific modality.
> <details>
> <summary>read the caption</summary>
> Table 5: The results of BalGrad on the CUB-200-2011 dataset are presented. The highest performance in each test dataset is shown in bold, with the second-highest underlined. “Avg.” reflects the average performance when one modality is absent, and “ΔGapsubscriptΔGap\Delta_{\textit{Gap}}roman_Δ start_POSTSUBSCRIPT Gap end_POSTSUBSCRIPT(%)” denotes the performance difference.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13834/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13834/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}