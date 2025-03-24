---
title: "Infinite Mobility: Scalable High-Fidelity Synthesis of Articulated Objects via Procedural Generation"
summary: "Infinite Mobility: Procedural generation of high-fidelity articulated objects for scalable embodied AI training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 Shanghai Artificial Intelligence Laboratory",]
showSummary: true
date: 2025-03-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.13424 {{< /keyword >}}
{{< keyword icon="writer" >}} Xinyu Lian et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.13424" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.13424" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.13424/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods for creating articulated objects are either data-driven, limited by the scale/quality of training data, or simulation-based, facing fidelity/labor challenges. High-quality articulated objects are desperately needed for embodied AI. Addressing this, the paper introduces a novel procedural pipeline to synthesize large-scale, high-fidelity articulated objects. 



The approach, **Infinite Mobility**, uses procedural generation boosted by annotated 3D datasets. User studies and quantitative evaluations show the method excels against current state-of-the-art methods, rivaling human-annotated datasets in physics and mesh quality. The synthetic data is used to train generative models, enabling next-step scaling.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a novel procedural generation pipeline for creating high-fidelity articulated objects. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Demonstrates superior results compared to existing datasets and state-of-the-art generative models in terms of both physical properties and mesh quality. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Shows that synthetic data from the pipeline can be used to train generative models, enabling next-step scaling. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it addresses the critical need for **high-quality, scalable articulated object datasets in embodied AI**. By offering a procedural generation pipeline that rivals existing datasets and generative models, this research **opens new avenues for training and evaluating AI agents** in complex, interactive environments. The approach's capacity for creating diverse and realistic articulated objects can **significantly advance research in robotics, simulation, and computer vision**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.13424/x1.png)

