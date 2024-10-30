---
title: "Dynamic 3D Gaussian Tracking for Graph-Based Neural Dynamics Modeling"
summary: "This work introduces a new framework that learns object dynamics directly from multi-view videos by explicitly considering robot actions, achieving accurate 3D action-conditioned video prediction and ..."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", ]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.18912 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research presents a new method for learning how objects move when robots interact with them.  Instead of relying on simulations, the researchers use videos recorded from real-world robot-object interactions.  They represent the 3D shapes of objects using something called "3D Gaussian splatting," which is like creating a detailed 3D model from many overlapping fuzzy blobs. This model is then fed to a neural network, a type of computer algorithm that learns patterns from data. The researchers trained this neural network to predict how objects will move given a robot's action, allowing for 'action-conditioned video prediction'. The key innovation here is that the system tracks the objects very accurately in 3D even when the robot or other objects partially obscure the view, and the model successfully generalizes to different kinds of deformable objects and previously unseen robot actions. This is an important step toward developing robots that can interact safely and efficiently with the real world, especially for complex and unstructured environments.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.18912" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.18912" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly important for researchers in robotics, computer vision, and machine learning.  It bridges the gap between real-world data and accurate dynamics modeling, a crucial challenge in robotics. The novel approach of using 3D Gaussian splatting and graph neural networks offers a powerful new technique for action-conditioned video prediction and model-based planning, opening up avenues for more robust and adaptable robotic systems. Its success in handling deformable objects expands the possibilities for interaction with complex, real-world scenarios.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel framework learns object dynamics directly from multi-view videos by considering robot actions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} 3D Gaussian splatting and graph neural networks are used to achieve accurate 3D action-conditioned video prediction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The model enables model-based planning for object manipulation, showing success even with deformable objects. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.18912/figures_1_0.png)

> 🔼 The figure illustrates the overall framework of the proposed approach, which involves real-world data collection, dynamic 3D Gaussian tracking, graph-based neural dynamics learning, video prediction, and model-based planning.
> <details>
> <summary>read the caption</summary>
> Figure 1: We propose a novel approach for learning a neural dynamics model from real-world data. Using videos captured from robot-object interactions, we obtain dense 3D tracking with a dynamic 3D Gaussian Splatting framework. We train a graph-based neural dynamics model on top of the 3D Gaussian particles for action-conditioned video prediction and model-based planning.
> </details>





