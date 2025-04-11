---
title: "SmolVLM: Redefining small and efficient multimodal models"
summary: "SmolVLM: Tiny yet mighty VLMs, redefining efficient multimodal models for resource-constrained devices!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Hugging Face",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05299 {{< /keyword >}}
{{< keyword icon="writer" >}} Andrés Marafioti et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05299" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05299" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05299/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Vision-Language Models(VLMs) demand substantial computing resources, hindering their deployment on devices with limited resources. Smaller VLMs often mirror larger models, leading to inefficient memory usage and constrained practicality. This paper addresses issues by **introducing a series of compact multimodal models** engineered for efficient inference, **SmolVLM**.



Through architectural exploration, tokenization, and data curation, key design choices are identified that substantially improve performance on image and video tasks with minimal memory footprint. The models demonstrate robust video comprehension, strategic architectural optimizations, efficient tokenization, and carefully curated training data. **This facilitates practical, energy-efficient deployments at smaller scales**.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Compact multimodal models benefit from a balanced encoder-LM parameter allocation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Small VLMs benefit from aggressive visual token compression and extended context lengths. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Excessive CoT data harms compact model performance; learned positional tokens outperform raw text tokens. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents **a vital step toward efficient multimodal AI**, providing insights and resources for developing resource-conscious models. It offers **practical strategies and open-source tools** that can accelerate research in this area, enabling innovation on edge devices and democratizing access to advanced AI technologies.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05299/extracted/6335965/figures/combined_plots.png)

> 🔼 This figure compares the performance and resource usage of SmolVLM with other leading small-scale vision-language models (VLMs).  It showcases SmolVLM's efficiency by demonstrating that it outperforms significantly larger models while requiring far less GPU memory. The graph displays the models' performance on image-based tasks (Video-MME scores) plotted against their RAM usage.  SmolVLM models are shown to achieve similar or better performance than larger models with drastically reduced memory footprints, highlighting the model's effectiveness and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Smol yet Mighty: comparison of SmolVLM with other state-of-the-art small VLM models. Image results are sourced from the OpenCompass OpenVLM leaderboard (Duan et al., 2024).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="id6.6">
<tr class="ltx_tr" id="id2.2.2">
<td class="ltx_td ltx_align_left" id="id1.1.1.1">
<span class="ltx_text" id="id1.1.1.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id1.1.1.1.1.g1" src="x18.png" width="20"/></span> <span class="ltx_ERROR undefined" id="id1.1.1.1.2">\sans</span><span class="ltx_text ltx_font_bold" id="id1.1.1.1.3">Code</span>
</td>
<td class="ltx_td ltx_align_left" id="id2.2.2.3">
<a class="ltx_ref ltx_href ltx_font_typewriter" href="https://github.com/huggingface/smollm" title="">gitub/huggingface</a></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="id2.2.2.2">
<span class="ltx_text" id="id2.2.2.2.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id2.2.2.2.1.g1" src="x19.png" width="20"/></span> <span class="ltx_ERROR undefined" id="id2.2.2.2.2">\sans</span><span class="ltx_text ltx_font_bold" id="id2.2.2.2.3">Blog</span>
</td>
<td class="ltx_td ltx_align_left" id="id2.2.2.4"><a class="ltx_ref ltx_href ltx_font_typewriter" href="https://huggingface.co/blog/smolvlm2" title="">blog/smolvlm2</a></td>
</tr>
<tr class="ltx_tr" id="id4.4.4">
<td class="ltx_td ltx_align_left" id="id3.3.3.1">
<span class="ltx_text" id="id3.3.3.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="20" id="id3.3.3.1.1.g1" src="x19.png" width="20"/></span> <span class="ltx_ERROR undefined" id="id3.3.3.1.2">\sans</span><span class="ltx_text ltx_font_bold" id="id3.3.3.1.3">Weights</span>
</td>
<td class="ltx_td ltx_align_left" id="id4.4.4.3">
<a class="ltx_ref ltx_href ltx_font_typewriter" href="https://huggingface.co/HuggingFaceTB" title="">community/smol-research</a></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="id4.4.4.2">
<span class="ltx_text" id="id4.4.4.2.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="15" id="id4.4.4.2.1.g1" src="extracted/6335965/logos/chrome.png" width="15"/></span> <span class="ltx_ERROR undefined" id="id4.4.4.2.2">\sans</span><span class="ltx_text ltx_font_bold" id="id4.4.4.2.3">VLM Browser</span>
</td>
<td class="ltx_td ltx_align_left" id="id4.4.4.4"><a class="ltx_ref ltx_href ltx_font_typewriter" href="https://huggingface.co/spaces/HuggingFaceTB/SmolVLM-500M-Instruct-WebGPU" title="">spaces/smolvlm-webgpu</a></td>
</tr>
<tr class="ltx_tr" id="id6.6.6">
<td class="ltx_td ltx_align_left" id="id5.5.5.1">
<span class="ltx_text" id="id5.5.5.1.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="15" id="id5.5.5.1.1.g1" src="extracted/6335965/logos/spaces.png" width="15"/></span> <span class="ltx_ERROR undefined" id="id5.5.5.1.2">\sans</span><span class="ltx_text ltx_font_bold" id="id5.5.5.1.3">Demo</span>
</td>
<td class="ltx_td ltx_align_left" id="id6.6.6.3">
<a class="ltx_ref ltx_href ltx_font_typewriter" href="https://huggingface.co/spaces/HuggingFaceTB/SmolVLM2" title="">spaces/smolvlm2</a></td>
<td class="ltx_td ltx_nopad_l ltx_align_left" id="id6.6.6.2">
<span class="ltx_text" id="id6.6.6.2.1" style="position:relative; bottom:-1.5pt;"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="15" id="id6.6.6.2.1.g1" src="extracted/6335965/logos/huggingapp.png" width="15"/></span> <span class="ltx_ERROR undefined" id="id6.6.6.2.2">\sans</span><span class="ltx_text ltx_font_bold" id="id6.6.6.2.3">HuggingSnap</span>
</td>
<td class="ltx_td ltx_align_left" id="id6.6.6.4"><a class="ltx_ref ltx_href ltx_font_typewriter" href="https://apps.apple.com/us/app/huggingsnap/id6742157364" title="">apple/huggingsnap</a></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a benchmark comparison of three different sizes of the SmolVLM model (256M, 500M, and 2.2B parameters) against other efficient open-source vision-language models.  The comparison is made across a range of single-image, multi-task, and video benchmarks.  The key finding highlighted is that SmolVLM models achieve strong accuracy while using significantly less RAM (GPU memory) than comparable models, demonstrating their superior computational efficiency, particularly for resource-constrained applications.
> <details>
> <summary>read the caption</summary>
> Table 1:  Benchmark comparison of SmolVLM variants across vision-language tasks. Performance of SmolVLM models at three scales (256M, 500M, and 2.2B parameters) compared to efficient open-source models on single-image, multi-task, and video benchmarks. SmolVLM models demonstrate strong accuracy while maintaining significantly lower RAM usage, highlighting their computational efficiency for resource-constrained multimodal scenarios.
> </details>





