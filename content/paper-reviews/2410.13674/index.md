---
title: "Diffusion Curriculum: Synthetic-to-Real Generative Curriculum Learning via Image-Guided Diffusion"
summary: "Boosting AI's learning from limited or poor-quality data, this paper introduces DisCL, a novel curriculum learning method using image-guided diffusion models to generate diverse synthetic training dat..."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", ]
showSummary: true
date: 2024-10-17
draft: false
---

{{< keyword >}} 2410.13674 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research tackles the challenge of training AI models with limited or low-quality data.  The core idea is to use a technique called 'Diffusion Curriculum Learning' (DisCL).  DisCL leverages image-guided diffusion models to produce a range of synthetic images, bridging the gap between fully synthetic and real-world images.  This allows the model to learn easier features first, before tackling more complex, real-world examples.  The study shows this approach improves the accuracy of models, especially for tasks with imbalanced data where certain classes have few examples (long-tail problem) and when training data is noisy or of poor quality.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13674" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13674" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on long-tail image classification and low-quality data learning.  It introduces a novel generative curriculum learning method, which significantly improves model performance on challenging datasets.  The image-guided diffusion model synthesis technique is especially relevant to current research trends, and opens new avenues for creating more robust and generalizable AI systems.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DisCL, a novel generative curriculum learning method, improves AI performance by creating diverse, synthetic training data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Image-guided diffusion models enable controlled synthesis of data spanning a spectrum from prototypical to near-real images. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} DisCL shows significant gains in long-tail classification and low-quality data learning tasks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.13674/figures_3_0.png)

> 🔼 This figure illustrates the two phases of the Diffusion Curriculum (DisCL) method, showing how it generates a spectrum of synthetic-to-real images and uses them in a curriculum learning process.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of Diffusion Curriculum (DisCL). DisCL consists of two phases: (Phase 1) Syn-to-Real Data Generation and (Phase 2) Generative Curriculum learning. In Phase 1, we use a pretrained model to identify the 'hard' samples in the original images and use them as guidance to generate a full spectrum of synthetic to real images by varying image guidance strength λ. In Phase 2, a curriculum strategy (Non-Adaptive or Adaptive) selects training data from the full spectrum, by determining the image guidance level for each training stage e. Synthetic data of the selected guidance level is then combined with non-hard real samples to train the task model.
> </details>





![](https://ai-paper-reviewer.com/2410.13674/charts_10_0.png)

> 🔼 The ablation study results on two classification tasks demonstrate that the selection of the CLIPScore threshold should be carefully aligned with the generation quality inherent to the task-at-hand.
> <details>
> <summary>read the caption</summary>
> Figure 3: Ablation study of CLIPScore Thresholds (a,c) & Curriculum Strategies (b,d) on ImageNet-LT and iWildCam. The error bar reports the standard deviation of each experiment.
> </details>





{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2"></td><td rowspan="2">Method</td><td rowspan="2">Curriculum</td><td colspan="4">ImageNet-LT</td></tr><tr><td>Many</td><td>Medium</td><td>Few</td><td>Overall</td></tr><tr><td rowspan="5">Baselines</td><td rowspan="5">CE CE + CUDA CE + LDMLR BSt BS + CUDA†</td><td>N/A</td><td>57.70</td><td>26.60</td><td>4.40</td><td>35.80</td></tr><tr><td>N/A</td><td>57.20</td><td>29.20</td><td>7.30</td><td>37.20</td></tr><tr><td>N/A</td><td>57.49</td><td>28.16</td><td>6.58</td><td>36.30</td></tr><tr><td>N/A</td><td>51.14</td><td>37.02</td><td>19.29</td><td>39.80</td></tr><tr><td>N/A</td><td>51.16</td><td>37.35</td><td>19.28</td><td>40.03</td></tr><tr><td rowspan="6">Ablations</td><td rowspan="6">CE + Text-only Guidance CE + All-Level Guidance CE + DisCL CE + DisCL CE + DisCL [Lower CLIPScore Threshold] CE + DisCL [Higher CLIPScore Threshold]</td><td>N/A</td><td>56.63</td><td>30.69</td><td>17.90</td><td>39.10</td></tr><tr><td>N/A</td><td>56.77</td><td>30.88</td><td>19.17</td><td>39.40</td></tr><tr><td>Adaptive</td><td>56.21</td><td>30.43</td><td>16.78</td><td>38.65</td></tr><tr><td>Specific to Diverse</td><td>56.71</td><td>30.67</td><td>18.36</td><td>39.18</td></tr><tr><td>Diverse to Specific</td><td>57.66</td><td>30.61</td><td>23.69</td><td>39.67</td></tr><tr><td>Diverse to Specific</td><td>56.92</td><td>30.64</td><td>22.88</td><td>39.68</td></tr><tr><td rowspan="2">Ours</td><td rowspan="2">BS + DisCL CE + DisCL</td><td>Diverse to Specific</td><td>56.78</td><td>30.73</td><td>23.64</td><td>39.82</td></tr><tr><td>Diverse to Specific</td><td>52.68</td><td>37.68</td><td>21.36</td><td>41.33</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the accuracy results of different methods on the ImageNet-LT dataset for long-tail classification, comparing various curriculum strategies and baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy (%) of long-tail classification on ImageNet-LT with base model ResNet-10. The best accuracy is highlighted in bold. † marks our reproduced results using the original paper provided code. BS refers to Balanced Softmax Loss(Ren et al., 2020). Baselines (LDMLR, CUDA) are defined in §5.1.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.13674/figures_4_0.png)

> 🔼 The figure shows synthetic images generated with different image guidance levels, demonstrating the spectrum from prototypical features (low guidance) to high fidelity to real images (high guidance).
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_4_1.png)

> 🔼 The figure shows synthetic images generated with different image guidance levels, demonstrating the spectrum of synthetic-to-real data generated by varying the image guidance.
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_4_2.png)

