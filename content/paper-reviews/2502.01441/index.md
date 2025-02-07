---
title: "Improved Training Technique for Latent Consistency Models"
summary: "Researchers significantly enhance latent consistency models' performance by introducing Cauchy loss, mitigating outlier effects, and employing novel training strategies, thus bridging the gap with dif..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Rutgers University",]
showSummary: true
date: 2025-02-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.01441 {{< /keyword >}}
{{< keyword icon="writer" >}} Quan Dao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.01441" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.01441" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.01441/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current generative models like diffusion models are excellent but computationally expensive. Consistency models are faster, but their performance in the high-dimensional latent space (crucial for applications like text-to-image generation) lags. This paper tackles this problem.  The authors found that latent data has many outliers which negatively impact the training of consistency models. 

The proposed solution uses a new loss function (Cauchy loss) to handle outliers effectively. They also introduce several techniques such as the use of diffusion loss in early training stages and optimal transport to improve training stability and efficiency.  These novel techniques significantly improve the performance of consistency models, making them closer to that of diffusion models.  The improved model is tested on several datasets, proving its efficacy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Cauchy loss effectively handles impulsive outliers in latent data, improving model robustness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Combining diffusion loss at early timesteps and optimal transport enhances training and reduces variance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Adaptive scaling and Non-scaling LayerNorm further optimize the training process, leading to superior performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it significantly improves the performance of latent consistency models, a new family of generative models.  **Addressing the limitations of current methods in handling high-dimensional latent data**, this work directly contributes to advancing the field of generative modeling by making latent consistency models more efficient and scalable for large-scale tasks.  **The proposed techniques are readily applicable to various applications**, including text-to-image and video generation, opening new avenues for research and development in these areas.

------
#### Visual Insights