### In-depth insights


#### Small is Mighty
**Small is truly mighty** in the context of multimodal models, as demonstrated by the SmolVLM. This research challenges the conventional wisdom that larger models are always better, highlighting the potential for **efficient and effective performance with smaller architectures.** By strategically optimizing architectural configurations, tokenization, and data curation, SmolVLM achieves remarkable results with minimal memory footprints. This suggests a paradigm shift towards **resource-conscious design**, where computational efficiency is prioritized without sacrificing capability. The success of SmolVLM underscores the importance of **thoughtful engineering and algorithmic innovation** in unlocking the full potential of multimodal learning, paving the way for practical and energy-efficient deployments on edge devices.

#### Encode Efficiently
**Efficient encoding in VLMs** is crucial for performance, especially in resource-constrained scenarios. Techniques involve balancing token allocation between image and video, with images benefiting from higher resolution and more tokens for fidelity, while videos require fewer tokens per frame to handle longer sequences. Image-splitting strategies divide high-resolution images into multiple sub-images alongside a downsized version of the original. This helps maintain image quality without excessive computational overhead. Conversely, frame averaging is ineffective for videos, negatively impacting performance on benchmarks. Therefore, video frames are rescaled to match the image encoder's resolution. Aggressive compression with pixel shuffle allows further visual token reduction. This contrasts with larger VLMs where the LM dominates, small VLMs benefit from a balanced approach where a smaller visual encoders may work better.

#### Tune Smarter
**Tune Smarter** encapsulates the essence of efficient and strategic optimization in machine learning, particularly within resource-constrained environments. This approach moves beyond brute-force scaling, advocating for intelligent techniques such as targeted data curation, architecture refinements, and optimized tokenization strategies. It emphasizes understanding the interplay between model size, data quality, and computational cost, rather than blindly increasing parameters. This involves careful selection and augmentation of training data, ensuring diversity and relevance to the target tasks, while also mitigating biases and noise. Crucially, the concept stresses the importance of architectural choices that maximize performance with minimal memory footprint, enabling deployment on edge devices and in low-resource settings. Tokenization techniques must strike a balance between compression and information retention, avoiding the 'OCR loss plague' and other artifacts that can hinder performance. The objective is to engineer a system where every parameter and every training sample contributes maximally to the desired outcome, leading to more efficient and effective learning.