![](https://ai-paper-reviewer.com/2410.18912/charts_8_0.png)

> 🔼 Figure 5 shows the quantitative results of model-based planning for rope straightening and toy doll relocating tasks, illustrating median error and success rate across various planning steps and error thresholds.
> <details>
> <summary>read the caption</summary>
> Figure 5: Quantitative Results of model-based planning. We perform each experiment 5 times and present the results as follows: (i) the median error curve relative to planning steps, with the area between 25 and 75 percentiles shaded, and (ii) the success rate curve relative to error thresholds.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Method</td><td>Metric</td><td>Rope</td><td>Cloth</td><td>Toy Animals</td><td>Metric</td><td>Rope</td><td>Cloth</td><td>Toy Animals</td></tr><tr><td>CoTracker [12]</td><td>3D MTE [mm] ↓</td><td>46.96</td><td>55.84</td><td>51.84</td><td>2D MTE [mm] ↓</td><td>42.73</td><td>49.82</td><td>46.30</td></tr><tr><td>PIPS++ [61]</td><td></td><td>49.37</td><td>58.10</td><td>58.45</td><td></td><td>46.17</td><td>50.28</td><td>49.96</td></tr><tr><td>SpatialTracker [15]</td><td></td><td>38.72</td><td>53.85</td><td>42.82</td><td></td><td>32.29</td><td>46.26</td><td>37.49</td></tr><tr><td>Dyn3DGS [8]</td><td></td><td>62.41</td><td>69.20</td><td>66.19</td><td></td><td>57.39</td><td>61.28</td><td>60.17</td></tr><tr><td>Ours</td><td></td><td>6.90</td><td>13.14</td><td>12.83</td><td></td><td>4.92</td><td>11.72</td><td>10.94</td></tr><tr><td>CoTracker [12]</td><td>3D davg ↑</td><td>79.28</td><td>75.79</td><td>75.46</td><td>2D davg ↑</td><td>83.71</td><td>79.28</td><td>78.44</td></tr><tr><td>PIPS++ [61]</td><td></td><td>69.83</td><td>66.92</td><td>68.95</td><td></td><td>76.30</td><td>72.48</td><td>76.96</td></tr><tr><td>SpatialTracker [15]</td><td></td><td>86.56</td><td>83.85</td><td>79.42</td><td></td><td>92.36</td><td>90.52</td><td>89.62</td></tr><tr><td>Dyn3DGS [8]</td><td></td><td>60.32</td><td>56.28</td><td>61.97</td><td></td><td>67.20</td><td>62.28</td><td>67.96</td></tr><tr><td>Ours</td><td></td><td>89.26</td><td>89.13</td><td>82.71</td><td></td><td>93.27</td><td>92.18</td><td>94.19</td></tr><tr><td>CoTracker [12]</td><td>3D Survival ↑</td><td>94.41</td><td>95.19</td><td>92.26</td><td>2D Survival ↑</td><td>97.20</td><td>100</td><td>96.06</td></tr><tr><td>PIPS++ [61]</td><td></td><td>92.61</td><td>91.39</td><td>85.73</td><td></td><td>96.74</td><td>94.28</td><td>92.82</td></tr><tr><td>SpatialTracker [15]</td><td></td><td>100</td><td>98.46</td><td>96.26</td><td></td><td>100</td><td>100</td><td>100</td></tr><tr><td>Dyn3DGS [8]</td><td></td><td>84.29</td><td>79.04</td><td>74.82</td><td></td><td>87.83</td><td>82.14</td><td>79.32</td></tr><tr><td>Ours</td><td></td><td>100</td><td>100</td><td>98.83</td><td></td><td>100</td><td>100</td><td>100</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents a quantitative comparison of the proposed dynamic 3D Gaussian tracking method against existing methods, evaluating median trajectory error, accuracy at various thresholds, and survival rate in both 2D and 3D using various metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative Results on Dynamic 3D Gaussian Tracking. We labeled the ground truth for 200 frames per episode in 3D space for 1 or 2 object instances in each category, covering two episodes per object. Our Dyn3DGS-based tracking method outperforms all baselines, including the unmodified Dyn3DGS, in both 2D and 3D metrics.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.18912/figures_3_0.png)

> 🔼 The figure illustrates the proposed framework, starting from multi-view videos to dense 3D tracking with Dyn3DGS optimization, then to learning object dynamics via a graph-based neural network, and finally enabling action-conditioned video prediction and model-based planning.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of Our Framework: We first achieve dense 3D tracking of long-horizon robot-object interactions using multi-view videos and Dyn3DGS optimization. We then learn the object dynamics through a graph-based neural network. This approach enables applications such as (i) action-conditioned video prediction using linear blend skinning for motion prediction, and (ii) model-based planning for robotics.
> </details>



![](https://ai-paper-reviewer.com/2410.18912/figures_6_0.png)

> 🔼 Figure 3 shows qualitative results of 3D Gaussian tracking demonstrating point-level correspondence on cloth, rope, and toy doll objects across various time steps.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative Results of 3D Gaussian Tracking. We demonstrate point-level correspondence on the objects across various timesteps. Please check our website for more videos showcasing precise dense tracking even under different object deformations and occlusions.
> </details>



![](https://ai-paper-reviewer.com/2410.18912/figures_7_0.png)

> 🔼 Figure 4 shows a comparison of action-conditioned 3D video prediction results between the proposed method and the MPM baseline, demonstrating the superior accuracy of the proposed method in aligning with ground truth frames.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative Results of Action-Conditioned 3D Video Prediction. Our videos are generated by rendering predicted Gaussians on virtual backgrounds. Robot trajectories are visualized as curved lines (yellow: current end-effector positions, purple: history end-effector positions). Compared to the MPM baseline, our video prediction results align with the ground truth frames (GT) more accurately.
> </details>



</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.18912/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.18912/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}