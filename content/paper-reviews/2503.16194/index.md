---
title: "Improving Autoregressive Image Generation through Coarse-to-Fine Token Prediction"
summary: "Coarse-to-Fine Token Prediction improves autoregressive image generation by assigning the same coarse label for similar tokens, balancing generation quality and computational efficiency."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 National University of Singapore",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16194 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyao Guo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16194" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16194" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16194/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Autoregressive models** are great for image generation, but they require discretizing continuous pixel data. To reduce errors from this process, recent works use **larger codebooks**, which expands vocabulary size and complicates autoregressive modeling. This paper aims to find a way to enjoy the benefits of large codebooks without making autoregressive modeling more difficult. The problem is that tokens with similar codeword representations produce similar effects on the final generated image, revealing redundancy in large codebooks. 



This paper introduces **Coarse-to-Fine (CTF) token prediction**, realized by assigning the same coarse label for similar tokens. The framework consists of (1) an autoregressive model that predicts coarse labels sequentially, and (2) an auxiliary model that predicts fine-grained labels for all tokens conditioned on their coarse labels. CTF can maintain large codebook sizes for quality reconstruction while simplifying the autoregressive modeling task. Experiments on ImageNet demonstrate superior performance and faster sampling speeds.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Coarse-to-fine token prediction reduces vocabulary redundancy in autoregressive image generation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} K-means clustering provides a systematic method for assigning coarse labels. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Fine labels can be efficiently predicted conditioned on coarse labels. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new way to approach autoregressive image generation, **balancing generation quality and computational efficiency**. It offers new insight and methods for researchers working on image synthesis, generative modeling, and representation learning. The CTF framework provides a **promising direction** for future research in autoregressive models, particularly in scenarios where large codebooks are used. The code release also encourages reproducibility and further exploration by the community.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16194/x1.png)