#### Scaling Matters
The notion of 'Scaling Matters' within the context of multimodal models, especially VLMs, likely refers to the crucial relationship between model size (parameters), data quantity/quality, and computational resources. Larger models often exhibit superior performance due to their capacity to learn complex patterns and relationships, but they also demand significantly more computational power and memory, making deployment on edge devices challenging. Efficient scaling involves strategically balancing these factors. It's not just about increasing parameters; it's about optimizing architectural designs, tokenization, and training strategies to achieve the best performance-to-resource ratio. The research paper emphasizes that carefully curated training data becomes very important for practical and energy-efficient deployments, particularly at smaller scales. Also optimizing performance doesn't always need scaling but improving already present resources can do the job. Therefore, scaling strategies need to be thoughtfully implemented to maximize benefits.

#### On-Device VLMs
**On-device VLMs** represent a crucial frontier in AI, addressing limitations of cloud-based models. Deploying VLMs directly on devices like smartphones and embedded systems unlocks benefits such as **reduced latency**, **enhanced privacy**, and **offline functionality**.  Key challenges involve model compression, efficient architectures, and optimized computation to fit within constrained resources (memory, power). Techniques like quantization, pruning, and knowledge distillation are vital for minimizing model size without sacrificing performance.  Novel architectures tailored for on-device inference, such as MobileNets or specialized hardware accelerators, are essential. Furthermore, approaches to minimize memory footprint while ensuring real-time responsiveness are areas of active research. The integration of efficient VLMs on devices has implications for enabling more intuitive and accessible AI-powered experiences.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05299/x20.png)

> 🔼 The figure illustrates the architecture of SmolVLM, a compact vision-language model.  It begins by splitting input images into smaller subimages and sampling frames from video inputs.  These image/video segments are encoded into visual features using a vision encoder.  A pixel-shuffle operation rearranges these features to improve efficiency. An MLP projection then transforms the features into visual tokens, which are suitable for input into a language model (LLM). These visual tokens are concatenated or interleaved with textual embeddings (represented in orange and red in the figure), forming a combined sequence that is then fed into the LLM for final processing and text output. This design emphasizes compact size and efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 2: SmolVLM Architecture. Images are split into subimages, frames are sampled from videos, and then encoded into visual features. These features are first rearranged via a pixel-shuffle operation, then mapped into the LLM input space as visual tokens using an MLP projection. Visual tokens are then concatenated/interleaved with text embeddings (orange/red). This combined sequence is passed to the LLM for text output.
> </details>