> 🔼 The figure shows synthetic images generated from various image guidance levels and random seeds based on iWildCam dataset, illustrating the spectrum of synthetic-to-real data.
> <details>
> <summary>read the caption</summary>
> Figure 7: Synthetic generation with various image guidance and random seeds based on iWildCam.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_4_3.png)

> 🔼 The figure shows synthetic images generated with various image guidance levels and random seeds, illustrating the spectrum of synthetic-to-real data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_19_0.png)

> 🔼 The figure shows synthetic images generated from various image guidance levels, demonstrating the spectrum from prototypical features to high fidelity to the original real images.
> <details>
> <summary>read the caption</summary>
> Figure 6: Synthetic generation with various image guidance and random seeds based on ImageNet-LT.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_19_1.png)

> 🔼 The figure shows synthetic images generated with different image guidance levels, demonstrating the spectrum of synthetic-to-real data.
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_19_2.png)

> 🔼 The figure shows synthetic images generated with different image guidance levels, demonstrating the spectrum from prototypical features to high fidelity to the original image.
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_19_3.png)

> 🔼 The figure shows synthetic images generated with different image guidance levels, demonstrating the spectrum from prototypical features (low guidance) to high fidelity to the original image (high guidance).
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_19_4.png)

> 🔼 The figure shows synthetic images generated with various image guidance levels and random seeds, illustrating the spectrum from prototypical to high-fidelity images.
> <details>
> <summary>read the caption</summary>
> Figure 6: Synthetic generation with various image guidance and random seeds based on ImageNet-LT.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_19_5.png)

> 🔼 Figure 8 shows examples of synthetic image generation failures, highlighting issues such as object misidentification and low-fidelity results.
> <details>
> <summary>read the caption</summary>
> Figure 8: Failure cases for ImageNet-LT synthetic generation
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_20_0.png)

> 🔼 The figure shows synthetic images generated with different levels of image guidance, demonstrating the spectrum of synthetic-to-real data generated by the model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_20_1.png)

> 🔼 The figure shows synthetic images generated from iWildCam dataset with various image guidance levels and random seeds, illustrating the spectrum of synthetic-to-real data generated by the proposed method.
> <details>
> <summary>read the caption</summary>
> Figure 7: Synthetic generation with various image guidance and random seeds based on iWildCam.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_20_2.png)

> 🔼 The figure shows synthetic images generated with different image guidance levels, illustrating the spectrum from prototypical features (low guidance) to high fidelity to real images (high guidance).
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_20_3.png)