> 🔼 Figure 1 illustrates the core concepts of the proposed Coarse-to-Fine (CTF) image generation method. (a) shows the process of clustering similar codewords (vectors representing image features) in the codebook of the VQ-VAE into groups, forming coarse labels.  (b) demonstrates the redundancy within large codebooks by showing that images reconstructed after replacing tokens with similar ones from the same cluster retain overall structure and content with minimal detail changes. This highlights that fine-grained token-level prediction might be unnecessary. (c) details the two-stage generation process. The first stage predicts a sequence of coarse labels autoregressively, representing clusters of codewords rather than individual tokens. The second stage then uses the coarse label sequence as context to simultaneously predict all the fine-grained labels (original tokens) for the whole image in a single step. This approach reduces the autoregressive model's computational complexity.
> <details>
> <summary>read the caption</summary>
> Figure 1:  (a) The codeword clustering process, where token indices are grouped based on the similarity of their corresponding feature vectors in the codebook. (b) Visual demonstration of token redundancy: replacing each token with another randomly sampled from the same cluster produces images with only minor variations in detail, preserving the overall structure and content. (c) Illustration of our two-stage generation process: in the first stage, the model autoregressively predicts coarse labels (cluster indices) for each token in the sequence; then the second stage model predicts fine labels (indices in the codebook) for all tokens in a single step.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T1.9.9">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.9.9.10.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.9.9.10.1.1">Type</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T1.9.9.10.1.2">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S5.T1.9.9.10.1.3">#Para.</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.9.9.10.1.4">FID↓</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.9.9.10.1.5">IS↑</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.9.9.10.1.6">Pr.↑</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.9.9.10.1.7">Re.↑</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.11.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.11.2.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.9.9.11.2.2">BigGAN <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.11.2.3">112M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.4">6.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.5">224.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.6">0.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.11.2.7">0.38</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.12.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.12.3.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.12.3.2">GigaGAN <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.12.3.3">569M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.4">3.45</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.5">225.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.6">0.84</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.12.3.7">0.61</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.13.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.13.4.1"><span class="ltx_text" id="S5.T1.9.9.13.4.1.1">GAN</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.13.4.2">StyleGAN-XL <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.13.4.3">166M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.4">2.30</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.5">265.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.6">0.78</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.13.4.7">0.53</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.14.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.14.5.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.9.9.14.5.2">ADM <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.14.5.3">554M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.14.5.4">10.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.14.5.5">101.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.14.5.6">0.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.14.5.7">0.63</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.15.6">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.15.6.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.15.6.2">CDM <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.15.6.3">-</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.4">4.88</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.5">158.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.15.6.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.16.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.16.7.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.16.7.2">LDM-4 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.16.7.3">400M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.4">3.60</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.5">247.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.16.7.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.17.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.17.8.1"><span class="ltx_text" id="S5.T1.9.9.17.8.1.1">Diff.</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.17.8.2">DiT-XL/2 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.17.8.3">675M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.17.8.4">2.27</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.17.8.5">278.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.17.8.6">0.83</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.17.8.7">0.57</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.18.9">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.18.9.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.9.9.18.9.2">MaskGIT <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.18.9.3">227M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.18.9.4">6.18</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.18.9.5">182.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.18.9.6">0.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.18.9.7">0.51</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.19.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.19.10.1"><span class="ltx_text" id="S5.T1.9.9.19.10.1.1">Mask.</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.19.10.2">MaskGIT-re <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.19.10.3">227M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.4">4.02</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.5">355.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.19.10.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.20.11">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.20.11.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.9.9.20.11.2">VAR-d16 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.20.11.3">310M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.20.11.4">3.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.20.11.5">274.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.20.11.6">0.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.20.11.7">0.51</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.21.12">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.21.12.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.21.12.2">VAR-d20 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.21.12.3">600M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.21.12.4">2.57</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.21.12.5">302.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.21.12.6">0.83</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.21.12.7">0.56</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.22.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.22.13.1"><span class="ltx_text" id="S5.T1.9.9.22.13.1.1">VAR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.22.13.2">VAR-d24 <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.22.13.3">1.0B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.22.13.4">2.09</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.22.13.5">312.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.22.13.6">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.22.13.7">0.59</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.23.14">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.23.14.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.9.9.23.14.2">VQGAN <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.23.14.3">227M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.23.14.4">18.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.23.14.5">80.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.23.14.6">0.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.23.14.7">0.26</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.24.15">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.24.15.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.24.15.2">VQGAN <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.24.15.3">1.4B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.24.15.4">15.78</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.24.15.5">74.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.24.15.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.24.15.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.25.16">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.25.16.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.25.16.2">VQGAN-re <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.25.16.3">1.4B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.25.16.4">5.20</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.25.16.5">280.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.25.16.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.25.16.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.26.17">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.26.17.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.26.17.2">ViT-VQGAN <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.26.17.3">1.7B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.26.17.4">4.17</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.26.17.5">175.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.26.17.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.26.17.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.27.18">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.27.18.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.27.18.2">ViT-VQGAN-re <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.27.18.3">1.7B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.27.18.4">3.48</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.27.18.5">175.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.27.18.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.27.18.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.28.19">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.28.19.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.28.19.2">RQTran. <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.28.19.3">3.8B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.28.19.4">7.55</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.28.19.5">134.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.28.19.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.28.19.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.29.20">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.29.20.1"><span class="ltx_text" id="S5.T1.9.9.29.20.1.1">AR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.29.20.2">RQTran.-re <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.29.20.3">3.8B</th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.29.20.4">3.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.29.20.5">323.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.29.20.6">-</td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.29.20.7">-</td>
</tr>
<tr class="ltx_tr" id="S5.T1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.1.1.1.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.1.1.1.1">IAR-B<sup class="ltx_sup" id="S5.T1.1.1.1.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.1.1.1.3">111M</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.4">5.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.5">202.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.6">0.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.1.1.1.7">0.45</td>
</tr>
<tr class="ltx_tr" id="S5.T1.2.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.2.2.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.2.2.2.1">IAR-L<sup class="ltx_sup" id="S5.T1.2.2.2.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.2.2.2.3">343M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.4">3.18</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.5">234.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.6">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T1.2.2.2.7">0.53</td>
</tr>
<tr class="ltx_tr" id="S5.T1.3.3.3">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.3.3.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.3.3.3.1">IAR-XL<sup class="ltx_sup" id="S5.T1.3.3.3.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.3.3.3.3">775M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.4">2.52</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.5">248.10</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.6">0.82</td>
<td class="ltx_td ltx_align_center" id="S5.T1.3.3.3.7">0.58</td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.4">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.4.4.4.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.4.4.4.1">LlamaGen-B<sup class="ltx_sup" id="S5.T1.4.4.4.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.4.4.4.3">111M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.4">6.09</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.5">182.54</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.6">0.85</td>
<td class="ltx_td ltx_align_center" id="S5.T1.4.4.4.7">0.42</td>
</tr>
<tr class="ltx_tr" id="S5.T1.5.5.5">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.5.5.5.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.5.5.5.1">LlamaGen-L<sup class="ltx_sup" id="S5.T1.5.5.5.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.5.5.5.3">343M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.4">3.07</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.5">256.06</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.6">0.83</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.7">0.52</td>
</tr>
<tr class="ltx_tr" id="S5.T1.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.6.6.6.2"><span class="ltx_text" id="S5.T1.6.6.6.2.1">AR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.6.6.6.1">LlamaGen-XL<sup class="ltx_sup" id="S5.T1.6.6.6.1.1">†</sup> <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.6.6.6.3">775M</th>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.4">2.62</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.5">244.08</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.6">0.80</td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.7">0.57</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.30.21">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.30.21.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.9.9.30.21.2" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.30.21.2.1" style="background-color:#C9EEF6;">LlamaGen-B <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T1.9.9.30.21.3" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.30.21.3.1" style="background-color:#C9EEF6;">111M</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.30.21.4" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.30.21.4.1" style="background-color:#C9EEF6;">5.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.30.21.5" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.30.21.5.1" style="background-color:#C9EEF6;">193.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.30.21.6" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.30.21.6.1" style="background-color:#C9EEF6;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.30.21.7" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.30.21.7.1" style="background-color:#C9EEF6;">0.45</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.7">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.7.7.7.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.7.7.7.3" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.7.7.7.3.1" style="background-color:#C9EEF6;">+ CTF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.7.7.7.1" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.7.7.7.1.1" style="background-color:#C9EEF6;">87M<sup class="ltx_sup" id="S5.T1.7.7.7.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T1.7.7.7.1.1.1.1" style="background-color:#C9EEF6;">∗</span></sup></span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.4" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.7.7.7.4.1" style="background-color:#C9EEF6;">4.15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.5" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.7.7.7.5.1" style="background-color:#C9EEF6;">254.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.6" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.7.7.7.6.1" style="background-color:#C9EEF6;">0.86</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.7" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.7.7.7.7.1" style="background-color:#C9EEF6;">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.31.22">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.31.22.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.31.22.2" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.9.9.31.22.2.1" style="background-color:#64DDF5;">LlamaGen-L <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.31.22.3" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.9.9.31.22.3.1" style="background-color:#64DDF5;">343M</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.31.22.4" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.9.9.31.22.4.1" style="background-color:#64DDF5;">3.80</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.31.22.5" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.9.9.31.22.5.1" style="background-color:#64DDF5;">248.28</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.31.22.6" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.9.9.31.22.6.1" style="background-color:#64DDF5;">0.83</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.31.22.7" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.9.9.31.22.7.1" style="background-color:#64DDF5;">0.52</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.8.8">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.8.8.8.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.8.8.8.3" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.8.8.8.3.1" style="background-color:#64DDF5;">+ CTF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.8.8.8.1" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.8.8.8.1.1" style="background-color:#64DDF5;">310M<sup class="ltx_sup" id="S5.T1.8.8.8.1.1.1"><span class="ltx_text ltx_font_italic" id="S5.T1.8.8.8.1.1.1.1" style="background-color:#64DDF5;">∗</span></sup></span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.8.4" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.8.8.8.4.1" style="background-color:#64DDF5;">2.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.8.5" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.8.8.8.5.1" style="background-color:#64DDF5;">291.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.8.6" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.8.8.8.6.1" style="background-color:#64DDF5;">0.84</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.8.7" style="background-color:#64DDF5;"><span class="ltx_text" id="S5.T1.8.8.8.7.1" style="background-color:#64DDF5;">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.32.23">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.32.23.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.32.23.2" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.32.23.2.1" style="background-color:#C9EEF6;">LlamaGen-XL <cite class="ltx_cite ltx_citemacro_citep">[<a class="ltx_ref" href="https://arxiv.org/html/2503.16194v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T1.9.9.32.23.3" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.32.23.3.1" style="background-color:#C9EEF6;">775M</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.32.23.4" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.32.23.4.1" style="background-color:#C9EEF6;">3.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.32.23.5" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.32.23.5.1" style="background-color:#C9EEF6;">227.08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.32.23.6" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.32.23.6.1" style="background-color:#C9EEF6;">0.81</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.32.23.7" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.32.23.7.1" style="background-color:#C9EEF6;">0.54</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.9.9.9.2"><span class="ltx_text" id="S5.T1.9.9.9.2.1">AR</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.9.9.9.3" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.9.3.1" style="background-color:#C9EEF6;">+ CTF</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T1.9.9.9.1" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.9.1.1" style="background-color:#C9EEF6;">734M<sup class="ltx_sup" id="S5.T1.9.9.9.1.1.1"><span class="ltx_text" id="S5.T1.9.9.9.1.1.1.1" style="background-color:#C9EEF6;">∗</span></sup></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.9.4" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.9.4.1" style="background-color:#C9EEF6;">2.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.9.5" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.9.5.1" style="background-color:#C9EEF6;">299.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.9.6" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.9.6.1" style="background-color:#C9EEF6;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.9.9.9.7" style="background-color:#C9EEF6;"><span class="ltx_text" id="S5.T1.9.9.9.7.1" style="background-color:#C9EEF6;">0.55</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a performance comparison of various image generation models on the ImageNet dataset at a resolution of 256x256 pixels.  The models are categorized by their type (Generative Adversarial Networks (GANs), Diffusion Models (Diff.), Masked Autoencoders (Mask.), Vector Quantized Generative Adversarial Networks (VQGAN), and Autoregressive Models (AR)).  Each model's performance is evaluated using four key metrics: Fréchet Inception Distance (FID), Inception Score (IS), Precision (Pr.), and Recall (Re.). Lower FID scores indicate better image quality, while higher IS scores represent better diversity and quality.  Precision and Recall assess the model's ability to accurately generate images from the given class labels.  The table also notes special training conditions for some models (trained at a higher resolution and downsampled), and highlights that the autoregressive models in this study use a smaller parameter count due to vocabulary size reduction complemented by an auxiliary network for efficiency.  Color-coding assists in comparing the performance of the models to their baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance comparison on class-conditional ImageNet at 256×256 resolution. Models are evaluated using FID, Inception Score (IS), precision (Pr.), and recall (Re.) metrics. The background is colorized for convenient comparison with baseline. Models with ††\dagger† were trained at 384×384 resolution and downsampled to 256×256 for evaluation. ∗*∗: Our autoregressive models have fewer parameters due to the reduced vocabulary size, complemented by an auxiliary network for fine-grained prediction, see Section 5.3 for a detailed efficiency analysis.
> </details>