![](https://arxiv.org/html/2504.05299/x21.png)

> 🔼 Figure 3 presents a performance analysis of various SmolVLM configurations, broken down into four sub-figures.  The leftmost subfigure shows how vision and language model sizes affect performance. It reveals that smaller language models don't benefit as much from larger vision encoders, while larger language models see significant improvement with larger encoders.  The middle-left subfigure demonstrates a significant performance increase when the context length (number of tokens) is increased. The middle-right subfigure shows that the optimal pixel shuffle factor (a parameter that trades spatial resolution for increased channel depth, reducing visual tokens) depends on the model size. The rightmost subfigure reveals a performance drop in video tasks when frame averaging is increased, demonstrating that the optimal strategy for video processing is not simply averaging frames.
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance analysis of SmolVLM configurations. (Left) Impact of vision encoder and language model sizes. Smaller language models (135135135135M) benefit less from larger vision encoders (SigLIP-SO-400400400400M, 428428428428M) compared to SigLIP-B/16161616 (93939393M), while larger language models gain more from powerful encoders. (Middle-left) Performance significantly improves with increased context lengths (2222k to 16161616k tokens). (Middle-right) Optimal pixel shuffle factor (PS=2 vs. PS=4) varies by model size. (Right) Frame averaging reduces video performance, with a rapid decline as more frames are averaged. Metrics average CIDEr (captioning) and accuracy (visual question answering).
> </details>



![](https://arxiv.org/html/2504.05299/extracted/6335965/figures/pixel_shuffle.png)

> 🔼 Figure 4 illustrates the concept of pixel shuffling, a technique used to reduce the number of visual tokens in compact vision-language models.  By rearranging the spatial dimensions of encoded images, pixel shuffling trades spatial resolution for increased channel depth. This means that the image is divided into smaller blocks, and these blocks are stacked to create a deeper image representation. This transformation reduces the total number of tokens required to represent the image while preserving important visual information, which ultimately improves efficiency and reduces computational costs.
> <details>
> <summary>read the caption</summary>
> Figure 4: Pixel shuffle. Rearranges encoded images, trading spatial resolution for increased channel depth. This reduces visual token count while preserving information density.
> </details>



![](https://arxiv.org/html/2504.05299/extracted/6335965/figures/all_three_plots_horizontal.png)

> 🔼 Figure 5 is a composite figure showing the results of comparing two different tokenization strategies (string-based vs. learned tokens) for training vision-language models. The left panel displays training loss curves, highlighting a phenomenon called the 'OCR loss plague' where string-based tokens hinder the training process of smaller models. The center panel presents aggregated evaluation metrics across various tasks, demonstrating the superior performance of models trained with learned tokens (represented in orange). The right panel is a scatter plot illustrating the relationship between OpenCompass-Image and OpenCompass-Video scores, revealing that models using learned tokens achieve significantly better results, particularly in tasks involving a high proportion of image data. Overall, this figure highlights the importance of using learned tokens for effective training, especially when working with compact vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Tokenization Strategy Comparisons. (Left) Training loss curves illustrating the “OCR loss plague” when using string-based tokens in smaller models. (Center) Aggregated evaluation metrics showing consistently higher scores with learned tokens (orange). (Right) Scatter plot of OpenCompass-Image vs. OpenCompass-Video: learned tokens dominate the higher-scoring region, especially in image-intensive tasks.
> </details>



![](https://arxiv.org/html/2504.05299/x22.png)

> 🔼 Figure 6 demonstrates the incremental performance improvements achieved by applying various training strategies sequentially to the SmolVLM base model.  The left panel shows results for image benchmarks, illustrating consistent performance gains with each successive strategy (system prompts, media intro/outro tokens, masked user prompts). The right panel presents corresponding results for video benchmarks, exhibiting a similar trend but with more significant gains, particularly after the addition of media intro/outro tokens.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Cumulative Effect of Training Strategies on SmolVLM Performance. The visualization shows the progression of performance improvements as different tokenization and prompt engineering strategies are applied sequentially to the SmolVLM base model. (Left) Image benchmark results show consistent improvements with each added strategy. (Right) Video benchmark results reveal similar patterns with more pronounced gains.
> </details>



![](https://arxiv.org/html/2504.05299/x23.png)

> 🔼 This figure examines the effects of various training strategies on the performance of SmolVLM, a family of compact multimodal models. The left panel demonstrates that reusing text data from a large language model's supervised fine-tuning (LLM-SFT) negatively impacts smaller SmolVLM models' performance on both image and video tasks. The middle panel shows that incorporating a small amount (0.02-0.05%) of Chain-of-Thought (CoT) data improves performance, but using more CoT data reduces performance.  The right panel reveals that increasing the average length of video sequences used during training beyond 3.5 minutes yields diminishing returns on performance for both image and video tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Impact of Training Strategies on Smol-Scale Multimodal Models. (Left) Reusing text data from LLM-SFT (SmolTalk) reduces both image and video scores in smaller models. (Middle) A minimal fraction (0.020.020.020.02%–0.050.050.050.05%) of Chain-of-Thought (CoT) data yields optimal results, while heavier CoT usage degrades performance. (Right) Increasing average video duration beyond 3.53.53.53.5 min leads to diminished returns for both image and video tasks.
> </details>



![](https://arxiv.org/html/2504.05299/x26.png)

> 🔼 Figure 8 presents a detailed breakdown of the training datasets used in the SmolVLM model.  The left panel shows the composition of the vision training data, categorized by sub-categories such as image captioning, document understanding, visual question answering, and reasoning tasks. The percentages indicate the proportion of each subcategory within the overall vision dataset.  The right panel provides a similar breakdown for the video training data, with sub-categories including video description, visual question answering, temporal understanding, and narrative comprehension. The percentages show the proportion of each subcategory in the video training data. This figure clarifies the diverse and multi-faceted nature of data used in training the SmolVLM model, which contributes to its robust performance across various tasks.
> <details>
> <summary>read the caption</summary>
> Figure 8: Data Details. Training dataset details for Vision (Left) and video (Right), broken down by modality and sub-categories.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05299/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05299/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}