> 🔼 The figure showcases synthetic images generated from iWildCam dataset using various image guidance levels and random seeds, illustrating the spectrum from prototypical to real-world images.
> <details>
> <summary>read the caption</summary>
> Figure 7: Synthetic generation with various image guidance and random seeds based on iWildCam.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_20_4.png)

> 🔼 The figure shows synthetic images generated from iWildCam dataset using different image guidance levels and random seeds.
> <details>
> <summary>read the caption</summary>
> Figure 7: Synthetic generation with various image guidance and random seeds based on iWildCam.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_20_5.png)

> 🔼 Figure 9 shows examples of synthetic image generation failures from the iWildCam dataset, highlighting issues such as object misidentification and low image quality.
> <details>
> <summary>read the caption</summary>
> Figure 9: Failure cases for iWildCam synthetic generation
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_21_0.png)

> 🔼 The figure showcases synthetic images generated from ImageNet-LT using different image guidance levels, demonstrating the spectrum of synthetic-to-real data.
> <details>
> <summary>read the caption</summary>
> Figure 6: Synthetic generation with various image guidance and random seeds based on ImageNet-LT.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_21_2.png)

> 🔼 Figure 8 shows examples of synthetic image generation failures from ImageNet-LT, highlighting instances where the generated images deviate significantly from the expected class.
> <details>
> <summary>read the caption</summary>
> Figure 8: Failure cases for ImageNet-LT synthetic generation
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_21_3.png)

> 🔼 The figure displays synthetic images generated from iWildCam dataset using different image guidance levels and random seeds, illustrating the spectrum of synthetic-to-real data.
> <details>
> <summary>read the caption</summary>
> Figure 7: Synthetic generation with various image guidance and random seeds based on iWildCam.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_21_4.png)

> 🔼 Figure 9 shows examples of synthetic image generation failures from the iWildcam dataset, highlighting issues such as object misidentification and low image quality.
> <details>
> <summary>read the caption</summary>
> Figure 9: Failure cases for iWildCam synthetic generation
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_0.png)

> 🔼 The figure visualizes synthetic images generated with various image guidance levels and random seeds using ImageNet-LT.
> <details>
> <summary>read the caption</summary>
> Figure 6: Synthetic generation with various image guidance and random seeds based on ImageNet-LT.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_1.png)

> 🔼 The figure shows synthetic images generated from iWildCam dataset with various image guidance levels and random seeds, illustrating the spectrum of synthetic-to-real data.
> <details>
> <summary>read the caption</summary>
> Figure 7: Synthetic generation with various image guidance and random seeds based on iWildCam.
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_2.png)

> 🔼 The figure shows synthetic images generated with different levels of image guidance, demonstrating the spectrum from prototypical features (low guidance) to high fidelity to real images (high guidance).
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_3.png)

> 🔼 Figure 8 shows examples of synthetic image generation failures for ImageNet-LT, highlighting instances where the generated images do not accurately reflect the intended class or contain significant artifacts.
> <details>
> <summary>read the caption</summary>
> Figure 8: Failure cases for ImageNet-LT synthetic generation
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_4.png)

> 🔼 The figure shows synthetic images generated with various image guidance levels, illustrating the spectrum from prototypical features to high fidelity to real images.
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_5.png)

> 🔼 The figure displays synthetic images generated using different image guidance levels, illustrating the spectrum from prototypical features (low guidance) to high fidelity to the original image (high guidance).
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_6.png)

> 🔼 Figure 2 shows synthetic images generated with various image guidance levels, demonstrating the spectrum of synthetic-to-real data created by adjusting the image guidance parameter.
> <details>
> <summary>read the caption</summary>
> Figure 2: Synthetic images generated with various image guidance levels and random seeds. × marks images with low-fidelity to the text prompt, which are filtered out by CLIPScore (ref. the end of §3.1).
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_7.png)

> 🔼 Figure 8 shows examples of synthetic image generation failures from ImageNet-LT, highlighting instances where the generated images have low fidelity or do not accurately represent the target object.
> <details>
> <summary>read the caption</summary>
> Figure 8: Failure cases for ImageNet-LT synthetic generation
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_22_8.png)

