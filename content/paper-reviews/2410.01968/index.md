---
title: "Bi-Level Motion Imitation for Humanoid Robots"
summary: "Bi-Level Motion Imitation (BMI) enhances humanoid robot policy learning by cleverly modifying human motion capture data to be physically feasible, resulting in more robust and realistic robot movement..."
categories: ["AI Generated"]
tags: ["🔖 24-10-02", "🤗 24-10-29"]
showSummary: true
date: 2024-10-02
draft: false
---

{{< keyword >}} 2410.01968 {{< /keyword >}}

### TL;DR


{{< lead >}}

Humanoid robot training using human motion capture (MoCap) data faces challenges due to discrepancies in morphology and physical constraints, leading to suboptimal robot performance.  Existing methods either struggle with unstable learning or generate unrealistic motions.



This paper introduces Bi-Level Motion Imitation (BMI), a novel framework addressing these issues. BMI employs a self-consistent auto-encoder to learn structured motion representations, generating physically feasible reference motions for robot training.  A **bi-level optimization** process then refines both the decoder (which generates the motions) and the robot's policy simultaneously.  Results demonstrate BMI's effectiveness in improving robot policy learning and motion imitation, even with challenging movements that were previously difficult to reproduce.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.01968" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.01968" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in robotics and machine learning because it directly addresses the challenge of physically realistic motion imitation for humanoid robots.  The proposed **Bi-Level Motion Imitation (BMI) framework** offers a novel solution that combines self-consistent auto-encoders with bi-level optimization, leading to improved robot policy learning and physically consistent motions. This is particularly important given the limitations of existing methods that either struggle with unstable learning or generate unrealistic motions.  The study opens avenues for enhanced humanoid robot control and efficient motion generation by leveraging human motion data.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel self-consistent auto-encoder learns efficient and structured motion representations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The BMI framework updates both the robot policy and reference motions simultaneously, improving the overall robot behavior. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The method shows significant improvements in motion imitation quality, even on challenging tasks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.01968/figures_4_0.png)

> 🔼 Figure 1 illustrates the architecture of the self-consistent auto-encoder (SCAE), which encodes motion trajectories into a latent space, performs Fourier transformation to extract latent parameters, reconstructs latent embeddings, and decodes the embeddings to reconstruct the original trajectories, using both motion and latent reconstruction losses for training.
> <details>
> <summary>read the caption</summary>
> Figure 1: Structure of the proposed self-consistent auto-encoder (SCAE). The encoder enc first encodes the original trajectory Tt into latent space zt. Fourier transformation is then applied to zt to get latent parameters 0t = (ft, at, bt) while a separate MLP module learns t. A sinusoidal function reconstructs the latent embedding 2t, followed by the decoder dec recovering the input trajectory ft. Particularly, we re-input ft to the encoder to obtain reconstructed latent embedding 2t. Therefore, SCAE consists of both motion and latent reconstruction losses, as indicated by red arrows. We follow FLD to make multi-step predictions and thus the final loss sums Lo,……, LN.
> </details>





![](https://ai-paper-reviewer.com/2410.01968/charts_6_0.png)

> 🔼 The chart displays the latent and motion reconstruction errors during training for both FLD and SCAE methods, showing SCAE's improved latent reconstruction accuracy without sacrificing motion reconstruction.
> <details>
> <summary>read the caption</summary>
> Figure 3: Reconstruction error during training: (a) The reconstruction error of latent embeddings. (b) The reconstruction error of the original motion states.
> </details>





{{< table-caption >}}
<br><table id='1' style='font-size:20px'><tr><td>Motion (Metric) Algo.</td><td>FLD</td><td>SCAE(Ours)</td><td>BMI(Ours)</td></tr><tr><td>Kick (Time (%))</td><td>64.4</td><td>61.2</td><td>71.3</td></tr><tr><td>Kick (Height (m))</td><td>0.157</td><td>0.152</td><td>0.164</td></tr><tr><td>Jump (Time (%))</td><td>32.5</td><td>36.2</td><td>35.2</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents a comparison of the performance of three algorithms (FLD, SCAE, and BMI) on two challenging motions (kick and jump), showing the time percentage and height achieved for each motion.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on two selected challenging motions: kick and jump.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.01968/figures_5_0.png)

