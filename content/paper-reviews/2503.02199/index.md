---
title: "Words or Vision: Do Vision-Language Models Have Blind Faith in Text?"
summary: "VLMs often disproportionately trust text over visual data, leading to performance drops and safety concerns."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02199 {{< /keyword >}}
{{< keyword icon="writer" >}} Ailin Deng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02199" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02199" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02199/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Vision-Language Models (VLMs) are increasingly used. However, their handling of inconsistencies between visual and textual data is underexplored, which raises safety concerns. VLMs disproportionately trust textual data over visual data when inconsistencies arise. This "blind faith in text" can lead to performance drops and safety concerns. Several factors influencing this text bias: instruction prompts, language model size, relevance, token order, and modality certainty.



This paper investigates VLMs' modality preferences when faced with inconsistencies. The authors introduce textual variations to four vision-centric tasks and evaluate ten VLMs. To mitigate text bias, they explore supervised fine-tuning with text augmentation. They suggest that the imbalance of pure text and multi-modal data during training contributes to the blind faith in text. Findings show supervised fine-tuning with text augmentation reduces text bias and enhances model robustness.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VLMs exhibit a 'blind faith in text,' prioritizing textual data over visual data, even when inconsistent. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Text bias is influenced by factors like instruction prompts, language model size, relevance, and token order. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Supervised fine-tuning with text augmentation effectively reduces text bias, enhancing model robustness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research reveals the "blind faith in text" phenomenon in VLMs, highlighting critical vulnerabilities in multi-modal data handling. It prompts researchers to **reevaluate VLM architectures**, develop robust training strategies, and **explore novel methods** to enhance reliability in real-world applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02199/x1.png)

> 🔼 The figure illustrates a scenario where a Vision-Language Model (VLM) is given an image of a pizza with green broccoli and text stating that the pizza has green pepper. When asked what green vegetable is on the pizza, the VLM incorrectly answers 'pepper' because it prioritizes the text information over the visual information. This highlights the 'blind faith in text' phenomenon, where VLMs disproportionately trust textual data even when it contradicts visual evidence or is wrong.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of the “Blind Faith in Text” phenomenon in Vision-Language Models (VLMs). These models demonstrate a strong tendency to trust textual data, when it is inconsistent with the visual data or even incorrect.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2.1">
<tr class="ltx_tr" id="S3.T1.2.1.1">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.2.1.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S3.T1.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.1.1.2.1" style="font-size:90%;">VQAv2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.2.1"><span class="ltx_text" id="S3.T1.2.1.2.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.2"><span class="ltx_text" id="S3.T1.2.1.2.2.1" style="font-size:90%;">Base</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.3"><span class="ltx_text" id="S3.T1.2.1.2.3.1" style="font-size:90%;">Match</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.4"><span class="ltx_text" id="S3.T1.2.1.2.4.1" style="font-size:90%;">Corruption</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.2.5"><span class="ltx_text" id="S3.T1.2.1.2.5.1" style="font-size:90%;">Irrelevance</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.2.1.3.1"><span class="ltx_text" id="S3.T1.2.1.3.1.1" style="font-size:90%;">Claude Sonnet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.2"><span class="ltx_text" id="S3.T1.2.1.3.2.1" style="font-size:90%;">66.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.3"><span class="ltx_text" id="S3.T1.2.1.3.3.1" style="font-size:90%;">84.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.4"><span class="ltx_text" id="S3.T1.2.1.3.4.1" style="font-size:90%;">16.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.1.3.5"><span class="ltx_text" id="S3.T1.2.1.3.5.1" style="font-size:90%;">24.39</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.1.4.1"><span class="ltx_text" id="S3.T1.2.1.4.1.1" style="font-size:90%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.2"><span class="ltx_text" id="S3.T1.2.1.4.2.1" style="font-size:90%;">78.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.3"><span class="ltx_text" id="S3.T1.2.1.4.3.1" style="font-size:90%;">90.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.4"><span class="ltx_text" id="S3.T1.2.1.4.4.1" style="font-size:90%;">17.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.1.4.5"><span class="ltx_text" id="S3.T1.2.1.4.5.1" style="font-size:90%;">18.67</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T1.2.1.5.1"><span class="ltx_text" id="S3.T1.2.1.5.1.1" style="font-size:90%;">Molmo-7B-D</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.5.2"><span class="ltx_text" id="S3.T1.2.1.5.2.1" style="font-size:90%;">76.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.5.3"><span class="ltx_text" id="S3.T1.2.1.5.3.1" style="font-size:90%;">88.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.5.4"><span class="ltx_text" id="S3.T1.2.1.5.4.1" style="font-size:90%;">18.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T1.2.1.5.5"><span class="ltx_text" id="S3.T1.2.1.5.5.1" style="font-size:90%;">35.40</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the accuracy of various vision-language models when only provided with text (no image) for different text conditions: matched, corrupted, and irrelevant text. This serves as a validation step to verify the quality and relevance of the artificially generated text data used in the main experiments.
> <details>
> <summary>read the caption</summary>
> Table 1: Text-only accuracy (%) across different models. It provides a sanity check for the constructed text when matched, corrupted, or irrelevant.
> </details>





### In-depth insights


#### Text's Blind Faith
The phenomenon of "blind faith in text" within Vision-Language Models (VLMs) is a critical area of investigation. **VLMs tend to prioritize textual information over visual cues**, even when text is misleading or incorrect. This is problematic, as it undermines the VLM's ability to ground responses in reality. **This reliance on text can lead to significant performance degradation, especially when textual data is corrupted.** Several factors influence this bias, including language model size, relevance of text, token order, and the interplay between visual and textual certainty. Addressing this bias is essential for building robust and reliable VLMs, particularly in real-world applications where data inconsistencies are common.

#### Modality Matters
The exploration of modality preference in Vision-Language Models (VLMs) is crucial because VLMs integrate visual and textual information. When inconsistencies arise between these modalities, it is important to know which one the model will trust more, **the performance will be affected depending on the decision**. This preference influences how robust the VLMs are. If a VLM disproportionately trusts textual data, even when it's corrupted, the entire system's safety and reliability could be compromised. **Understanding and mitigating this text bias** requires a deep dive into factors influencing modality preference, such as instruction prompts, relevance, token order, uni-modal certainty and language model size. Addressing this bias is important for reliability and safety in real-world applications.

#### Text Bias Factors
**VLMs exhibit a 'blind faith in text', often favoring textual data over visual cues, even when inconsistent.** This text bias is influenced by factors like **instruction prompts**, which have limited effectiveness in adjusting modality preference. **Language model size** plays a role; scaling up mitigates the bias, but effects saturate in larger models. **Text relevance** intensifies the preference for textual data. **Token order matters**, placing text before images exacerbates bias due to positional biases. Furthermore, the **interplay between visual and textual certainty** shapes modality preference. Mitigating this bias requires careful consideration of these factors in VLM design and training.

#### SFT mitigates Bias
**Supervised Fine-Tuning (SFT)** is presented as a method to reduce the bias of VLMs. SFT adjusts model parameters using a dataset of corrected examples, guiding the model away from reliance on text and towards a more balanced integration of visual and textual information. The success of SFT hinges on the composition of the training data, which must include examples that challenge the model's pre-existing biases. Also SFT's effectiveness needs rigorous testing across diverse datasets and real-world scenarios. SFT can improve a VLM, as data and setup are crucial to improving the model with it.

#### VLM Data Imbalance
The concept of VLM data imbalance highlights a critical challenge in training Vision-Language Models. **If a VLM is predominantly trained on textual data, it may develop a stronger reliance on text**, even when visual cues are available and more reliable. This imbalance can manifest as a 'blind faith in text,' where the model prioritizes textual information, even if it contradicts visual evidence. **This can lead to performance degradation in tasks requiring accurate multimodal integration**. Addressing this imbalance requires careful consideration of data composition during training, ensuring a more equitable representation of visual and multimodal data to foster robust cross-modal reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02199/x2.png)

> 🔼 This figure shows the prompt used to generate both correct and incorrect text descriptions for images. Given an image, question, and ground truth answer, the prompt instructs a large language model (LLM) to generate two descriptions. Description 1 is accurate and allows for correct answering of the question without referring to the image. Description 2 is inaccurate and leads to a wrong answer when the question is answered using only the text.
> <details>
> <summary>read the caption</summary>
> Figure 2: Prompt for generating matched and corrupted text given an image, the question and the ground-truth answer. We substitute {question} and {answer} with the specific sample.
> </details>