### In-depth insights


#### CTF: Coarse-to-Fine
The concept of "CTF: Coarse-to-Fine" presents a hierarchical approach to image generation, drawing parallels to multi-resolution strategies in other domains. The core idea is to **decompose the complex token prediction task into manageable sub-problems**, initially focusing on the overall structure and subsequently refining the details. This is achieved by first predicting "coarse" labels that represent clusters of similar tokens, thereby reducing the effective vocabulary size and simplifying the autoregressive modeling task. A separate model then predicts the "fine" labels (the original token indices) conditioned on the predicted coarse labels. A potential advantage of this approach is improved efficiency, as the initial coarse prediction can guide the subsequent fine-grained prediction, reducing the search space. This strategy could also be more robust to noise or variations in the input data, as the coarse representation captures the essential structure while filtering out irrelevant details. The trade-offs involve the **complexity of defining appropriate coarse labels** and the potential for information loss during the initial clustering step. The effectiveness hinges on the ability of the coarse labels to capture the essential structure of the image while still allowing for sufficient detail to be recovered in the fine prediction stage. Successfully implemented, the CTF strategy offers a way to **leverage large codebooks without the computational burden**.

#### Redundancy in Tokens
The paper addresses **redundancy in tokens** within autoregressive image generation, a critical area given the increasing codebook sizes in VQ-VAE-based models. The key insight is that not all tokens are equally important; some contribute minimally to the final image, indicating redundancy. Exploiting this redundancy allows for a more efficient autoregressive modeling. **By grouping similar tokens** into coarse labels and predicting these first, the complexity of the prediction task is greatly reduced. This coarse-to-fine approach enables the benefits of large codebooks while maintaining a manageable vocabulary size, leading to improved performance and faster sampling speeds. This approach is effective because visually similar tokens often have similar effects on the generated image.