![](https://arxiv.org/html/2502.01441/x1.png)

> 🔼 This figure uses box and whisker plots to compare the distribution of data and temporal difference (TD) values in pixel and latent spaces.  The left side shows the distribution of data values in each space, highlighting the presence of extreme outliers (marked in red) in the latent space. These outliers are much more pronounced in the latent space compared to the pixel space. The right side displays the distribution of TD values (calculated at one point in the training process, specifically timestep 21 of a total of 36). Again, the latent space shows a substantially higher concentration and magnitude of outliers in the TD values. The box and whisker plots clearly show that the range of TD values, the interquartile range, and the presence of extreme values differ greatly between the pixel and latent spaces. This difference helps explain why existing consistency training methods perform poorly in latent space due to the significant impact of these impulsive outliers on the loss function.
> <details>
> <summary>read the caption</summary>
> Figure 1: Box and Whisker Plot: Impulsive noise comparison between pixel and latent spaces. The right column shows the statistics of TD values at 21 discretization steps. Other discretization steps exhibit same behavior, where impulsive outliers are consistently present regardless of the total discretization steps. The blue boxes represent interquartile ranges of the data, while the green and orange dashed lines indicate inner and outer fences, respectively. Outliers are marked with red dots.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T1.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.5.1.1">
<td class="ltx_td ltx_align_center" id="S5.T1.5.1.1.1">
<span class="ltx_inline-logical-block ltx_minipage ltx_align_middle" id="S5.T1.5.1.1.1.1" style="width:230.5pt;">
<span class="ltx_table" id="S5.T1.st1">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T1.st1.4" style="width:397.5pt;height:286.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(-51.4pt,37.0pt) scale(0.794659508330516,0.794659508330516) ;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.st1.4.4">
<span class="ltx_tr" id="S5.T1.st1.3.3.3">
<span class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.st1.3.3.3.4">Model</span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st1.1.1.1.1">NFE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.st1.1.1.1.1.m1.1"><semantics id="S5.T1.st1.1.1.1.1.m1.1a"><mo id="S5.T1.st1.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.st1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st1.1.1.1.1.m1.1b"><ci id="S5.T1.st1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.st1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st1.2.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.st1.2.2.2.2.m1.1"><semantics id="S5.T1.st1.2.2.2.2.m1.1a"><mo id="S5.T1.st1.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.st1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st1.2.2.2.2.m1.1b"><ci id="S5.T1.st1.2.2.2.2.m1.1.1.cmml" xref="S5.T1.st1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st1.2.2.2.2.m1.1d">↓</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st1.3.3.3.3">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.st1.3.3.3.3.m1.1"><semantics id="S5.T1.st1.3.3.3.3.m1.1a"><mo id="S5.T1.st1.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T1.st1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st1.3.3.3.3.m1.1b"><ci id="S5.T1.st1.3.3.3.3.m1.1.1.cmml" xref="S5.T1.st1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st1.3.3.3.3.m1.1d">↑</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st1.3.3.3.5">Epochs</span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st1.3.3.3.6">Total Bs</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.5">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st1.4.4.5.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st1.4.4.5.1.1">Pixel Diffusion Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st1.4.4.5.2"></span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.6">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st1.4.4.6.1">WaveDiff <cite class="ltx_cite ltx_citemacro_citep">(Phung et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib33" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.6.2">2</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.6.3">5.94</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.6.4">0.37</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.6.5">500</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.6.6">64</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.7">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.7.1">Score SDE <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib44" title="">2020</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.7.2">4000</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.7.3">7.23</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.7.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.7.5"> 6.2K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.7.6">-</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.8">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.8.1">DDGAN <cite class="ltx_cite ltx_citemacro_citep">(Xiao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib53" title="">2021</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.8.2">2</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.8.3">7.64</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.8.4">0.36</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.8.5">800</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.8.6">32</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.9">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.9.1">RDUOT <cite class="ltx_cite ltx_citemacro_citep">(Dao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib6" title="">2023b</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.9.2">2</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.9.3">5.60</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.9.4">0.38</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.9.5">600</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.9.6">24</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.10">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.10.1">RDM <cite class="ltx_cite ltx_citemacro_citep">(Teng et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib46" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.10.2">270</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.10.3">3.15</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.10.4">0.55</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.10.5">4K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.10.6">-</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.11">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.11.1">UNCSN++ <cite class="ltx_cite ltx_citemacro_citep">(Kim et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib21" title="">2021</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.11.2">2000</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.11.3">7.16</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.11.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.11.5">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.11.6">-</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.12">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st1.4.4.12.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st1.4.4.12.1.1">Latent Diffusion Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st1.4.4.12.2"></span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.13">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st1.4.4.13.1">LFM-8 <cite class="ltx_cite ltx_citemacro_citep">(Dao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib5" title="">2023a</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.13.2">85</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.13.3">5.82</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.13.4">0.41</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.13.5">500</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.13.6">112</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.14">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.14.1">LDM-4 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib38" title="">2021</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.14.2">200</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.14.3">5.11</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.14.4">0.49</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.14.5">600</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.14.6">48</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.15">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.15.1">LSGM <cite class="ltx_cite ltx_citemacro_citep">(Vahdat et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib48" title="">2021</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.15.2">23</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.15.3">7.22</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.15.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.15.5">1K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.15.6">-</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.16">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.16.1">DDMI <cite class="ltx_cite ltx_citemacro_citep">(Park et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib32" title="">2024</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.16.2">1000</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.16.3">7.25</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.16.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.16.5">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.16.6">-</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.17">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.17.1">DIMSUM <cite class="ltx_cite ltx_citemacro_citep">(Phung et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib34" title="">2024</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.17.2">73</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.17.3">3.76</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.17.4">0.56</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.17.5">395</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.17.6">32</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.4">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.4.1"><math alttext="\text{LDM-8}^{\dagger}" class="ltx_Math" display="inline" id="S5.T1.st1.4.4.4.1.m1.1"><semantics id="S5.T1.st1.4.4.4.1.m1.1a"><msup id="S5.T1.st1.4.4.4.1.m1.1.1" xref="S5.T1.st1.4.4.4.1.m1.1.1.cmml"><mtext id="S5.T1.st1.4.4.4.1.m1.1.1.2" xref="S5.T1.st1.4.4.4.1.m1.1.1.2a.cmml">LDM-8</mtext><mo id="S5.T1.st1.4.4.4.1.m1.1.1.3" xref="S5.T1.st1.4.4.4.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T1.st1.4.4.4.1.m1.1b"><apply id="S5.T1.st1.4.4.4.1.m1.1.1.cmml" xref="S5.T1.st1.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.st1.4.4.4.1.m1.1.1.1.cmml" xref="S5.T1.st1.4.4.4.1.m1.1.1">superscript</csymbol><ci id="S5.T1.st1.4.4.4.1.m1.1.1.2a.cmml" xref="S5.T1.st1.4.4.4.1.m1.1.1.2"><mtext id="S5.T1.st1.4.4.4.1.m1.1.1.2.cmml" xref="S5.T1.st1.4.4.4.1.m1.1.1.2">LDM-8</mtext></ci><ci id="S5.T1.st1.4.4.4.1.m1.1.1.3.cmml" xref="S5.T1.st1.4.4.4.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st1.4.4.4.1.m1.1c">\text{LDM-8}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st1.4.4.4.1.m1.1d">LDM-8 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.4.2">250</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.4.3">8.85</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.4.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.4.5">1.4K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.4.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.18">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st1.4.4.18.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st1.4.4.18.1.1">Latent Consistency Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st1.4.4.18.2"></span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.19">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st1.4.4.19.1">iLCT <cite class="ltx_cite ltx_citemacro_citep">(Song &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib42" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.19.2">1</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.19.3">37.15</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.19.4">0.12</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.19.5">1.4K</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st1.4.4.19.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.20">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.20.1">iLCT <cite class="ltx_cite ltx_citemacro_citep">(Song &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib42" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.20.2">2</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.20.3">16.84</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.20.4">0.24</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.20.5">1.4K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.20.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.21">
<span class="ltx_td ltx_align_left" id="S5.T1.st1.4.4.21.1">Ours</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.21.2">1</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.21.3">7.27</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.21.4">0.50</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.21.5">1.4K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st1.4.4.21.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st1.4.4.22">
<span class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.st1.4.4.22.1">Ours</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st1.4.4.22.2">2</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st1.4.4.22.3">6.93</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st1.4.4.22.4">0.52</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st1.4.4.22.5">1.4K</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st1.4.4.22.6">128</span></span>
</span>
</span></span>
<span class="ltx_caption"><span class="ltx_tag ltx_tag_table">(a) </span>CelebA-HQ</span>
</span></span>
<span class="ltx_inline-logical-block ltx_minipage ltx_align_middle" id="S5.T1.5.1.1.1.2" style="width:166.9pt;">
<span class="ltx_table" id="S5.T1.st2">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T1.st2.4" style="width:397.5pt;height:200.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(-51.4pt,25.9pt) scale(0.794659508330516,0.794659508330516) ;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.st2.4.4">
<span class="ltx_tr" id="S5.T1.st2.3.3.3">
<span class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.st2.3.3.3.4">Model</span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st2.1.1.1.1">NFE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.st2.1.1.1.1.m1.1"><semantics id="S5.T1.st2.1.1.1.1.m1.1a"><mo id="S5.T1.st2.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.st2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st2.1.1.1.1.m1.1b"><ci id="S5.T1.st2.1.1.1.1.m1.1.1.cmml" xref="S5.T1.st2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st2.2.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.st2.2.2.2.2.m1.1"><semantics id="S5.T1.st2.2.2.2.2.m1.1a"><mo id="S5.T1.st2.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.st2.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st2.2.2.2.2.m1.1b"><ci id="S5.T1.st2.2.2.2.2.m1.1.1.cmml" xref="S5.T1.st2.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st2.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st2.2.2.2.2.m1.1d">↓</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st2.3.3.3.3">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.st2.3.3.3.3.m1.1"><semantics id="S5.T1.st2.3.3.3.3.m1.1a"><mo id="S5.T1.st2.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T1.st2.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st2.3.3.3.3.m1.1b"><ci id="S5.T1.st2.3.3.3.3.m1.1.1.cmml" xref="S5.T1.st2.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st2.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st2.3.3.3.3.m1.1d">↑</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st2.3.3.3.5">Epochs</span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st2.3.3.3.6">Total Bs</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.5">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st2.4.4.5.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st2.4.4.5.1.1">Pixel Diffusion Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st2.4.4.5.2"></span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.6">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st2.4.4.6.1">WaveDiff <cite class="ltx_cite ltx_citemacro_citep">(Phung et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib33" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.6.2">2</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.6.3">5.94</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.6.4">0.37</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.6.5">500</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.6.6">64</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.7">
<span class="ltx_td ltx_align_left" id="S5.T1.st2.4.4.7.1">Score SDE <cite class="ltx_cite ltx_citemacro_citep">(Song et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib44" title="">2020</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.7.2">4000</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.7.3">7.23</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.7.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.7.5">6.2K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.7.6">-</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.8">
<span class="ltx_td ltx_align_left" id="S5.T1.st2.4.4.8.1">DDGAN <cite class="ltx_cite ltx_citemacro_citep">(Xiao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib53" title="">2021</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.8.2">2</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.8.3">5.25</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.8.4">0.36</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.8.5">500</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.8.6">32</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.9">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st2.4.4.9.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st2.4.4.9.1.1">Latent Diffusion Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st2.4.4.9.2"></span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.10">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st2.4.4.10.1">LFM-8 <cite class="ltx_cite ltx_citemacro_citep">(Dao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib5" title="">2023a</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.10.2">90</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.10.3">7.70</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.10.4">0.39</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.10.5">90</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.10.6">112</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.11">
<span class="ltx_td ltx_align_left" id="S5.T1.st2.4.4.11.1">LDM-8 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib38" title="">2021</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.11.2">400</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.11.3">4.02</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.11.4">0.52</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.11.5">400</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.11.6">96</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.4">
<span class="ltx_td ltx_align_left" id="S5.T1.st2.4.4.4.1"><math alttext="\text{LDM-8}^{\dagger}" class="ltx_Math" display="inline" id="S5.T1.st2.4.4.4.1.m1.1"><semantics id="S5.T1.st2.4.4.4.1.m1.1a"><msup id="S5.T1.st2.4.4.4.1.m1.1.1" xref="S5.T1.st2.4.4.4.1.m1.1.1.cmml"><mtext id="S5.T1.st2.4.4.4.1.m1.1.1.2" xref="S5.T1.st2.4.4.4.1.m1.1.1.2a.cmml">LDM-8</mtext><mo id="S5.T1.st2.4.4.4.1.m1.1.1.3" xref="S5.T1.st2.4.4.4.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T1.st2.4.4.4.1.m1.1b"><apply id="S5.T1.st2.4.4.4.1.m1.1.1.cmml" xref="S5.T1.st2.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.st2.4.4.4.1.m1.1.1.1.cmml" xref="S5.T1.st2.4.4.4.1.m1.1.1">superscript</csymbol><ci id="S5.T1.st2.4.4.4.1.m1.1.1.2a.cmml" xref="S5.T1.st2.4.4.4.1.m1.1.1.2"><mtext id="S5.T1.st2.4.4.4.1.m1.1.1.2.cmml" xref="S5.T1.st2.4.4.4.1.m1.1.1.2">LDM-8</mtext></ci><ci id="S5.T1.st2.4.4.4.1.m1.1.1.3.cmml" xref="S5.T1.st2.4.4.4.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st2.4.4.4.1.m1.1c">\text{LDM-8}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st2.4.4.4.1.m1.1d">LDM-8 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.4.2">250</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.4.3">10.81</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.4.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.4.5">1.8K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.4.6">256</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.12">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st2.4.4.12.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st2.4.4.12.1.1">Latent Consistency Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st2.4.4.12.2"></span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.13">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st2.4.4.13.1">iLCT <cite class="ltx_cite ltx_citemacro_citep">(Song &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib42" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.13.2">1</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.13.3">52.45</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.13.4">0.11</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.13.5">1.8K</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st2.4.4.13.6">256</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.14">
<span class="ltx_td ltx_align_left" id="S5.T1.st2.4.4.14.1">iLCT <cite class="ltx_cite ltx_citemacro_citep">(Song &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib42" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.14.2">2</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.14.3">24.67</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.14.4">0.17</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.14.5">1.8K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.14.6">256</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.15">
<span class="ltx_td ltx_align_left" id="S5.T1.st2.4.4.15.1">Ours</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.15.2">1</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.15.3">8.87</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.15.4">0.47</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.15.5">1.8K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st2.4.4.15.6">256</span></span>
<span class="ltx_tr" id="S5.T1.st2.4.4.16">
<span class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.st2.4.4.16.1">Ours</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st2.4.4.16.2">2</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st2.4.4.16.3">7.71</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st2.4.4.16.4">0.48</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st2.4.4.16.5">1.8K</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st2.4.4.16.6">256</span></span>
</span>
</span></span>
<span class="ltx_caption"><span class="ltx_tag ltx_tag_table">(b) </span>LSUN Church</span>
</span>
<span class="ltx_table ltx_align_center" id="S5.T1.st3">
<span class="ltx_inline-block ltx_transformed_outer" id="S5.T1.st3.4" style="width:397.5pt;height:143pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(-51.4pt,18.5pt) scale(0.794659508330516,0.794659508330516) ;">
<span class="ltx_tabular ltx_align_middle" id="S5.T1.st3.4.4">
<span class="ltx_tr" id="S5.T1.st3.3.3.3">
<span class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.st3.3.3.3.4">Model</span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st3.1.1.1.1">NFE<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.st3.1.1.1.1.m1.1"><semantics id="S5.T1.st3.1.1.1.1.m1.1a"><mo id="S5.T1.st3.1.1.1.1.m1.1.1" stretchy="false" xref="S5.T1.st3.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st3.1.1.1.1.m1.1b"><ci id="S5.T1.st3.1.1.1.1.m1.1.1.cmml" xref="S5.T1.st3.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st3.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st3.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st3.2.2.2.2">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T1.st3.2.2.2.2.m1.1"><semantics id="S5.T1.st3.2.2.2.2.m1.1a"><mo id="S5.T1.st3.2.2.2.2.m1.1.1" stretchy="false" xref="S5.T1.st3.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st3.2.2.2.2.m1.1b"><ci id="S5.T1.st3.2.2.2.2.m1.1.1.cmml" xref="S5.T1.st3.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st3.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st3.2.2.2.2.m1.1d">↓</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st3.3.3.3.3">Recall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T1.st3.3.3.3.3.m1.1"><semantics id="S5.T1.st3.3.3.3.3.m1.1a"><mo id="S5.T1.st3.3.3.3.3.m1.1.1" stretchy="false" xref="S5.T1.st3.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T1.st3.3.3.3.3.m1.1b"><ci id="S5.T1.st3.3.3.3.3.m1.1.1.cmml" xref="S5.T1.st3.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st3.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st3.3.3.3.3.m1.1d">↑</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st3.3.3.3.5">Epochs</span>
<span class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.st3.3.3.3.6">Total Bs</span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.5">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st3.4.4.5.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st3.4.4.5.1.1">Latent Diffusion Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st3.4.4.5.2"></span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.6">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st3.4.4.6.1">LFM-8 <cite class="ltx_cite ltx_citemacro_citep">(Dao et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib5" title="">2023a</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.6.2">84</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.6.3">8.07</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.6.4">0.40</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.6.5">700</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.6.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.7">
<span class="ltx_td ltx_align_left" id="S5.T1.st3.4.4.7.1">LDM-4 <cite class="ltx_cite ltx_citemacro_citep">(Rombach et al., <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib38" title="">2021</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.7.2">200</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.7.3">4.98</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.7.4">0.50</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.7.5">400</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.7.6">42</span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.4">
<span class="ltx_td ltx_align_left" id="S5.T1.st3.4.4.4.1"><math alttext="\text{LDM-8}^{\dagger}" class="ltx_Math" display="inline" id="S5.T1.st3.4.4.4.1.m1.1"><semantics id="S5.T1.st3.4.4.4.1.m1.1a"><msup id="S5.T1.st3.4.4.4.1.m1.1.1" xref="S5.T1.st3.4.4.4.1.m1.1.1.cmml"><mtext id="S5.T1.st3.4.4.4.1.m1.1.1.2" xref="S5.T1.st3.4.4.4.1.m1.1.1.2a.cmml">LDM-8</mtext><mo id="S5.T1.st3.4.4.4.1.m1.1.1.3" xref="S5.T1.st3.4.4.4.1.m1.1.1.3.cmml">†</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T1.st3.4.4.4.1.m1.1b"><apply id="S5.T1.st3.4.4.4.1.m1.1.1.cmml" xref="S5.T1.st3.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.st3.4.4.4.1.m1.1.1.1.cmml" xref="S5.T1.st3.4.4.4.1.m1.1.1">superscript</csymbol><ci id="S5.T1.st3.4.4.4.1.m1.1.1.2a.cmml" xref="S5.T1.st3.4.4.4.1.m1.1.1.2"><mtext id="S5.T1.st3.4.4.4.1.m1.1.1.2.cmml" xref="S5.T1.st3.4.4.4.1.m1.1.1.2">LDM-8</mtext></ci><ci id="S5.T1.st3.4.4.4.1.m1.1.1.3.cmml" xref="S5.T1.st3.4.4.4.1.m1.1.1.3">†</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.st3.4.4.4.1.m1.1c">\text{LDM-8}^{\dagger}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.st3.4.4.4.1.m1.1d">LDM-8 start_POSTSUPERSCRIPT † end_POSTSUPERSCRIPT</annotation></semantics></math></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.4.2">250</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.4.3">10.23</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.4.4">-</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.4.5">1.4K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.4.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.8">
<span class="ltx_td ltx_align_center ltx_border_t ltx_colspan ltx_colspan_5" id="S5.T1.st3.4.4.8.1"><span class="ltx_text ltx_font_bold" id="S5.T1.st3.4.4.8.1.1">Latent Consistency Model</span></span>
<span class="ltx_td ltx_border_t" id="S5.T1.st3.4.4.8.2"></span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.9">
<span class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.st3.4.4.9.1">iLCT <cite class="ltx_cite ltx_citemacro_citep">(Song &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib42" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.9.2">1</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.9.3">48.82</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.9.4">0.15</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.9.5">1.4K</span>
<span class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.st3.4.4.9.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.10">
<span class="ltx_td ltx_align_left" id="S5.T1.st3.4.4.10.1">iLCT <cite class="ltx_cite ltx_citemacro_citep">(Song &amp; Dhariwal, <a class="ltx_ref" href="https://arxiv.org/html/2502.01441v1#bib.bib42" title="">2023</a>)</cite></span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.10.2">2</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.10.3">21.15</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.10.4">0.19</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.10.5">1.4K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.10.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.11">
<span class="ltx_td ltx_align_left" id="S5.T1.st3.4.4.11.1">Ours</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.11.2">1</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.11.3">8.72</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.11.4">0.42</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.11.5">1.4K</span>
<span class="ltx_td ltx_align_center" id="S5.T1.st3.4.4.11.6">128</span></span>
<span class="ltx_tr" id="S5.T1.st3.4.4.12">
<span class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.st3.4.4.12.1">Ours</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st3.4.4.12.2">2</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st3.4.4.12.3">8.29</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st3.4.4.12.4">0.43</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st3.4.4.12.5">1.4K</span>
<span class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.st3.4.4.12.6">128</span></span>
</span>
</span></span>
<span class="ltx_caption"><span class="ltx_tag ltx_tag_table">(c) </span>FFHQ</span>
</span></span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the performance of different generative models on three benchmark datasets: CelebA-HQ, LSUN Church, and FFHQ.  All models were evaluated at a resolution of 256x256 pixels. The table shows key metrics including FID (Fréchet Inception Distance), Recall, and the number of function evaluations (NFEs) required for image generation.  The models compared include various diffusion models and the latent consistency model proposed in the paper, both using one and two sampling steps. This allows for assessing the quality and efficiency of each method across different datasets. The '+†' symbol indicates that a model was trained on the author's machine using the same diffusion forward process and equivalent architecture as the other models for fair comparison.  The goal is to showcase the improved performance of the proposed latent consistency model training technique.
> <details>
> <summary>read the caption</summary>
> Table 1: Our performance on CelebA-HQ, LSUN Church, FFHQ datasets at resolution 256×256256256256\times 256256 × 256. (††\dagger†) means training on our machine with the same diffusion forward and equivalent architecture.
> </details>





### In-depth insights


#### Latent Space Outliers
The concept of 'Latent Space Outliers' in generative models is critical because latent spaces, while offering advantages for scalability, often harbor data points significantly deviating from the norm. These outliers, invisible in the original data, can severely hinder the training of consistency models, leading to poor performance.  **The paper highlights the crucial difference in the statistical properties between pixel and latent spaces**, revealing that **latent spaces tend to contain high-magnitude, impulsive outliers which act like noise and disrupt the training process**. Addressing these outliers is crucial, as standard methods for handling outliers in pixel space prove inadequate.  **The use of robust loss functions, such as the Cauchy loss**, is proposed to mitigate the effect of outliers, showing superior performance compared to other methods like Pseudo-Huber Loss.  **Combining this with techniques like early timestep diffusion loss and optimal transport (OT) coupling**, further enhances model robustness and efficiency. This approach significantly improves the performance of consistency training in the latent space, highlighting the **importance of data analysis and tailored training strategies for optimal results** in high-dimensional generative modeling.

#### Cauchy Loss Benefit
The paper investigates the effectiveness of Cauchy loss in handling impulsive outliers present in latent space during the training of consistency models.  **Cauchy loss demonstrates robustness to extreme outliers**, unlike the Pseudo-Huber loss which struggles with very high values. This robustness is crucial because latent spaces, often used in large-scale generative modeling (like text-to-image), tend to contain such outliers. The authors show that **Cauchy loss significantly improves model performance**, reducing the FID (Fréchet Inception Distance), a common metric for assessing the quality of generated images, and increasing Recall.  The use of Cauchy loss is especially valuable in latent consistency training due to its resistance to the effects of outlier data points, **bridging a performance gap** between the model and more established diffusion models.  The core benefit lies in its ability to maintain valuable information present in these extreme outlier values, unlike methods that harshly penalize or completely ignore them.

#### Diffusion Loss Aid
A hypothetical 'Diffusion Loss Aid' section in a research paper on generative models would likely explore the use of diffusion-based loss functions to improve training.  This approach might involve adding a diffusion loss term to the primary loss function (e.g., consistency loss), aiming to **regularize the training process and enhance the model's ability to generate high-quality samples**.  The section would delve into the theoretical underpinnings of combining diffusion losses with other loss types, such as exploring the interplay between forward and reverse diffusion processes.  **Empirical studies would be crucial**, demonstrating the impact of different diffusion loss implementations (e.g., various weighting schemes, early vs. late timestep application) on the model's performance (FID, Inception Score).  **Ablation experiments** comparing models trained with and without diffusion loss would showcase the added benefit.  An ideal paper would also investigate and explain the **effect of hyperparameters** associated with the diffusion loss on both the quality and efficiency of the training process.  Finally, any potential drawbacks or limitations of incorporating this 'Diffusion Loss Aid' approach should also be discussed, for example, increased computational costs or potential negative impacts on training stability.

#### Adaptive Scaling
Adaptive scaling, in the context of training generative models, is a crucial technique for managing the robustness and stability of the learning process.  **It dynamically adjusts hyperparameters**, such as the scaling factor in robust loss functions, based on the characteristics of the data and the training progress.  This adaptive approach contrasts with fixed-value scaling, which can lead to suboptimal performance and instability, especially when dealing with datasets containing impulsive outliers, as frequently seen in latent spaces.  The benefits of adaptive scaling are significant: **improved model performance**, **enhanced robustness to outliers**, and **faster convergence**.  By responding to the nuances of the data, the training avoids the pitfalls of a one-size-fits-all approach, ultimately leading to models that are more effective, efficient, and resilient to noisy or irregular data inputs.  **Careful design of the adaptive strategy is essential**, however, to avoid introducing instability or other unforeseen issues. A well-designed adaptive scaling mechanism will smoothly adjust the scaling parameter based on a pre-defined strategy or feedback mechanism, allowing the model to efficiently navigate complex training landscapes.

#### NsLN Improves CT
The heading 'NsLN Improves CT' suggests that Non-scaling Layer Normalization (NsLN) enhances the performance of Consistency Training (CT).  NsLN likely addresses a critical limitation of CT in latent space, where the presence of outliers significantly degrades performance. Standard Layer Normalization, by considering the entire feature distribution, is unduly influenced by these outliers. **NsLN mitigates this by removing the scaling term, preventing outlier amplification and enabling a more stable training process.** This improvement is particularly vital when dealing with latent representations, which frequently contain impulsive noise.  **The enhanced robustness from NsLN allows the CT model to better capture the feature statistics and refine the model's ability to reconstruct clean data from noisy samples.** This leads to higher-quality image generation, even with only one or two sampling steps. The overall implication is that NsLN is a crucial architectural modification enabling successful scaling of consistency training to large-scale datasets, particularly beneficial in text-to-image and video generation tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.01441/extracted/6175049/figures/func.png)

> 🔼 The figure illustrates a comparison of three robust loss functions: Pseudo-Huber, Cauchy, and Geman-McClure.  The left subplot (a) shows the loss values plotted against the residual (||x - y||/c), demonstrating how each loss function handles outliers. The right subplot (b) displays the derivatives of these loss functions, highlighting their sensitivity to outliers.  The Pseudo-Huber loss shows linear growth for large residuals, while the Cauchy loss exhibits logarithmic growth, and the Geman-McClure loss approaches a constant value. These differences in behavior indicate varying degrees of robustness to outliers, with the Cauchy loss offering a balance between robustness and sensitivity to informative outliers.
> <details>
> <summary>read the caption</summary>
> (a) Robust Loss
> </details>



![](https://arxiv.org/html/2502.01441/extracted/6175049/figures/derivative.png)

> 🔼 The plot shows the derivative of three different robust loss functions: Pseudo-Huber, Cauchy, and Geman-McClure.  The x-axis represents the normalized residual (||x-y||/c), and the y-axis represents the derivative of the loss function.  The plot visually compares the sensitivity of each loss function to outliers (large residuals).  The Cauchy loss shows a logarithmic increase with increasing residuals, demonstrating robustness to large outliers. The Pseudo-Huber loss shows a linear increase for larger residuals, while the Geman-McClure loss exhibits a sharp decrease to near zero for large residuals, indicating it will tend to ignore outliers.
> <details>
> <summary>read the caption</summary>
> (b) Derivative of Robust Loss
> </details>



![](https://arxiv.org/html/2502.01441/extracted/6175049/figures/output.png)

> 🔼 This figure compares three robust loss functions: Pseudo-Huber, Cauchy, and Geman-McClure.  Subfigure (a) shows the loss value as a function of the residual error (||x-y||/c) for each loss function, illustrating their different sensitivities to outliers. The Pseudo-Huber loss behaves linearly for large residuals, while the Cauchy loss increases logarithmically and the Geman-McClure loss plateaus at 1. Subfigure (b) presents the derivative of the loss function for each method, further clarifying the behavior of the loss in relation to the residual error and highlighting their different robustness properties when dealing with outliers.
> <details>
> <summary>read the caption</summary>
> Figure 2: Analysis of robust loss: Pseudo-Huber, Cauchy, and Geman-McClure
> </details>



![](https://arxiv.org/html/2502.01441/x2.png)

> 🔼 This figure demonstrates the use of optimal transport (OT) to improve the efficiency and stability of the consistency training process.  Optimal transport is used to find the best mapping (coupling) between the noise and data distributions in each training iteration. This optimal coupling minimizes a cost function, effectively reducing the variance during training. By reducing variance, the training process becomes more stable, and ultimately leads to better model performance (as measured by metrics like FID and recall). The visualization likely shows the transport map, illustrating the flow from the noise distribution to the data distribution, potentially highlighting the improved alignment achieved with the use of OT.
> <details>
> <summary>read the caption</summary>
> Figure 3: Each iteration, we use optimal transport to produce the optimal coupling. This helps reduce the variance during training, leading to better performance.
> </details>



![](https://arxiv.org/html/2502.01441/x3.png)

> 🔼 Figure 4 presents a comprehensive analysis of the impact of different scaling parameter (c) schedules on the performance of a consistency model. The left panel displays the proposed adaptive c schedule, demonstrating how c changes over training iterations. The middle and right panels show FID and recall, respectively, illustrating how various c schedules affect model convergence and performance. By comparing the performance metrics under different schedules (including the proposed adaptive schedule against static values of c), the figure provides insights into the optimal strategy for controlling robustness in the training process.
> <details>
> <summary>read the caption</summary>
> Figure 4: Model convergence plot on different c𝑐citalic_c schedule. (Left) Our proposed c𝑐citalic_c values. Performance on FID (Middle) and Recall (Right) of our proposed c𝑐citalic_c in comparison with different choices.
> </details>



![](https://arxiv.org/html/2502.01441/x4.png)

> 🔼 This figure shows the qualitative results of image generation using the proposed method. Specifically, it presents a grid of images generated for the CelebA-HQ dataset, showcasing the quality and diversity of the generated samples.  The images demonstrate the model's ability to produce realistic and high-resolution facial images, highlighting the effectiveness of the improved training technique.
> <details>
> <summary>read the caption</summary>
> (a) CelebA-HQ
> </details>



![](https://arxiv.org/html/2502.01441/x5.png)

> 🔼 The figure shows the qualitative results of image generation on the LSUN Church dataset using the proposed latent consistency model with one and two sampling steps.  It visually demonstrates the model's ability to generate high-quality, realistic images of church exteriors, showcasing the improvement achieved by the proposed training technique over the baseline iLCT.  The images are arranged in a grid to allow for easy comparison of the generated samples.
> <details>
> <summary>read the caption</summary>
> (b) LSUN Church
> </details>



![](https://arxiv.org/html/2502.01441/x6.png)

> 🔼 The figure shows the results of the proposed training technique on the FFHQ dataset at a resolution of 256 x 256 pixels.  The results are presented in terms of FID and Recall metrics, which are standard evaluation measures for generative models. The table showcases a quantitative comparison with various state-of-the-art diffusion and consistency models, highlighting the superior performance achieved by the proposed approach. Lower FID values indicate better image quality and higher Recall suggests higher diversity of generated samples.
> <details>
> <summary>read the caption</summary>
> (c) FFHQ
> </details>



![](https://arxiv.org/html/2502.01441/x7.png)

> 🔼 This figure showcases the qualitative results obtained from the proposed model.  Specifically, it presents sample images generated using only one forward diffusion step (1-NFE) at a resolution of 256x256 pixels. The images are visually compared across three different datasets: CelebA-HQ (faces), LSUN Church (church exteriors), and FFHQ (high-resolution faces). This provides a visual demonstration of the model's ability to generate high-quality images with a minimal number of diffusion steps. The improved image quality reflects the model's effectiveness and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 5: Our qualitative results using 1-NFE at resolution 256×256256256256\times 256256 × 256
> </details>



![](https://arxiv.org/html/2502.01441/x8.png)

> 🔼 This figure shows a qualitative comparison of images generated by the proposed model and the baseline model.  The subfigure (a) displays images generated for the CelebA-HQ dataset.  The figure demonstrates the improved quality of images generated by the proposed model compared to the baseline.  This highlights the effectiveness of the proposed training techniques.
> <details>
> <summary>read the caption</summary>
> (a) CelebA-HQ
> </details>



![](https://arxiv.org/html/2502.01441/x9.png)

> 🔼 The figure shows the qualitative results of the proposed method on the LSUN Church dataset.  The images demonstrate the model's ability to generate realistic and high-quality images of church scenes, showcasing architectural details and overall scene composition.
> <details>
> <summary>read the caption</summary>
> (b) LSUN Church
> </details>



![](https://arxiv.org/html/2502.01441/x10.png)

> 🔼 This figure displays the quantitative results obtained by the proposed training technique on the FFHQ dataset.  It presents key metrics like FID (Fréchet Inception Distance) and Recall, along with the number of function evaluations (NFE), to evaluate the quality of generated images.  The table likely includes comparisons to other state-of-the-art models on the same dataset.
> <details>
> <summary>read the caption</summary>
> (c) FFHQ
> </details>



![](https://arxiv.org/html/2502.01441/x11.png)

> 🔼 This figure displays the qualitative results obtained from the iLCT model (Improved Latent Consistency Training) when generating images with only one forward diffusion step (1-NFE). The images are generated at a resolution of 256x256 pixels. The purpose is to showcase the quality of images produced by the iLCT model in comparison to other models, highlighting its strengths and weaknesses in terms of image generation quality and diversity.
> <details>
> <summary>read the caption</summary>
> Figure 6: iLCT qualitative results using 1-NFE at resolution 256×256256256256\times 256256 × 256
> </details>



![](https://arxiv.org/html/2502.01441/x12.png)

> 🔼 This figure displays a grid of images generated using the improved latent consistency training technique.  Each image is a sample produced in a single step (one-step sampling) and represents the model's output after applying the proposed training enhancements. The dataset used to train the model is CelebA-HQ, and the generated images are 256x256 pixels in resolution. This visual showcases the quality and diversity of the generated images, demonstrating the effectiveness of the improved technique.
> <details>
> <summary>read the caption</summary>
> Figure 7: One-step samples on CelebA-HQ 256×256256256256\times 256256 × 256
> </details>



![](https://arxiv.org/html/2502.01441/x13.png)

> 🔼 This figure displays the results of generating images using a latent consistency model with two sampling steps. The images are of size 256x256 pixels and belong to the CelebA-HQ dataset, which is known for its high-quality celebrity face images.  The figure demonstrates the model's ability to generate diverse and realistic-looking faces after undergoing a two-step sampling process, highlighting the quality and detail achievable with the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 8: Two-step samples on CelebA-HQ 256×256256256256\times 256256 × 256
> </details>



![](https://arxiv.org/html/2502.01441/x14.png)

> 🔼 This figure displays a grid of images generated by a one-step sampling method on the LSUN Church dataset. The images are 256x256 pixels.  The figure serves as a qualitative evaluation of the model's ability to generate realistic and diverse images of church scenes. It is intended to visually demonstrate the quality of the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 9: One-step samples on LSUN Church 256×256256256256\times 256256 × 256
> </details>



![](https://arxiv.org/html/2502.01441/x15.png)

> 🔼 This figure displays images generated using a latent consistency model trained with the improved techniques presented in the paper.  Specifically, it showcases the results of a two-step sampling process on the LSUN Church dataset. Each image in the grid is an example of a generated church scene, demonstrating the model's ability to generate detailed and varied church architecture. The resolution of each generated image is 256x256 pixels.
> <details>
> <summary>read the caption</summary>
> Figure 10: Two-step samples on LSUN Church 256×256256256256\times 256256 × 256
> </details>



![](https://arxiv.org/html/2502.01441/x16.png)

> 🔼 This figure displays the results of generating images using a one-step sampling method on the FFHQ dataset with a resolution of 256x256 pixels.  The images represent a selection of generated samples and showcase the model's ability to produce realistic-looking high-resolution images of faces.  The quality and diversity of the generated images are indicative of the model's performance.
> <details>
> <summary>read the caption</summary>
> Figure 11: One-step samples on FFHQ 256×256256256256\times 256256 × 256
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.01441/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.01441/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}