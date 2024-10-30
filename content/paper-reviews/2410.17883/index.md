---
title: "Lightweight Neural App Control"
summary: "LiMAC, a novel lightweight architecture, enables efficient mobile app control by combining a small action transformer with a fine-tuned vision-language model, significantly improving accuracy and spee..."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", ]
showSummary: true
date: 2024-10-23
draft: false
---

{{< keyword >}} 2410.17883 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research presents LiMAC, a new system for controlling Android apps on smartphones using natural language instructions. Unlike previous methods that rely on large, computationally expensive models, LiMAC uses a lightweight, two-part system: a small action transformer (AcT) and a fine-tuned vision-language model (VLM). AcT handles simple actions like clicking and scrolling, while the VLM handles more complex tasks involving text. This approach allows LiMAC to work quickly and efficiently on a smartphone.  Experiments show LiMAC significantly outperforms other methods, increasing action accuracy by up to 19% compared to other fine-tuned models and by 42% compared to models that rely on prompting large language models. The improvement in speed is even more significant, with LiMAC completing tasks up to 30 times faster.  The success of LiMAC demonstrates the potential of combining lightweight transformers with VLMs for efficient and accurate mobile app control.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17883" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.17883" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is important because it introduces a novel, efficient mobile app control architecture.  It addresses limitations of existing methods by using lightweight models, making app control practical for resource-constrained devices. This opens new avenues for research in mobile AI and human-computer interaction, particularly concerning efficient task completion and natural language understanding in limited resource scenarios.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LiMAC achieves higher accuracy in mobile app control than existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LiMAC uses a lightweight architecture, making it suitable for resource-constrained devices. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LiMAC's hybrid approach combines the strengths of transformers and vision-language models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.17883/figures_4_0.png)

> 🔼 The figure illustrates the AcT architecture, showing how UI element embeddings are generated and fed into a transformer to predict the next action.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of AcT. A separate encoding of each UI element into a vector e<sub>t,i</sub> by using pretrained embedding models. The embeddings are then fed into the sequence of a transformer X<sub>t</sub> along with the previous timesteps in that episode. The prediction of the transformer is decoded to produce the next action which consists of a<sub>type</sub> and a<sub>spec</sub>
> </details>





