---
title: "PE3R: Perception-Efficient 3D Reconstruction"
summary: "PE3R: Achieves fast and accurate 3D scene reconstruction from 2D images by enhanced perception and efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.07507 {{< /keyword >}}
{{< keyword icon="writer" >}} Jie Hu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.07507" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.07507" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.07507/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current 2D-to-3D perception methods face challenges of limited generalization, suboptimal accuracy, and slow speeds.  Existing methods rely on scene-specific training, introducing computational overhead and limiting scalability, hindering real-world applications. Addressing these limitations is vital for advancing 3D scene understanding.



This paper introduces a novel framework for efficient 3D semantic reconstruction. It uses pixel embedding disambiguation, semantic field reconstruction, and global view perception to reconstruct 3D scenes solely from 2D images. It achieves over 9-fold speedups and improved accuracy without pre-calibrated 3D data. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} PE3R is a novel framework designed to enhance accuracy and efficiency in 3D reconstruction from 2D images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PE3R employs pixel embedding disambiguation, semantic field reconstruction, and global view perception to improve performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} PE3R demonstrates robust zero-shot generalization, improved performance metrics, and practical scalability through extensive experiments. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **introduces a new approach to 3D scene understanding** that is both efficient and accurate. It addresses the limitations of existing methods and sets new benchmarks for performance, opening new avenues for future research in robotics, AR, and computer vision.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.8.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.8.1.1.1" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.1.1.1.1" style="font-size:90%;">Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T1.8.1.1.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.1.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.1.1.3.1" style="font-size:90%;">mIoU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.1.1.4.1" style="font-size:90%;">mPA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.8.1.1.5" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.1.1.5.1" style="font-size:90%;">mP</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.8.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.8.2.1.1" rowspan="5" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.2.1.1.1" style="font-size:90%;">Mip.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.8.2.1.2" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.2.1.2.1" style="font-size:90%;">LERF </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.2.1.2.2.1" style="font-size:90%;">(</span>Kerr et al.<span class="ltx_text" id="S3.T1.8.2.1.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib17" title="">2023</a><span class="ltx_text" id="S3.T1.8.2.1.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.2.1.3.1" style="font-size:90%;">0.2698</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.2.1.4.1" style="font-size:90%;">0.8183</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.2.1.5" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.2.1.5.1" style="font-size:90%;">0.6553</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.3.2.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.3.2.1.1" style="font-size:90%;">F-3DGS </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.3.2.1.2.1" style="font-size:90%;">(</span>Zhou et al.<span class="ltx_text" id="S3.T1.8.3.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib60" title="">2024</a><span class="ltx_text" id="S3.T1.8.3.2.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.3.2.2.1" style="font-size:90%;">0.3889</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.3.2.3.1" style="font-size:90%;">0.8279</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.3.2.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.3.2.4.1" style="font-size:90%;">0.7085</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.4.3.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.4.3.1.1" style="font-size:90%;">GS Grouping </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.4.3.1.2.1" style="font-size:90%;">(</span>Ye et al.<span class="ltx_text" id="S3.T1.8.4.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib53" title="">2023</a><span class="ltx_text" id="S3.T1.8.4.3.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.4.3.2.1" style="font-size:90%;">0.4410</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.4.3.3.1" style="font-size:90%;">0.7586</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.4.3.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.4.3.4.1" style="font-size:90%;">0.7611</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.5.4.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.5.4.1.1" style="font-size:90%;">LangSplat </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.5.4.1.2.1" style="font-size:90%;">(</span>Qin et al.<span class="ltx_text" id="S3.T1.8.5.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib30" title="">2024</a><span class="ltx_text" id="S3.T1.8.5.4.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.5.4.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.5.4.2.1" style="font-size:90%;">0.5545</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.5.4.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.5.4.3.1" style="font-size:90%;">0.8071</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.5.4.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.5.4.4.1" style="font-size:90%;">0.8600</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.6.5.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.6.5.1.1" style="font-size:90%;">GOI </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.6.5.1.2.1" style="font-size:90%;">(</span>Qu et al.<span class="ltx_text" id="S3.T1.8.6.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib31" title="">2024</a><span class="ltx_text" id="S3.T1.8.6.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.6.5.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.6.5.2.1" style="font-size:90%;">0.8646</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.6.5.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.6.5.3.1" style="font-size:90%;">0.9569</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.6.5.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.6.5.4.1" style="font-size:90%;">0.9362</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.7.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.7.6.1" style="padding:0.45pt 2.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.7.6.2" style="padding:0.45pt 2.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.8.7.6.2.1" style="font-size:90%;">PE3R</span><span class="ltx_text" id="S3.T1.8.7.6.2.2" style="font-size:90%;">, </span><em class="ltx_emph ltx_font_italic" id="S3.T1.8.7.6.2.3" style="font-size:90%;">ours</em>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.7.6.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.7.6.3.1" style="font-size:90%;">0.8951</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.7.6.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.7.6.4.1" style="font-size:90%;">0.9617</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.7.6.5" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.7.6.5.1" style="font-size:90%;">0.9726</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.8.8.7.1" rowspan="5" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.8.7.1.1" style="font-size:90%;">Rep.</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T1.8.8.7.2" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.8.7.2.1" style="font-size:90%;">LERF </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.8.7.2.2.1" style="font-size:90%;">(</span>Kerr et al.<span class="ltx_text" id="S3.T1.8.8.7.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib17" title="">2023</a><span class="ltx_text" id="S3.T1.8.8.7.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.7.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.8.7.3.1" style="font-size:90%;">0.2815</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.7.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.8.7.4.1" style="font-size:90%;">0.7071</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.7.5" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.8.7.5.1" style="font-size:90%;">0.6602</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.9.8.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.9.8.1.1" style="font-size:90%;">F-3DGS </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.9.8.1.2.1" style="font-size:90%;">(</span>Zhou et al.<span class="ltx_text" id="S3.T1.8.9.8.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib60" title="">2024</a><span class="ltx_text" id="S3.T1.8.9.8.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.9.8.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.9.8.2.1" style="font-size:90%;">0.4480</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.9.8.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.9.8.3.1" style="font-size:90%;">0.7901</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.9.8.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.9.8.4.1" style="font-size:90%;">0.7310</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.10.9.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.10.9.1.1" style="font-size:90%;">GS Grouping </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.10.9.1.2.1" style="font-size:90%;">(</span>Ye et al.<span class="ltx_text" id="S3.T1.8.10.9.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib53" title="">2023</a><span class="ltx_text" id="S3.T1.8.10.9.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.9.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.10.9.2.1" style="font-size:90%;">0.4170</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.9.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.10.9.3.1" style="font-size:90%;">0.7370</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.10.9.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.10.9.4.1" style="font-size:90%;">0.7276</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.11.10.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.11.10.1.1" style="font-size:90%;">LangSplat </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.11.10.1.2.1" style="font-size:90%;">(</span>Qin et al.<span class="ltx_text" id="S3.T1.8.11.10.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib30" title="">2024</a><span class="ltx_text" id="S3.T1.8.11.10.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.10.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.11.10.2.1" style="font-size:90%;">0.4703</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.10.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.11.10.3.1" style="font-size:90%;">0.7694</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.11.10.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.11.10.4.1" style="font-size:90%;">0.7604</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T1.8.12.11.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T1.8.12.11.1.1" style="font-size:90%;">GOI </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.12.11.1.2.1" style="font-size:90%;">(</span>Qu et al.<span class="ltx_text" id="S3.T1.8.12.11.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib31" title="">2024</a><span class="ltx_text" id="S3.T1.8.12.11.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.11.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.12.11.2.1" style="font-size:90%;">0.6169</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.11.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.12.11.3.1" style="font-size:90%;">0.8367</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.12.11.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T1.8.12.11.4.1" style="font-size:90%;">0.8088</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.13.12">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.8.13.12.1" style="padding:0.45pt 2.5pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T1.8.13.12.2" style="padding:0.45pt 2.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.T1.8.13.12.2.1" style="font-size:90%;">PE3R</span><span class="ltx_text" id="S3.T1.8.13.12.2.2" style="font-size:90%;">, </span><em class="ltx_emph ltx_font_italic" id="S3.T1.8.13.12.2.3" style="font-size:90%;">ours</em>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.13.12.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.12.3.1" style="font-size:90%;">0.6531</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.13.12.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.12.4.1" style="font-size:90%;">0.8377</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.8.13.12.5" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.8.13.12.5.1" style="font-size:90%;">0.8444</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of 2D-to-3D open-vocabulary segmentation on two smaller datasets: Mipnerf360 and Replica.  It compares the performance of several different methods, including the proposed PE3R method, across three key metrics: mean Intersection over Union (mIoU), mean Pixel Accuracy (mPA), and mean Precision (mP). These metrics assess the accuracy of the methods in segmenting objects in 3D scenes based on 2D image inputs. The table shows that PE3R outperforms the other methods on both datasets, demonstrating its superior performance in open-vocabulary 3D scene understanding.
> <details>
> <summary>read the caption</summary>
> Table 1: 2D-to-3D Open-Vocabulary Segmentation on small datasets, i.e., Mipnerf360 (Mip.) and Replica (Rep.).
> </details>





### In-depth insights


#### 2D-to-3D w/o 3D
The idea of 2D-to-3D reconstruction without direct 3D supervision is a compelling research direction. Traditional 3D reconstruction heavily relies on **3D data** (e.g., LiDAR, depth sensors, camera parameters). However, acquiring such data can be difficult, expensive, or even impossible in certain scenarios. Thus, the goal of '2D-to-3D w/o 3D' is to leverage **2D images** as the primary source of information. This approach requires clever techniques to infer 3D geometry and semantics from 2D cues alone. **Multi-view consistency**, shape priors learned from large datasets, and the use of **generative models** are potential avenues. Success in this area would unlock applications in robotics, augmented reality, and scene understanding.

#### Efficient Semantics
**Efficient semantics** refers to the methodologies and frameworks that enable rapid and precise extraction and utilization of semantic information from data, particularly in 3D reconstruction. This involves optimizing computational processes to minimize resource consumption while maximizing the accuracy and relevance of semantic interpretations. **Key elements include** algorithms that can quickly disambiguate semantic meanings from multi-view images, integrating semantic understanding directly into the reconstruction pipeline to guide and refine the geometric modeling process, and developing representations that allow for efficient querying and manipulation of semantic information within the 3D scene. The focus is on creating solutions that are not only accurate but also scalable and applicable in real-time or large-scale scenarios, reducing the bottlenecks associated with traditional, more computationally intensive semantic analysis techniques. The goal is to build systems that can quickly adapt to different environments and data types, providing a seamless and effective understanding of complex 3D scenes.

#### Feed-Forward 3D
**Feed-forward 3D** reconstructs 3D structure using only 2D inputs, bypassing traditional reliance on 3D data. **It enhances efficiency** by eliminating iterative refinement. This allows for significantly faster processing, enabling real-time applications. The method emphasizes **speed and scalability**, crucial for scenarios where 3D data is scarce or computationally expensive to acquire. This approach marks a departure from complex optimization-based methods, offering a pathway to more accessible 3D scene understanding. Benefits include enhanced real-time performance and scalability.

#### Pixel Embedding++
**Pixel Embedding** techniques are vital for bridging the gap between 2D image data and 3D scene understanding, especially in contexts lacking explicit 3D information. These methods aim to represent each pixel with a feature vector (embedding) that captures its semantic and geometric properties. Enhancements over standard pixel embeddings (i.e., 'Pixel Embedding++') likely involve addressing key challenges like **viewpoint consistency**, **occlusion handling**, and **semantic ambiguity**. This could involve integrating information from multiple views to create more robust embeddings or using contextual information to disambiguate pixel meanings. Advanced techniques might also focus on learning embeddings that are **invariant to changes in lighting or camera pose**, further improving their reliability for 3D reconstruction and perception tasks. The goal is to create pixel representations that effectively encode the information needed to infer 3D scene structure and semantics from 2D images.

#### Scalable Vision
**Scalable vision** is key to deploying computer vision models in real-world applications. This means models should perform effectively with varying input image sizes, resolutions, and complexities, without significant performance degradation. **Efficiency** in terms of computational resources is also critical; models must process data quickly and with minimal energy consumption. Furthermore, a scalable vision system should **generalize well** across diverse environments, datasets, and tasks. To achieve this, consider modular architectures, efficient data structures, and transfer learning. **Robustness** to noise and outliers should also be considered. This requires careful data augmentation and preprocessing techniques, as well as model architectures that are less sensitive to noisy inputs. Moreover, a scalable vision system should be easy to **adapt and extend** to new tasks and environments. Consider modular design and standard APIs to facilitate integration with other systems. Addressing these considerations enables building more practical and useful vision systems.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T2.5.1.1.1" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.1.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.1.1.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.1.1.2.1" style="font-size:90%;">Preprocess</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.1.1.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.1.1.3.1" style="font-size:90%;">Training</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.5.1.1.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.1.1.4.1" style="font-size:90%;">Total</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.5.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T2.5.2.1.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T2.5.2.1.1.1" style="font-size:90%;">LERF </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.5.2.1.1.2.1" style="font-size:90%;">(</span>Kerr et al.<span class="ltx_text" id="S3.T2.5.2.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib17" title="">2023</a><span class="ltx_text" id="S3.T2.5.2.1.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.2.1.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.2.1.2.1" style="font-size:90%;">3mins</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.2.1.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.2.1.3.1" style="font-size:90%;">40mins</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.2.1.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.2.1.4.1" style="font-size:90%;">43mins</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.3.2.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T2.5.3.2.1.1" style="font-size:90%;">F-3DGS </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.5.3.2.1.2.1" style="font-size:90%;">(</span>Zhou et al.<span class="ltx_text" id="S3.T2.5.3.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib60" title="">2024</a><span class="ltx_text" id="S3.T2.5.3.2.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.3.2.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.3.2.2.1" style="font-size:90%;">25mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.3.2.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.3.2.3.1" style="font-size:90%;">623mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.3.2.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.3.2.4.1" style="font-size:90%;">648mins</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.4.3.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T2.5.4.3.1.1" style="font-size:90%;">GS Grouping </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.5.4.3.1.2.1" style="font-size:90%;">(</span>Ye et al.<span class="ltx_text" id="S3.T2.5.4.3.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib53" title="">2023</a><span class="ltx_text" id="S3.T2.5.4.3.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.4.3.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.4.3.2.1" style="font-size:90%;">27mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.4.3.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.4.3.3.1" style="font-size:90%;">138mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.4.3.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.4.3.4.1" style="font-size:90%;">165mins</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.5.4.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T2.5.5.4.1.1" style="font-size:90%;">LangSplat </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.5.5.4.1.2.1" style="font-size:90%;">(</span>Qin et al.<span class="ltx_text" id="S3.T2.5.5.4.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib30" title="">2024</a><span class="ltx_text" id="S3.T2.5.5.4.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.4.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.5.4.2.1" style="font-size:90%;">50mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.4.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.5.4.3.1" style="font-size:90%;">99mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.5.4.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.5.4.4.1" style="font-size:90%;">149mins</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T2.5.6.5.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T2.5.6.5.1.1" style="font-size:90%;">GOI </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T2.5.6.5.1.2.1" style="font-size:90%;">(</span>Qu et al.<span class="ltx_text" id="S3.T2.5.6.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib31" title="">2024</a><span class="ltx_text" id="S3.T2.5.6.5.1.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T2.5.6.5.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.6.5.2.1" style="font-size:90%;">8mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.6.5.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.6.5.3.1" style="font-size:90%;">37mins</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.5.6.5.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T2.5.6.5.4.1" style="font-size:90%;">45mins</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T2.5.7.6.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.T2.5.7.6.1.1" style="font-size:90%;">PE3R</span><span class="ltx_text" id="S3.T2.5.7.6.1.2" style="font-size:90%;">, </span><em class="ltx_emph ltx_font_italic" id="S3.T2.5.7.6.1.3" style="font-size:90%;">ours</em>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.7.6.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.7.6.2.1" style="font-size:90%;">5mins</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.7.6.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.7.6.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.5.7.6.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.5.7.6.4.1" style="font-size:90%;">5mins</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the running speed of different methods for 3D reconstruction on the Mipnerf360 dataset.  It breaks down the total time into pre-processing, training, and the overall time taken, showing the significant speed advantage of the PE3R method compared to other state-of-the-art techniques.
> <details>
> <summary>read the caption</summary>
> Table 2: Running Speed comparison on Mipnerf360.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T3.8">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T3.8.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S3.T3.8.1.1.1" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.1.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.8.1.1.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.1.1.2.1" style="font-size:90%;">mIoU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.8.1.1.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.1.1.3.1" style="font-size:90%;">mPA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T3.8.1.1.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.1.1.4.1" style="font-size:90%;">mP</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T3.8.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T3.8.2.1.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T3.8.2.1.1.1" style="font-size:90%;">LERF </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.8.2.1.1.2.1" style="font-size:90%;">(</span>Kerr et al.<span class="ltx_text" id="S3.T3.8.2.1.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib17" title="">2023</a><span class="ltx_text" id="S3.T3.8.2.1.1.4.3" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T3.8.2.1.1.5" style="font-size:90%;"> Features</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.2.1.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.2.1.2.1" style="font-size:90%;">0.1824</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.2.1.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.2.1.3.1" style="font-size:90%;">0.6024</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.8.2.1.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.2.1.4.1" style="font-size:90%;">0.5873</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S3.T3.8.3.2.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text" id="S3.T3.8.3.2.1.1" style="font-size:90%;">GOI </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T3.8.3.2.1.2.1" style="font-size:90%;">(</span>Qu et al.<span class="ltx_text" id="S3.T3.8.3.2.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib31" title="">2024</a><span class="ltx_text" id="S3.T3.8.3.2.1.4.3" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T3.8.3.2.1.5" style="font-size:90%;"> Features</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T3.8.3.2.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.3.2.2.1" style="font-size:90%;">0.2101</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.3.2.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.3.2.3.1" style="font-size:90%;">0.6216</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.8.3.2.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text" id="S3.T3.8.3.2.4.1" style="font-size:90%;">0.6013</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.8.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T3.8.4.3.1" style="padding:0.45pt 2.5pt;">
<span class="ltx_text ltx_font_bold" id="S3.T3.8.4.3.1.1" style="font-size:90%;">PE3R</span><span class="ltx_text" id="S3.T3.8.4.3.1.2" style="font-size:90%;">, </span><em class="ltx_emph ltx_font_italic" id="S3.T3.8.4.3.1.3" style="font-size:90%;">ours</em>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.8.4.3.2" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.8.4.3.2.1" style="font-size:90%;">0.2248</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.8.4.3.3" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.8.4.3.3.1" style="font-size:90%;">0.6542</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.8.4.3.4" style="padding:0.45pt 2.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.8.4.3.4.1" style="font-size:90%;">0.6315</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of 2D-to-3D open-vocabulary segmentation on the ScanNet++ dataset, a large-scale dataset.  It compares the performance of the proposed PE3R method against existing state-of-the-art methods, LERF and GOI, using three standard metrics: mean Intersection over Union (mIoU), mean Pixel Accuracy (mPA), and mean Precision (mP). The results showcase the effectiveness of PE3R in achieving a higher level of accuracy compared to other methods.
> <details>
> <summary>read the caption</summary>
> Table 3: 2D-to-3D Open-Vocabulary Segmentation on the large-scale dataset, i.e., ScanNet++.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T4.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T4.12.13.1">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.12.13.1.1" rowspan="2" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.13.1.1.1" style="font-size:90%;">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.12.13.1.2" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.13.1.2.1" style="font-size:90%;">KITTI</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.12.13.1.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.13.1.3.1" style="font-size:90%;">ScanNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.12.13.1.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.13.1.4.1" style="font-size:90%;">ETH3D</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.12.13.1.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.13.1.5.1" style="font-size:90%;">DTU</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S3.T4.12.13.1.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.13.1.6.1" style="font-size:90%;">T&amp;T</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T4.12.13.1.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.13.1.7.1" style="font-size:90%;">Ave.</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.1.1.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.1.1.1.1" style="font-size:90%;">rel</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.m1.1a"><mo id="S3.T4.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.m1.1b"><ci id="S3.T4.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.2.2.2" style="padding:0.45pt 3.2pt;"><math alttext="\tau\uparrow" class="ltx_Math" display="inline" id="S3.T4.2.2.2.m1.1"><semantics id="S3.T4.2.2.2.m1.1a"><mrow id="S3.T4.2.2.2.m1.1.1" xref="S3.T4.2.2.2.m1.1.1.cmml"><mi id="S3.T4.2.2.2.m1.1.1.2" mathsize="90%" xref="S3.T4.2.2.2.m1.1.1.2.cmml">τ</mi><mo id="S3.T4.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S3.T4.2.2.2.m1.1.1.3" xref="S3.T4.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.2.2.2.m1.1b"><apply id="S3.T4.2.2.2.m1.1.1.cmml" xref="S3.T4.2.2.2.m1.1.1"><ci id="S3.T4.2.2.2.m1.1.1.1.cmml" xref="S3.T4.2.2.2.m1.1.1.1">↑</ci><ci id="S3.T4.2.2.2.m1.1.1.2.cmml" xref="S3.T4.2.2.2.m1.1.1.2">𝜏</ci><csymbol cd="latexml" id="S3.T4.2.2.2.m1.1.1.3.cmml" xref="S3.T4.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.2.2.2.m1.1c">\tau\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.2.2.2.m1.1d">italic_τ ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.3.3.3" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.3.3.3.1" style="font-size:90%;">rel</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.3.3.3.m1.1"><semantics id="S3.T4.3.3.3.m1.1a"><mo id="S3.T4.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.3.3.3.m1.1b"><ci id="S3.T4.3.3.3.m1.1.1.cmml" xref="S3.T4.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.3.3.3.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.4.4.4" style="padding:0.45pt 3.2pt;"><math alttext="\tau\uparrow" class="ltx_Math" display="inline" id="S3.T4.4.4.4.m1.1"><semantics id="S3.T4.4.4.4.m1.1a"><mrow id="S3.T4.4.4.4.m1.1.1" xref="S3.T4.4.4.4.m1.1.1.cmml"><mi id="S3.T4.4.4.4.m1.1.1.2" mathsize="90%" xref="S3.T4.4.4.4.m1.1.1.2.cmml">τ</mi><mo id="S3.T4.4.4.4.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S3.T4.4.4.4.m1.1.1.3" xref="S3.T4.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.4.4.4.m1.1b"><apply id="S3.T4.4.4.4.m1.1.1.cmml" xref="S3.T4.4.4.4.m1.1.1"><ci id="S3.T4.4.4.4.m1.1.1.1.cmml" xref="S3.T4.4.4.4.m1.1.1.1">↑</ci><ci id="S3.T4.4.4.4.m1.1.1.2.cmml" xref="S3.T4.4.4.4.m1.1.1.2">𝜏</ci><csymbol cd="latexml" id="S3.T4.4.4.4.m1.1.1.3.cmml" xref="S3.T4.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.4.4.4.m1.1c">\tau\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.4.4.4.m1.1d">italic_τ ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.5.5.5" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.5.5.5.1" style="font-size:90%;">rel</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.5.5.5.m1.1"><semantics id="S3.T4.5.5.5.m1.1a"><mo id="S3.T4.5.5.5.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.5.5.5.m1.1b"><ci id="S3.T4.5.5.5.m1.1.1.cmml" xref="S3.T4.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.5.5.5.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.6.6.6" style="padding:0.45pt 3.2pt;"><math alttext="\tau\uparrow" class="ltx_Math" display="inline" id="S3.T4.6.6.6.m1.1"><semantics id="S3.T4.6.6.6.m1.1a"><mrow id="S3.T4.6.6.6.m1.1.1" xref="S3.T4.6.6.6.m1.1.1.cmml"><mi id="S3.T4.6.6.6.m1.1.1.2" mathsize="90%" xref="S3.T4.6.6.6.m1.1.1.2.cmml">τ</mi><mo id="S3.T4.6.6.6.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.6.6.6.m1.1.1.1.cmml">↑</mo><mi id="S3.T4.6.6.6.m1.1.1.3" xref="S3.T4.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.6.6.6.m1.1b"><apply id="S3.T4.6.6.6.m1.1.1.cmml" xref="S3.T4.6.6.6.m1.1.1"><ci id="S3.T4.6.6.6.m1.1.1.1.cmml" xref="S3.T4.6.6.6.m1.1.1.1">↑</ci><ci id="S3.T4.6.6.6.m1.1.1.2.cmml" xref="S3.T4.6.6.6.m1.1.1.2">𝜏</ci><csymbol cd="latexml" id="S3.T4.6.6.6.m1.1.1.3.cmml" xref="S3.T4.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.6.6.6.m1.1c">\tau\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.6.6.6.m1.1d">italic_τ ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.7.7.7" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.7.7.7.1" style="font-size:90%;">rel</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.7.7.7.m1.1"><semantics id="S3.T4.7.7.7.m1.1a"><mo id="S3.T4.7.7.7.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.7.7.7.m1.1b"><ci id="S3.T4.7.7.7.m1.1.1.cmml" xref="S3.T4.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.7.7.7.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.8.8.8" style="padding:0.45pt 3.2pt;"><math alttext="\tau\uparrow" class="ltx_Math" display="inline" id="S3.T4.8.8.8.m1.1"><semantics id="S3.T4.8.8.8.m1.1a"><mrow id="S3.T4.8.8.8.m1.1.1" xref="S3.T4.8.8.8.m1.1.1.cmml"><mi id="S3.T4.8.8.8.m1.1.1.2" mathsize="90%" xref="S3.T4.8.8.8.m1.1.1.2.cmml">τ</mi><mo id="S3.T4.8.8.8.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.8.8.8.m1.1.1.1.cmml">↑</mo><mi id="S3.T4.8.8.8.m1.1.1.3" xref="S3.T4.8.8.8.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.8.8.8.m1.1b"><apply id="S3.T4.8.8.8.m1.1.1.cmml" xref="S3.T4.8.8.8.m1.1.1"><ci id="S3.T4.8.8.8.m1.1.1.1.cmml" xref="S3.T4.8.8.8.m1.1.1.1">↑</ci><ci id="S3.T4.8.8.8.m1.1.1.2.cmml" xref="S3.T4.8.8.8.m1.1.1.2">𝜏</ci><csymbol cd="latexml" id="S3.T4.8.8.8.m1.1.1.3.cmml" xref="S3.T4.8.8.8.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.8.8.8.m1.1c">\tau\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.8.8.8.m1.1d">italic_τ ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.9.9" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.9.9.9.1" style="font-size:90%;">rel</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.9.9.9.m1.1"><semantics id="S3.T4.9.9.9.m1.1a"><mo id="S3.T4.9.9.9.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.9.9.9.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.9.9.9.m1.1b"><ci id="S3.T4.9.9.9.m1.1.1.cmml" xref="S3.T4.9.9.9.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.9.9.9.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.9.9.9.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.10.10.10" style="padding:0.45pt 3.2pt;"><math alttext="\tau\uparrow" class="ltx_Math" display="inline" id="S3.T4.10.10.10.m1.1"><semantics id="S3.T4.10.10.10.m1.1a"><mrow id="S3.T4.10.10.10.m1.1.1" xref="S3.T4.10.10.10.m1.1.1.cmml"><mi id="S3.T4.10.10.10.m1.1.1.2" mathsize="90%" xref="S3.T4.10.10.10.m1.1.1.2.cmml">τ</mi><mo id="S3.T4.10.10.10.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.10.10.10.m1.1.1.1.cmml">↑</mo><mi id="S3.T4.10.10.10.m1.1.1.3" xref="S3.T4.10.10.10.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.10.10.10.m1.1b"><apply id="S3.T4.10.10.10.m1.1.1.cmml" xref="S3.T4.10.10.10.m1.1.1"><ci id="S3.T4.10.10.10.m1.1.1.1.cmml" xref="S3.T4.10.10.10.m1.1.1.1">↑</ci><ci id="S3.T4.10.10.10.m1.1.1.2.cmml" xref="S3.T4.10.10.10.m1.1.1.2">𝜏</ci><csymbol cd="latexml" id="S3.T4.10.10.10.m1.1.1.3.cmml" xref="S3.T4.10.10.10.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.10.10.10.m1.1c">\tau\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.10.10.10.m1.1d">italic_τ ↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.11.11.11" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.11.11.11.1" style="font-size:90%;">rel</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.11.11.11.m1.1"><semantics id="S3.T4.11.11.11.m1.1a"><mo id="S3.T4.11.11.11.m1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.11.11.11.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.11.11.11.m1.1b"><ci id="S3.T4.11.11.11.m1.1.1.cmml" xref="S3.T4.11.11.11.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.11.11.11.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.11.11.11.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.12.12" style="padding:0.45pt 3.2pt;"><math alttext="\tau\uparrow" class="ltx_Math" display="inline" id="S3.T4.12.12.12.m1.1"><semantics id="S3.T4.12.12.12.m1.1a"><mrow id="S3.T4.12.12.12.m1.1.1" xref="S3.T4.12.12.12.m1.1.1.cmml"><mi id="S3.T4.12.12.12.m1.1.1.2" mathsize="90%" xref="S3.T4.12.12.12.m1.1.1.2.cmml">τ</mi><mo id="S3.T4.12.12.12.m1.1.1.1" mathsize="90%" stretchy="false" xref="S3.T4.12.12.12.m1.1.1.1.cmml">↑</mo><mi id="S3.T4.12.12.12.m1.1.1.3" xref="S3.T4.12.12.12.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S3.T4.12.12.12.m1.1b"><apply id="S3.T4.12.12.12.m1.1.1.cmml" xref="S3.T4.12.12.12.m1.1.1"><ci id="S3.T4.12.12.12.m1.1.1.1.cmml" xref="S3.T4.12.12.12.m1.1.1.1">↑</ci><ci id="S3.T4.12.12.12.m1.1.1.2.cmml" xref="S3.T4.12.12.12.m1.1.1.2">𝜏</ci><csymbol cd="latexml" id="S3.T4.12.12.12.m1.1.1.3.cmml" xref="S3.T4.12.12.12.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.12.12.12.m1.1c">\tau\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.12.12.12.m1.1d">italic_τ ↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.14.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S3.T4.12.14.2.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.14.2.1.1">
<span class="ltx_p" id="S3.T4.12.14.2.1.1.1" style="width:7.0pt;"><span class="ltx_text" id="S3.T4.12.14.2.1.1.1.1" style="font-size:90%;">(a)</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T4.12.14.2.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.14.2.2.1" style="font-size:90%;">COLMAP </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.14.2.2.2.1" style="font-size:90%;">(</span>Schonberger &amp; Frahm<span class="ltx_text" id="S3.T4.12.14.2.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib34" title="">2016</a><span class="ltx_text" id="S3.T4.12.14.2.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.14.2.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.3.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.14.2.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.4.1" style="font-size:90%;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.14.2.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.5.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.14.2.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.6.1" style="font-size:90%;">34.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.14.2.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.7.1" style="font-size:90%;">16.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.14.2.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.8.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.14.2.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.9.1" style="font-size:90%;">0.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.14.2.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.10.1" style="font-size:90%;">96.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.14.2.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.11.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.14.2.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.12.1" style="font-size:90%;">95.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.14.2.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.13.1" style="font-size:90%;">9.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.14.2.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.14.2.14.1" style="font-size:90%;">67.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.15.3">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.15.3.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.15.3.1.1">
<span class="ltx_p" id="S3.T4.12.15.3.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.15.3.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.15.3.2.1" style="font-size:90%;">COLMAP Dense </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.15.3.2.2.1" style="font-size:90%;">(</span>Schönberger et al.<span class="ltx_text" id="S3.T4.12.15.3.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib35" title="">2016</a><span class="ltx_text" id="S3.T4.12.15.3.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.15.3.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.3.1" style="font-size:90%;">26.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.15.3.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.4.1" style="font-size:90%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.15.3.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.5.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.15.3.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.6.1" style="font-size:90%;">22.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.15.3.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.7.1" style="font-size:90%;">89.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.15.3.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.8.1" style="font-size:90%;">23.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.15.3.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.9.1" style="font-size:90%;">20.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.15.3.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.10.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.15.3.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.11.1" style="font-size:90%;">25.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.15.3.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.12.1" style="font-size:90%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.15.3.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.13.1" style="font-size:90%;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.15.3.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.15.3.14.1" style="font-size:90%;">48.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.16.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S3.T4.12.16.4.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.16.4.1.1">
<span class="ltx_p" id="S3.T4.12.16.4.1.1.1" style="width:7.0pt;"><span class="ltx_text" id="S3.T4.12.16.4.1.1.1.1" style="font-size:90%;">(b)</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T4.12.16.4.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.16.4.2.1" style="font-size:90%;">MVSNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.16.4.2.2.1" style="font-size:90%;">(</span>Yao et al.<span class="ltx_text" id="S3.T4.12.16.4.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib52" title="">2018</a><span class="ltx_text" id="S3.T4.12.16.4.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.16.4.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.3.1" style="font-size:90%;">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.16.4.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.4.1" style="font-size:90%;">36.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.16.4.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.5.1" style="font-size:90%;">24.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.16.4.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.6.1" style="font-size:90%;">20.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.16.4.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.7.1" style="font-size:90%;">35.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.16.4.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.8.1" style="font-size:90%;">31.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.16.4.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.9.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.16.4.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.10.1" style="font-size:90%;">86.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.16.4.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.11.1" style="font-size:90%;">8.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.16.4.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.12.1" style="font-size:90%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.16.4.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.13.1" style="font-size:90%;">18.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.16.4.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.16.4.14.1" style="font-size:90%;">49.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.17.5">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.17.5.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.17.5.1.1">
<span class="ltx_p" id="S3.T4.12.17.5.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.17.5.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.17.5.2.1" style="font-size:90%;">MVSNet Inv. Depth </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.17.5.2.2.1" style="font-size:90%;">(</span>Yao et al.<span class="ltx_text" id="S3.T4.12.17.5.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib52" title="">2018</a><span class="ltx_text" id="S3.T4.12.17.5.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.17.5.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.3.1" style="font-size:90%;">18.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.17.5.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.4.1" style="font-size:90%;">30.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.17.5.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.5.1" style="font-size:90%;">22.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.17.5.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.6.1" style="font-size:90%;">20.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.17.5.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.7.1" style="font-size:90%;">21.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.17.5.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.8.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.17.5.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.9.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.17.5.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.10.1" style="font-size:90%;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.17.5.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.11.1" style="font-size:90%;">6.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.17.5.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.12.1" style="font-size:90%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.17.5.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.13.1" style="font-size:90%;">14.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.17.5.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.17.5.14.1" style="font-size:90%;">49.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.18.6">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.18.6.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.18.6.1.1">
<span class="ltx_p" id="S3.T4.12.18.6.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.18.6.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.18.6.2.1" style="font-size:90%;">Vis-MVSSNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.18.6.2.2.1" style="font-size:90%;">(</span>Zhang et al.<span class="ltx_text" id="S3.T4.12.18.6.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib58" title="">2023b</a><span class="ltx_text" id="S3.T4.12.18.6.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.18.6.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.3.1" style="font-size:90%;">9.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.18.6.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.4.1" style="font-size:90%;">55.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.18.6.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.5.1" style="font-size:90%;">8.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.18.6.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.6.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.18.6.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.7.1" style="font-size:90%;">10.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.18.6.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.8.1" style="font-size:90%;">43.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.18.6.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.9.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.18.6.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.10.1" style="font-size:90%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.18.6.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.11.1" style="font-size:90%;">4.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.18.6.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.12.1" style="font-size:90%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.18.6.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.13.1" style="font-size:90%;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.18.6.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.18.6.14.1" style="font-size:90%;">61.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.19.7">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.19.7.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.19.7.1.1">
<span class="ltx_p" id="S3.T4.12.19.7.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.19.7.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.19.7.2.1" style="font-size:90%;">MVS2D ScanNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.19.7.2.2.1" style="font-size:90%;">(</span>Yang et al.<span class="ltx_text" id="S3.T4.12.19.7.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib51" title="">2022</a><span class="ltx_text" id="S3.T4.12.19.7.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.19.7.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.3.1" style="font-size:90%;">21.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.19.7.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.4.1" style="font-size:90%;">8.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.19.7.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.5.1" style="font-size:90%;">27.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.19.7.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.6.1" style="font-size:90%;">5.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.19.7.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.7.1" style="font-size:90%;">27.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.19.7.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.8.1" style="font-size:90%;">4.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.19.7.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.9.1" style="font-size:90%;">17.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.19.7.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.10.1" style="font-size:90%;">9.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.19.7.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.11.1" style="font-size:90%;">29.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.19.7.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.12.1" style="font-size:90%;">4.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.19.7.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.13.1" style="font-size:90%;">24.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.19.7.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.19.7.14.1" style="font-size:90%;">6.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.20.8">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.20.8.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.20.8.1.1">
<span class="ltx_p" id="S3.T4.12.20.8.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.20.8.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.20.8.2.1" style="font-size:90%;">MVS2D DTU </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.20.8.2.2.1" style="font-size:90%;">(</span>Yang et al.<span class="ltx_text" id="S3.T4.12.20.8.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib51" title="">2022</a><span class="ltx_text" id="S3.T4.12.20.8.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.20.8.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.3.1" style="font-size:90%;">226.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.20.8.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.4.1" style="font-size:90%;">0.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.20.8.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.5.1" style="font-size:90%;">32.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.20.8.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.6.1" style="font-size:90%;">11.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.20.8.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.7.1" style="font-size:90%;">99.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.20.8.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.8.1" style="font-size:90%;">11.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.20.8.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.9.1" style="font-size:90%;">3.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.20.8.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.10.1" style="font-size:90%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.20.8.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.11.1" style="font-size:90%;">25.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.20.8.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.12.1" style="font-size:90%;">28.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.20.8.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.13.1" style="font-size:90%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.20.8.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.20.8.14.1" style="font-size:90%;">23.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.21.9">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S3.T4.12.21.9.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.21.9.1.1">
<span class="ltx_p" id="S3.T4.12.21.9.1.1.1" style="width:7.0pt;"><span class="ltx_text" id="S3.T4.12.21.9.1.1.1.1" style="font-size:90%;">(c)</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T4.12.21.9.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.21.9.2.1" style="font-size:90%;">DeMon </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.21.9.2.2.1" style="font-size:90%;">(</span>Ummenhofer et al.<span class="ltx_text" id="S3.T4.12.21.9.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib46" title="">2017</a><span class="ltx_text" id="S3.T4.12.21.9.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.21.9.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.3.1" style="font-size:90%;">16.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.21.9.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.4.1" style="font-size:90%;">13.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.21.9.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.5.1" style="font-size:90%;">75.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.21.9.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.6.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.21.9.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.7.1" style="font-size:90%;">19.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.21.9.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.8.1" style="font-size:90%;">16.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.21.9.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.9.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.21.9.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.10.1" style="font-size:90%;">11.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.21.9.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.11.1" style="font-size:90%;">17.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.21.9.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.12.1" style="font-size:90%;">18.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.21.9.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.13.1" style="font-size:90%;">30.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.21.9.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.21.9.14.1" style="font-size:90%;">11.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.22.10">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.22.10.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.22.10.1.1">
<span class="ltx_p" id="S3.T4.12.22.10.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.22.10.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.22.10.2.1" style="font-size:90%;">DeepV2D KITTI </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.22.10.2.2.1" style="font-size:90%;">(</span>Teed &amp; Deng<span class="ltx_text" id="S3.T4.12.22.10.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib44" title="">2018</a><span class="ltx_text" id="S3.T4.12.22.10.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.22.10.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.3.1" style="font-size:90%;">20.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.22.10.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.4.1" style="font-size:90%;">16.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.22.10.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.5.1" style="font-size:90%;">25.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.22.10.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.6.1" style="font-size:90%;">8.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.22.10.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.7.1" style="font-size:90%;">30.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.22.10.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.8.1" style="font-size:90%;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.22.10.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.9.1" style="font-size:90%;">24.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.22.10.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.10.1" style="font-size:90%;">8.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.22.10.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.11.1" style="font-size:90%;">38.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.22.10.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.12.1" style="font-size:90%;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.22.10.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.13.1" style="font-size:90%;">27.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.22.10.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.22.10.14.1" style="font-size:90%;">10.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.23.11">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.23.11.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.23.11.1.1">
<span class="ltx_p" id="S3.T4.12.23.11.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.23.11.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.23.11.2.1" style="font-size:90%;">DeepV2D ScanNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.23.11.2.2.1" style="font-size:90%;">(</span>Teed &amp; Deng<span class="ltx_text" id="S3.T4.12.23.11.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib44" title="">2018</a><span class="ltx_text" id="S3.T4.12.23.11.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.23.11.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.3.1" style="font-size:90%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.23.11.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.4.1" style="font-size:90%;">5.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.23.11.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.23.11.5.1" style="font-size:90%;">3.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.23.11.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.23.11.6.1" style="font-size:90%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.23.11.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.7.1" style="font-size:90%;">18.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.23.11.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.8.1" style="font-size:90%;">28.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.23.11.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.9.1" style="font-size:90%;">9.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.23.11.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.10.1" style="font-size:90%;">27.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.23.11.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.11.1" style="font-size:90%;">33.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.23.11.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.12.1" style="font-size:90%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.23.11.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.13.1" style="font-size:90%;">25.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.23.11.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.23.11.14.1" style="font-size:90%;">31.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.24.12">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.24.12.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.24.12.1.1">
<span class="ltx_p" id="S3.T4.12.24.12.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.24.12.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.24.12.2.1" style="font-size:90%;">MVSNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.24.12.2.2.1" style="font-size:90%;">(</span>Yao et al.<span class="ltx_text" id="S3.T4.12.24.12.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib52" title="">2018</a><span class="ltx_text" id="S3.T4.12.24.12.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.24.12.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.3.1" style="font-size:90%;">14.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.24.12.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.4.1" style="font-size:90%;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.24.12.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.5.1" style="font-size:90%;">1568.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.24.12.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.6.1" style="font-size:90%;">5.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.24.12.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.7.1" style="font-size:90%;">507.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.24.12.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.8.1" style="font-size:90%;">8.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.24.12.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.9.1" style="font-size:90%;">4429.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.24.12.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.10.1" style="font-size:90%;">0.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.24.12.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.11.1" style="font-size:90%;">118.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.24.12.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.12.1" style="font-size:90%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.24.12.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.13.1" style="font-size:90%;">1327.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.24.12.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.24.12.14.1" style="font-size:90%;">20.1</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.25.13">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.25.13.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.25.13.1.1">
<span class="ltx_p" id="S3.T4.12.25.13.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.25.13.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.25.13.2.1" style="font-size:90%;">MVSNet Inv. Depth </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.25.13.2.2.1" style="font-size:90%;">(</span>Yao et al.<span class="ltx_text" id="S3.T4.12.25.13.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib52" title="">2018</a><span class="ltx_text" id="S3.T4.12.25.13.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.25.13.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.3.1" style="font-size:90%;">29.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.25.13.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.4.1" style="font-size:90%;">8.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.25.13.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.5.1" style="font-size:90%;">65.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.25.13.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.6.1" style="font-size:90%;">28.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.25.13.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.7.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.25.13.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.8.1" style="font-size:90%;">5.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.25.13.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.9.1" style="font-size:90%;">28.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.25.13.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.10.1" style="font-size:90%;">48.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.25.13.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.11.1" style="font-size:90%;">51.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.25.13.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.12.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.25.13.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.13.1" style="font-size:90%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.25.13.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.25.13.14.1" style="font-size:90%;">21.2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.26.14">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.26.14.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.26.14.1.1">
<span class="ltx_p" id="S3.T4.12.26.14.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.26.14.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.26.14.2.1" style="font-size:90%;">Vis-MVSNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.26.14.2.2.1" style="font-size:90%;">(</span>Zhang et al.<span class="ltx_text" id="S3.T4.12.26.14.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib58" title="">2023b</a><span class="ltx_text" id="S3.T4.12.26.14.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.26.14.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.3.1" style="font-size:90%;">10.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.26.14.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.26.14.4.1" style="font-size:90%;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.26.14.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.5.1" style="font-size:90%;">84.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.26.14.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.6.1" style="font-size:90%;">15.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.26.14.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.7.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.26.14.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.8.1" style="font-size:90%;">17.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.26.14.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.9.1" style="font-size:90%;">374.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.26.14.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.10.1" style="font-size:90%;">1.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.26.14.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.11.1" style="font-size:90%;">21.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.26.14.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.12.1" style="font-size:90%;">65.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.26.14.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.13.1" style="font-size:90%;">108.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.26.14.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.26.14.14.1" style="font-size:90%;">31.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.27.15">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.27.15.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.27.15.1.1">
<span class="ltx_p" id="S3.T4.12.27.15.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.27.15.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.27.15.2.1" style="font-size:90%;">MVS2D ScanNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.27.15.2.2.1" style="font-size:90%;">(</span>Yang et al.<span class="ltx_text" id="S3.T4.12.27.15.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib51" title="">2022</a><span class="ltx_text" id="S3.T4.12.27.15.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.27.15.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.3.1" style="font-size:90%;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.27.15.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.4.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.27.15.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.5.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.27.15.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.6.1" style="font-size:90%;">54.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.27.15.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.7.1" style="font-size:90%;">30.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.27.15.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.8.1" style="font-size:90%;">14.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.27.15.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.9.1" style="font-size:90%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.27.15.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.10.1" style="font-size:90%;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.27.15.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.11.1" style="font-size:90%;">56.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.27.15.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.12.1" style="font-size:90%;">11.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.27.15.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.13.1" style="font-size:90%;">34.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.27.15.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.27.15.14.1" style="font-size:90%;">27.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.28.16">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.28.16.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.28.16.1.1">
<span class="ltx_p" id="S3.T4.12.28.16.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.28.16.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.28.16.2.1" style="font-size:90%;">MVS2D DTU </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.28.16.2.2.1" style="font-size:90%;">(</span>Yang et al.<span class="ltx_text" id="S3.T4.12.28.16.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib51" title="">2022</a><span class="ltx_text" id="S3.T4.12.28.16.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.28.16.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.3.1" style="font-size:90%;">93.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.28.16.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.4.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.28.16.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.5.1" style="font-size:90%;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.28.16.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.6.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.28.16.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.7.1" style="font-size:90%;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.28.16.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.8.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.28.16.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.28.16.9.1" style="font-size:90%;">1.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.28.16.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.28.16.10.1" style="font-size:90%;">92.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.28.16.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.11.1" style="font-size:90%;">87.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.28.16.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.12.1" style="font-size:90%;">0.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.28.16.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.13.1" style="font-size:90%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.28.16.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.28.16.14.1" style="font-size:90%;">18.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.29.17">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.29.17.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.29.17.1.1">
<span class="ltx_p" id="S3.T4.12.29.17.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.29.17.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.29.17.2.1" style="font-size:90%;">Robust MVD </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.29.17.2.2.1" style="font-size:90%;">(</span>Schröppel et al.<span class="ltx_text" id="S3.T4.12.29.17.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib37" title="">2022</a><span class="ltx_text" id="S3.T4.12.29.17.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.29.17.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.29.17.3.1" style="font-size:90%;">7.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.29.17.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.29.17.4.1" style="font-size:90%;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.29.17.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.29.17.5.1" style="font-size:90%;">7.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.29.17.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.29.17.6.1" style="font-size:90%;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.29.17.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.29.17.7.1" style="font-size:90%;">9.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.29.17.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.29.17.8.1" style="font-size:90%;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.29.17.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.29.17.9.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.29.17.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.29.17.10.1" style="font-size:90%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.29.17.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.29.17.11.1" style="font-size:90%;">5.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.29.17.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.29.17.12.1" style="font-size:90%;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.29.17.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.29.17.13.1" style="font-size:90%;">6.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.29.17.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.29.17.14.1" style="font-size:90%;">56.0</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.30.18">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S3.T4.12.30.18.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.30.18.1.1">
<span class="ltx_p" id="S3.T4.12.30.18.1.1.1" style="width:7.0pt;"><span class="ltx_text" id="S3.T4.12.30.18.1.1.1.1" style="font-size:90%;">(d)</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T4.12.30.18.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.30.18.2.1" style="font-size:90%;">DeMoN </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.30.18.2.2.1" style="font-size:90%;">(</span>Ummenhofer et al.<span class="ltx_text" id="S3.T4.12.30.18.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib46" title="">2017</a><span class="ltx_text" id="S3.T4.12.30.18.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.30.18.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.3.1" style="font-size:90%;">15.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.30.18.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.4.1" style="font-size:90%;">15.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.30.18.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.5.1" style="font-size:90%;">12.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.30.18.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.6.1" style="font-size:90%;">21.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.30.18.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.7.1" style="font-size:90%;">17.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.30.18.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.8.1" style="font-size:90%;">15.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.30.18.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.9.1" style="font-size:90%;">21.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.30.18.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.10.1" style="font-size:90%;">16.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.30.18.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.11.1" style="font-size:90%;">13.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.30.18.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.12.1" style="font-size:90%;">23.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.30.18.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.13.1" style="font-size:90%;">16.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.30.18.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.30.18.14.1" style="font-size:90%;">18.3</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.31.19">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.31.19.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.31.19.1.1">
<span class="ltx_p" id="S3.T4.12.31.19.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.31.19.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.31.19.2.1" style="font-size:90%;">DeepV2D KITTI </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.31.19.2.2.1" style="font-size:90%;">(</span>Teed &amp; Deng<span class="ltx_text" id="S3.T4.12.31.19.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib44" title="">2018</a><span class="ltx_text" id="S3.T4.12.31.19.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.31.19.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.31.19.3.1" style="font-size:90%;">3.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.31.19.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.31.19.4.1" style="font-size:90%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.31.19.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.5.1" style="font-size:90%;">23.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.31.19.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.6.1" style="font-size:90%;">11.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.31.19.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.7.1" style="font-size:90%;">27.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.31.19.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.8.1" style="font-size:90%;">10.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.31.19.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.9.1" style="font-size:90%;">24.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.31.19.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.10.1" style="font-size:90%;">8.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.31.19.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.11.1" style="font-size:90%;">34.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.31.19.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.12.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.31.19.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.13.1" style="font-size:90%;">22.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.31.19.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.31.19.14.1" style="font-size:90%;">22.7</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.32.20">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.32.20.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.32.20.1.1">
<span class="ltx_p" id="S3.T4.12.32.20.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.32.20.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.32.20.2.1" style="font-size:90%;">DeepV2D ScanNet </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.32.20.2.2.1" style="font-size:90%;">(</span>Teed &amp; Deng<span class="ltx_text" id="S3.T4.12.32.20.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib44" title="">2018</a><span class="ltx_text" id="S3.T4.12.32.20.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.32.20.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.32.20.3.1" style="font-size:90%;">10.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.32.20.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.32.20.4.1" style="font-size:90%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.32.20.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.5.1" style="font-size:90%;">4.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.32.20.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.6.1" style="font-size:90%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.32.20.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.7.1" style="font-size:90%;">11.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.32.20.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.8.1" style="font-size:90%;">29.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.32.20.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.9.1" style="font-size:90%;">7.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.32.20.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.10.1" style="font-size:90%;">33.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.32.20.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.11.1" style="font-size:90%;">8.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.32.20.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.12.1" style="font-size:90%;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.32.20.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.13.1" style="font-size:90%;">8.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.32.20.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.32.20.14.1" style="font-size:90%;">39.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.33.21">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_t" id="S3.T4.12.33.21.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.33.21.1.1">
<span class="ltx_p" id="S3.T4.12.33.21.1.1.1" style="width:7.0pt;"><span class="ltx_text" id="S3.T4.12.33.21.1.1.1.1" style="font-size:90%;">(e)</span></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S3.T4.12.33.21.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.33.21.2.1" style="font-size:90%;">DUSt3R </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.33.21.2.2.1" style="font-size:90%;">(</span>Wang et al.<span class="ltx_text" id="S3.T4.12.33.21.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib48" title="">2024</a><span class="ltx_text" id="S3.T4.12.33.21.2.4.3" style="font-size:90%;">)</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.33.21.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.33.21.3.1" style="font-size:90%;">9.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.33.21.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.4.1" style="font-size:90%;">39.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.33.21.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.5.1" style="font-size:90%;">4.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.33.21.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.6.1" style="font-size:90%;">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.33.21.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.7.1" style="font-size:90%;">2.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.33.21.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.8.1" style="font-size:90%;">76.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.33.21.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.9.1" style="font-size:90%;">3.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.33.21.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.10.1" style="font-size:90%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.33.21.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.11.1" style="font-size:90%;">3.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T4.12.33.21.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.12.1" style="font-size:90%;">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.33.21.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.13.1" style="font-size:90%;">4.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.12.33.21.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.33.21.14.1" style="font-size:90%;">64.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.34.22">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.34.22.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.34.22.1.1">
<span class="ltx_p" id="S3.T4.12.34.22.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.34.22.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.34.22.2.1" style="font-size:90%;">DUSt3R </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.34.22.2.2.1" style="font-size:90%;">(</span>Wang et al.<span class="ltx_text" id="S3.T4.12.34.22.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib48" title="">2024</a><span class="ltx_text" id="S3.T4.12.34.22.2.4.3" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T4.12.34.22.2.5" style="font-size:90%;">, </span><span class="ltx_text ltx_font_italic" id="S3.T4.12.34.22.2.6" style="font-size:90%;">our imp.</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.34.22.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.3.1" style="font-size:90%;">11.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.34.22.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.4.1" style="font-size:90%;">33.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.34.22.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.34.22.5.1" style="font-size:90%;">4.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.34.22.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.34.22.6.1" style="font-size:90%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.34.22.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.7.1" style="font-size:90%;">3.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.34.22.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.8.1" style="font-size:90%;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.34.22.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.34.22.9.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.34.22.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.34.22.10.1" style="font-size:90%;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.34.22.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.11.1" style="font-size:90%;">2.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.34.22.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.12.1" style="font-size:90%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.34.22.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.13.1" style="font-size:90%;">4.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.34.22.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.34.22.14.1" style="font-size:90%;">64.4</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.35.23">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.T4.12.35.23.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.35.23.1.1">
<span class="ltx_p" id="S3.T4.12.35.23.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S3.T4.12.35.23.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text" id="S3.T4.12.35.23.2.1" style="font-size:90%;">MASt3R </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T4.12.35.23.2.2.1" style="font-size:90%;">(</span>Leroy et al.<span class="ltx_text" id="S3.T4.12.35.23.2.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2503.07507v1#bib.bib21" title="">2024</a><span class="ltx_text" id="S3.T4.12.35.23.2.4.3" style="font-size:90%;">)</span></cite><span class="ltx_text" id="S3.T4.12.35.23.2.5" style="font-size:90%;">, </span><span class="ltx_text ltx_font_italic" id="S3.T4.12.35.23.2.6" style="font-size:90%;">our imp.</span>
</th>
<td class="ltx_td ltx_align_center" id="S3.T4.12.35.23.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.3.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.35.23.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.4.1" style="font-size:90%;">5.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.35.23.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.5.1" style="font-size:90%;">22.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.35.23.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.6.1" style="font-size:90%;">9.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.35.23.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.7.1" style="font-size:90%;">27.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.35.23.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.8.1" style="font-size:90%;">9.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.35.23.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.9.1" style="font-size:90%;">13.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.35.23.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.10.1" style="font-size:90%;">13.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.35.23.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.11.1" style="font-size:90%;">22.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T4.12.35.23.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.12.1" style="font-size:90%;">14.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.35.23.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.13.1" style="font-size:90%;">24.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.12.35.23.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.35.23.14.1" style="font-size:90%;">10.6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.12.36.24">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="S3.T4.12.36.24.1" style="padding:0.45pt 3.2pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T4.12.36.24.1.1">
<span class="ltx_p" id="S3.T4.12.36.24.1.1.1" style="width:7.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S3.T4.12.36.24.2" style="padding:0.45pt 3.2pt;">
<span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.2.1" style="font-size:90%;">PE3R</span><span class="ltx_text" id="S3.T4.12.36.24.2.2" style="font-size:90%;">, </span><span class="ltx_text ltx_font_italic" id="S3.T4.12.36.24.2.3" style="font-size:90%;">ours</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.36.24.3" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.36.24.3.1" style="font-size:90%;">9.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.12.36.24.4" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.4.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.36.24.5" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.36.24.5.1" style="font-size:90%;">5.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.12.36.24.6" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.36.24.6.1" style="font-size:90%;">55.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.36.24.7" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.7.1" style="font-size:90%;">2.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.12.36.24.8" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.8.1" style="font-size:90%;">82.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.36.24.9" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.36.24.9.1" style="font-size:90%;">3.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.12.36.24.10" style="padding:0.45pt 3.2pt;"><span class="ltx_text" id="S3.T4.12.36.24.10.1" style="font-size:90%;">69.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.36.24.11" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.11.1" style="font-size:90%;">2.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T4.12.36.24.12" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.12.1" style="font-size:90%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.36.24.13" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.13.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.12.36.24.14" style="padding:0.45pt 3.2pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.12.36.24.14.1" style="font-size:90%;">68.0</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of various multi-view depth estimation methods. It categorizes these methods into five groups based on the information available to them during depth estimation: (a) Classical approaches using standard techniques; (b) Methods leveraging known camera poses and depth ranges but lacking alignment; (c) Methods using poses for absolute scale but without depth range or alignment; (d) Methods utilizing alignment but lacking poses and depth ranges; and (e) Feed-forward architectures that do not require 3D information.  The results illustrate how the availability (or lack) of such information affects the accuracy of depth estimation.
> <details>
> <summary>read the caption</summary>
> Table 4: Multi-View Depth Evaluation. The settings are: (a) classical approaches, (b) with known poses and depth range, but without alignment, (c) absolute scale evaluation using poses, but without depth range or alignment, (d) without poses and depth range, but with alignment, and (e) feed-forward architectures that does not use any 3D information.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.5.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.5.1.1.1" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.1.1.1.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.2" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.1.1.2.1" style="font-size:90%;">mIoU</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.3" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.1.1.3.1" style="font-size:90%;">mPA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.5.1.1.4" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.1.1.4.1" style="font-size:90%;">mP</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.5.2.1.1" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.2.1.1.1" style="font-size:90%;">PE3R, w/o Multi-Level Disam.</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.2.1.2" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.2.1.2.1" style="font-size:90%;">0.1624</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.2.1.3" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.2.1.3.1" style="font-size:90%;">0.5892</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.5.2.1.4" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.2.1.4.1" style="font-size:90%;">0.5623</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.3.2.1" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.3.2.1.1" style="font-size:90%;">PE3R, w/o Cross-View Disam.</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.3.2.2" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.3.2.2.1" style="font-size:90%;">0.1895</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.3.2.3" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.3.2.3.1" style="font-size:90%;">0.6012</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.3.2.4" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.3.2.4.1" style="font-size:90%;">0.5923</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.5.4.3.1" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.4.3.1.1" style="font-size:90%;">PE3R, w/o Global MinMax Norm.</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.5.4.3.2" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.4.3.2.1" style="font-size:90%;">0.2035</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.4.3.3" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.4.3.3.1" style="font-size:90%;">0.6253</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.5.4.3.4" style="padding:0.45pt 4.0pt;"><span class="ltx_text" id="S4.T5.5.4.3.4.1" style="font-size:90%;">0.6186</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.5.5.4.1" style="padding:0.45pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.4.1.1" style="font-size:90%;">PE3R</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.4.2" style="padding:0.45pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.4.2.1" style="font-size:90%;">0.2248</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.4.3" style="padding:0.45pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.4.3.1" style="font-size:90%;">0.6542</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.5.5.4.4" style="padding:0.45pt 4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.5.5.4.4.1" style="font-size:90%;">0.6315</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of different components within the PE3R (Perception-Efficient 3D Reconstruction) framework on 2D-to-3D open-vocabulary segmentation.  Specifically, it shows how removing the multi-level disambiguation, cross-view disambiguation, and global min-max normalization modules affects the model's performance on the ScanNet++ dataset. The metrics used to assess performance are mean Intersection over Union (mIoU), mean Pixel Accuracy (mPA), and mean Precision (mP). The table allows for a comparison of the full PE3R model against versions with individual components removed, highlighting the contribution of each component to the overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation Studies for 2D-to-3D open-vocabulary segmentation on ScanNet++ dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T6.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.2.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T6.2.2.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.2.3.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S4.T6.1.1.1.1" style="font-size:90%;">rel</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><math alttext="\tau\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.m1.1a"><mrow id="S4.T6.2.2.2.m1.1.1" xref="S4.T6.2.2.2.m1.1.1.cmml"><mi id="S4.T6.2.2.2.m1.1.1.2" mathsize="90%" xref="S4.T6.2.2.2.m1.1.1.2.cmml">τ</mi><mo id="S4.T6.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S4.T6.2.2.2.m1.1.1.1.cmml">↑</mo><mi id="S4.T6.2.2.2.m1.1.1.3" xref="S4.T6.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.m1.1b"><apply id="S4.T6.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.m1.1.1"><ci id="S4.T6.2.2.2.m1.1.1.1.cmml" xref="S4.T6.2.2.2.m1.1.1.1">↑</ci><ci id="S4.T6.2.2.2.m1.1.1.2.cmml" xref="S4.T6.2.2.2.m1.1.1.2">𝜏</ci><csymbol cd="latexml" id="S4.T6.2.2.2.m1.1.1.3.cmml" xref="S4.T6.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.m1.1c">\tau\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.m1.1d">italic_τ ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.2.4.1" style="font-size:90%;">Run Time</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.3.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T6.2.3.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.3.1.1.1" style="font-size:90%;">PE3R, w/o Semantic Field Rec.</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.3.1.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.3.1.2.1" style="font-size:90%;">5.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.3.1.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.3.1.3.1" style="font-size:90%;">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.3.1.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.3.1.4.1" style="font-size:90%;">10.4021s</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.4.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T6.2.4.2.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.2.4.2.1.1" style="font-size:90%;">PE3R</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.4.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.4.2.2.1" style="font-size:90%;">4.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.4.2.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.4.2.3.1" style="font-size:90%;">68.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.4.2.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S4.T6.2.4.2.4.1" style="font-size:90%;">11.1934s</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies conducted to evaluate the impact of semantic field reconstruction on the overall performance of the PE3R framework.  It compares the relative error (rel) and run time of the PE3R model with and without the semantic field reconstruction module.  The results demonstrate that incorporating semantic field reconstruction significantly improves the accuracy of the 3D reconstruction while only slightly increasing computation time.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation Studies on semantic field reconstruction.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.07507/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.07507/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}