> 🔼 Figure 8 shows examples of synthetic image generation failures in ImageNet-LT due to issues such as object occlusion or difficulty in object identification.
> <details>
> <summary>read the caption</summary>
> Figure 8: Failure cases for ImageNet-LT synthetic generation
> </details>



![](https://ai-paper-reviewer.com/2410.13674/figures_23_0.png)

> 🔼 The figure shows synthetic images generated from ImageNet-LT using different levels of image guidance, demonstrating the transition from prototypical to realistic images.
> <details>
> <summary>read the caption</summary>
> Figure 6: Synthetic generation with various image guidance and random seeds based on ImageNet-LT.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.13674/charts_13_0.png)

> 🔼 The violin plots show the cosine similarity scores between synthetic and real images, and between synthetic images and text prompts, at different image guidance levels.
> <details>
> <summary>read the caption</summary>
> Figure 4: CLIP Cosine similarity score on ImageNet-LT computed between: (a) Synthetic image - original real images. (b) Synthetic image - defined text prompt.
> </details>


![](https://ai-paper-reviewer.com/2410.13674/charts_13_1.png)

> 🔼 The chart shows the cosine similarity scores computed using CLIP between synthetic images and real images as well as between synthetic images and their text prompts across different image guidance levels.
> <details>
> <summary>read the caption</summary>
> Figure 4: CLIP Cosine similarity score on ImageNet-LT computed between: (a) Synthetic image - original real images. (b) Synthetic image - defined text prompt.
> </details>


![](https://ai-paper-reviewer.com/2410.13674/charts_15_0.png)

> 🔼 The chart displays the CLIP cosine similarity scores between synthetic images and original real images (a) and text prompts (b) across various image guidance levels.
> <details>
> <summary>read the caption</summary>
> Figure 4: CLIP Cosine similarity score on ImageNet-LT computed between: (a) Synthetic image - original real images. (b) Synthetic image - defined text prompt.
> </details>


![](https://ai-paper-reviewer.com/2410.13674/charts_15_1.png)

> 🔼 The violin plot visualizes the cosine similarity scores between synthetic images and either real images or text prompts across different image guidance levels.
> <details>
> <summary>read the caption</summary>
> Figure 4: CLIP Cosine similarity score on ImageNet-LT computed between: (a) Synthetic image - original real images. (b) Synthetic image - defined text prompt.
> </details>


![](https://ai-paper-reviewer.com/2410.13674/charts_23_0.png)

> 🔼 The chart displays the impact of various image guidance levels on out-of-distribution (OOD) F1 score for iWildCam and few-class accuracy for ImageNet-LT, comparing the performance of DisCL with baselines.
> <details>
> <summary>read the caption</summary>
> Figure 12: Effect of Image Guidance (mixing syn+real). All-level experiments use the synthesis samples from all guidance scales selected for each task. 0.5 refers to only using synthetic data with guidance level λ = 0.5 for fine-tuning. Left: results on iWildCam. Right: results on ImageNet-LT
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='4' style='font-size:16px'><tr><td></td><td></td><td colspan="8">CIFAT-100-LT</td></tr><tr><td></td><td></td><td colspan="4">Imbalance Ratio=100</td><td colspan="4">Imbalance Ratio=50</td></tr><tr><td>Method</td><td>Curriculum</td><td>Many</td><td>Medium</td><td>Few</td><td>Overall</td><td>Many</td><td>Medium</td><td>Few</td><td>Overall</td></tr><tr><td>CE</td><td>N/A</td><td>52.86</td><td>25.34</td><td>5.49</td><td>29.02</td><td>49.60</td><td>25.41</td><td>5.33</td><td>31.72</td></tr><tr><td>CE + CUDA</td><td>N/A</td><td>54.55</td><td>26.07</td><td>5.43</td><td>29.02</td><td>52.29</td><td>26.17</td><td>5.53</td><td>33.13</td></tr><tr><td>CE + DisCL</td><td>Diverse to Specific</td><td>53.14</td><td>25.52</td><td>13.65</td><td>39.91</td><td>53.4</td><td>31.69</td><td>21.47</td><td>36.22</td></tr><tr><td>BS</td><td>N/A</td><td>47.87</td><td>30.07</td><td>14.41</td><td>31.61</td><td>46.01</td><td>30.76</td><td>18.55</td><td>34.82</td></tr><tr><td>BS + CUDA</td><td>N/A</td><td>48.01</td><td>32.79</td><td>15.55</td><td>33.02</td><td>46.08</td><td>32.51</td><td>22.11</td><td>36.21</td></tr><tr><td>BS + DisCL</td><td>Diverse to Specific</td><td>49.02</td><td>29.02</td><td>19.07</td><td>33.08</td><td>49.51</td><td>32.6</td><td>25.58</td><td>36.77</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the accuracy of long-tail classification on CIFAR-100-LT dataset using different methods and curriculum strategies, showing improvement with DisCL.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy (%) of long-tail classification on CIFAT-100-LT with base model ResNet-10. The best accuracy for classes of {many, medium, few} samples is highlighted in bold. Baselines are defined in §5.1.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td></td><td></td><td colspan="4">iNaturalist2018</td></tr><tr><td>Method</td><td>Curriculum</td><td>Many</td><td>Medium</td><td>Few</td><td>Overall</td></tr><tr><td>CE</td><td>N/A</td><td>55.02</td><td>43.40</td><td>37.33</td><td>42.20</td></tr><tr><td>CE + CUDA</td><td>N/A</td><td>55.94</td><td>44.21</td><td>39.13</td><td>43.18</td></tr><tr><td>CE + DisCL</td><td>Diverse to Specific</td><td>54.71</td><td>44.37</td><td>48.92</td><td>47.25</td></tr><tr><td>BS</td><td>N/A</td><td>46.12</td><td>49.31</td><td>50.27</td><td>49.46</td></tr><tr><td>BS + CUDA</td><td>N/A</td><td>48.77</td><td>49.94</td><td>50.87</td><td>50.23</td></tr><tr><td>BS + DisCL</td><td>Diverse to Specific</td><td>45.44</td><td>48.18</td><td>53.63</td><td>50.30</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the accuracy of long-tail classification on the iNaturalist2018 dataset using ResNet-10 as the base model, comparing different curriculum learning strategies.
> <details>
> <summary>read the caption</summary>
> Table 3: Accuracy (%) of long-tail classification on iNaturalist2018 with base model ResNet-10. The best accuracy is highlighted in bold. Baselines are defined in §5.1.
> </details>

{{< table-caption >}}
<table id='8' style='font-size:18px'><tr><td></td><td colspan="4">iWildCam</td></tr><tr><td></td><td colspan="2">Without WE</td><td colspan="2">With WE</td></tr><tr><td>Method</td><td>OOD</td><td>ID</td><td>I OOD</td><td>ID</td></tr><tr><td>CLIP (Zero-Shot)</td><td>12.1</td><td>11.8</td><td>12.1</td><td>11.8</td></tr><tr><td>FLYP+</td><td>40.3</td><td>55.9</td><td>41.9</td><td>57.7</td></tr><tr><td>FLYP + DisCL</td><td>43.1</td><td>59.6</td><td>44.8</td><td>60.2</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the in-distribution and out-of-distribution macro F1 scores achieved by various methods on the iWildCam dataset for low-quality image learning using CLIP ViT-B/16 model.
> <details>
> <summary>read the caption</summary>
> Table 5: In-distribution (ID) and out-of-distribution (OOD) macro F1 score of low-quality image learning on iWildCam with CLIP ViT-B/16 model. The best performance is highlighted in bold. † marks our reproduced results using the original paper provided code. Baselines are defined in §5.2.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td rowspan="2"></td><td rowspan="2">Method</td><td rowspan="2">Curriculum</td><td colspan="2">iWildCam</td></tr><tr><td>OOD</td><td>ID</td></tr><tr><td rowspan="5">Baselines</td><td>CLIP (zero-shot)</td><td></td><td>11.0 (-)</td><td>8.7 (-)</td></tr><tr><td>LP-FT</td><td>N/A</td><td>34.7 (0.4)</td><td>49.7 (0.5)</td></tr><tr><td>LP-FT + WE</td><td>N/A</td><td>35.7 (0.4)</td><td>50.2 (0.5)</td></tr><tr><td>FLYP+</td><td>N/A</td><td>35.5 (1.1)</td><td>52.2 (0.6)</td></tr><tr><td>FLYP + WE↑</td><td>N/A</td><td>36.4 (1.2)</td><td>52.0 (1.0)</td></tr><tr><td rowspan="7">Ablations</td><td>FLYP + Text-only Guidance</td><td>N/A</td><td>34.2 (0.4)</td><td>51.4 (0.3)</td></tr><tr><td>FLYP + Fixed Guidance</td><td>N/A</td><td>36.0 (0.3)</td><td>50.8 (0.6)</td></tr><tr><td>FLYP + All-Level Guidance</td><td>N/A</td><td>36.5 (0.6)</td><td>53.4 (0.5)</td></tr><tr><td>FLYP + DisCL</td><td>Easy-to-Hard</td><td>35.2 (0.9)</td><td>51.4 (0.5)</td></tr><tr><td>FLYP + DisCL</td><td>Random</td><td>35.9 (0.1)</td><td>52.1 (0.2)</td></tr><tr><td>FLYP + DisCL [Lower CLIPScore Threshold]</td><td>Adaptive</td><td>37.1 (0.8)</td><td>50.9 (0.9)</td></tr><tr><td>FLYP + DisCL [Higher CLIPScore Threshold]</td><td>Adaptive</td><td>38.1 (1.3)</td><td>52.8 (0.8)</td></tr><tr><td rowspan="2">Ours</td><td>FLYP + DisCL</td><td>Adaptive</td><td>38.2 (0.5)</td><td>54.3 (1.4)</td></tr><tr><td>FLYP + DisCL + WE</td><td>Adaptive</td><td>38.7 (0.4)</td><td>54.6 (0.7)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of in-distribution (ID) and out-of-distribution (OOD) macro F1 scores for various methods on the iWildCam dataset, highlighting the impact of DisCL.
> <details>
> <summary>read the caption</summary>
> Table 5: In-distribution (ID) and out-of-distribution (OOD) macro F1 score of low-quality image learning on iWildCam with CLIP ViT-B/16 model. The best performance is highlighted in bold. † marks our reproduced results using the original paper provided code. Baselines are defined in §5.2.
> </details>

{{< table-caption >}}
<br><table id='7' style='font-size:18px'><tr><td>Images' Details</td><td>ImageNet-LT</td><td colspan="2">CIFAR100-LT Irb=100 Irb=50</td><td>iNaturalist2018</td><td>iWildCam</td></tr><tr><td>No. of Hard Samples</td><td>1643</td><td>324</td><td>268</td><td>44956</td><td>8260</td></tr><tr><td>Number of Image Guidance Scales 入</td><td>4</td><td>4</td><td>4</td><td>4</td><td>3</td></tr><tr><td>Number of Random Seed Per Image</td><td>8</td><td>8</td><td>8</td><td>4</td><td>8</td></tr><tr><td>Number of Generated Images</td><td>51917</td><td>2592</td><td>2144</td><td>179824</td><td>197756</td></tr><tr><td>Number of Generated Images After Filtering</td><td>24141</td><td>809</td><td>668</td><td>75234</td><td>90093</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the statistics of synthetic data generated for four datasets, including the number of hard samples, image guidance scales, random seeds, and the number of generated images before and after filtering.
> <details>
> <summary>read the caption</summary>
> Table 6: Statistics about Generated Synthetic Data. Irb refers to the imbalance ratio used to sample CIFAR100-LT dataset.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td>Class Name</td><td>Prompts</td></tr><tr><td>Grand Piano</td><td>A grand piano sits elegantly in a sunlit room, its glossy finish reflecting the warm glow. In a cozy living room, the grand piano adds a touch of luxury and sophistication to the space. The grand piano sits silently in a dimly lit room, waiting patiently for a skillful pianist to bring it to life. In a grand ballroom, the grand piano provides a majestic backdrop for a glamorous event. A vintage grand piano exudes timeless elegance in a quaint parlor, filled with antique charm.</td></tr><tr><td>Pufferfish</td><td>A colorful pufferfish swimming gracefully in a crystal-clear ocean, surrounded by vibrant coral reefs. A group of playful pufferfish blowing bubbles and chasing each other in a sunlit underwater cave. A shoal of pufferfish moving in unison, creating a mesmerizing dance of synchro- nized swimming in the deep sea. A fierce pufferfish defending its territory from intruders, puffing up its body and displaying its sharp spikes as a warning. A baby pufferfish following its larger parent closely, learning the ropes of survival in the vast ocean ecosystem.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the accuracy of different methods on ImageNet-LT dataset for long-tail classification, comparing various curriculum learning strategies and baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy (%) of long-tail classification on ImageNet-LT with base model ResNet-10. The best accuracy is highlighted in bold. † marks our reproduced results using the original paper provided code. BS refers to Balanced Softmax Loss(Ren et al., 2020). Baselines (LDMLR, CUDA) are defined in §5.1.
> </details>

{{< table-caption >}}
<br><table id='21' style='font-size:18px'><tr><td>入e = g(e)</td></tr><tr><td>Extract Sxe = {(xj, Yj, 入j)|入j = 入e}</td></tr><tr><td>Gather new training set De = Sle U Dnh U Dh</td></tr><tr><td>Finetune the model f⌀ with De</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the accuracy results of different methods for long-tail classification on the ImageNet-LT dataset, comparing various curriculum learning strategies and baselines.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy (%) of long-tail classification on ImageNet-LT with base model ResNet-10. The best accuracy is highlighted in bold. † marks our reproduced results using the original paper provided code. BS refers to Balanced Softmax Loss(Ren et al., 2020). Baselines (LDMLR, CUDA) are defined in §5.1.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td></td><td>Hyperparameter Name Epoch</td><td>Value</td></tr><tr><td rowspan="8">Generation</td><td rowspan="8">Text Guidance Scale w Noise Scheduler CLIP Filter Model Stable Diffusion Denoising Steps Stable Diffusion Checkpoint Filtering Threshold for iWildCam Filtering Threshold for ImageNet-LT GPU Used</td><td>10</td></tr><tr><td>DDIM</td></tr><tr><td>1000</td></tr><tr><td>openai/clip-vit-base-patch32 stabilityaistable-diffusion-xl-refiner-1.0</td></tr><tr><td>0.25</td></tr><tr><td></td></tr><tr><td>0.30</td></tr><tr><td>Nvidia rtx5000 with 24GB</td></tr><tr><td rowspan="9">ImageNet-LT</td><td rowspan="9">Level of Image Guidances 入 CLIP Filtering Threshold Optimizer Batch Size for ResNet-10 Learning Rate Scheduler Training Epoch Training Epoch for Curriculum Learning GPU</td><td>{0, 0.1, 0.3, 0.5, 1.0}</td></tr><tr><td>0.3</td></tr><tr><td>128</td></tr><tr><td>1e-3</td></tr><tr><td>Adam</td></tr><tr><td>Cosine</td></tr><tr><td>65</td></tr><tr><td>60</td></tr><tr><td>Nvidia rtx5000 with 24GB</td></tr><tr><td rowspan="13">iWildCam</td><td rowspan="13">Used Level of Image Guidances 入 CLIP Filtering Threshold Size of Dataset D Size of Guidance Validate Dataset S Batch Size for CLIP ViT-B/16 Learning Rate Batch Size for CLIP ViT-L/16 Training Epoch for Curriculum Learning</td><td>{0.5, 0.7, 0.9, 1.0}</td></tr><tr><td>0.25</td></tr><tr><td>30000</td></tr><tr><td>2000</td></tr><tr><td>256</td></tr><tr><td>200</td></tr><tr><td>1e-5 Optimizer Warmup Step Training</td></tr><tr><td>AdamW Scheduler</td></tr><tr><td>Cosine with Warmup</td></tr><tr><td>500</td></tr><tr><td>20</td></tr><tr><td>15</td></tr><tr><td>GPU Used 2 Nvidia A100 with 80GB</td></tr></table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters and their corresponding values used in the synthetic data generation and model training processes for ImageNet-LT and iWildCam datasets.
> <details>
> <summary>read the caption</summary>
> Table 8: Hyperparameters and their values
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.13674/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.13674/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}