---
title: "Neural Metamorphosis"
summary: "NeuMeta learns a continuous weight manifold for neural networks, enabling the generation of any-sized network without retraining, even for unseen configurations."
categories: ["AI Generated"]
tags: ["🔖 24-10-10", ]
showSummary: true
date: 2024-10-10
draft: false
---

{{< keyword >}} 2410.11878 {{< /keyword >}}

### TL;DR


{{< lead >}}

NeuMeta is a new approach to building neural networks that can adapt to various sizes and architectures without retraining.  Instead of training separate models, NeuMeta learns a "weight manifold," a continuous space where different network weights reside.  It uses an implicit neural representation (INR) to map coordinates within this manifold to corresponding weight values. This allows it to generate weights for networks with different sizes or even previously unseen architectures.  Two strategies are employed to improve the smoothness of this manifold.  First, intra-model smoothness is enhanced by solving a shortest Hamiltonian path problem on weight matrices. Second, cross-network smoothness is enhanced by adding noise during training to create a more flexible model.  The effectiveness of NeuMeta is shown on image classification, semantic segmentation, and image generation tasks, achieving high accuracy even with a 75% compression rate. This method shows significant potential for creating more efficient and adaptable neural networks.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.11878" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.11878" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel paradigm for creating adaptable neural networks, addressing the limitations of traditional rigid models.  The proposed approach offers significant potential for improving efficiency and reducing resource requirements in various applications, while opening avenues for research into continuous neural network architectures and weight manifold learning.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} NeuMeta introduces a novel paradigm for building self-morphable neural networks by learning a continuous weight manifold. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The method uses implicit neural representations as hypernetworks to generate weights for any-sized network directly from the manifold, eliminating the need for retraining. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} NeuMeta demonstrates promising results in image classification, semantic segmentation, and image generation, achieving full-size performance even at 75% compression. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.11878/figures_6_0.png)

> 🔼 The figure illustrates the pipeline of Neural Metamorphosis, showing the process of transforming a trained neural network into a smoothed network, training an implicit neural representation (INR), sampling weights from the INR, and generating weights for a target model.
> <details>
> <summary>read the caption</summary>
> Fig. 2: Diagram of NeuMeta and our content organization.
> </details>