> 🔼 The figure illustrates the bi-level motion fine-tuning process, showing how the robot policy and decoder are optimized alternately to generate physically consistent reference motions for robot imitation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Bi-level motion fine-tuning (BMI) optimizes both the robot policy and the decoder alternatively. The learning begins by sampling from the learned latent space p(z) and decoding these latent samples into target reference motions for robot imitation. The decoder's loss function comprises two components, as indicated by the red arrows: (1) the mean squared error (MSE) between the robot's trajectory and the decoded trajectory, and (2) the latent reconstruction error between the sampled latent embeddings zt and the embeddings of the decoded trajectories zt.
> </details>



![](https://ai-paper-reviewer.com/2410.01968/figures_7_0.png)

> 🔼 The figure compares the learned latent phases of four motions using FLD and SCAE, showing that SCAE uses fewer frequency components and lower amplitudes to represent the same motions.
> <details>
> <summary>read the caption</summary>
> Figure 4: The figure displays the learned latent phases of four motions. Each circle represents a latent channel where the radius is the amplitude and the black bar is the phase timing. Compared to FLD, SCAE takes fewer frequency components and lower amplitudes to represent the same motion.
> </details>



![](https://ai-paper-reviewer.com/2410.01968/figures_7_1.png)

> 🔼 Figure 5 visualizes the latent manifolds learned by FLD and SCAE for 13 different motions, showing that SCAE learns more consistent and structured latent representations.
> <details>
> <summary>read the caption</summary>
> Figure 5: The figure shows the latent manifolds for 13 motions. Each color corresponds to a trajectory segment from a motion type. The arrows denote the motion evolution direction. The manifold induced by SCAE shows consistent structures across different motions.
> </details>



![](https://ai-paper-reviewer.com/2410.01968/figures_11_0.png)

> 🔼 Figure 7 illustrates the multi-step forward prediction structure of the Fourier Latent Dynamics (FLD) model, showing how it uses a combination of convolutional layers, latent embedding, Fourier transforms, and sinusoidal reconstruction to predict subsequent trajectory segments.
> <details>
> <summary>read the caption</summary>
> Figure 7: Multi-step forward prediction structure of FLD.
> </details>



![](https://ai-paper-reviewer.com/2410.01968/figures_17_0.png)

> 🔼 The figure visualizes the learned latent phases of thirteen different motions using two different methods, FLD and SCAE, showing that SCAE learns a much sparser representation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Learned latent phases of 13 different motions. From top to bottom, the motions are: run, jog, step fast, jump, spin-kick, back, side left, jog slow, side right, cross-over, kick, stride, step.
> </details>



![](https://ai-paper-reviewer.com/2410.01968/figures_18_0.png)

> 🔼 The figure shows the normal motions learned by the BMI method, including stride and back motions.
> <details>
> <summary>read the caption</summary>
> Figure 11: Normal motions learned by BMI.
> </details>



![](https://ai-paper-reviewer.com/2410.01968/figures_19_0.png)

> 🔼 The figure compares the motion reconstruction performance of FLD and SCAE on various motions.
> <details>
> <summary>read the caption</summary>
> Figure 10: Motion reconstruction performance.
> </details>



![](https://ai-paper-reviewer.com/2410.01968/figures_19_1.png)

> 🔼 The figure shows the robot's performance on spin-kick and cross-over motions, illustrating the challenges in learning highly dynamic movements while maintaining balance.
> <details>
> <summary>read the caption</summary>
> Figure 13: Unsatisfying motions learned by BMI.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.01968/charts_8_0.png)

> 🔼 The chart compares the kicking foot height and standing foot height during a kick motion across three different methods: FLD, SCAE, and BMI, showing that BMI and SCAE provide more stable and higher kicking performance.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison on the challenging kick task: The left figure shows the height of the kicking foot during one kick trajectory with multiple trials, where both SCAE and BMI outperform FLD in each kick (one mode of the curve). The right figure shows the height of the standing foot where BMI and SCAE are more stable with a lower height of the standing foot.
> </details>


![](https://ai-paper-reviewer.com/2410.01968/charts_8_1.png)

> 🔼 The chart compares the kicking foot height and standing foot height during a kick motion across three different algorithms (BMI, SCAE, and FLD), illustrating the improved stability and performance of BMI and SCAE.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparison on the challenging kick task: The left figure shows the height of the kicking foot during one kick trajectory with multiple trials, where both SCAE and BMI outperform FLD in each kick (one mode of the curve). The right figure shows the height of the standing foot where BMI and SCAE are more stable with a lower height of the standing foot.
> </details>


![](https://ai-paper-reviewer.com/2410.01968/charts_16_0.png)

> 🔼 The chart displays the latent and motion reconstruction errors during training for different values of the beta parameter in the self-consistent autoencoder, showing the model's robustness.
> <details>
> <summary>read the caption</summary>
> Figure 8: Reconstruction error during training: (a) The reconstruction error of latent embeddings. (b) The reconstruction error of the original motion states.
> </details>


![](https://ai-paper-reviewer.com/2410.01968/charts_16_1.png)

> 🔼 The chart displays the latent and motion reconstruction errors during training for different values of beta (β), demonstrating the robustness of the self-consistent autoencoder (SCAE) across a range of beta values.
> <details>
> <summary>read the caption</summary>
> Figure 8: Reconstruction error during training: (a) The reconstruction error of latent embeddings. (b) The reconstruction error of the original motion states.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='5' style='font-size:16px'><tr><td>Entry</td><td>Symbol</td><td>Dimensions</td></tr><tr><td>base linear velocity</td><td>v</td><td>0:3</td></tr><tr><td>base angular velocity</td><td>w</td><td>3:6</td></tr><tr><td>projected gravity</td><td>g</td><td>6:9</td></tr><tr><td>joint positions</td><td>q</td><td>9:27</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 lists the components of a single data point (step) in the dataset, including base position, rotation, linear and angular velocities, projected gravity, and joint positions and velocities.
> <details>
> <summary>read the caption</summary>
> Table 2: Elements of one data point (step) in the dataset
> </details>

{{< table-caption >}}
<br><table id='8' style='font-size:16px'><tr><td>Entry</td><td>Symbol</td><td>Dimensions</td><td>Noise level</td></tr><tr><td>base linear velocity</td><td>v</td><td>0:3</td><td>0.2</td></tr><tr><td>base angular velocity</td><td>w</td><td>3:6</td><td>0.05</td></tr><tr><td>projected gravity</td><td>g</td><td>6:9</td><td>0.05</td></tr><tr><td>joint positions</td><td>q</td><td>9:27</td><td>0.01</td></tr><tr><td>joint velocities</td><td>q</td><td>27:45</td><td>0.75</td></tr><tr><td>last actions</td><td>a</td><td>45:63</td><td>0.0</td></tr><tr><td>latent phase</td><td>sin /</td><td>63:71</td><td>0.0</td></tr><tr><td>latent phase</td><td>COS</td><td>71:79</td><td>0.0</td></tr><tr><td>latent frequency</td><td>f</td><td>79:87</td><td>0.0</td></tr><tr><td>latent amplitude</td><td>a</td><td>87:95</td><td>0.0</td></tr><tr><td>latent offset</td><td>b</td><td>95:103</td><td>0.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 lists the elements of the observation space used in the robot policy, including their symbols, dimensions, and added noise levels for training.
> <details>
> <summary>read the caption</summary>
> Table 4: Elements of the observation space for robot policy
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Network</td><td>Layer</td><td>Output size</td><td>Kernel size</td><td>Normalization</td><td>Activation</td></tr><tr><td rowspan="3">encoder</td><td>Convld</td><td>64x51</td><td>51</td><td>BN</td><td>ELU</td></tr><tr><td>Convld</td><td>64x51</td><td>51</td><td>BN</td><td>ELU</td></tr><tr><td>Conv1d</td><td>8x51</td><td>51</td><td>BN</td><td>ELU</td></tr><tr><td>phase encoder</td><td>Linear</td><td>8x2</td><td></td><td>BN</td><td>Atan2</td></tr><tr><td rowspan="3">decoder</td><td>Convld</td><td>64x51</td><td>51</td><td>BN</td><td>ELU</td></tr><tr><td>Conv1d</td><td>64x51</td><td>51</td><td>BN</td><td>ELU</td></tr><tr><td>Convld</td><td>27x51</td><td>51</td><td>BN</td><td>ELU</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 details the architecture of the encoder and decoder neural networks used in the self-consistent auto-encoder (SCAE) for the latent dynamics model, specifying layer type, output size, kernel size, normalization, and activation function for each layer.
> <details>
> <summary>read the caption</summary>
> Table 5: Architecture of the neural networks used in SCAE
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:18px'><tr><td>Parameter</td><td>Symbol</td><td>Value</td></tr><tr><td>step time seconds</td><td>△t</td><td>0.02</td></tr><tr><td>max training iterations</td><td>-</td><td>5000</td></tr><tr><td>learning rate</td><td></td><td>0.0001</td></tr><tr><td>weight decay</td><td></td><td>0.0005</td></tr><tr><td>learning epochs</td><td></td><td>5</td></tr><tr><td>mini-batches</td><td>-</td><td>4</td></tr><tr><td>latent channels</td><td>c</td><td>8</td></tr><tr><td>trajectory segment length</td><td>H</td><td>51</td></tr><tr><td>multi-step prediction length</td><td>N</td><td>50</td></tr><tr><td>propagation decay</td><td>a</td><td>1.0</td></tr></table>{{< /table-caption >}}
> 🔼 The table lists the hyperparameters used for training the self-consistent autoencoder (SCAE) in the latent dynamics model learning stage.
> <details>
> <summary>read the caption</summary>
> Table 6: Hyper-parameters of SCAE training
> </details>

{{< table-caption >}}
<br><table id='9' style='font-size:18px'><tr><td>Network</td><td>Type</td><td>Hidden</td><td>Output size</td><td>Activation</td></tr><tr><td>policy �</td><td>MLP</td><td>128, 128, 128</td><td>18</td><td>ELU</td></tr><tr><td>value function V</td><td>MLP</td><td>128, 128, 128</td><td>1</td><td>ELU</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 shows the architecture of the neural networks used for training the robot policy (π) and value function (V) within the Proximal Policy Optimization (PPO) algorithm.
> <details>
> <summary>read the caption</summary>
> Table 7: Architecture of the neural networks used in policy training
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:16px'><tr><td>Parameter</td><td>Symbol</td><td>Value</td></tr><tr><td>step time seconds</td><td>△t</td><td>0.02</td></tr><tr><td>max training iterations</td><td></td><td>3000</td></tr><tr><td>max episode time seconds</td><td></td><td>20</td></tr><tr><td>learning rate</td><td></td><td>0.001</td></tr><tr><td>steps per iteration</td><td>-</td><td>24</td></tr><tr><td>learning epochs</td><td></td><td>5</td></tr><tr><td>mini-batches</td><td>-</td><td>4</td></tr><tr><td>KL divergence target</td><td>-</td><td>0.01</td></tr><tr><td>discount factor</td><td>Y</td><td>0.99</td></tr><tr><td>clip range</td><td>E</td><td>0.2</td></tr><tr><td>entropy coefficient</td><td></td><td>0.01</td></tr><tr><td>parallel training environments</td><td></td><td>4096</td></tr></table>{{< /table-caption >}}
> 🔼 Table 8 lists the hyperparameters used for training the robot policy using the proximal policy optimization algorithm.
> <details>
> <summary>read the caption</summary>
> Table 8: Hyper-parameters of policy training
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:18px'><tr><td>Weight</td><td>Wv</td><td>Ww</td><td>Wg</td><td>Wqleg</td><td>w 9arm</td></tr><tr><td>Value</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td><td>1.0</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the quantitative results of FLD, SCAE, and BMI on two challenging motions (kick and jump), measured by kicking time, kicking height, and jumping time.
> <details>
> <summary>read the caption</summary>
> Table 1: Results on two selected challenging motions: kick and jump.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:18px'><tr><td>Weight</td><td>War</td><td>Wqa</td><td>WqT</td></tr><tr><td>Value</td><td>-0.01</td><td>-2.5 x 10-7</td><td>-1.0 x 10-5</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the weights used for the regularization reward in the BMI framework, which consists of weights for action rate, joint acceleration, and joint torque.
> <details>
> <summary>read the caption</summary>
> Table 11: Weights of the regularization rewards
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:18px'><tr><td>Parameter</td><td>Symbol</td><td>Value</td></tr><tr><td>coefficient of latent reconstruction loss</td><td>B</td><td>200</td></tr><tr><td>learning rate for decoder</td><td></td><td>0.00001</td></tr><tr><td>number of mini-batch for decoder</td><td></td><td>2</td></tr><tr><td>max training iteration</td><td></td><td>50</td></tr><tr><td>epochs for decoder</td><td></td><td>1</td></tr><tr><td>steps per iteration</td><td></td><td>24</td></tr><tr><td>parallel training environments</td><td></td><td>4096</td></tr></table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used in the bi-level fine-tuning stage of the proposed method.
> <details>
> <summary>read the caption</summary>
> Table 12: Hyper-parameters of BMI fine-tuning
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.01968/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.01968/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}