![](https://ai-paper-reviewer.com/2410.17883/charts_15_0.png)

> 🔼 The chart visualizes the performance of LiMAC's action type prediction model on the AndroidControl dataset, showing the counts of correct and incorrect predictions for each action type.
> <details>
> <summary>read the caption</summary>
> Figure 3: Confusion matrix for action type selection for LiMAC in AndroidControl.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:18px'><tr><td rowspan="2">Model</td><td rowspan="2">Size ↓</td><td rowspan="2">Avg Inf. (s)↓ Time</td><td colspan="2">Overall ↑</td></tr><tr><td>AitW</td><td>AndCtrl</td></tr><tr><td>SeeActchoice</td><td>unk</td><td>9.81</td><td>37.7</td><td>29.9</td></tr><tr><td>SeeActann</td><td>unk</td><td>9.76</td><td>42.5</td><td>35.5</td></tr><tr><td>T3A</td><td>unk</td><td>4.87</td><td>26.9</td><td>53.1</td></tr><tr><td>M3A</td><td>unk</td><td>10.64</td><td>35.6</td><td>57.5</td></tr><tr><td>Florence2</td><td>820M</td><td>0.50</td><td>70.8</td><td>57.0</td></tr><tr><td>LiMAC with Florence2 (ours)</td><td>+520M</td><td>0.34</td><td>72.2</td><td>63.1</td></tr><tr><td>Qwen2-VL</td><td>2B</td><td>3.03</td><td>51.0</td><td>52.2</td></tr><tr><td>LiMAC with Qwen2-VL (ours)</td><td>+520M</td><td>0.63</td><td>70.9</td><td>62.5</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 compares different models' average inference time and overall accuracy on two datasets, showing LiMAC's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.17883/figures_5_0.png)

> 🔼 The figure illustrates the architecture of LiMAC, showing how the history of observations, actions, and goals are processed by AcT and a VLM to generate the final action.
> <details>
> <summary>read the caption</summary>
> Figure 2: The architecture of LiMAC. The history of observations-actions {ot, at-1, Ot-1..} and goal g are processed to vector x and passed to AcT. The image observation omg with the bounding boxes and the goal g are passed as inputs to the VLM. The VLM is only called if an action that requires text completion is selected, based on the action type output of AcT. The action is finally selected based on the protocol described in Section 3.
> </details>



![](https://ai-paper-reviewer.com/2410.17883/figures_16_0.png)

> 🔼 This figure shows a sample episode from the AndroidControl dataset, highlighting a case of relaxed accuracy in a click action and a failure in an input-text action, illustrating the model's performance and limitations.
> <details>
> <summary>read the caption</summary>
> Figure 4: Relaxed target element in yellow (timestep 3) and failed action in red (final timestep). The target element of the click in timestep 3 is considered correct under our relaxed accuracy because its bounding box is almost identical to the correct element, and clicking either would have the same effect (opening the text bar). In the final timestep, the agent inputs text 'Detroit' rather than 'Las Vegas', a clear confusion between the origin and destination of the trip stated in the goal, leading to an incorrect prediction.
> </details>



![](https://ai-paper-reviewer.com/2410.17883/figures_16_1.png)

> 🔼 This figure shows a successful episode where the agent correctly interacts with the phone interface to complete a task, with one timestep having a relaxed accuracy due to a minor discrepancy in the input text.
> <details>
> <summary>read the caption</summary>
> Figure 5: Relaxed input-text in yellow (timestep 4) and overall successful episode. Timestep 4 is considered correct under our relaxed input-text textual component because it is simply the singular form of the correct text, leading to a Jaccard index greater than 0.5 and presumably the same search results. The episode terminates successfully, with all timesteps being considered correct under our evaluation metrics.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td rowspan="2">Framework</td><td colspan="3">Modules Used</td><td rowspan="2">Avg Inf. ⓢ+ Time</td><td colspan="2">Overall↑</td></tr><tr><td>Type</td><td>Click</td><td>Text</td><td>AitW</td><td>AndCtrl</td></tr><tr><td>T3A only</td><td>T3A</td><td>T3A</td><td>T3A</td><td>4.87</td><td>26.9</td><td>53.1</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>T3A</td><td>T3A</td><td>4.03</td><td>42.7</td><td>65.4</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>T3A</td><td>1.04</td><td>69.8</td><td>63.2</td></tr><tr><td>M3A only</td><td>M3A</td><td>M3A</td><td>M3A</td><td>10.64</td><td>35.6</td><td>57.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>M3A</td><td>M3A</td><td>8.40</td><td>52.6</td><td>66.8</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>M3A</td><td>1.87</td><td>70.0</td><td>62.5</td></tr><tr><td>Florence only</td><td>Florence2</td><td>Florence2</td><td>Florence2</td><td>0.50</td><td>70.8</td><td>57.0</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Florence2</td><td>Florence2</td><td>0.72</td><td>71.6</td><td>61.1</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Florence2</td><td>0.34</td><td>72.2</td><td>63.1</td></tr><tr><td>Qwen only</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>3.03</td><td>51.0</td><td>52.2</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>2.64</td><td>55.7</td><td>59.1</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Qwen2-VL</td><td>0.63</td><td>70.9</td><td>62.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>M3A</td><td>T3A</td><td>7.57</td><td>52.4</td><td>67.4</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares various models' average inference time and overall accuracy on two mobile phone control datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Framework</td><td colspan="3">Modules Used</td><td colspan="2">Action Type</td><td colspan="2">Click Target</td><td colspan="2">Text</td></tr><tr><td>Type</td><td>Click</td><td>Text</td><td>AitW</td><td>AndCtrl</td><td>AitW</td><td>AndCtrl</td><td>AitW</td><td>AndCtrl</td></tr><tr><td>SeeAct only</td><td>SeeActchoice</td><td>SeeActchoice</td><td>SeeActchoice</td><td>67.1</td><td>66.8</td><td>36.9</td><td>48.5</td><td>69.4</td><td>67.1</td></tr><tr><td>SeeAct only</td><td>SeeActann</td><td>SeeActann</td><td>SeeActann</td><td>68.2</td><td>66.8</td><td>44.7</td><td>55.7</td><td>66.0</td><td>61.8</td></tr><tr><td>T3A only</td><td>T3A</td><td>T3A</td><td>T3A</td><td>56.2</td><td>67.7</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td></tr><tr><td>M3A only</td><td>M3A</td><td>M3A</td><td>M3A</td><td>63.8</td><td>69.8</td><td>48.3</td><td>77.1</td><td>67.3</td><td>74.3</td></tr><tr><td>Qwen only</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>81.7</td><td>70.7</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>70.5</td><td>75.7</td></tr><tr><td>Florence only</td><td>Florence2</td><td>Florence2</td><td>Florence2</td><td>86.4</td><td>79.6</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Florence2</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>84.2</td><td>77.5</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares the performance of different models on two mobile app control datasets in terms of model size, average inference time, and overall accuracy.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:20px'><tr><td></td><td>Size</td><td>Action Type</td><td>Click Target</td><td>Overall</td></tr><tr><td>LiMAC</td><td>520M</td><td>82.3</td><td>65.4</td><td>63.1</td></tr><tr><td>LiMAC (no CLIP FT)</td><td>520M</td><td>81.9</td><td>62.3</td><td>60.0</td></tr><tr><td>LiMAC (no img)</td><td>433M</td><td>82.4</td><td>54.9</td><td>56.0</td></tr><tr><td>LiMAC (no txt)</td><td>410M</td><td>83.2</td><td>65.7</td><td>63.0</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the performance comparison of different LiMAC configurations with different inputs on the AndroidControl dataset, showing the impact of ablating different model components.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation of three ablated versions of LiMAC using different types of input, on AndroidControl. For actions that require text completion, we use the fine-tuned Florence2.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:16px'><tr><td colspan="3">Modules Used</td><td colspan="2">Action Type</td><td colspan="2">Click Target</td><td colspan="2">Text</td><td colspan="2">Total</td></tr><tr><td>Type</td><td>Click</td><td>Text</td><td>AiTW</td><td>AndCtr</td><td>AiTW</td><td>AndCtr</td><td>AiTW</td><td>AndCtr</td><td>AiTW</td><td>AndCtr</td></tr><tr><td>AcT</td><td>AcT</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>84.2</td><td>77.5</td><td>72.2</td><td>63.1</td></tr><tr><td>AcT</td><td>Florence2</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td><td>71.6</td><td>61.1</td></tr><tr><td>AcT</td><td>AcT</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>70.5</td><td>75.7</td><td>70.9</td><td>62.5</td></tr><tr><td>AcT</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td><td>55.7</td><td>59.1</td></tr><tr><td>AcT</td><td>AcT</td><td>T3A</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>66.5</td><td>78.4</td><td>69.8</td><td>63.2</td></tr><tr><td>AcT</td><td>T3A</td><td>T3A</td><td>85.3</td><td>81.7</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td><td>42.7</td><td>65.4</td></tr><tr><td>AcT</td><td>M3A</td><td>T3A</td><td>85.3</td><td>81.7</td><td>48.3</td><td>77.1</td><td>66.5</td><td>78.4</td><td>52.4</td><td>67.4</td></tr><tr><td>AcT</td><td>AcT</td><td>M3A</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>67.3</td><td>74.3</td><td>70.0</td><td>62.5</td></tr><tr><td>AcT</td><td>T3A</td><td>M3A</td><td>85.3</td><td>81.7</td><td>33.5</td><td>71.1</td><td>67.3</td><td>74.3</td><td>43.0</td><td>64.7</td></tr><tr><td>AcT</td><td>M3A</td><td>M3A</td><td>85.3</td><td>81.7</td><td>48.3</td><td>77.1</td><td>67.3</td><td>74.3</td><td>52.6</td><td>66.8</td></tr><tr><td>AcT</td><td>AcT</td><td>SeeActchoice</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>69.4</td><td>67.1</td><td>70.5</td><td>62.0</td></tr><tr><td>AcT</td><td>SeeActchoice</td><td>SeeActchoice</td><td>85.3</td><td>81.7</td><td>36.9</td><td>48.5</td><td>69.4</td><td>67.1</td><td>45.7</td><td>53.7</td></tr><tr><td>AcT</td><td>AcT</td><td>SeeActann</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>66.0</td><td>61.8</td><td>70.0</td><td>61.1</td></tr><tr><td>AcT</td><td>SeeActann</td><td>SeeActann</td><td>85.3</td><td>81.7</td><td>44.7</td><td>55.7</td><td>66.0</td><td>61.8</td><td>49.2</td><td>61.6</td></tr><tr><td>Florence2</td><td>Florence2</td><td>Florence2</td><td>86.4</td><td>79.6</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td><td>70.8</td><td>57.0</td></tr><tr><td>Qwen2-VL</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>81.7</td><td>70.7</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td><td>51.0</td><td>52.2</td></tr><tr><td>T3A</td><td>T3A</td><td>T3A</td><td>56.2</td><td>67.7</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td><td>26.9</td><td>53.1</td></tr><tr><td>T3A</td><td>M3A</td><td>T3A</td><td>56.2</td><td>67.7</td><td>48.3</td><td>77.1</td><td>66.5</td><td>78.4</td><td>30.9</td><td>55.2</td></tr><tr><td>M3A</td><td>T3A</td><td>T3A</td><td>63.8</td><td>69.8</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td><td>27.0</td><td>53.5</td></tr><tr><td>M3A</td><td>M3A</td><td>T3A</td><td>63.8</td><td>69.8</td><td>48.3</td><td>77.1</td><td>66.5</td><td>78.4</td><td>35.8</td><td>57.7</td></tr><tr><td>SeeActchoice</td><td>SeeActchoice</td><td>SeeActchoice</td><td>67.1</td><td>66.8</td><td>36.9</td><td>48.5</td><td>69.4</td><td>67.1</td><td>29.5</td><td>38.9</td></tr><tr><td>SeeActann</td><td>SeeActann</td><td>SeeActann</td><td>68.2</td><td>66.8</td><td>44.7</td><td>55.7</td><td>66.0</td><td>61.8</td><td>34.3</td><td>45.7</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 compares various models' average inference time and overall accuracy on two datasets, showing LiMAC's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.17883/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.17883/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}