![](https://ai-paper-reviewer.com/2410.11878/charts_13_0.png)

> 🔼 The chart compares the negative log-likelihood (NLL) of different methods across various compression ratios for MNIST and CelebA datasets.
> <details>
> <summary>read the caption</summary>
> Fig. 7: Comparative analysis of compress rate and NLL on different datasets. Lower NLL indicates better performance.
> </details>





{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td></td><td colspan="6">ResNet20 on CIFAR10</td></tr><tr><td rowspan="2">Method</td><td>Y = 0%</td><td>Y = 25%</td><td>2 = 50%</td><td>ュニ 75%+</td><td>Total Train Cost</td><td>Stored</td></tr><tr><td>Acc</td><td>Acc</td><td>Acc</td><td>Acc</td><td>(GPU hours)</td><td>Params</td></tr><tr><td>Individual</td><td>92.60</td><td>90.65</td><td>89.57</td><td>87.04</td><td>5.3</td><td>0.67M</td></tr><tr><td>Slimable [57]</td><td>90.44</td><td>90.44</td><td>88.41</td><td>18.56</td><td>1.6</td><td>0.35M</td></tr><tr><td>INN [50]</td><td>91.33</td><td>90.50</td><td>89.24</td><td>71.70</td><td>1.8</td><td>0.27M</td></tr><tr><td>Ours</td><td>91.76</td><td>91.32</td><td>90.56</td><td>89.56</td><td>1.3</td><td>0.20M</td></tr><tr><td></td><td colspan="6">ResNet20 on CIFAR100</td></tr><tr><td rowspan="2">Method</td><td>Y = 0%</td><td>⌀= 25% y</td><td>= 50%</td><td>7= 75%+</td><td>Total Train Cost</td><td>Stored</td></tr><tr><td>Acc</td><td>Acc</td><td>Acc</td><td>Acc</td><td>(GPU hours)</td><td>Params</td></tr><tr><td>Individual</td><td>68.83</td><td>66.37</td><td>64.87</td><td>61.37</td><td>5.5</td><td>0.70M</td></tr><tr><td>Slimable [57]</td><td>64.44</td><td>64.01</td><td>63.38</td><td>1.59</td><td>1.5</td><td>0.37M</td></tr><tr><td>INN [50]</td><td>65.86</td><td>65.53</td><td>63.35</td><td>27.60</td><td>1.9</td><td>0.28M</td></tr><tr><td>Ours</td><td>66.07</td><td>66.23</td><td>65.36</td><td>62.62</td><td>1.4</td><td>0.20M</td></tr></table>{{< /table-caption >}}

> 🔼 Table 2 compares the accuracy of ResNet20 on CIFAR10 and CIFAR100 at different compression ratios (0%, 25%, 50%, 75%) for NeuMeta against individually trained models, Slimable networks, and Integral Neural Networks.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy comparison of ResNet20 on CIFAR10 and CIFAR100 at different compression ratios. The 75% compression ratio wasn't applied in training.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.11878/figures_8_0.png)

> 🔼 The figure illustrates how intra-model smoothness is achieved by permuting weights within neural network cliques to minimize total variance, enhancing overall smoothness.
> <details>
> <summary>read the caption</summary>
> Fig. 3: Intra-model smoothness via permutation equivalence. Our approach involves permuting weights to minimize total variance within each neural clique graph, thereby enhancing global smoothness.
> </details>



![](https://ai-paper-reviewer.com/2410.11878/figures_9_0.png)

> 🔼 Figure 4 illustrates the contrast between discrete weight prediction in a grid (left) versus the continuous weight prediction as an expectation over a small neighborhood by INR (right).
> <details>
> <summary>read the caption</summary>
> Fig. 4: Cross-model smoothness via coordinate perturbation. Unlike the predict weights in discrete grid (Left), our INR predicts weight as the expectation within a small neighborhood (Right).
> </details>



![](https://ai-paper-reviewer.com/2410.11878/figures_12_0.png)

> 🔼 Figure 5 shows the accuracy comparison of NeuMeta against various structure pruning methods across four datasets (MNIST, CIFAR10, CIFAR100, and ImageNet) at different compression ratios.
> <details>
> <summary>read the caption</summary>
> Fig. 5: Accuracy comparison of NeuMeta versus different structure pruning methods on MNIST, CIFAR10, CIFAR100 and ImageNet. Our method consistently outperforms pruning-based methods. R18 and R20 are short for ResNet18 and ResNet20.
> </details>



![](https://ai-paper-reviewer.com/2410.11878/figures_13_0.png)

> 🔼 The figure shows the visualization results of generated images by VAE on MNIST and CelebA datasets with 25% compression rate using NeuMeta and L1 25% pruning methods, indicating NeuMeta's superior performance with lower MSE and NLL values.
> <details>
> <summary>read the caption</summary>
> Fig. 6: VAE Visualizations on MNIST and CelebA Datasets on the same compress rate. Lower NLL and MSE indicates better performance.
> </details>



![](https://ai-paper-reviewer.com/2410.11878/figures_13_1.png)

> 🔼 The figure shows the visualization of generated images by VAE on MNIST and CelebA datasets using NeuMeta with 25% compression for MNIST and 50% for CelebA, comparing the results with L1 pruning-based method, showing superior image generation quality of NeuMeta with lower MSE and NLL values.
> <details>
> <summary>read the caption</summary>
> Fig. 6: VAE Visualizations on MNIST and CelebA Datasets on the same compress rate. Lower NLL and MSE indicates better performance.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.11878/charts_14_0.png)

> 🔼 The chart displays the CKA values and KL divergence between the full-sized model and models of different sizes, illustrating the feature similarity and knowledge distillation aspects of NeuMeta.
> <details>
> <summary>read the caption</summary>
> Fig. 9: Similarity Analysis Between Models. (Top) the CKA comparison between the full model and various other models of different sizes. (Bottom) heatmap of the output KL divergence for each pair of models.
> </details>


![](https://ai-paper-reviewer.com/2410.11878/charts_14_1.png)

> 🔼 The chart displays the CKA scores and KL divergence between various sized models trained using individual training, knowledge distillation, and the proposed NeuMeta method, revealing the feature similarity and knowledge transfer properties of each approach.
> <details>
> <summary>read the caption</summary>
> Fig. 9: Similarity Analysis Between Models. (Top) the CKA comparison between the full model and various other models of different sizes. (Bottom) heatmap of the output KL divergence for each pair of models.
> </details>


![](https://ai-paper-reviewer.com/2410.11878/charts_14_2.png)

> 🔼 The chart displays the effect of manifold sampling on both validation loss and accuracy across various hidden dimensions, showing improved performance with sampling.
> <details>
> <summary>read the caption</summary>
> Fig. 10: Ablation study with or without manifold sampling.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='11' style='font-size:14px'><tr><td rowspan="2">Method</td><td colspan="2">25%</td><td colspan="2">50%</td><td colspan="2">75% T</td></tr><tr><td>mIOU</td><td>F1</td><td>mIOU</td><td>F1</td><td>mIOU</td><td>F1</td></tr><tr><td>Individual</td><td>84.70</td><td>90.63</td><td>83.14</td><td>89.59</td><td>82.79</td><td>89.36</td></tr><tr><td>Slimmable [57]</td><td>81.09</td><td>88.14</td><td>80.92</td><td>88.03</td><td>61.19</td><td>72.78</td></tr><tr><td>Ours</td><td>81.94</td><td>88.75</td><td>81.93</td><td>88.74</td><td>81.94</td><td>88.75</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the accuracy of ResNet20 on CIFAR10 and CIFAR100 datasets at different compression ratios (0%, 25%, 50%, and 75%) for four different methods: Individually trained models, Slimable networks, Integral Neural Networks, and the proposed NeuMeta method.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy comparison of ResNet20 on CIFAR10 and CIFAR100 at different compression ratios. The 75% compression ratio wasn't applied in training.
> </details>

{{< table-caption >}}
<br><table id='10' style='font-size:18px'><tr><td>No. </td><td>Weight Permutation</td><td>入1</td><td>入2</td><td>Accuracy</td></tr><tr><td>1</td><td></td><td>0</td><td>1e-4</td><td>73.56</td></tr><tr><td>2</td><td></td><td>1</td><td>1e-4</td><td>80.33</td></tr><tr><td>3</td><td></td><td>1</td><td>0</td><td>64.37</td></tr><tr><td>4</td><td></td><td>1</td><td>1e-4</td><td>91.84</td></tr><tr><td>5</td><td></td><td>10</td><td>1e-4</td><td>91.73</td></tr><tr><td>6</td><td></td><td>100</td><td>1e-4</td><td>91.47</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 compares the accuracy of ResNet20 on CIFAR10 and CIFAR100 datasets at different compression ratios (0%, 25%, 50%, and 75%) using NeuMeta, Slimmable networks, Integral Neural Networks, and individually trained models.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy comparison of ResNet20 on CIFAR10 and CIFAR100 at different compression ratios. The 75% compression ratio wasn't applied in training.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.11878/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.11878/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}