#### Faster Sampling
The paper addresses the challenge of balancing reconstruction quality with autoregressive modeling complexity in image generation. Large codebooks improve reconstruction but complicate the autoregressive task. The study introduces a coarse-to-fine (CTF) approach, clustering similar tokens and predicting coarse labels before refining with fine-grained details.  A key aspect of the CTF method lies in achieving **faster sampling speeds** despite adding an auxiliary network. This speedup arises from the reduced vocabulary size in the autoregressive stage, streamlining the prediction task. Furthermore, as the autoregressive model scales, the efficiency gains from the smaller vocabulary become more pronounced, offsetting the computational cost of the auxiliary network. This contributes to a notable overall improvement in sampling efficiency. The approach leverages a reduced, semantically meaningful label set, simplifying the process and enhancing real-world applications, achieving both improved performance and higher speed.

#### k-means Clustering
**K-means clustering** is employed to group tokens with similar codeword representations, assigning each cluster a coarse label. This process reduces the effective vocabulary size, simplifying the autoregressive modeling task by working with semantically meaningful clusters instead of individual tokens. K-means is chosen for its efficiency in partitioning the codebook vectors, enabling a more manageable and interpretable representation.  Without **k-means**, the auxiliary model fails to accurately predict fine labels from coarse labels when clustering is performed randomly because of the weak correlation between tokens within the same randomly assigned cluster, which significantly impairs the model's ability to capture inter-token relationships.

#### ImageNet Results
The paper thoroughly evaluates its method on the ImageNet dataset, a standard benchmark for image generation. The results consistently demonstrate the superiority of the proposed approach, achieving significant performance gains across various model sizes. **The improved Inception Score highlights the enhanced quality of generated images.** The proposed method effectively enhances image generation quality and offers faster sampling speeds. The study thoroughly examines various hyperparameters, like number of clusters, KMeans, Model size, CFG, and Temperature, providing valuable insights into their impact on performance. The performance improvements are substantial, showcasing the effectiveness of the coarse-to-fine prediction strategy. **The higher scores compared to baselines, demonstrates the effectiveness of redundancy reduction.**


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16194/x2.png)

> 🔼 This figure displays a comparison of the performance of the baseline LlamaGen models and the models enhanced with the proposed coarse-to-fine (CTF) method across different training epochs.  The plots show the Inception Score (IS) and Fréchet Inception Distance (FID) metrics over the training epochs.  The CTF-enhanced models exhibit significantly better performance and faster convergence, achieving superior IS and lower FID scores compared to the baseline LlamaGen models.  The graph also visually shows a speedup in convergence for the CTF models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Model performance comparison on different epochs. When our method is applied, models achieve significantly better performance.
> </details>



