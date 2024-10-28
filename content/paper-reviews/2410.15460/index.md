---
title: "Hallucination Detox: Sensitive Neuron Dropout (SeND) for Large Language Model Training"
summary: "New training method, Sensitive Neuron Dropout (SeND), reduces large language model hallucinations by up to 40% while improving efficiency."
categories: ["AI Generated"]
tags: ["🔖 24-10-20", "🤗 24-10-22"]
showSummary: true
date: 2024-10-20
draft: false
---

### TL;DR


{{< lead >}}

Large language models (LLMs) often produce incorrect or irrelevant outputs, known as hallucinations. This paper tackles this problem by focusing on the LLM training process itself, rather than just post-processing fixes.  The researchers found that the training process leads to a lot of variability in the accuracy of LLM outputs, making it difficult to determine when a model has actually learned facts well. They introduce a new training technique called Sensitive Neuron Dropout (SeND).  SeND works by identifying and removing neurons in the model that show high variability during training.  This helps the model become more confident in its answers and reduces hallucinations.  To make SeND more efficient, they also developed a faster way to detect hallucinations, called Efficient EigenScore (EES). Experiments showed that SeND effectively reduced hallucinations in various LLMs (tested on models ranging from 70 million to 12 billion parameters) and improved accuracy compared to traditional training methods, showing an improvement of up to 40% in accuracy tests.  This research highlights that looking at the training process is key to understanding and fixing LLM hallucinations, showing how the model's internal dynamics during training impact its reliability and confidence.  This is important for making LLMs more reliable and safe for use in various applications.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.15460" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.15460" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on large language models (LLMs) because it directly addresses the prevalent issue of hallucinations.  It introduces a novel training-time solution (SeND) rather than relying on post-hoc fixes, offering a more efficient and effective approach. The research also introduces a faster hallucination detection metric, which is significant for computational scalability.  The findings open avenues for research into LLM training dynamics and reducing uncertainty, ultimately improving LLM reliability and safety.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} SeND, a new training method, significantly reduces LLM hallucinations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SeND achieves better accuracy with enhanced computational efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Efficient EigenScore (EES) provides a faster hallucination detection. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights





![](charts/charts_4_0.png)

> 🔼 Figure 1 visualizes the oscillatory behavior of hallucination metrics (SelfCheckGPT and Rouge1) across various sizes of LLMs (70M to 12B parameters) during training, revealing high variance and fluctuating hallucination rates.
> <details>
> <summary>read the caption</summary>
> Figure 1: Visualization of Oscillatory Behavior Across Varying LLM Sizes. Hallucination metrics are evaluated at equidistant checkpoints of the Pythia models, with sizes 70M, 160M, 410M, 1B, 1.4B, 2.8B, 6.9B, 12B. Part (a) presents the performance of the Pythia models under the SelfCheckGPT metric. Average performance is indicated by solid lines, while the shaded regions represent the standard deviation. Higher SelfCheckGPT score indicates a higher probability of self-contradiction and higher probability of confabulation. Part (b) depicts the same experimental setup, but hallucination measured on the XSum v2 dataset, where Rouge1 is used as the performance metric. A higher Rouge1 score suggests a better alignment of the generated text to that of the reference summary. For all model sizes, we observe a pronounced trend of high variance and oscillatory behavior in hallucination rates. This fluctuation highlights the models' uncertainty at specific time stamps and emphasizes the need for a robust mitigation strategy to stabilize performance during training.
> </details>