> 🔼 This figure showcases the results of a procedural generation approach for creating articulated objects.  It displays a diverse set of 22 common objects (e.g., chairs, tables, cabinets) generated using probabilistic programs.  The animation shows the generated objects' motion sequences, demonstrating the accuracy of their geometry, realistic textures, and properly functioning joints. The figure highlights the system's ability to produce high-fidelity articulated object models.
> <details>
> <summary>read the caption</summary>
> Figure 1:  We design probalistic programs to generate 22222222 common articulated objects. We demonstrate the motion sequence of the generated articulated objects. Ours generated articulated objects bear accurate geometry, realistic textures, and reasonable joints.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.1.1.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.1.1.1.1.1.1">Category</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.1.1.1.1.2">Human Evaluation (Articulcation)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.1.1.1.1.3">GPT Evaluation (Geometry)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.1.1.1.1.4">GPT Evaluation (Texture)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.1">Ours (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.2">PartNet-Mobility (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.3">Equal (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.4">Ours (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.5">PartNet-Mobility (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.6">Equal (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.7">Ours (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.8">PartNet-Mobility (%)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.2.2.9">Equal (%)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.1.1.3.3.1">All Categories</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.3.2.1">8.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.3">4.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.4">86.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.3.5.1">64.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.6">35.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.7">0.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.3.3.8.1">84.81</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.9">14.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.3.3.10">0.74</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.4.4.1">Bottle</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.4.2.1">9.64</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.3">4.42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.4">85.94</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.4.5.1">78.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.6">21.56</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.7">0.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.4.4.8.1">91.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.9">8.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4.4.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.5.5.1">Dishwasher</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.5.2.1">15.17</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.3">4.99</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.4">79.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.5.5.1">71.43</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.6">28.57</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.5.5.8.1">85.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.9">14.55</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5.5.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.6.6.1">Display TV</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.6.2.1">8.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.3">5.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.4">86.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.5">35.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.6.6.1">64.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.6.6.8.1">58.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.9">40.54</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6.6.10">0.60</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.7.7.1">Door</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.7.2.1">7.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.3">3.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.4">89.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.7.5.1">74.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.6">25.08</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.7">0.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.7.7.8.1">79.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.9">20.32</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7.7.10">0.32</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.8.8.1">Fridge</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.2.1">3.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.3">0.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.4">96.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.5.1">69.79</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.6">29.95</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.7">0.26</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.8.8.8.1">87.34</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.9">12.66</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8.8.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.9.9.1">Lamp</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.2">7.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.9.3.1">8.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.4">84.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.9.5.1">75.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.6">24.11</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.7">0.76</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.9.9.8.1">77.48</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.9">21.62</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9.9.10">0.90</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.10.10.1">Microwave</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.10.2.1">7.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.3">2.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.4">90.42</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.10.5.1">62.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.6">37.61</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.10.10.8.1">64.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.9">35.90</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.10.10.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.11.11.1">Oven</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.11.2.1">8.76</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.3">1.39</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.4">89.84</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.5">26.34</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.11.6.1">73.66</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.11.11.8.1">56.84</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.9">42.74</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.11.11.10">0.43</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.12.12.1">Pot</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.12.2.1">4.20</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.3">0.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.4">95.40</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.12.5.1">54.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.6">45.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.12.12.8.1">82.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.9">17.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.12.12.10">0.44</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.13.13.1">Table</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.13.13.2.1">13.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.3">4.79</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.4">81.64</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.13.13.5.1">72.89</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.6">26.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.7">0.22</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.8">24.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.9"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.13.13.9.1">75.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.13.13.10">0.22</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.14.14.1">Tap</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.14.14.2.1">9.60</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.3">0.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.4">90.20</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.14.14.5.1">90.00</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.6">10.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.14.14.8.1">93.11</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.9">6.89</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.14.14.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.15.15.1">Toilet</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.15.2.1">22.86</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.3">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.4">77.14</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.15.5.1">59.33</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.6">40.67</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.15.15.8.1">87.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.9">12.44</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.15.15.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.16.16.1">Cabinet</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.2"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.2.1">9.40</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.3">2.60</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.4">88.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.5">47.33</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.6"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.6.1">52.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.16.16.8.1">93.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.9">6.35</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.16.16.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.1.1.17.17.1">Window</th>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.2">3.21</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.17.3.1">6.41</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.4">90.38</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.17.5.1">76.81</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.6">23.19</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.7">0.00</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.17.17.8.1">75.93</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.9">24.07</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.17.17.10">0.00</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.1.1.18.18.1">Chair</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.2">1.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.3"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.18.3.1">4.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.4">93.44</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.5"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.18.5.1">66.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.6">32.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.7">1.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.8"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.18.18.8.1">78.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.9">21.48</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.1.1.18.18.10">0.00</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 compares the quality of articulated objects generated by the proposed method and those from the PartNet-Mobility dataset.  The comparison considers three aspects: kinematic articulation (how well the parts move), geometric accuracy (how precise the shapes are), and textural fidelity (how realistic the surface details are).  The table presents the percentage of times the proposed method was rated as better, worse, or equal to PartNet-Mobility by both human evaluators and GPT, providing a comprehensive quantitative assessment of the generated object quality.
> <details>
> <summary>read the caption</summary>
> Table 1:  Compare articulated objects generated by our method and those from PartNet-Mobility in terms of kinematic articulation, geometric accuracy, and textural fidelity. We report the comparative success rates of our method versus PartNet-Mobility. “Equal” denotes that the human evaluator or GPT assess the quality of the two objects as equivalent.
> </details>





### In-depth insights


#### Procedural Gen.
Procedural generation offers a powerful alternative to traditional, data-driven methods for creating articulated objects. **Instead of relying on limited datasets or labor-intensive simulations,** procedural generation uses algorithms and rules to synthesize objects from scratch. This approach allows for the creation of **large-scale, diverse datasets** with precise control over object properties. **The key advantage is scalability,** as the generation process can be automated to produce a virtually unlimited number of unique objects. **The challenge lies in designing effective algorithms** that can capture the complexity and realism of real-world articulated objects, ensuring plausible geometry, realistic textures, and functional joints. This requires careful consideration of semantic rules and physical constraints to avoid generating unrealistic or physically unstable structures.

#### URDF pipelines
While the provided document doesn't explicitly have a section titled "URDF pipelines," the core methodology revolves around a procedural generation pipeline that effectively *constructs URDF-like structures*. The process starts with a *tree-growing strategy*, iteratively attaching new nodes (links) to existing ones, guided by semantic rules. This is analogous to how URDF defines articulated objects. A key advantage is the *controlled nature of the pipeline*, offering precise control over geometry and semantics, ensuring accurate physical properties, unlike methods relying on noisy model inference. It generates sophisticated articulation trees, building objects beyond existing datasets. The mesh assembly seamlessly integrates procedural meshes and curated dataset assets, ensuring the *quality and diversity of the final mesh*. Ensuring physical plausibility also appears as a critical aspect. Further work to infer friction, damping and motor strength would be helpful.

#### Ensuring Fidelity
**Ensuring Fidelity** in procedurally generated articulated objects is paramount for their utility in embodied AI and simulation. The paper addresses this challenge through a multi-faceted approach. First, they leverage **category-specific growth strategies** for articulation trees, ensuring realistic part attachments based on semantic understanding. This moves beyond purely random generation towards structures aligned with real-world objects. Geometry generation combines **procedural mesh creation** with **dataset retrieval**, offering both flexibility and quality. Procedural refinement further refines retrieved meshes to ensure physically plausible connections, preventing issues like parts floating or intersecting. The attention to **physical plausibility** extends to modifications addressing collisions with the ground and insufficient gaps between parts. Quantitative and qualitative evaluations confirm the effectiveness of these design choices. A human evaluation of motion structure helps show the improvement in terms of kinematic articulations. Additionally, quantitative metrics comparing generated objects with existing datasets and state-of-the-art generative models help further solidify its purpose and the improvements it provides over other methods.

#### VLMs Evaluation
**Vision Language Models (VLMs) are employed to assess mesh quality** in a scalable and unbiased manner. Following a recent evaluation paradigm, GPT-4v is utilized as an evaluator by feeding it normal maps and RGB images, enabling large-scale testing that rates both the geometry and texture of the meshes. This approach offers a significant advantage over traditional methods by **leveraging the capabilities of VLMs to provide comprehensive and objective assessments of 3D object quality**. By using both normal maps and RGB images, the VLMs can analyze the intricate details of the meshes, including their geometric accuracy and textural fidelity. The employment of VLMs not only enhances the efficiency of the evaluation process but also ensures a higher degree of accuracy and reliability in assessing the quality of generated 3D objects. By adopting a standardized and scalable evaluation method, the study aims to provide a benchmark for future research in procedural generation.

#### Scaling next step
While the paper doesn't explicitly have a section titled 'Scaling Next Step,' we can infer future research directions based on its content. A crucial next step involves **automating the procedural generation process**. Currently, the system relies heavily on human-crafted rules, limiting its scalability to new object categories. **Leveraging Large Language Models (LLMs)** with spatial reasoning and coding abilities could automate rule creation. Further, while joint parameters are high-quality, inferring properties like friction and damping from meshes and materials would be beneficial. The authors already train generative models like CAGE with the synthetic data from the framework so that articulated objects can be created with a single shot. Furthermore, **integrating reinforcement learning techniques** could refine articulation and interaction realism. Finally, exploring **incorporating more intricate joint mechanisms** and dynamic behaviors into the generative process to create more compelling and realistic simulations of articulated objects is another potential future step.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.13424/x2.png)

> 🔼 This figure illustrates the four main stages of the articulated object generation pipeline.  First, an articulation tree structure is created, defining the hierarchical relationships between different parts of the object. Next, geometry is generated for each part, creating the 3D shapes.  Then, materials are assigned to these shapes, adding realistic textures and appearance. Finally, joints are defined between parts based on the articulation tree, enabling the movement and interaction between them.
> <details>
> <summary>read the caption</summary>
> Figure 2:  The whole pipeline can be devided into four parts: articulation tree structure generation, geometry generation, material generation and joint generation.
> </details>



![](https://arxiv.org/html/2503.13424/x3.png)

> 🔼 This figure illustrates the structure of a Universal Robot Description Format (URDF) file, a standard for representing articulated objects.  Each component of an articulated object is represented as a 'link,' depicted here as a textured mesh. Joints connect pairs of links, defining how the parts move relative to each other and establishing the overall articulation structure of the object.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Structure of the URDF file. Each link is a part of the object, which is represented as a textured mesh in our case. Each joint connects two links and describes the articulation structure between them.
> </details>



![](https://arxiv.org/html/2503.13424/extracted/6283074/pics/res_1.png)

> 🔼 Figure 4 illustrates the six types of joints used in the construction of articulated objects within the paper.  The first three depicted are simple joints: a fixed joint (immobile connection), a prismatic joint (linear motion along an axis), and a revolute joint (rotational motion around an axis). The latter three represent compound joints, which are combinations of simpler joint types to enable more complex movements.  These include a flip revolute joint, a limited planar joint, and a combination of prismatic and revolute joints.  The figure visually demonstrates the structure and range of motion for each joint type.
> <details>
> <summary>read the caption</summary>
> Figure 4:  We implement 6666 kinds of joints in our articulated objects. First three are simple joints, and the last three are compound joints.
> </details>



![](https://arxiv.org/html/2503.13424/x4.png)

> 🔼 This figure showcases examples of procedurally generated articulated objects, including cabinets, chairs, lamps, and windows.  Each object is presented with its textured 3D mesh and the corresponding articulation tree diagram displayed above it. The articulation tree visually represents the hierarchical structure of the object's interconnected parts and joints. The figure highlights the diversity achieved in both the shapes and the articulation structures of the generated objects, demonstrating the versatility of the procedural generation method used.
> <details>
> <summary>read the caption</summary>
> Figure 5: Examples of our generated cabinets, chairs, lamps and windows. For each object, we display the textured mesh with the corresponding articulation tree above. The generated objects are diverse in both shapes and articulation structures.
> </details>



![](https://arxiv.org/html/2503.13424/x5.png)

> 🔼 Figure 6 illustrates the two approaches used for generating the geometry of object parts: 1) using Blender's Python API to create meshes, and 2) retrieving pre-existing meshes from a curated dataset (PartNet-Mobility).  The figure shows four groups of objects. In each group, the leftmost object's parts are generated using the Blender API, while the three objects to its right utilize parts from the curated dataset. The seamless integration of parts from both methods is highlighted, demonstrating how combining these approaches enhances the diversity of generated shapes.
> <details>
> <summary>read the caption</summary>
> Figure 6:  We use two methods to obtain the geometry of each part of an object. 1) Blender python API created meshes. 2) Parts retrieved from our carefully curated and processed dataset. For each group of objects, the left one is generated by Blender python API, while the right 3333 objects are obtained by retrieving parts from curated PartNet-Moblity. Parts obtained from both methods can be seamlessly joined, and it improves the diversity of generated shapes by adopting both methods to obtain part geometry.
> </details>



![](https://arxiv.org/html/2503.13424/x6.png)

> 🔼 Figure 7 demonstrates the preprocessing step applied to 3D model datasets like PartNet and ShapeNet.  These datasets often contain meshes with incorrectly oriented faces (back faces), leading to inconsistent and irregular surface normals.  The image shows examples of original meshes from these datasets compared to the improved meshes after processing. This process involves using Blender software's 'recalculate normals' function to correct the face orientation and flipping back faces. Following this automated step, manual human repair was performed to further refine the meshes and ensure all normals consistently point outwards, resulting in improved quality and suitability for downstream processing in the articulated object generation pipeline.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Original parts from PartNet and ShapeNet bear many back faces and thus their normals are highly irregular. We flip these back faces in Blender using recalculate normal function followed by human repair and ensure the meshes bear consistent outward-facing normals.
> </details>



![](https://arxiv.org/html/2503.13424/extracted/6283074/pics/comparison.png)

> 🔼 This figure illustrates the improved mesh placement technique used in the paper.  The standard method, using bounding boxes, often leaves gaps between parts of the assembled object, leading to unrealistic results. The proposed 'support point-based placement' method ensures a seamless connection between parts, enhancing the visual realism and physical plausibility of the generated 3D models.  The figure directly compares the results of both methods.
> <details>
> <summary>read the caption</summary>
> Figure 8:  We adopt support point-based placement to position the retrieved part on the object. Naive bounding box-based placement may create a gap between the retrieved part and the object. Our approach guarantees a seamless connection.
> </details>



![](https://arxiv.org/html/2503.13424/extracted/6283074/pics/joint_evaluation.png)

> 🔼 This figure demonstrates the importance of careful part placement and joint parameter configuration in articulated object generation to avoid collisions.  The top row shows a dishwasher from the PartNet-Mobility dataset; when the door is opened, the base collides with the ground, causing the entire object to tilt. The bottom row shows a dishwasher generated by the method described in the paper, which avoids this problem due to improved part placement and joint parameters.
> <details>
> <summary>read the caption</summary>
> Figure 9:  We carefully position each part and optimally configure the joint parameters to guarantee that no collisions occur either among the parts themselves or between the object and the ground during its articulation. The top row is a dishwasher from PartNet-Mobility. When the dishwasher door is opened, its base collides with the ground, forcing the main body to tilt upwards. While the dishwasher generated by our method in the bottom row does not have this problem.
> </details>



![](https://arxiv.org/html/2503.13424/extracted/6283074/pics/table_result.png)

> 🔼 This figure shows a comparison of the motion quality of articulated objects generated by the proposed method and those from the PartNet-Mobility dataset.  Human evaluators watched textureless videos of the objects in motion. The top row displays videos of objects from PartNet-Mobility, while the bottom row shows videos of objects generated by the Infinite Mobility method. The evaluators judged which set of objects demonstrated superior motion structure, based on the realism and fluidity of their movements.
> <details>
> <summary>read the caption</summary>
> Figure 10:  Human evaluators observe textureless videos of our generated articulated objects (lower row) and those from PartNet-Mobility (upper row), subsequently determining which exhibits superior motion structure.
> </details>



![](https://arxiv.org/html/2503.13424/extracted/6283074/pics/embodied.png)

> 🔼 This figure showcases examples of articulated objects generated using the CAGE (Controllable Articulation Generation) model.  The model was trained on a dataset of synthetic articulated objects produced by the Infinite Mobility method described in the paper.  The figure demonstrates the model's capability to generate objects with accurate geometry and physically plausible articulation, indicating successful sim-to-real transfer learning.
> <details>
> <summary>read the caption</summary>
> Figure 11: Examples of articulated objects generated by CAGE trained on our results. The generated object has accurate geometry and reasonable motion structure.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.13424/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.13424/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}