![](https://arxiv.org/html/2503.16194/x3.png)

> 🔼 This figure showcases several images generated using the proposed Coarse-to-Fine (CTF) method, specifically using the LlamaGen-XL model, as a benchmark on the ImageNet dataset with 256x256 resolution.  The images demonstrate the model's ability to generate high-quality, detailed images with rich textures and structures by leveraging a two-stage prediction approach. Each image shows the resulting image from the model, highlighting the effectiveness of the CTF method in producing visually appealing and coherent outputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Generation results of our method (based on LlamaGen-XL) on ImageNet 256×256 benchmark.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T2.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T2.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T2.2.1.1.1.1">Model</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.1.2">Total Param</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.1.3">Step</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.1.4">images/sec ↑</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.1.5">FID ↓</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T2.2.1.1.1.6">IS ↑</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.2.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.2.1.1">LlamaGen-B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.1.2">111M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.1.3">256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.1.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.2.1.4.1">13.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.1.5">5.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.2.1.6">193.61</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.3.2.1">+ CTF</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.2.2">87M+343M</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.2.3">256+1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.2.4">12.83</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.2.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.3.2.5.1">4.15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.3.2.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.3.2.6.1">254.99</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.4.3.1">LlamaGen-L</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.3.2">343M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.3.3">256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.3.4">7.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.3.5">3.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.4.3.6">248.28</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S5.T2.2.1.5.4.1">+ CTF</th>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.4.2">310M+343M</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.4.3">256+1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.4.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.5.4.4.1">8.71</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.4.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.5.4.5.1">2.97</span></td>
<td class="ltx_td ltx_align_center" id="S5.T2.2.1.5.4.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.5.4.6.1">291.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T2.2.1.6.5.1">LlamaGen-XL</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.6.5.2">775M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.6.5.3">256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.6.5.4">5.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.6.5.5">3.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.2.1.6.5.6">227.08</td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T2.2.1.7.6.1">+ CTF</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.7.6.2">734M+343M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.7.6.3">256+1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.7.6.4"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.7.6.4.1">6.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.7.6.5"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.7.6.5.1">2.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T2.2.1.7.6.6"><span class="ltx_text ltx_font_bold" id="S5.T2.2.1.7.6.6.1">299.69</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares the sampling speeds of the proposed coarse-to-fine (CTF) method and baseline methods for autoregressive image generation.  The comparison is performed using a single NVIDIA A100 GPU with a batch size of 64 images.  Results are presented in terms of images per second and key performance metrics. Notably, despite adding an auxiliary network (343M parameters), the CTF method shows improved sampling efficiency in most cases, showcasing its computational advantages.
> <details>
> <summary>read the caption</summary>
> Table 2: Sampling speed comparison, measured on a single A100 GPU with a batch size of 64. Although our method employs an auxiliary network with 343M parameters, our method achieved better sampling efficiency in most cases.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.st1.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st1.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st1.4.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">Num.</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st1.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.st1.1.1.1.m1.1"><semantics id="S5.T3.st1.1.1.1.m1.1a"><mo id="S5.T3.st1.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.st1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st1.1.1.1.m1.1b"><ci id="S5.T3.st1.1.1.1.m1.1.1.cmml" xref="S5.T3.st1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st1.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st1.2.2.2.m1.1"><semantics id="S5.T3.st1.2.2.2.m1.1a"><mo id="S5.T3.st1.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.st1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st1.2.2.2.m1.1b"><ci id="S5.T3.st1.2.2.2.m1.1.1.cmml" xref="S5.T3.st1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st1.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">Pr.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st1.3.3.3.m1.1"><semantics id="S5.T3.st1.3.3.3.m1.1a"><mo id="S5.T3.st1.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.st1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st1.3.3.3.m1.1b"><ci id="S5.T3.st1.3.3.3.m1.1.1.cmml" xref="S5.T3.st1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st1.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">Re.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st1.4.4.4.m1.1"><semantics id="S5.T3.st1.4.4.4.m1.1a"><mo id="S5.T3.st1.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.st1.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st1.4.4.4.m1.1b"><ci id="S5.T3.st1.4.4.4.m1.1.1.cmml" xref="S5.T3.st1.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st1.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st1.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st1.4.5.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st1.4.5.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">128</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st1.4.5.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">11.23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st1.4.5.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">98.41</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st1.4.5.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.68</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st1.4.5.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.39</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st1.4.6.2" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.st1.4.6.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st1.4.6.2.1.1" style="background-color:#D9D9D9;">512</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st1.4.6.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st1.4.6.2.2.1" style="background-color:#D9D9D9;">5.51</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st1.4.6.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st1.4.6.2.3.1" style="background-color:#D9D9D9;">273.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st1.4.6.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st1.4.6.2.4.1" style="background-color:#D9D9D9;">0.88</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st1.4.6.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st1.4.6.2.5.1" style="background-color:#D9D9D9;">0.44</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st1.4.7.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st1.4.7.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">1024</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st1.4.7.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st1.4.7.3.2.1">5.38</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st1.4.7.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">269.10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st1.4.7.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st1.4.7.3.4.1">0.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st1.4.7.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.44</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of the number of clusters used in the codeword clustering process.  It shows how different numbers of clusters (128, 512, and 1024) affect the model's performance, measured by FID, Inception Score (IS), precision (Pr.), and recall (Re.).  The results demonstrate the importance of selecting an appropriate number of clusters to balance model complexity and performance.
> <details>
> <summary>read the caption</summary>
> (a) Number of Clusters
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.st2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st2.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st2.4.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">Para.</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st2.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.st2.1.1.1.m1.1"><semantics id="S5.T3.st2.1.1.1.m1.1a"><mo id="S5.T3.st2.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.st2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st2.1.1.1.m1.1b"><ci id="S5.T3.st2.1.1.1.m1.1.1.cmml" xref="S5.T3.st2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st2.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st2.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st2.2.2.2.m1.1"><semantics id="S5.T3.st2.2.2.2.m1.1a"><mo id="S5.T3.st2.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.st2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st2.2.2.2.m1.1b"><ci id="S5.T3.st2.2.2.2.m1.1.1.cmml" xref="S5.T3.st2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st2.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">Pr.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st2.3.3.3.m1.1"><semantics id="S5.T3.st2.3.3.3.m1.1a"><mo id="S5.T3.st2.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.st2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st2.3.3.3.m1.1b"><ci id="S5.T3.st2.3.3.3.m1.1.1.cmml" xref="S5.T3.st2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st2.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st2.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">Re.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st2.4.4.4.m1.1"><semantics id="S5.T3.st2.4.4.4.m1.1a"><mo id="S5.T3.st2.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.st2.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st2.4.4.4.m1.1b"><ci id="S5.T3.st2.4.4.4.m1.1.1.cmml" xref="S5.T3.st2.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st2.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st2.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st2.4.5.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st2.4.5.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">111M</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st2.4.5.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">5.51</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st2.4.5.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">273.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st2.4.5.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st2.4.5.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.44</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st2.4.6.2" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.st2.4.6.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st2.4.6.2.1.1" style="background-color:#D9D9D9;">343M</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st2.4.6.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st2.4.6.2.2.1" style="background-color:#D9D9D9;">5.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st2.4.6.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st2.4.6.2.3.1" style="background-color:#D9D9D9;">285.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st2.4.6.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st2.4.6.2.4.1" style="background-color:#D9D9D9;">0.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st2.4.6.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st2.4.6.2.5.1" style="background-color:#D9D9D9;">0.43</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st2.4.7.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st2.4.7.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">775M</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st2.4.7.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st2.4.7.3.2.1">5.27</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st2.4.7.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st2.4.7.3.3.1">289.10</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st2.4.7.3.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st2.4.7.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st2.4.7.3.5.1">0.46</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the impact of varying the size of the auxiliary model (Stage 2) in the proposed coarse-to-fine prediction framework on the model's performance.  It presents FID, Inception Score (IS), precision, and recall metrics for different model sizes, demonstrating how increasing the size of the auxiliary model generally improves generation quality, but with diminishing returns after a certain point.
> <details>
> <summary>read the caption</summary>
> (b) Model Size (stage 2)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.st3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st3.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st3.4.4.5" style="padding-left:0.0pt;padding-right:0.0pt;">CFG</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st3.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.st3.1.1.1.m1.1"><semantics id="S5.T3.st3.1.1.1.m1.1a"><mo id="S5.T3.st3.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.st3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st3.1.1.1.m1.1b"><ci id="S5.T3.st3.1.1.1.m1.1.1.cmml" xref="S5.T3.st3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st3.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st3.2.2.2.m1.1"><semantics id="S5.T3.st3.2.2.2.m1.1a"><mo id="S5.T3.st3.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.st3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st3.2.2.2.m1.1b"><ci id="S5.T3.st3.2.2.2.m1.1.1.cmml" xref="S5.T3.st3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st3.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">Pr.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st3.3.3.3.m1.1"><semantics id="S5.T3.st3.3.3.3.m1.1a"><mo id="S5.T3.st3.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.st3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st3.3.3.3.m1.1b"><ci id="S5.T3.st3.3.3.3.m1.1.1.cmml" xref="S5.T3.st3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st3.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">Re.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st3.4.4.4.m1.1"><semantics id="S5.T3.st3.4.4.4.m1.1a"><mo id="S5.T3.st3.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.st3.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st3.4.4.4.m1.1b"><ci id="S5.T3.st3.4.4.4.m1.1.1.cmml" xref="S5.T3.st3.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st3.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st3.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st3.4.5.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st3.4.5.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">1.75</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st3.4.5.1.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st3.4.5.1.2.1">4.24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st3.4.5.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">247.02</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st3.4.5.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.86</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st3.4.5.1.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st3.4.5.1.5.1">0.48</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st3.4.6.2" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.st3.4.6.2.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st3.4.6.2.1.1" style="background-color:#D9D9D9;">2.00</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st3.4.6.2.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st3.4.6.2.2.1" style="background-color:#D9D9D9;">5.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st3.4.6.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st3.4.6.2.3.1" style="background-color:#D9D9D9;">285.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st3.4.6.2.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st3.4.6.2.4.1" style="background-color:#D9D9D9;">0.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st3.4.6.2.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st3.4.6.2.5.1" style="background-color:#D9D9D9;">0.43</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.st3.4.7.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st3.4.7.3.1" style="padding-left:0.0pt;padding-right:0.0pt;">2.25</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st3.4.7.3.2" style="padding-left:0.0pt;padding-right:0.0pt;">6.71</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st3.4.7.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st3.4.7.3.3.1">313.06</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st3.4.7.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st3.4.7.3.4.1">0.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st3.4.7.3.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.41</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of classifier-free guidance (CFG) on the performance of the proposed coarse-to-fine prediction framework.  It shows how varying the CFG factor affects the FID and Inception Score metrics, revealing a trade-off between image quality and diversity.  Specifically, lower CFG values generally lead to better FID scores (lower is better, indicating better fidelity), while higher CFG values improve Inception Scores (higher is better, indicating better diversity).
> <details>
> <summary>read the caption</summary>
> (c) CFG
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.st4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st4.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st4.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">Top-<math alttext="k" class="ltx_Math" display="inline" id="S5.T3.st4.1.1.1.m1.1"><semantics id="S5.T3.st4.1.1.1.m1.1a"><mi id="S5.T3.st4.1.1.1.m1.1.1" xref="S5.T3.st4.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S5.T3.st4.1.1.1.m1.1b"><ci id="S5.T3.st4.1.1.1.m1.1.1.cmml" xref="S5.T3.st4.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st4.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st4.1.1.1.m1.1d">italic_k</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st4.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.st4.2.2.2.m1.1"><semantics id="S5.T3.st4.2.2.2.m1.1a"><mo id="S5.T3.st4.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.st4.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st4.2.2.2.m1.1b"><ci id="S5.T3.st4.2.2.2.m1.1.1.cmml" xref="S5.T3.st4.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st4.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st4.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st4.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st4.3.3.3.m1.1"><semantics id="S5.T3.st4.3.3.3.m1.1a"><mo id="S5.T3.st4.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.st4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st4.3.3.3.m1.1b"><ci id="S5.T3.st4.3.3.3.m1.1.1.cmml" xref="S5.T3.st4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st4.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st4.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">Pr.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st4.4.4.4.m1.1"><semantics id="S5.T3.st4.4.4.4.m1.1a"><mo id="S5.T3.st4.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.st4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st4.4.4.4.m1.1b"><ci id="S5.T3.st4.4.4.4.m1.1.1.cmml" xref="S5.T3.st4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st4.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">Re.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st4.5.5.5.m1.1"><semantics id="S5.T3.st4.5.5.5.m1.1a"><mo id="S5.T3.st4.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.st4.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st4.5.5.5.m1.1b"><ci id="S5.T3.st4.5.5.5.m1.1.1.cmml" xref="S5.T3.st4.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st4.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st4.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st4.5.6.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st4.5.6.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">1</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st4.5.6.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">6.95</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st4.5.6.1.3" style="padding-left:0.0pt;padding-right:0.0pt;">210.21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st4.5.6.1.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st4.5.6.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.39</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st4.5.7.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.st4.5.7.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">32</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st4.5.7.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">5.35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st4.5.7.2.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st4.5.7.2.3.1">286.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st4.5.7.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st4.5.7.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.43</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st4.5.8.3" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st4.5.8.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st4.5.8.3.1.1" style="background-color:#D9D9D9;">All</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st4.5.8.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st4.5.8.3.2.1" style="background-color:#D9D9D9;">5.33</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st4.5.8.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st4.5.8.3.3.1" style="background-color:#D9D9D9;">285.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st4.5.8.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st4.5.8.3.4.1" style="background-color:#D9D9D9;">0.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st4.5.8.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st4.5.8.3.5.1" style="background-color:#D9D9D9;">0.43</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of the top-k sampling strategy in Stage 2 (Fine Label Prediction) of the proposed coarse-to-fine framework. It shows how different values of k affect the model's performance metrics (FID, IS, Precision, Recall) on the ImageNet dataset. Top-k sampling, in this context, refers to selecting only the top k most probable tokens when generating the fine-grained labels in the second stage. The results demonstrate the effect of controlling the diversity and quality of the generated images by adjusting k.
> <details>
> <summary>read the caption</summary>
> (d) Top-k𝑘kitalic_k (stage 2)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.st5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st5.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st5.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\tau_{1}" class="ltx_Math" display="inline" id="S5.T3.st5.1.1.1.m1.1"><semantics id="S5.T3.st5.1.1.1.m1.1a"><msub id="S5.T3.st5.1.1.1.m1.1.1" xref="S5.T3.st5.1.1.1.m1.1.1.cmml"><mi id="S5.T3.st5.1.1.1.m1.1.1.2" xref="S5.T3.st5.1.1.1.m1.1.1.2.cmml">τ</mi><mn id="S5.T3.st5.1.1.1.m1.1.1.3" xref="S5.T3.st5.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.st5.1.1.1.m1.1b"><apply id="S5.T3.st5.1.1.1.m1.1.1.cmml" xref="S5.T3.st5.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.st5.1.1.1.m1.1.1.1.cmml" xref="S5.T3.st5.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T3.st5.1.1.1.m1.1.1.2.cmml" xref="S5.T3.st5.1.1.1.m1.1.1.2">𝜏</ci><cn id="S5.T3.st5.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.st5.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st5.1.1.1.m1.1c">\tau_{1}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st5.1.1.1.m1.1d">italic_τ start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st5.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.st5.2.2.2.m1.1"><semantics id="S5.T3.st5.2.2.2.m1.1a"><mo id="S5.T3.st5.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.st5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st5.2.2.2.m1.1b"><ci id="S5.T3.st5.2.2.2.m1.1.1.cmml" xref="S5.T3.st5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st5.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st5.3.3.3.m1.1"><semantics id="S5.T3.st5.3.3.3.m1.1a"><mo id="S5.T3.st5.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.st5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st5.3.3.3.m1.1b"><ci id="S5.T3.st5.3.3.3.m1.1.1.cmml" xref="S5.T3.st5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st5.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st5.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">Pr.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st5.4.4.4.m1.1"><semantics id="S5.T3.st5.4.4.4.m1.1a"><mo id="S5.T3.st5.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.st5.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st5.4.4.4.m1.1b"><ci id="S5.T3.st5.4.4.4.m1.1.1.cmml" xref="S5.T3.st5.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st5.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st5.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st5.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">Re.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st5.5.5.5.m1.1"><semantics id="S5.T3.st5.5.5.5.m1.1a"><mo id="S5.T3.st5.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.st5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st5.5.5.5.m1.1b"><ci id="S5.T3.st5.5.5.5.m1.1.1.cmml" xref="S5.T3.st5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st5.5.6.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st5.5.6.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">0.9</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st5.5.6.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">7.30</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st5.5.6.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st5.5.6.1.3.1">292.73</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st5.5.6.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st5.5.6.1.4.1">0.90</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st5.5.6.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.39</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st5.5.7.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.st5.5.7.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">1.0</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st5.5.7.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">5.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st5.5.7.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">285.15</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st5.5.7.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.89</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st5.5.7.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.43</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st5.5.8.3" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st5.5.8.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st5.5.8.3.1.1" style="background-color:#D9D9D9;">1.1</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st5.5.8.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st5.5.8.3.2.1" style="background-color:#D9D9D9;">4.16</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st5.5.8.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st5.5.8.3.3.1" style="background-color:#D9D9D9;">259.45</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st5.5.8.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st5.5.8.3.4.1" style="background-color:#D9D9D9;">0.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st5.5.8.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st5.5.8.3.5.1" style="background-color:#D9D9D9;">0.47</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the impact of temperature in stage 1 of the coarse-to-fine prediction framework on the model's performance. It shows how different temperature values (0.9, 1.0, 1.1) affect the FID, Inception Score (IS), precision, and recall metrics. This helps to analyze the effect of temperature on the trade-off between image quality and diversity during the generation process.
> <details>
> <summary>read the caption</summary>
> (e) Temperature (stage 1)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.st6.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.st6.5.5">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S5.T3.st6.1.1.1" style="padding-left:0.0pt;padding-right:0.0pt;"><math alttext="\tau_{2}" class="ltx_Math" display="inline" id="S5.T3.st6.1.1.1.m1.1"><semantics id="S5.T3.st6.1.1.1.m1.1a"><msub id="S5.T3.st6.1.1.1.m1.1.1" xref="S5.T3.st6.1.1.1.m1.1.1.cmml"><mi id="S5.T3.st6.1.1.1.m1.1.1.2" xref="S5.T3.st6.1.1.1.m1.1.1.2.cmml">τ</mi><mn id="S5.T3.st6.1.1.1.m1.1.1.3" xref="S5.T3.st6.1.1.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S5.T3.st6.1.1.1.m1.1b"><apply id="S5.T3.st6.1.1.1.m1.1.1.cmml" xref="S5.T3.st6.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.st6.1.1.1.m1.1.1.1.cmml" xref="S5.T3.st6.1.1.1.m1.1.1">subscript</csymbol><ci id="S5.T3.st6.1.1.1.m1.1.1.2.cmml" xref="S5.T3.st6.1.1.1.m1.1.1.2">𝜏</ci><cn id="S5.T3.st6.1.1.1.m1.1.1.3.cmml" type="integer" xref="S5.T3.st6.1.1.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st6.1.1.1.m1.1c">\tau_{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st6.1.1.1.m1.1d">italic_τ start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st6.2.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">FID<math alttext="\downarrow" class="ltx_Math" display="inline" id="S5.T3.st6.2.2.2.m1.1"><semantics id="S5.T3.st6.2.2.2.m1.1a"><mo id="S5.T3.st6.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.st6.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st6.2.2.2.m1.1b"><ci id="S5.T3.st6.2.2.2.m1.1.1.cmml" xref="S5.T3.st6.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st6.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st6.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st6.3.3.3" style="padding-left:0.0pt;padding-right:0.0pt;">IS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st6.3.3.3.m1.1"><semantics id="S5.T3.st6.3.3.3.m1.1a"><mo id="S5.T3.st6.3.3.3.m1.1.1" stretchy="false" xref="S5.T3.st6.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st6.3.3.3.m1.1b"><ci id="S5.T3.st6.3.3.3.m1.1.1.cmml" xref="S5.T3.st6.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st6.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st6.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st6.4.4.4" style="padding-left:0.0pt;padding-right:0.0pt;">Pr.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st6.4.4.4.m1.1"><semantics id="S5.T3.st6.4.4.4.m1.1a"><mo id="S5.T3.st6.4.4.4.m1.1.1" stretchy="false" xref="S5.T3.st6.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st6.4.4.4.m1.1b"><ci id="S5.T3.st6.4.4.4.m1.1.1.cmml" xref="S5.T3.st6.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st6.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st6.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.st6.5.5.5" style="padding-left:0.0pt;padding-right:0.0pt;">Re.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.st6.5.5.5.m1.1"><semantics id="S5.T3.st6.5.5.5.m1.1a"><mo id="S5.T3.st6.5.5.5.m1.1.1" stretchy="false" xref="S5.T3.st6.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.st6.5.5.5.m1.1b"><ci id="S5.T3.st6.5.5.5.m1.1.1.cmml" xref="S5.T3.st6.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.st6.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.st6.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.st6.5.6.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T3.st6.5.6.1.1" style="padding-left:0.0pt;padding-right:0.0pt;">0.9</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st6.5.6.1.2" style="padding-left:0.0pt;padding-right:0.0pt;">5.55</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st6.5.6.1.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st6.5.6.1.3.1">288.01</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st6.5.6.1.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st6.5.6.1.4.1">0.89</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T3.st6.5.6.1.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.43</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st6.5.7.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S5.T3.st6.5.7.2.1" style="padding-left:0.0pt;padding-right:0.0pt;">1.0</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st6.5.7.2.2" style="padding-left:0.0pt;padding-right:0.0pt;">4.16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st6.5.7.2.3" style="padding-left:0.0pt;padding-right:0.0pt;">259.45</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st6.5.7.2.4" style="padding-left:0.0pt;padding-right:0.0pt;">0.86</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T3.st6.5.7.2.5" style="padding-left:0.0pt;padding-right:0.0pt;">0.47</td>
</tr>
<tr class="ltx_tr" id="S5.T3.st6.5.8.3" style="background-color:#D9D9D9;">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S5.T3.st6.5.8.3.1" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st6.5.8.3.1.1" style="background-color:#D9D9D9;">1.1</span></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st6.5.8.3.2" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st6.5.8.3.2.1" style="background-color:#D9D9D9;">4.15</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st6.5.8.3.3" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st6.5.8.3.3.1" style="background-color:#D9D9D9;">254.99</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st6.5.8.3.4" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text" id="S5.T3.st6.5.8.3.4.1" style="background-color:#D9D9D9;">0.86</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T3.st6.5.8.3.5" style="padding-left:0.0pt;padding-right:0.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.st6.5.8.3.5.1" style="background-color:#D9D9D9;">0.48</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results focusing on the temperature hyperparameter specifically in Stage 2 (Fine Label Prediction) of the proposed coarse-to-fine prediction framework.  It shows how varying the temperature in the second stage affects the model's performance across multiple metrics, including FID, Inception Score (IS), Precision (Pr.), and Recall (Re.).  Different temperature values (0.9, 1.0, and 1.1) are tested to analyze their impact on generation quality and diversity.
> <details>
> <summary>read the caption</summary>
> (f) Temperature (stage 2)
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16194/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16194/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}