{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td>Require: Embedding matrix E E trace estimation</td><td>R dmodel x K number of Chebyshev terms M, number of stochastic , samples Nz</td></tr><tr><td>Ensure: Approximated EigenScore</td><td>EES</td></tr><tr><td>1: Standardize and Scale the</td><td>Embedding Matrix E:</td></tr><tr><td>K 1 � i=1 E[:, i] 2: Emean = K</td><td>▷ Compute mean of E</td></tr><tr><td>3: Estd = V 1k EK=1 (E[:, i] - Emean E-Emean</td><td>)2 ▷ Compute standard deviation of E</td></tr><tr><td>4: Enormalized = Estd</td><td>▷ Standardize E</td></tr><tr><td>5: Omax = Power Method(Enormalized)</td><td>▷ Compute the largest singular value using the power</td></tr><tr><td>method</td><td></td></tr><tr><td>6: Enormalized Enormalized 0</td><td>▷ Scale E by Omax</td></tr><tr><td>max 7: Initialize:</td><td></td></tr><tr><td>8: dm = 0 Am E {0, 1, · · · , M}</td><td>▷ Initialize dm coefficients</td></tr><tr><td>9: Cm = 0 Am E {0, 1, · · · , M}</td><td>▷ Initialize Cm coefficients</td></tr><tr><td>10: Compute DOS coefficients dm:</td><td></td></tr><tr><td>11: for m = 0 to M do</td><td></td></tr><tr><td>12: Sample zj ~ N(0, I)</td><td>▷ Sample random vectors for stochastic trace estimation</td></tr><tr><td>13: Compute Chebyshev</td><td>polynomial using the recurrence relation</td></tr><tr><td>14: end for</td><td>Cm:</td></tr><tr><td>15: Compute Chebyshev coefficients</td><td></td></tr><tr><td>16: for m = 0 to M do</td><td></td></tr><tr><td>17: Cm ← So log(�)T* (入) d入 approximation</td><td>▷ Using Equation 27 and Gaussian Quadrature for</td></tr><tr><td>18: end for</td><td></td></tr><tr><td>19: Compute EigenScore:</td><td></td></tr><tr><td>M 1 � m=0 dm Cm 20: EES ← K</td><td>▷ Approximate EigenScore using DOS coefficients</td></tr><tr><td>21: return EES</td><td>▷ Return the approximated EigenScore</td></tr></table>{{< /table-caption >}}

> 🔼 This figure compares the performance of regular finetuning versus SeND (Sensitive Neuron Dropout) on two datasets (HELM and MedHALT) in terms of EigenScore (EES) reduction during training.
> <details>
> <summary>read the caption</summary>
> Figure 4: Regular finetuning vs. SeND on two datasets. (a) presents the results of training Pythia 1B on HELM with regular finetuning and SeND. (b) uses the same training setup as (a), but the LLM is trained on MedHALT 2k. In both plots, performance is reported as the average EES over 5 runs on the validation set. Models are trained until loss convergence. Training with SeND shows a more controlled reduction in EES compared to regular finetuning, suggesting that SeND optimizes for hallucinations as well as loss, with less overall confidence variability during training. Since finetuning without dropout consistently achieves better factual consistency than random dropout in our experiments, we compare SeND directly with standard finetuning.
> </details>



### More visual insights



<details>
<summary>More on charts
</summary>


![](charts/charts_6_0.png "🔼 Figure 2: Comparison of sensitive neuron dropout on inference of Eleuther AI's Pythia various model sizes with random neuron dropout. (a) Average sensitive neuron dropout with standard deviation plotted as scale of the model increases. (b) Average sensitive neuron dropout for hallucinatory inputs and non-hallucinatory inputs. Input size for each test is 80 I.I.D. texts. Sensitive neuron dropping presents a clear, significant reduction in EigenScore compared to that of random neuron dropping across model sizes. Hallucinatory generations experience a larger drop in EigenScore, meaning that our protocol scales with likelihood of hallucination.")

> 🔼 The chart compares the effect of sensitive neuron dropout versus random neuron dropout on EigenScore, showing a significant reduction in hallucination likelihood with sensitive neuron dropout, especially for hallucinatory inputs.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of sensitive neuron dropout on inference of Eleuther AI's Pythia various model sizes with random neuron dropout. (a) Average sensitive neuron dropout with standard deviation plotted as scale of the model increases. (b) Average sensitive neuron dropout for hallucinatory inputs and non-hallucinatory inputs. Input size for each test is 80 I.I.D. texts. Sensitive neuron dropping presents a clear, significant reduction in EigenScore compared to that of random neuron dropping across model sizes. Hallucinatory generations experience a larger drop in EigenScore, meaning that our protocol scales with likelihood of hallucination.
> </details>


![](charts/charts_8_0.png "🔼 Figure 3: Efficient EigenScore approximation scaling investigation. The figure shows the difference in computation time between regular EigenScore calculation and EES with a moments value of 20. The x-axis represents the product of the matrix's rows and columns, and the y-axis shows the computation time. As matrix size increases, EES consistently reduces computation time, making it a practical choice for large LLMs.")

> 🔼 Figure 3 shows that Efficient EigenScore (EES) provides significant computational speedup over regular EigenScore, especially for large matrices.
> <details>
> <summary>read the caption</summary>
> Figure 3: Efficient EigenScore approximation scaling investigation. The figure shows the difference in computation time between regular EigenScore calculation and EES with a moments value of 20. The x-axis represents the product of the matrix's rows and columns, and the y-axis shows the computation time. As matrix size increases, EES consistently reduces computation time, making it a practical choice for large LLMs.
> </details>


![](charts/charts_10_0.png "🔼 Figure 4: Regular finetuning vs. SeND on two datasets. (a) presents the results of training Pythia 1B on HELM with regular finetuning and SeND. (b) uses the same training setup as (a), but the LLM is trained on MedHALT 2k. In both plots, performance is reported as the average EES over 5 runs on the validation set. Models are trained until loss convergence. Training with SeND shows a more controlled reduction in EES compared to regular finetuning, suggesting that SeND optimizes for hallucinations as well as loss, with less overall confidence variability during training. Since finetuning without dropout consistently achieves better factual consistency than random dropout in our experiments, we compare SeND directly with standard finetuning.")

> 🔼 The chart visualizes the effectiveness of SeND (Sensitive Neuron Dropout) compared to regular finetuning on reducing hallucination (measured by EES) during the training of Pythia 1B on two datasets: HELM and MedHALT 2k.
> <details>
> <summary>read the caption</summary>
> Figure 4: Regular finetuning vs. SeND on two datasets. (a) presents the results of training Pythia 1B on HELM with regular finetuning and SeND. (b) uses the same training setup as (a), but the LLM is trained on MedHALT 2k. In both plots, performance is reported as the average EES over 5 runs on the validation set. Models are trained until loss convergence. Training with SeND shows a more controlled reduction in EES compared to regular finetuning, suggesting that SeND optimizes for hallucinations as well as loss, with less overall confidence variability during training. Since finetuning without dropout consistently achieves better factual consistency than random dropout in our experiments, we compare SeND directly with standard finetuning.
> </details>


![](charts/charts_15_0.png "🔼 Figure 5: Net change of sentence embeddings between checkpoints 125,000 and 143,000. Each different colour is a different input text. As depicted, there are specific neurons that go through drastic changes between the two checkpoints of the training regardless of the input.")

> 🔼 The chart displays the net change of sentence embeddings between specific training checkpoints, highlighting neurons with drastic activation changes irrespective of input text.
> <details>
> <summary>read the caption</summary>
> Figure 5: Net change of sentence embeddings between checkpoints 125,000 and 143,000. Each different colour is a different input text. As depicted, there are specific neurons that go through drastic changes between the two checkpoints of the training regardless of the input.
> </details>


![](charts/charts_18_0.png "🔼 Figure 6: Effect of changing number of moments on EES calculation time (seconds). More moments gives more accurate approximation but higher computation time.")

> 🔼 The chart displays the computation time of Efficient EigenScore (EES) in relation to the number of rows in the matrix and the number of moments used in the calculation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Effect of changing number of moments on EES calculation time (seconds). More moments gives more accurate approximation but higher computation time.
> </details>


![](charts/charts_18_1.png "🔼 Figure 7: Performance of SeND on Pythia 1B wih HELM dataset computed with both EES and regular EigenScore. EES is able to closely track the true EigenScore performance metric, showing that it is a good approximator.")

> 🔼 Figure 7 shows that the Efficient EigenScore (EES) closely approximates the EigenScore, validating EES as a reliable and efficient alternative for hallucination detection.
> <details>
> <summary>read the caption</summary>
> Figure 7: Performance of SeND on Pythia 1B wih HELM dataset computed with both EES and regular EigenScore. EES is able to closely track the true EigenScore performance metric, showing that it is a good approximator.
> </details>


</details>



### Full paper

{{< gallery >}}
<img src="paper_images/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}