![](https://arxiv.org/html/2503.02199/x3.png)

> 🔼 This figure presents a comparison of how different vision-language models (VLMs) behave when presented with visual data and text that is either consistent (matched), inconsistent (corrupted), or unrelated (irrelevant) to the visual data.  It visualizes the model's tendency to favor textual information ('text bias'), even when it contradicts the visual input. Specifically, it displays the proportion of times each model chooses an answer consistent with the image, consistent with the text, or neither, for each of the three text conditions (matched, corrupted, irrelevant). This allows for an analysis of how different models handle inconsistencies between visual and textual information, highlighting the potential for 'blind faith in text'.
> <details>
> <summary>read the caption</summary>
> Figure 3: Model behaviors over different models when text is corrupted, matched or irrelevant.
> </details>



![](https://arxiv.org/html/2503.02199/x4.png)

> 🔼 Figure 4 presents a bar chart visualizing the Text Preference Ratio (TPR) across ten different vision-language models (VLMs) under three text conditions: matching, corrupted, and irrelevant.  The TPR quantifies each model's tendency to favor textual information over visual information when inconsistencies exist. High TPR values (above 50%) indicate a strong preference for text, even when incorrect. The chart reveals a significant text bias in most models, especially the open-source models, which often exhibit TPRs above 80% under both matching and corrupted text.  This illustrates a phenomenon the authors term 'blind faith in text'. In contrast, among proprietary models, Claude-Sonnet shows greater resilience to corrupted text.
> <details>
> <summary>read the caption</summary>
> Figure 4: Text Preference Ratio (TPR) of all models under different text variations. Most models exhibit high text preference bias when the textual information is relevant even if they are incorrect, especially for open models. Among the proprietary models, Claude-Sonnet exhibits the strongest robustness to corrupted text.
> </details>



![](https://arxiv.org/html/2503.02199/x5.png)

> 🔼 Figure 5 investigates how prompting, language model size, and text relevance affect the tendency of vision-language models to prioritize text over visual data when inconsistencies exist. The left panel shows that while instructions can slightly influence modality preference (a decrease from 16.8% to 14.2% text preference when prompting for image focus instead of text focus in the QwenVL-2-7B model), the impact is minimal. The middle panel demonstrates that increasing the language model size in LLaVA-NeXT models (from 7B to 34B parameters) modestly reduces this text bias. Finally, the right panel reveals that enhancing the relevance of text to the query (using BM25 retrieval) exacerbates the text bias, highlighting that highly relevant text can disproportionately influence model decisions, even when visual information contradicts it.
> <details>
> <summary>read the caption</summary>
> Figure 5:  The effect of different factors (prompting, language model size, text relevance) on text bias. Left: Instructional prompts influence modality preference slightly; text preference drops from 16.8%percent16.816.8\%16.8 % to 14.2%percent14.214.2\%14.2 % with “Focus on Image” vs. “Focus on Text” in QwenVL-2-7B. Middle: Scaling the language models (7B, 13B, 34B) in LLaVA-NeXT models decreases text bias but only marginally. Right: Increasing text relevance to the query with BM25 retrieval, raises text bias.
> </details>



![](https://arxiv.org/html/2503.02199/x6.png)

> 🔼 This figure demonstrates how altering the order of input tokens (text before image vs. image before text) affects the model's tendency to prioritize textual information, even when it contradicts visual evidence.  The experiment focuses on the Phi3.5 model and shows a clear increase in text bias when text tokens precede image tokens across various text conditions (matched, corrupted, irrelevant). This highlights the influence of token order, likely stemming from positional biases inherent in the language model architecture, on the model's ability to handle multi-modal inconsistencies.
> <details>
> <summary>read the caption</summary>
> Figure 6: Effect of token order on text bias: Placing text tokens before image tokens increases text bias in Phi3.5.
> </details>



![](https://arxiv.org/html/2503.02199/x7.png)

> 🔼 This figure analyzes how vision-language models (VLMs) choose between visual and textual data when there are inconsistencies.  It divides image and text certainty into three levels (low, medium, high) and shows how the model's preference (image, text, or other) changes depending on the certainty of each modality.  High image certainty and low text certainty lead models to prefer visual data, while the opposite leads to a text preference. When both are low, the model tends to produce an answer that isn't solely based on either modality.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Effect of uni-modality certainty on model modality preference. Image/Text certainties are divided into three quantile bins, with higher values indicating higher certainty. Models favor visual data when image certainty is high and text certainty is low, and vice versa. When both certainties are low, models often produce Other answers instead of favoring one modality alone.
> </details>



![](https://arxiv.org/html/2503.02199/extracted/6247452/figures/llava-next-7b_vs_behave.png)

> 🔼 Figure 8 presents a dual analysis of supervised fine-tuning (SFT).  The left panel demonstrates how including text-only data during SFT impacts the model's ability to distinguish between correctly and incorrectly phrased text. It shows that text-only data is crucial for maintaining a model's language capabilities while simultaneously reducing reliance on corrupted or irrelevant textual information. The right panel examines how increasing the volume of data used for SFT affects the model's tendency to trust text over images, especially when the text is incorrect. It indicates that increasing the amount of data used for SFT is effective in reducing the model's over-reliance on flawed text information.
> <details>
> <summary>read the caption</summary>
> Figure 8: Left: The effect of text-only data in SFT. Right: The effect of data volume in SFT.
> </details>



![](https://arxiv.org/html/2503.02199/extracted/6247452/figures/gpt4o_vs_behavior.png)

> 🔼 This figure presents a detailed breakdown of model behavior across various text conditions (match, corruption, irrelevance) for the VQAv2 dataset. It showcases the proportion of model answers consistent with image-based answers, text-based answers, and other cases where neither modality aligns. Each bar represents a different vision-language model, providing a comprehensive view of the 'blind faith in text' phenomenon and its impact on model performance.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2503.02199/x8.png)

> 🔼 This figure presents the performance of various vision-language models across different datasets (DocVQA) under various text conditions (match, corruption, irrelevance).  For each model, it displays the base accuracy, accuracy under text corruption, normalized accuracy (considering base accuracy), and the text preference ratio (TPR).  The TPR shows the model's preference for text-based answers over image-based answers, particularly useful for highlighting the 'blind faith in text' phenomenon.  The macro accuracy represents the average accuracy across the three text conditions.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2503.02199/x9.png)

> 🔼 This figure displays the performance of various vision-language models across four distinct datasets (VQAv2, DocVQA, MathVista, and Brand Detection) under three different text conditions: matched, corrupted, and irrelevant text.  The bar chart shows the accuracy of each model for each dataset and text condition.  The TPR (Text Preference Ratio) is also shown to indicate the model's preference for trusting text over visual data.  This helps understand the extent of the 'blind faith in text' phenomenon in different vision-language models under varying conditions.
> <details>
> <summary>read the caption</summary>
> (c)
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.12">
<tr class="ltx_tr" id="S3.T2.12.13">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T2.12.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T2.12.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.12.13.2.1" style="font-size:80%;"></span><span class="ltx_text ltx_font_bold" id="S3.T2.12.13.2.2" style="font-size:80%;">VQAv2</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="4" id="S3.T2.12.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.12.13.3.1" style="font-size:80%;"></span><span class="ltx_text ltx_font_bold" id="S3.T2.12.13.3.2" style="font-size:80%;">DocVQA</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S3.T2.12.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.13.4.1" style="font-size:80%;">MathVista</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.12.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.12.13.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.1.1.1.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.2.2.2.1" style="font-size:80%;">Corruption </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.m1.1a"><mo id="S3.T2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.m1.1b"><ci id="S3.T2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.3.3.3.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.m1.1a"><mo id="S3.T2.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.m1.1b"><ci id="S3.T2.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.4.4.4.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.m1.1a"><mo id="S3.T2.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.m1.1b"><ci id="S3.T2.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.5.5.5.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.m1.1a"><mo id="S3.T2.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.m1.1b"><ci id="S3.T2.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.6.6.6.1" style="font-size:80%;">Corruption </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.m1.1a"><mo id="S3.T2.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.m1.1b"><ci id="S3.T2.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.7.7.7.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.m1.1"><semantics id="S3.T2.7.7.7.m1.1a"><mo id="S3.T2.7.7.7.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.7.7.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.m1.1b"><ci id="S3.T2.7.7.7.m1.1.1.cmml" xref="S3.T2.7.7.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.8.8.8.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.8.8.8.m1.1"><semantics id="S3.T2.8.8.8.m1.1a"><mo id="S3.T2.8.8.8.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.8.8.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.m1.1b"><ci id="S3.T2.8.8.8.m1.1.1.cmml" xref="S3.T2.8.8.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.9.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.9.9.9.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.9.9.9.m1.1"><semantics id="S3.T2.9.9.9.m1.1a"><mo id="S3.T2.9.9.9.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.9.9.m1.1b"><ci id="S3.T2.9.9.9.m1.1.1.cmml" xref="S3.T2.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.9.9.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.10.10.10.1" style="font-size:80%;">Corruption </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.10.10.10.m1.1"><semantics id="S3.T2.10.10.10.m1.1a"><mo id="S3.T2.10.10.10.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.10.10.10.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.10.10.10.m1.1b"><ci id="S3.T2.10.10.10.m1.1.1.cmml" xref="S3.T2.10.10.10.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.10.10.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.10.10.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.11.11.11" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.11.11.11.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.11.11.11.m1.1"><semantics id="S3.T2.11.11.11.m1.1a"><mo id="S3.T2.11.11.11.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.11.11.11.m1.1b"><ci id="S3.T2.11.11.11.m1.1.1.cmml" xref="S3.T2.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.11.11.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.12.12" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T2.12.12.12.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T2.12.12.12.m1.1"><semantics id="S3.T2.12.12.12.m1.1a"><mo id="S3.T2.12.12.12.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T2.12.12.12.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T2.12.12.12.m1.1b"><ci id="S3.T2.12.12.12.m1.1.1.cmml" xref="S3.T2.12.12.12.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.12.12.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.12.12.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T2.12.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.1.1" style="font-size:80%;">GPT-4o mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.2.1" style="font-size:80%;">69.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.3.1" style="font-size:80%;">51.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.4.1" style="font-size:80%;">73.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.12.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.5.1" style="font-size:80%;">52.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.6.1" style="font-size:80%;">69.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.7.1" style="font-size:80%;">38.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.8.1" style="font-size:80%;">55.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.12.14.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.9.1" style="font-size:80%;">52.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.10.1" style="font-size:80%;">52.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.11.1" style="font-size:80%;">23.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.12.1" style="font-size:80%;">45.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.12.14.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.14.13.1" style="font-size:80%;">80.28</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.1.1" style="font-size:80%;">Claude Haiku</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.2.1" style="font-size:80%;">50.08</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.3.1" style="font-size:80%;">25.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.4.1" style="font-size:80%;">50.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.5.1" style="font-size:80%;">82.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.6.1" style="font-size:80%;">68.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.7.1" style="font-size:80%;">40.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.8.1" style="font-size:80%;">58.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.15.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.9.1" style="font-size:80%;">47.67</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.10.1" style="font-size:80%;">41.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.11.1" style="font-size:80%;">19.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.12.1" style="font-size:80%;">48.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.15.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.15.13.1" style="font-size:80%;">77.42</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.16.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.16.2.1" style="font-size:80%;">78.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.16.3.1" style="font-size:80%;">70.75</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.16.4.1" style="font-size:80%;">90.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.16.5.1" style="font-size:80%;">27.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.16.6.1" style="font-size:80%;">85.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.16.7.1" style="font-size:80%;">73.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.16.8.1" style="font-size:80%;">86.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.16.9.1" style="font-size:80%;">17.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.16.10.1" style="font-size:80%;">58.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.16.11.1" style="font-size:80%;">41.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.16.12.1" style="font-size:80%;">69.95</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.16.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.16.13.1" style="font-size:80%;">48.98</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.17.1.1" style="font-size:80%;">Claude Sonnet</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.17.2.1" style="font-size:80%;">66.88</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.17.3.1" style="font-size:80%;">68.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.4.1" style="font-size:80%;">101.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.5.1" style="font-size:80%;">9.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.17.6.1" style="font-size:80%;">87.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.7.1" style="font-size:80%;">84.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.8.1" style="font-size:80%;">97.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.17.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.9.1" style="font-size:80%;">3.21</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.17.10.1" style="font-size:80%;">56.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.11.1" style="font-size:80%;">49.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.12.1" style="font-size:80%;">87.57</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.17.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.17.13.1" style="font-size:80%;">29.14</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S3.T2.12.18.1.1">\hdashline</span><span class="ltx_text" id="S3.T2.12.18.1.2" style="font-size:80%;">[0.5pt/2pt]
LLaVA-NeXT-7B</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.2.1" style="font-size:80%;">79.45</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.3.1" style="font-size:80%;">28.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.4.1" style="font-size:80%;">36.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.5.1" style="font-size:80%;">85.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.6.1" style="font-size:80%;">53.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.7.1" style="font-size:80%;">10.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.8.1" style="font-size:80%;">18.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.9.1" style="font-size:80%;">87.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.10.1" style="font-size:80%;">35.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.11.1" style="font-size:80%;">19.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.12.1" style="font-size:80%;">54.97</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.18.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.18.13.1" style="font-size:80%;">84.19</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.1.1" style="font-size:80%;">LLaVA-NeXT-13B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.2.1" style="font-size:80%;">81.02</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.3.1" style="font-size:80%;">37.61</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.4.1" style="font-size:80%;">46.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.5.1" style="font-size:80%;">74.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.6.1" style="font-size:80%;">57.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.7.1" style="font-size:80%;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.8.1" style="font-size:80%;">19.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.19.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.9.1" style="font-size:80%;">86.84</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.10.1" style="font-size:80%;">36.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.11.1" style="font-size:80%;">20.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.12.1" style="font-size:80%;">56.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.19.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.19.13.1" style="font-size:80%;">80.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.20.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.1.1" style="font-size:80%;">LLaVA-NeXT-34B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.20.2.1" style="font-size:80%;">82.96</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.3.1" style="font-size:80%;">42.87</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.4.1" style="font-size:80%;">51.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.20.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.5.1" style="font-size:80%;">67.56</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.6.1" style="font-size:80%;">64.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.7.1" style="font-size:80%;">15.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.8.1" style="font-size:80%;">23.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.20.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.9.1" style="font-size:80%;">82.69</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.10.1" style="font-size:80%;">34.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.11.1" style="font-size:80%;">21.70</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.12.1" style="font-size:80%;">61.98</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.20.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.20.13.1" style="font-size:80%;">67.64</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.21.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.1.1" style="font-size:80%;">Phi3.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.2.1" style="font-size:80%;">75.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.3.1" style="font-size:80%;">35.23</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.4.1" style="font-size:80%;">46.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.21.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.5.1" style="font-size:80%;">74.05</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.6.1" style="font-size:80%;">78.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.7.1" style="font-size:80%;">50.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.8.1" style="font-size:80%;">64.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.21.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.9.1" style="font-size:80%;">40.51</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.10.1" style="font-size:80%;">43.10</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.11.1" style="font-size:80%;">22.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.12.1" style="font-size:80%;">51.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.21.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.21.13.1" style="font-size:80%;">80.20</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T2.12.22.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.1.1" style="font-size:80%;">Molmo-7B-D</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.2.1" style="font-size:80%;">76.33</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.3.1" style="font-size:80%;">49.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.4.1" style="font-size:80%;">64.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.22.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.5.1" style="font-size:80%;">59.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.6.1" style="font-size:80%;">74.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.7.1" style="font-size:80%;">38.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.8.1" style="font-size:80%;">51.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T2.12.22.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.9.1" style="font-size:80%;">57.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.10.1" style="font-size:80%;">44.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.11.1" style="font-size:80%;">32.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T2.12.22.12.1" style="font-size:80%;">73.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.12.22.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.22.13.1" style="font-size:80%;">60.63</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.12.23">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T2.12.23.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.23.2.1" style="font-size:80%;">85.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.3.1" style="font-size:80%;">50.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.4.1" style="font-size:80%;">59.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.12.23.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.5.1" style="font-size:80%;">29.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.12.23.6.1" style="font-size:80%;">90.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.7.1" style="font-size:80%;">57.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.8.1" style="font-size:80%;">63.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S3.T2.12.23.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.9.1" style="font-size:80%;">37.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.10.1" style="font-size:80%;">55.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.11.1" style="font-size:80%;">28.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.12.1" style="font-size:80%;">52.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T2.12.23.13" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T2.12.23.13.1" style="font-size:80%;">70.23</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of vision-language models' performance under text corruption, focusing on four key metrics: Base Accuracy (performance with original text), Corruption Accuracy (performance with corrupted text), Normalized Corruption Accuracy (a relative measure of performance drop due to corruption), and Text Preference Ratio (the tendency of models to trust text over images in case of discrepancies).  The best and second-best performing models are highlighted for each metric and dataset. The appendix contains more detailed results including performance on additional text variations (matched text and irrelevant text).
> <details>
> <summary>read the caption</summary>
> Table 2: Performance (%) reported as Base Accuracy, Corruption Accuracy, Normalized Corruption Accuracy (Norm) and Text Preference Ratio (TPR) under corruption. Bold: best performance; underline: second best. Full results under all text variations are in the Appendix.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.4">
<tr class="ltx_tr" id="S3.T3.4.5">
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T3.4.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S3.T3.4.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.5.2.1" style="font-size:80%;">Brand Detection</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.4.5.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T3.1.1.1.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T3.2.2.2.1" style="font-size:80%;">Corruption </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.m1.1"><semantics id="S3.T3.2.2.2.m1.1a"><mo id="S3.T3.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.m1.1b"><ci id="S3.T3.2.2.2.m1.1.1.cmml" xref="S3.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T3.3.3.3.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.3.3.3.m1.1"><semantics id="S3.T3.3.3.3.m1.1a"><mo id="S3.T3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.m1.1b"><ci id="S3.T3.3.3.3.m1.1.1.cmml" xref="S3.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T3.4.4.4.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.4.4.4.m1.1"><semantics id="S3.T3.4.4.4.m1.1a"><mo id="S3.T3.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T3.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.m1.1b"><ci id="S3.T3.4.4.4.m1.1.1.cmml" xref="S3.T3.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T3.4.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.6.1.1" style="font-size:80%;">GPT-4o mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.6.2.1" style="font-size:80%;">88.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.6.3.1" style="font-size:80%;">84.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.6.4.1" style="font-size:80%;">95.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.4.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.6.5.1" style="font-size:80%;">7.48</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.7.1.1" style="font-size:80%;">Claude Haiku</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.7.2.1" style="font-size:80%;">84.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.7.3.1" style="font-size:80%;">78.72</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.7.4.1" style="font-size:80%;">93.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.7.5.1" style="font-size:80%;">6.44</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.8.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.8.2.1" style="font-size:80%;">88.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.8.3.1" style="font-size:80%;">89.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.4.8.4.1" style="font-size:80%;">101.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.8.5.1" style="font-size:80%;">0.83</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.9.1.1" style="font-size:80%;">Claude Sonnet</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.4.9.2.1" style="font-size:80%;">90.20</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.4.9.3.1" style="font-size:80%;">90.24</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.9.4.1" style="font-size:80%;">100.04</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.4.9.5.1" style="font-size:80%;">0.96</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="S3.T3.4.10.1.1">\hdashline</span><span class="ltx_text" id="S3.T3.4.10.1.2" style="font-size:80%;">[0.5pt/2pt]
LLaVA-NeXT-7B</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.10.2.1" style="font-size:80%;">78.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.10.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.10.3.1" style="font-size:80%;">55.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.10.4.1" style="font-size:80%;">70.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.10.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.10.5.1" style="font-size:80%;">59.17</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.11.1.1" style="font-size:80%;">LLaVA-NeXT-13B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.11.2.1" style="font-size:80%;">83.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.11.3.1" style="font-size:80%;">60.00</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.11.4.1" style="font-size:80%;">72.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.11.5.1" style="font-size:80%;">40.65</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.12.1.1" style="font-size:80%;">LLaVA-NeXT-34B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.12.2.1" style="font-size:80%;">66.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.12.3.1" style="font-size:80%;">53.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.12.4.1" style="font-size:80%;">80.77</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.12.5.1" style="font-size:80%;">23.49</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.13.1.1" style="font-size:80%;">Phi3.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.13.2.1" style="font-size:80%;">84.40</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.13.3.1" style="font-size:80%;">60.68</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.13.4.1" style="font-size:80%;">71.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.13.5.1" style="font-size:80%;">50.45</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T3.4.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.14.1.1" style="font-size:80%;">Molmo-7B-D</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.14.2.1" style="font-size:80%;">87.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.14.3.1" style="font-size:80%;">41.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.14.4.1" style="font-size:80%;">47.39</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.4.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.14.5.1" style="font-size:80%;">60.40</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.4.15">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S3.T3.4.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.15.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.4.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T3.4.15.2.1" style="font-size:80%;">89.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.4.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.15.3.1" style="font-size:80%;">86.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.4.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.15.4.1" style="font-size:80%;">96.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S3.T3.4.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T3.4.15.5.1" style="font-size:80%;">2.99</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various vision-language models (VLMs) on a brand detection task, focusing on their robustness to text corruption.  It shows the Base Accuracy (performance with no text variations), Corruption Accuracy (performance when the text is corrupted or misleading), Normalized Corruption Accuracy (Corruption Accuracy relative to the Base Accuracy), and Text Preference Ratio (TPR, indicating the model's tendency to trust textual data over visual data).  The best and second-best performing models for each metric are highlighted in bold and underlined, respectively. This helps to understand the extent to which the text biases impact the models' performance on a real-world multi-modal task involving inconsistencies.
> <details>
> <summary>read the caption</summary>
> Table 3: Performance on the Brand Detection dataset reported in Base Accuracy, Corruption Accuracy, Normalized Corruption Accuracy (Norm), and Text Preference Ratio (TPR). Bold: best performance; underline: second best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.5">
<tr class="ltx_tr" id="S4.T4.5.6">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T4.5.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T4.5.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.6.2.1" style="font-size:80%;">VQAv2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.5.6.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:80%;">Match </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:80%;">Corruption </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.4.4.4.1" style="font-size:80%;">Irrelevance </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mo id="S4.T4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><ci id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T4.5.5.5.1" style="font-size:80%;">Macro </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.5.5.5.m1.1"><semantics id="S4.T4.5.5.5.m1.1a"><mo id="S4.T4.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.m1.1b"><ci id="S4.T4.5.5.5.m1.1.1.cmml" xref="S4.T4.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.5.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.1.1" style="font-size:80%;">LLaVA-NeXT-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.2.1" style="font-size:80%;">79.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.3.1" style="font-size:80%;">92.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.4.1" style="font-size:80%;">28.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.7.5.1" style="font-size:80%;">79.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.7.6.1" style="font-size:80%;">66.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.1.1" style="font-size:80%;">Instruction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.2.1" style="font-size:80%;">79.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.3.1" style="font-size:80%;">92.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.4.1" style="font-size:80%;">34.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.5.1" style="font-size:80%;">78.15</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.8.6.1" style="font-size:80%;">68.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.1.1" style="font-size:80%;">SFT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.2.1" style="font-size:80%;">77.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.3.1" style="font-size:80%;">87.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.9.4.1" style="font-size:80%;">71.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.9.5.1" style="font-size:80%;">77.32</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.9.6.1" style="font-size:80%;">78.71</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T4.5.10.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.10.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.10.2.1" style="font-size:80%;">85.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.10.3.1" style="font-size:80%;">92.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.10.4.1" style="font-size:80%;">50.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.10.5.1" style="font-size:80%;">83.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.5.10.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.10.6.1" style="font-size:80%;">75.75</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.11.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.1.1" style="font-size:80%;">Instruction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.11.2.1" style="font-size:80%;">85.51</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.3.1" style="font-size:80%;">92.62</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.4.1" style="font-size:80%;">54.78</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.5.1" style="font-size:80%;">82.82</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.11.6.1" style="font-size:80%;">76.74</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.12">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T4.5.12.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.1.1" style="font-size:80%;">SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.2.1" style="font-size:80%;">84.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T4.5.12.3.1" style="font-size:80%;">87.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.4.1" style="font-size:80%;">82.72</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.5.1" style="font-size:80%;">84.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T4.5.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.6.1" style="font-size:80%;">84.58</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of several vision-language models (VLMs) on in-distribution data.  It compares the original, unaltered model performance with performance after adding an instruction to the prompt and performance after fine-tuning the model.  The comparison helps to evaluate the effectiveness of both instruction-based methods and fine-tuning in improving the model's robustness to text bias.
> <details>
> <summary>read the caption</summary>
> Table 4: In-distribution performance comparison between original models, instruction and fine-tuned models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.6">
<tr class="ltx_tr" id="S4.T5.6.7">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T5.6.7.1" style="padding-left:2.5pt;padding-right:2.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T5.6.7.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S4.T5.6.7.2.1" style="font-size:80%;"></span><span class="ltx_text ltx_font_bold" id="S4.T5.6.7.2.2" style="font-size:80%;">DocVQA</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T5.6.7.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.7.3.1" style="font-size:80%;">MathVista</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T5.6.7.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.7.4.1" style="font-size:80%;">Brand Detection</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.6.6.7" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.6.7.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.1.1.1" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.2" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S4.T5.2.2.2.1" style="font-size:80%;">Macro </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.3" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S4.T5.3.3.3.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.4.4" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S4.T5.4.4.4.1" style="font-size:80%;">Macro </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.m1.1a"><mo id="S4.T5.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.m1.1b"><ci id="S4.T5.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.5.5" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S4.T5.5.5.5.1" style="font-size:80%;">Base </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.5.5.5.m1.1"><semantics id="S4.T5.5.5.5.m1.1a"><mo id="S4.T5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.5.5.5.m1.1b"><ci id="S4.T5.5.5.5.m1.1.1.cmml" xref="S4.T5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.5.5.5.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.6.6" style="padding-left:2.5pt;padding-right:2.5pt;">
<span class="ltx_text" id="S4.T5.6.6.6.1" style="font-size:80%;">Macro </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.6.6.6.m1.1"><semantics id="S4.T5.6.6.6.m1.1a"><mo id="S4.T5.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.6.6.6.m1.1b"><ci id="S4.T5.6.6.6.m1.1.1.cmml" xref="S4.T5.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.6.6.6.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.6.8.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.8.1.1" style="font-size:80%;">LLaVA-NeXT-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.8.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.8.2.1" style="font-size:80%;">53.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.8.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.8.3.1" style="font-size:80%;">51.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.8.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.8.4.1" style="font-size:80%;">35.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.8.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.8.5.1" style="font-size:80%;">41.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.8.6" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.8.6.1" style="font-size:80%;">78.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.8.7" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.8.7.1" style="font-size:80%;">46.44</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.6.9.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.9.1.1" style="font-size:80%;">Instruction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.9.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.9.2.1" style="font-size:80%;">53.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.6.9.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.9.3.1" style="font-size:80%;">49.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.9.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.9.4.1" style="font-size:80%;">35.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.6.9.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.9.5.1" style="font-size:80%;">41.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.9.6" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.9.6.1" style="font-size:80%;">78.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.9.7" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.9.7.1" style="font-size:80%;">47.36</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.6.10.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.10.1.1" style="font-size:80%;">SFT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.10.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.10.2.1" style="font-size:80%;">52.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.6.10.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.10.3.1" style="font-size:80%;">56.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.10.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.10.4.1" style="font-size:80%;">35.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.6.10.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.10.5.1" style="font-size:80%;">41.63</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.10.6" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.10.6.1" style="font-size:80%;">81.36</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.10.7" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.10.7.1" style="font-size:80%;">72.29</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.6.11.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.11.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.11.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.11.2.1" style="font-size:80%;">90.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.11.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.11.3.1" style="font-size:80%;">80.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.11.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.11.4.1" style="font-size:80%;">55.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.6.11.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.11.5.1" style="font-size:80%;">53.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.11.6" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.11.6.1" style="font-size:80%;">89.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.6.11.7" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.11.7.1" style="font-size:80%;">81.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.6.12.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.12.1.1" style="font-size:80%;">Instruction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.12.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.12.2.1" style="font-size:80%;">90.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.6.12.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.12.3.1" style="font-size:80%;">80.77</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.12.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.12.4.1" style="font-size:80%;">55.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.6.12.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.12.5.1" style="font-size:80%;">54.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.12.6" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.12.6.1" style="font-size:80%;">89.68</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.6.12.7" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.12.7.1" style="font-size:80%;">84.48</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.6.13">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="S4.T5.6.13.1" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.13.1.1" style="font-size:80%;">SFT</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.6.13.2" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.13.2.1" style="font-size:80%;">90.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.6.13.3" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.13.3.1" style="font-size:80%;">88.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.6.13.4" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.13.4.1" style="font-size:80%;">58.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T5.6.13.5" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.13.5.1" style="font-size:80%;">57.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.6.13.6" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text" id="S4.T5.6.13.6.1" style="font-size:80%;">89.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T5.6.13.7" style="padding-left:2.5pt;padding-right:2.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.6.13.7.1" style="font-size:80%;">88.75</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of model performance across three different datasets: DocVQA, MathVista, and Brand Recognition.  For each dataset, it shows the base accuracy (performance on original, unperturbed data), and macro accuracy (the average accuracy across match, corruption, and irrelevant text variations).  It also includes the results after applying instruction-based prompting and supervised fine-tuning to address the text bias identified in the study.  The appendix of the paper contains more detailed results for the various text conditions.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance comparison with Base and Macro accuracy based on DocVQA, MathVista, and Brand Recognition. See full results under different text conditions in Appendix.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.1">
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.1.1.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="400" id="A2.T6.1.1.1.1.g1" src="extracted/6247452/figures/examples/164969000.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T6.1.1.2" style="width:142.3pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.2.1">
<span class="ltx_p" id="A2.T6.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.2.1.1.1">Q:</span> What green veggie is on the pizza</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T6.1.1.3" style="width:142.3pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.1.3.1">
<span class="ltx_p" id="A2.T6.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.3.1.1.1">GT:</span> pepper</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.1.2.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.1.1">
<span class="ltx_p" id="A2.T6.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.2.1.1.1.1">Match:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T6.1.2.2" style="width:142.3pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.2.2.1">
<span class="ltx_p" id="A2.T6.1.2.2.1.1">The pizza has green pepper slices on one of its sections.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.1.3.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.1.1">
<span class="ltx_p" id="A2.T6.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.3.1.1.1.1">Corruption:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T6.1.3.2" style="width:142.3pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.3.2.1">
<span class="ltx_p" id="A2.T6.1.3.2.1.1">The pizza has green broccoli florets on one of its sections.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T6.1.4.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.1.1">
<span class="ltx_p" id="A2.T6.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.4.1.1.1.1">Irrelevance:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r ltx_border_t" colspan="2" id="A2.T6.1.4.2" style="width:142.3pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T6.1.4.2.1">
<span class="ltx_p" id="A2.T6.1.4.2.1.1">Beckham obtained his early education at Roseland Academy in Bardstown.
In 1881 he served as a page in the Kentucky House of Representatives at the age of 12.
Later, he enrolled at Central University ( now Eastern Kentucky University ) in Richmond, Kentucky but was forced to quit school at the age of 17 to support his widowed mother.
Two years later, he became principal of Bardstown public schools, serving from 1888 to 1893. Concurrently, he studied law at the University of Kentucky, where he earned his law degree in 1889.
He was admitted to the bar and commenced practice in Bardstown in 1893.
He also served as president of the Young Democrats ’ Club of Nelson County .</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents examples of how different types of text inputs affect the performance of vision-language models (VLMs) in a question-answering task.  It shows how the model responds when the text is consistent with the image ('Match'), when the text contradicts the image ('Corruption'), and when the text is irrelevant to the image ('Irrelevance'). This helps illustrate the 'blind faith in text' phenomenon, where the model prioritizes textual information, even when it's inaccurate or contradictory to the visual evidence.
> <details>
> <summary>read the caption</summary>
> Table 6: Illustration of matching, corrupted, and irrelevant information in a sample from VQAv2.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.1">
<tr class="ltx_tr" id="A2.T7.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.1.1.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_portrait" height="1157" id="A2.T7.1.1.1.1.g1" src="extracted/6247452/figures/examples/docvqa_49177.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T7.1.1.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.2.1">
<span class="ltx_p" id="A2.T7.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.2.1.1.1">Q:</span> What time is ‘question and answers ‘session?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T7.1.1.3" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.1.3.1">
<span class="ltx_p" id="A2.T7.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.3.1.1.1">GT:</span> 12:25 to 12:58 p.m.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.1.2.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.2.1.1">
<span class="ltx_p" id="A2.T7.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.2.1.1.1.1">Match:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T7.1.2.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.2.2.1">
<span class="ltx_p" id="A2.T7.1.2.2.1.1">The ’Questions and Answers’ session is scheduled from 12:25 to 12:58 p.m.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.1.3.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.3.1.1">
<span class="ltx_p" id="A2.T7.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.3.1.1.1.1">Corruption:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T7.1.3.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.3.2.1">
<span class="ltx_p" id="A2.T7.1.3.2.1.1">The ’Questions and Answers’ session is scheduled from 2:00 to 5:00 p.m.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.1.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T7.1.4.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.4.1.1">
<span class="ltx_p" id="A2.T7.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T7.1.4.1.1.1.1">Irrelevance:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r ltx_border_t" colspan="2" id="A2.T7.1.4.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T7.1.4.2.1">
<span class="ltx_p" id="A2.T7.1.4.2.1.1">The Americans knew of the approach of the Japanese forces from reports from native scouts and their own patrols , but did not know exactly where or when they would attack . The ridge around which Edson deployed his men consisted of three distinct hillocks . At the southern tip and surrounded on three sides by thick jungle was Hill 80 ( so named because it rose 80 ft ( 24 m ) above sea level ) . Six hundred yards north was Hill 123 ( 123 ft ( 37 m ) high ) , the dominant feature on the ridge . The northernmost hillock was unnamed and about 60 ft ( 18 m ) high . Edson placed the five companies from the Raider battalion on the west side of the ridge and the three Parachute battalion companies on the east side , holding positions in depth from Hill 80 back to Hill 123 . Two of the five Raider companies , B̈ änd C̈ ,̈ held a line between the ridge , a small , swampy lagoon , and the Lunga River . Machine @-@ gun teams from Ë C̈ompany , the heavy weapons company , were scattered throughout the defenses . Edson placed his command post on Hill 123 .</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases three variations of text alongside an image and question from the DocVQA dataset.  The 'Match' variation provides text that correctly answers the question when the image is unavailable. 'Corruption' offers text that is relevant to the question but provides an incorrect answer. Finally, 'Irrelevance' uses completely unrelated text, demonstrating how the model handles irrelevant or misleading information.
> <details>
> <summary>read the caption</summary>
> Table 7: Illustration of matching, corrupted, and irrelevant information in a sample from DocVQA.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T8.1">
<tr class="ltx_tr" id="A2.T8.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.1.1.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="449" id="A2.T8.1.1.1.1.g1" src="extracted/6247452/figures/examples/mathvista_img2.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T8.1.1.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.2.1">
<span class="ltx_p" id="A2.T8.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.2.1.1.1">Q:</span> Hint: Please answer the question requiring an integer answer and provide the final value, e.g., 1, 2, 3, at the end.
Question: what is the total volume of the measuring cup? (Unit: g)</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T8.1.1.3" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.1.3.1">
<span class="ltx_p" id="A2.T8.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.1.1.3.1.1.1">GT:</span> 1000</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.1.2.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.2.1.1">
<span class="ltx_p" id="A2.T8.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.1.2.1.1.1.1">Match:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T8.1.2.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.2.2.1">
<span class="ltx_p" id="A2.T8.1.2.2.1.1">The measuring cup has markings up to 1000 grams, indicating its total volume capacity.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.1.3.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.3.1.1">
<span class="ltx_p" id="A2.T8.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.1.3.1.1.1.1">Corruption:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T8.1.3.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.3.2.1">
<span class="ltx_p" id="A2.T8.1.3.2.1.1">The measuring cup has markings up to 500 grams, indicating its total volume capacity.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T8.1.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T8.1.4.1" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.4.1.1">
<span class="ltx_p" id="A2.T8.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T8.1.4.1.1.1.1">Irrelevance:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r ltx_border_t" colspan="2" id="A2.T8.1.4.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T8.1.4.2.1">
<span class="ltx_p" id="A2.T8.1.4.2.1.1">The windmill at Thelnetham was built by millwright George Bloomfield for William Button in 1819 . It replaced a post mill which had been moved to Sandy Lane , Diss , Norfolk the previous year . The mill was set to work on Christmas Day 1819 . In 1832 , the mill was modernised by the fitting of a cast @-@ iron windshaft , Patent sails and a fantail . The new windshaft was fitted on 16 July 1832 . It was made by J Aickman , the Kings Lynn millwright , and weighs 1 0̆0be tons ( 1 @,@ 780 kg ) . A new stock was fitted in September 1836 . William Button died on 11 February 1837 . The mill passed jointly to his widow Rebecca and their son Richard . Richard Button worked the mill until 1860 , at which date it was conveyed to his sons Richard and William , who sold it to Richard Peverett from Kenninghall , Norfolk in 1862.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of different text variations used in the MathVista dataset.  It demonstrates how the same image and question can be paired with various textual descriptions: a correct description (Match), an incorrect yet relevant description (Corruption), and an irrelevant description (Irrelevance).  The goal is to test how vision-language models handle inconsistencies between visual information and text, showing their reliability and robustness when textual data is inaccurate or unrelated.
> <details>
> <summary>read the caption</summary>
> Table 8: Illustration of matching, corrupted, and irrelevant information in a sample from MathVista.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T9.1">
<tr class="ltx_tr" id="A2.T9.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T9.1.1.1" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_landscape" height="337" id="A2.T9.1.1.1.1.g1" src="extracted/6247452/figures/examples/adobe.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T9.1.1.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.1.2.1">
<span class="ltx_p" id="A2.T9.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.2.1.1.1">Q:</span> Define targeted brand as a brand that a webpage belongs to.</span>
<span class="ltx_p ltx_align_center" id="A2.T9.1.1.2.1.2">Given the screenshot of a webpage P as the primary information for identifying the target brand and the text as additional reference, determine what the targeted brand of P is. The text can be HTML from the webpage or something irrelevant. Please be careful with the text, as it may contain noise or adversarial attacks. You must output the targeted brand of P even if you are not sure about it. Only output the brand name without any additional information.</span>
<span class="ltx_p ltx_align_center" id="A2.T9.1.1.2.1.3">Input information:
–HTML:
”html”
Answer:</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="A2.T9.1.1.3" style="width:113.8pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.1.3.1">
<span class="ltx_p" id="A2.T9.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.3.1.1.1">GT:</span> Adobe</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T9.1.2.1" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.2.1.1">
<span class="ltx_p" id="A2.T9.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.2.1.1.1.1">Match:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T9.1.2.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.2.2.1">
<span class="ltx_p" id="A2.T9.1.2.2.1.1">Adobe® PDF Reader® Xl This File is Protected by Adobe® Security LogIn with your email and password to open this document.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A2.T9.1.3.1" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.3.1.1">
<span class="ltx_p" id="A2.T9.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.3.1.1.1.1">Corruption:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" colspan="2" id="A2.T9.1.3.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.3.2.1">
<span class="ltx_p" id="A2.T9.1.3.2.1.1">The official webpage of MobrisPremier. The official webpage of MobrisPremier. Adobe® PDF Reader® Xl This File is Protected by Adobe® Security LogIn with your email and password to open this document.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T9.1.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.T9.1.4.1" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.4.1.1">
<span class="ltx_p" id="A2.T9.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.4.1.1.1.1">Irrelevance:</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_r ltx_border_t" colspan="2" id="A2.T9.1.4.2" style="width:170.7pt;padding-top:1.5pt;padding-bottom:1.5pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T9.1.4.2.1">
<span class="ltx_p" id="A2.T9.1.4.2.1.1">Ayola began her career in the theatre , performing in a number of Shakespearean plays including Twelfth Night , A Midsummer Night ’s Dream , The Tempest , The Merchant of Venice and Macbeth . She states of this : ” Shakespeare keeps coming my way . I love the fact that I get to play people who are much more articulate than I ’ll ever be ” . Ayola has performed in Twelfth Night in the lead roles of both Olivia and Viola . She explains : ” The role of Viola didn ’t sit that well with me for some reason but Olivia makes more sense . ” She has also appeared in modern performances , assuming the title role of Dido , Queen of Carthage at the Globe Theatre in London in 2003 , which she described as ” a dream of a part ” . She has deemed her dream role to be that of Isabella in Measure for Measure , as she once lost out on the part and would like to prove herself capable of playing it.</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases examples of three types of textual variations used in the Brand Recognition task.  These variations include 'matching' text that accurately reflects the brand shown in the accompanying image, 'corrupted' text that includes misleading or incorrect brand information, and 'irrelevant' text unrelated to the brand or image.  The goal is to demonstrate how well different vision-language models handle inconsistencies between visual and textual data.  Each row displays an image, the question, the ground truth, the matching text, the corrupted text, and the irrelevant text.
> <details>
> <summary>read the caption</summary>
> Table 9: Illustration of matching, corrupted, and irrelevant information in a sample from Brand Recognition.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.2">
<tr class="ltx_tr" id="A2.T10.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T10.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T10.2.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.2.1.2"><span class="ltx_text ltx_font_bold" id="A2.T10.2.1.2.1">Response Formatting Prompts</span></td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T10.2.2.1">VQAv2 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02199v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.2.2.2">Please only output the answer with a single word or phrase.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T10.2.3.1">DocVQA <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02199v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="A2.T10.2.3.2">Please only output the answer directly.</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T10.2.4.1">MathVista <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02199v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left" id="A2.T10.2.4.2">–</td>
</tr>
<tr class="ltx_tr" id="A2.T10.2.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A2.T10.2.5.1">Brand Recognition <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.02199v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T10.2.5.2">Only output the brand name without any additional information.</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the specific instructions given to the models for formatting their responses during the evaluation process, categorized by the dataset used.  It shows how the output format requirements were tailored to suit the characteristics of each dataset, thus ensuring consistent and comparable results.
> <details>
> <summary>read the caption</summary>
> Table 10: Response formatting prompts used for evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.F9.sf1.10">
<tr class="ltx_tr" id="A3.F9.sf1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.F9.sf1.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.2.2.3.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.F9.sf1.1.1.1.1" style="font-size:80%;">Base</span><span class="ltx_text" id="A3.F9.sf1.1.1.1.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.1.1.1.m1.1"><semantics id="A3.F9.sf1.1.1.1.m1.1a"><mo id="A3.F9.sf1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.1.1.1.m1.1b"><ci id="A3.F9.sf1.1.1.1.m1.1.1.cmml" xref="A3.F9.sf1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.F9.sf1.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.2.2.4.1" style="font-size:80%;">Match</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.F9.sf1.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.2.2.5.1" style="font-size:80%;">Corruption</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.F9.sf1.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.2.2.6.1" style="font-size:80%;">Irrelevance</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.F9.sf1.2.2.2.1" style="font-size:80%;">Macro</span><span class="ltx_text" id="A3.F9.sf1.2.2.2.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.2.2.2.m1.1"><semantics id="A3.F9.sf1.2.2.2.m1.1a"><mo id="A3.F9.sf1.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.2.2.2.m1.1b"><ci id="A3.F9.sf1.2.2.2.m1.1.1.cmml" xref="A3.F9.sf1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.10">
<td class="ltx_td ltx_border_r" id="A3.F9.sf1.10.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A3.F9.sf1.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.3.3.1.1" style="font-size:80%;">Accuracy </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.3.3.1.m1.1"><semantics id="A3.F9.sf1.3.3.1.m1.1a"><mo id="A3.F9.sf1.3.3.1.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.3.3.1.m1.1b"><ci id="A3.F9.sf1.3.3.1.m1.1.1.cmml" xref="A3.F9.sf1.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.3.3.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.4.4.2.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.4.4.2.m1.1"><semantics id="A3.F9.sf1.4.4.2.m1.1a"><mo id="A3.F9.sf1.4.4.2.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.4.4.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.4.4.2.m1.1b"><ci id="A3.F9.sf1.4.4.2.m1.1.1.cmml" xref="A3.F9.sf1.4.4.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.4.4.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.4.4.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.10.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.10.11.1" style="font-size:80%;">TPR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.5.5.3.1" style="font-size:80%;">Accuracy </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.5.5.3.m1.1"><semantics id="A3.F9.sf1.5.5.3.m1.1a"><mo id="A3.F9.sf1.5.5.3.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.5.5.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.5.5.3.m1.1b"><ci id="A3.F9.sf1.5.5.3.m1.1.1.cmml" xref="A3.F9.sf1.5.5.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.5.5.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.5.5.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.6.6.4.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.6.6.4.m1.1"><semantics id="A3.F9.sf1.6.6.4.m1.1a"><mo id="A3.F9.sf1.6.6.4.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.6.6.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.6.6.4.m1.1b"><ci id="A3.F9.sf1.6.6.4.m1.1.1.cmml" xref="A3.F9.sf1.6.6.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.6.6.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.6.6.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.7.7.5.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.F9.sf1.7.7.5.m1.1"><semantics id="A3.F9.sf1.7.7.5.m1.1a"><mo id="A3.F9.sf1.7.7.5.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.7.7.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.7.7.5.m1.1b"><ci id="A3.F9.sf1.7.7.5.m1.1.1.cmml" xref="A3.F9.sf1.7.7.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.7.7.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.7.7.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.8.8.6.1" style="font-size:80%;">Accuracy </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.8.8.6.m1.1"><semantics id="A3.F9.sf1.8.8.6.m1.1a"><mo id="A3.F9.sf1.8.8.6.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.8.8.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.8.8.6.m1.1b"><ci id="A3.F9.sf1.8.8.6.m1.1.1.cmml" xref="A3.F9.sf1.8.8.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.8.8.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.8.8.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.9.9.7.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf1.9.9.7.m1.1"><semantics id="A3.F9.sf1.9.9.7.m1.1a"><mo id="A3.F9.sf1.9.9.7.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.9.9.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.9.9.7.m1.1b"><ci id="A3.F9.sf1.9.9.7.m1.1.1.cmml" xref="A3.F9.sf1.9.9.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.9.9.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.9.9.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.10.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf1.10.10.8.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.F9.sf1.10.10.8.m1.1"><semantics id="A3.F9.sf1.10.10.8.m1.1a"><mo id="A3.F9.sf1.10.10.8.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf1.10.10.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf1.10.10.8.m1.1b"><ci id="A3.F9.sf1.10.10.8.m1.1.1.cmml" xref="A3.F9.sf1.10.10.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf1.10.10.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf1.10.10.8.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td" id="A3.F9.sf1.10.10.12" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.F9.sf1.10.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.1.1" style="font-size:80%;">GPT-4o mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.10.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.2.1" style="font-size:80%;">69.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.10.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.3.1" style="font-size:80%;">87.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.10.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.11.4.1" style="font-size:80%;">125.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.10.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.5.1" style="font-size:80%;">89.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.10.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.6.1" style="font-size:80%;">51.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.10.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.7.1" style="font-size:80%;">73.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.10.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.8.1" style="font-size:80%;">52.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.10.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.9.1" style="font-size:80%;">72.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.10.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.11.10.1" style="font-size:80%;">103.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf1.10.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.11.1" style="font-size:80%;">3.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf1.10.11.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.11.12.1" style="font-size:80%;">70.38</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.1.1" style="font-size:80%;">Claude Haiku</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.2.1" style="font-size:80%;">51.02</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.3.1" style="font-size:80%;">82.81</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.12.4.1" style="font-size:80%;">162.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.5.1" style="font-size:80%;">86.74</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.6.1" style="font-size:80%;">26.33</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.7.1" style="font-size:80%;">51.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.8.1" style="font-size:80%;">82.71</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.9.1" style="font-size:80%;">51.10</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.10.1" style="font-size:80%;">100.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.12.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.11.1" style="font-size:80%;">13.95</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.12.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.12.12.1" style="font-size:80%;">53.41</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.2.1" style="font-size:80%;">78.39</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.3.1" style="font-size:80%;">89.27</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.4.1" style="font-size:80%;">113.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.5.1" style="font-size:80%;">69.03</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.13.6.1" style="font-size:80%;">70.75</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.13.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.13.7.1" style="font-size:80%;">90.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.13.8.1" style="font-size:80%;">27.09</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.9.1" style="font-size:80%;">78.82</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.13.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.10.1" style="font-size:80%;">100.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.13.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.13.11.1" style="font-size:80%;">1.56</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.13.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.13.12.1" style="font-size:80%;">79.61</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.14.1.1" style="font-size:80%;">Claude Sonnet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.14.2.1" style="font-size:80%;">66.88</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.14.3.1" style="font-size:80%;">77.85</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.14.4.1" style="font-size:80%;">116.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.14.5.1" style="font-size:80%;">49.86</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.14.6.1" style="font-size:80%;">68.17</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.14.7.1" style="font-size:80%;">101.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.14.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.14.8.1" style="font-size:80%;">9.58</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.14.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.14.9.1" style="font-size:80%;">70.89</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.14.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.14.10.1" style="font-size:80%;">106.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.14.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.14.11.1" style="font-size:80%;">1.38</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.14.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.14.12.1" style="font-size:80%;">72.30</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.F9.sf1.10.15.1.1">\hdashline</span><span class="ltx_text" id="A3.F9.sf1.10.15.1.2" style="font-size:80%;">[0.5pt/2pt]
LLaVA-NeXT-7B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.2.1" style="font-size:80%;">79.45</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.3.1" style="font-size:80%;">92.32</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.4.1" style="font-size:80%;">116.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.5.1" style="font-size:80%;">86.25</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.6.1" style="font-size:80%;">28.69</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.7.1" style="font-size:80%;">36.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.8.1" style="font-size:80%;">85.52</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.15.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.9.1" style="font-size:80%;">79.43</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.10.1" style="font-size:80%;">99.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.15.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.11.1" style="font-size:80%;">4.72</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.15.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.15.12.1" style="font-size:80%;">66.81</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.1.1" style="font-size:80%;">LLaVA-NeXT-13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.2.1" style="font-size:80%;">81.02</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.16.3.1" style="font-size:80%;">93.59</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.4.1" style="font-size:80%;">115.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.5.1" style="font-size:80%;">86.45</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.6.1" style="font-size:80%;">37.61</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.16.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.7.1" style="font-size:80%;">46.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.16.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.8.1" style="font-size:80%;">74.43</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.16.9.1" style="font-size:80%;">81.29</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.16.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.10.1" style="font-size:80%;">100.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.16.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.11.1" style="font-size:80%;">3.30</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.16.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.16.12.1" style="font-size:80%;">70.83</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.1.1" style="font-size:80%;">LLaVA-NeXT-34B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.17.2.1" style="font-size:80%;">82.96</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.17.3.1" style="font-size:80%;">93.07</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.4.1" style="font-size:80%;">112.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.5.1" style="font-size:80%;">79.10</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.6.1" style="font-size:80%;">42.87</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.7.1" style="font-size:80%;">51.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.17.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.8.1" style="font-size:80%;">67.56</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.17.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.9.1" style="font-size:80%;">79.64</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.17.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.10.1" style="font-size:80%;">95.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.17.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.11.1" style="font-size:80%;">2.70</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.17.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.17.12.1" style="font-size:80%;">71.86</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.1.1" style="font-size:80%;">Phi3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.2.1" style="font-size:80%;">75.65</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.3.1" style="font-size:80%;">91.23</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.4.1" style="font-size:80%;">120.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.5.1" style="font-size:80%;">79.51</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.6.1" style="font-size:80%;">35.23</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.7.1" style="font-size:80%;">46.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.18.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.8.1" style="font-size:80%;">74.05</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.9.1" style="font-size:80%;">74.87</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.18.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.10.1" style="font-size:80%;">98.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.18.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.11.1" style="font-size:80%;">2.25</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.18.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.18.12.1" style="font-size:80%;">67.11</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf1.10.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.1.1" style="font-size:80%;">Molmo-7B-D</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.2.1" style="font-size:80%;">76.33</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.3.1" style="font-size:80%;">88.57</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.19.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.4.1" style="font-size:80%;">116.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.5.1" style="font-size:80%;">88.32</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.19.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.6.1" style="font-size:80%;">49.29</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.19.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.7.1" style="font-size:80%;">64.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.19.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.8.1" style="font-size:80%;">59.40</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.19.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.9.1" style="font-size:80%;">76.50</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.19.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.10.1" style="font-size:80%;">100.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf1.10.19.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.11.1" style="font-size:80%;">9.36</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf1.10.19.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.19.12.1" style="font-size:80%;">71.45</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf1.10.20">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A3.F9.sf1.10.20.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf1.10.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.20.2.1" style="font-size:80%;">85.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf1.10.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.3.1" style="font-size:80%;">92.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf1.10.20.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.4.1" style="font-size:80%;">108.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf1.10.20.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.5.1" style="font-size:80%;">13.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf1.10.20.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.6.1" style="font-size:80%;">50.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf1.10.20.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.7.1" style="font-size:80%;">59.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf1.10.20.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.8.1" style="font-size:80%;">29.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf1.10.20.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.20.9.1" style="font-size:80%;">83.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf1.10.20.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf1.10.20.10.1" style="font-size:80%;">97.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf1.10.20.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf1.10.20.11.1" style="font-size:80%;">1.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf1.10.20.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf1.10.20.12.1" style="font-size:80%;">75.75</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of ten vision-language models across four distinct datasets (VQAv2, DocVQA, MathVista, and Brand Recognition).  For each dataset and model, the table shows the accuracy, normalized accuracy (to account for variations introduced by the text), and text preference ratio (TPR) under three different text conditions: matched text, corrupted text, and irrelevant text. The accuracy scores are broken down by text condition, showing how well each model performs when presented with consistent, misleading, and unrelated text. A macro-average accuracy is also provided, which serves as a more comprehensive measure of the overall performance that is comparable to the base accuracy.
> <details>
> <summary>read the caption</summary>
> Table 11: Performance in Accuracy, Normalized Accuracy (Norm) and Text Preference Ratio (TPR) across four datasets under three text variations: Match, Corruption, and Irrelevance. The Macro column represents the average of Match, Corruption, and Irrelevance Accuracy for each model, calculated to be comparable to the Base accuracy.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.F9.sf2.10">
<tr class="ltx_tr" id="A3.F9.sf2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.F9.sf2.2.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.2.2.3.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.F9.sf2.1.1.1.1" style="font-size:80%;">Base</span><span class="ltx_text" id="A3.F9.sf2.1.1.1.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.1.1.1.m1.1"><semantics id="A3.F9.sf2.1.1.1.m1.1a"><mo id="A3.F9.sf2.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.1.1.1.m1.1b"><ci id="A3.F9.sf2.1.1.1.m1.1.1.cmml" xref="A3.F9.sf2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.F9.sf2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.2.2.4.1" style="font-size:80%;">Match</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.F9.sf2.2.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.2.2.5.1" style="font-size:80%;">Corruption</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="A3.F9.sf2.2.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.2.2.6.1" style="font-size:80%;">Irrelevance</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="A3.F9.sf2.2.2.2.1" style="font-size:80%;">Macro</span><span class="ltx_text" id="A3.F9.sf2.2.2.2.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.2.2.2.m1.1"><semantics id="A3.F9.sf2.2.2.2.m1.1a"><mo id="A3.F9.sf2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.2.2.2.m1.1b"><ci id="A3.F9.sf2.2.2.2.m1.1.1.cmml" xref="A3.F9.sf2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.10">
<td class="ltx_td ltx_border_r" id="A3.F9.sf2.10.10.9" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A3.F9.sf2.10.10.10" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.3.3.1.1" style="font-size:80%;">Accuracy </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.3.3.1.m1.1"><semantics id="A3.F9.sf2.3.3.1.m1.1a"><mo id="A3.F9.sf2.3.3.1.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.3.3.1.m1.1b"><ci id="A3.F9.sf2.3.3.1.m1.1.1.cmml" xref="A3.F9.sf2.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.3.3.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.4.4.2.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.4.4.2.m1.1"><semantics id="A3.F9.sf2.4.4.2.m1.1a"><mo id="A3.F9.sf2.4.4.2.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.4.4.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.4.4.2.m1.1b"><ci id="A3.F9.sf2.4.4.2.m1.1.1.cmml" xref="A3.F9.sf2.4.4.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.4.4.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.4.4.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.10.10.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.10.11.1" style="font-size:80%;">TPR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.5.5.3.1" style="font-size:80%;">Accuracy </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.5.5.3.m1.1"><semantics id="A3.F9.sf2.5.5.3.m1.1a"><mo id="A3.F9.sf2.5.5.3.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.5.5.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.5.5.3.m1.1b"><ci id="A3.F9.sf2.5.5.3.m1.1.1.cmml" xref="A3.F9.sf2.5.5.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.5.5.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.5.5.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.6.6.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.6.6.4.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.6.6.4.m1.1"><semantics id="A3.F9.sf2.6.6.4.m1.1a"><mo id="A3.F9.sf2.6.6.4.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.6.6.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.6.6.4.m1.1b"><ci id="A3.F9.sf2.6.6.4.m1.1.1.cmml" xref="A3.F9.sf2.6.6.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.6.6.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.6.6.4.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.7.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.7.7.5.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.F9.sf2.7.7.5.m1.1"><semantics id="A3.F9.sf2.7.7.5.m1.1a"><mo id="A3.F9.sf2.7.7.5.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.7.7.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.7.7.5.m1.1b"><ci id="A3.F9.sf2.7.7.5.m1.1.1.cmml" xref="A3.F9.sf2.7.7.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.7.7.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.7.7.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.8.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.8.8.6.1" style="font-size:80%;">Accuracy </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.8.8.6.m1.1"><semantics id="A3.F9.sf2.8.8.6.m1.1a"><mo id="A3.F9.sf2.8.8.6.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.8.8.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.8.8.6.m1.1b"><ci id="A3.F9.sf2.8.8.6.m1.1.1.cmml" xref="A3.F9.sf2.8.8.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.8.8.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.8.8.6.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.9.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.9.9.7.1" style="font-size:80%;">Norm </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.F9.sf2.9.9.7.m1.1"><semantics id="A3.F9.sf2.9.9.7.m1.1a"><mo id="A3.F9.sf2.9.9.7.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.9.9.7.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.9.9.7.m1.1b"><ci id="A3.F9.sf2.9.9.7.m1.1.1.cmml" xref="A3.F9.sf2.9.9.7.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.9.9.7.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.9.9.7.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.10.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="A3.F9.sf2.10.10.8.1" style="font-size:80%;">TPR </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.F9.sf2.10.10.8.m1.1"><semantics id="A3.F9.sf2.10.10.8.m1.1a"><mo id="A3.F9.sf2.10.10.8.m1.1.1" mathsize="80%" stretchy="false" xref="A3.F9.sf2.10.10.8.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.F9.sf2.10.10.8.m1.1b"><ci id="A3.F9.sf2.10.10.8.m1.1.1.cmml" xref="A3.F9.sf2.10.10.8.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.F9.sf2.10.10.8.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.F9.sf2.10.10.8.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td" id="A3.F9.sf2.10.10.12" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A3.F9.sf2.10.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.1.1" style="font-size:80%;">GPT-4o mini</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.10.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.2.1" style="font-size:80%;">69.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.10.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.3.1" style="font-size:80%;">81.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.10.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.4.1" style="font-size:80%;">117.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.10.11.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.5.1" style="font-size:80%;">82.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.10.11.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.6.1" style="font-size:80%;">38.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.10.11.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.7.1" style="font-size:80%;">55.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.10.11.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.8.1" style="font-size:80%;">52.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.10.11.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.9.1" style="font-size:80%;">67.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.10.11.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.10.1" style="font-size:80%;">96.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.F9.sf2.10.11.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.11.1" style="font-size:80%;">0.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.F9.sf2.10.11.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.11.12.1" style="font-size:80%;">62.27</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.1.1" style="font-size:80%;">Claude Haiku</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.2.1" style="font-size:80%;">69.53</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.3.1" style="font-size:80%;">83.45</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.12.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.4.1" style="font-size:80%;">120.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.12.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.5.1" style="font-size:80%;">68.77</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.12.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.6.1" style="font-size:80%;">39.35</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.12.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.7.1" style="font-size:80%;">56.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.12.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.8.1" style="font-size:80%;">47.67</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.9.1" style="font-size:80%;">57.82</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.12.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.10.1" style="font-size:80%;">83.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.12.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.11.1" style="font-size:80%;">1.18</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.12.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.12.12.1" style="font-size:80%;">60.21</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.13.1.1" style="font-size:80%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.13.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.13.2.1" style="font-size:80%;">85.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.13.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.13.3.1" style="font-size:80%;">90.40</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.13.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.13.4.1" style="font-size:80%;">106.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.13.5.1" style="font-size:80%;">64.75</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.13.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.13.6.1" style="font-size:80%;">73.60</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.13.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.13.7.1" style="font-size:80%;">86.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.13.8.1" style="font-size:80%;">17.96</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.13.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.13.9.1" style="font-size:80%;">86.40</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.13.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.13.10.1" style="font-size:80%;">101.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.13.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.13.11.1" style="font-size:80%;">0.23</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.13.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.13.12.1" style="font-size:80%;">83.47</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.14.1.1" style="font-size:80%;">Claude Sonnet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.14.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.14.2.1" style="font-size:80%;">87.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.14.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.14.3.1" style="font-size:80%;">91.53</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.14.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.14.4.1" style="font-size:80%;">105.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.14.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.14.5.1" style="font-size:80%;">41.18</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.14.6.1" style="font-size:80%;">84.60</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.14.7.1" style="font-size:80%;">97.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.14.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.14.8.1" style="font-size:80%;">3.21</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.14.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.14.9.1" style="font-size:80%;">87.41</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.14.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.14.10.1" style="font-size:80%;">100.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.14.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.14.11.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.14.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.14.12.1" style="font-size:80%;">87.85</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_ERROR undefined" id="A3.F9.sf2.10.15.1.1">\hdashline</span><span class="ltx_text" id="A3.F9.sf2.10.15.1.2" style="font-size:80%;">[0.5pt/2pt]
LLaVA-NeXT-7B</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.15.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.2.1" style="font-size:80%;">53.60</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.15.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.3.1" style="font-size:80%;">90.80</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.15.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.15.4.1" style="font-size:80%;">169.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.5.1" style="font-size:80%;">86.92</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.15.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.6.1" style="font-size:80%;">10.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.7.1" style="font-size:80%;">18.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.8.1" style="font-size:80%;">87.77</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.15.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.9.1" style="font-size:80%;">52.40</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.15.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.10.1" style="font-size:80%;">97.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.15.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.11.1" style="font-size:80%;">0.71</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.15.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.15.12.1" style="font-size:80%;">51.07</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.1.1" style="font-size:80%;">LLaVA-NeXT-13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.16.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.2.1" style="font-size:80%;">57.70</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.3.1" style="font-size:80%;">90.40</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.16.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.16.4.1" style="font-size:80%;">156.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.16.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.5.1" style="font-size:80%;">87.82</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.16.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.6.1" style="font-size:80%;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.16.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.7.1" style="font-size:80%;">19.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.16.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.8.1" style="font-size:80%;">86.84</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.9.1" style="font-size:80%;">55.80</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.16.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.10.1" style="font-size:80%;">96.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.16.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.11.1" style="font-size:80%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.16.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.16.12.1" style="font-size:80%;">52.40</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.1.1" style="font-size:80%;">LLaVA-NeXT-34B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.17.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.2.1" style="font-size:80%;">64.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.17.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.3.1" style="font-size:80%;">87.80</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.4.1" style="font-size:80%;">137.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.17.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.5.1" style="font-size:80%;">84.62</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.17.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.6.1" style="font-size:80%;">15.10</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.7.1" style="font-size:80%;">23.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.17.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.8.1" style="font-size:80%;">82.69</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.17.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.9.1" style="font-size:80%;">62.70</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.17.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.10.1" style="font-size:80%;">97.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.17.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.11.1" style="font-size:80%;">0.13</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.17.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.17.12.1" style="font-size:80%;">55.20</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.1.1" style="font-size:80%;">Phi3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.18.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.2.1" style="font-size:80%;">78.20</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.18.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.18.3.1" style="font-size:80%;">92.40</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.18.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.4.1" style="font-size:80%;">118.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.5.1" style="font-size:80%;">58.01</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.6.1" style="font-size:80%;">50.50</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.18.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.7.1" style="font-size:80%;">64.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.18.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.8.1" style="font-size:80%;">40.51</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.9.1" style="font-size:80%;">77.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.18.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.10.1" style="font-size:80%;">98.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.18.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.18.11.1" style="font-size:80%;">0.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.18.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.18.12.1" style="font-size:80%;">73.30</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="A3.F9.sf2.10.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.1.1" style="font-size:80%;">Molmo-7B-D</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.19.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.2.1" style="font-size:80%;">74.00</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.19.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.3.1" style="font-size:80%;">90.30</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.19.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.4.1" style="font-size:80%;">122.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.5.1" style="font-size:80%;">87.54</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.19.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.6.1" style="font-size:80%;">38.40</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.19.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.7.1" style="font-size:80%;">51.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.19.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.8.1" style="font-size:80%;">57.20</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.19.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.9.1" style="font-size:80%;">74.70</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.19.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.F9.sf2.10.19.10.1" style="font-size:80%;">100.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A3.F9.sf2.10.19.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.11.1" style="font-size:80%;">0.37</span></td>
<td class="ltx_td ltx_align_center" id="A3.F9.sf2.10.19.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.19.12.1" style="font-size:80%;">67.80</span></td>
</tr>
<tr class="ltx_tr" id="A3.F9.sf2.10.20">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A3.F9.sf2.10.20.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf2.10.20.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.20.2.1" style="font-size:80%;">90.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf2.10.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.20.3.1" style="font-size:80%;">95.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf2.10.20.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.4.1" style="font-size:80%;">105.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf2.10.20.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.5.1" style="font-size:80%;">51.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf2.10.20.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.6.1" style="font-size:80%;">57.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf2.10.20.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.7.1" style="font-size:80%;">63.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf2.10.20.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.8.1" style="font-size:80%;">37.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf2.10.20.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A3.F9.sf2.10.20.9.1" style="font-size:80%;">89.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf2.10.20.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.10.1" style="font-size:80%;">99.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A3.F9.sf2.10.20.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.11.1" style="font-size:80%;">0.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A3.F9.sf2.10.20.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="A3.F9.sf2.10.20.12.1" style="font-size:80%;">80.83</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive evaluation of different methods for improving the robustness of vision-language models (VLMs) against inconsistencies between visual and textual data.  The evaluation focuses on four datasets, each with three types of text variations (Match, Corruption, Irrelevance), assessing each model's performance using Accuracy, Normalized Accuracy, and Text Preference Ratio (TPR). The Macro column provides an aggregated accuracy score across the three text variations, offering a performance metric comparable to the model's base accuracy (performance with only correct text). This allows for a direct comparison of the effectiveness of different methods in mitigating the effects of corrupted and irrelevant textual information on VLM accuracy.
> <details>
> <summary>read the caption</summary>
> Table 12: Performance of investigated solutions in Accuracy, Normalized Accuracy (Norm) and Text Preference Ratio (TPR) across four datasets under three text variations: Match, Corruption, and Irrelevance. The Macro column represents the average of Match, Corruption, and Irrelevance Accuracy for each model, calculated to be comparable to the Base accuracy.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02199/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02199/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}