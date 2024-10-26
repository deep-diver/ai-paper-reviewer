---
title: "Lightweight Neural App Control"
summary: "LiMAC: Lightweight neural app control achieving high accuracy and speed via a hybrid action transformer and fine-tuned vision-language model for efficient Android app control."
categories: ["AI Generated"]
tags: ["🔖 24-10-23", "🤗 24-10-24"]
showSummary: true
date: 2024-10-23
draft: false
---

### TL;DR


{{< lead >}}

This paper introduces LiMAC, a novel mobile phone control system.  Unlike traditional approaches that rely on large and computationally expensive foundation models, LiMAC uses a lightweight architecture combining a small Action Transformer (AcT) and a fine-tuned vision-language model (VLM). AcT handles simple actions efficiently, while the VLM takes over for complex tasks involving natural language.  Evaluated on two datasets, LiMAC demonstrates superior performance compared to models using only fine-tuned open-source VLMs or prompt engineering with closed-source models like GPT-4.  LiMAC achieves up to a 19% increase in action accuracy over fine-tuned VLMs and a 42% increase over prompt-engineering baselines.  It also boasts significantly faster execution times, up to 30 times faster, reaching speeds of around 3 seconds per task. The researchers also introduce a contrastive learning objective to improve the accuracy of click actions. The results show that LiMAC efficiently and accurately controls mobile apps, addressing the limitations of previous methods in terms of speed, accuracy, and computational resources.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17883" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}

#### Why does it matter?
This research paper introduces LiMAC, a lightweight mobile phone control architecture using a hybrid approach of a small action transformer and a fine-tuned vision-language model to efficiently control Android apps with high accuracy and speed.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LiMAC significantly outperforms existing methods in mobile app control accuracy and speed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The hybrid architecture of LiMAC balances efficiency and natural language understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LiMAC's modular design allows for easy integration of different models for various tasks. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_4_0.png "🔼 Figure 1: Illustration of AcT. A separate encoding of each UI element into a vector et,i by using pretrained embedding models. The embeddings are then fed into the sequence of a transformer Xt along with the previous timesteps in that episode. The prediction of the transformer is decoded to produce the next action which consists of atype and aspec.")

> The figure illustrates the Action Transformer (AcT) architecture, showing how UI element embeddings are processed to predict the next action.





![](charts/charts_15_0.png "🔼 Figure 3: Confusion matrix for action type selection for LiMAC in AndroidControl.")

> The chart visualizes the performance of LiMAC's action type prediction model by showing the counts of correctly and incorrectly predicted action types across different categories.





{{< table-caption caption="🔽 Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets." >}}
<table id='1' style='font-size:18px'><tr><td rowspan="2">Model</td><td rowspan="2">Size ↓</td><td rowspan="2">Avg Inf. (s)↓ Time</td><td colspan="2">Overall ↑</td></tr><tr><td>AitW</td><td>AndCtrl</td></tr><tr><td>SeeActchoice</td><td>unk</td><td>9.81</td><td>37.7</td><td>29.9</td></tr><tr><td>SeeActann</td><td>unk</td><td>9.76</td><td>42.5</td><td>35.5</td></tr><tr><td>T3A</td><td>unk</td><td>4.87</td><td>26.9</td><td>53.1</td></tr><tr><td>M3A</td><td>unk</td><td>10.64</td><td>35.6</td><td>57.5</td></tr><tr><td>Florence2</td><td>820M</td><td>0.50</td><td>70.8</td><td>57.0</td></tr><tr><td>LiMAC with Florence2 (ours)</td><td>+520M</td><td>0.34</td><td>72.2</td><td>63.1</td></tr><tr><td>Qwen2-VL</td><td>2B</td><td>3.03</td><td>51.0</td><td>52.2</td></tr><tr><td>LiMAC with Qwen2-VL (ours)</td><td>+520M</td><td>0.63</td><td>70.9</td><td>62.5</td></tr></table>{{< /table-caption >}}

> Table 1 compares various models' average inference time and overall accuracy on two datasets, showing LiMAC's improved performance.



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_5_0.png "🔼 Figure 2: The architecture of LiMAC. The history of observations-actions {ot, at-1, Ot-1..} and goal g are processed to vector x and passed to AcT. The image observation omg with the bounding boxes and the goal g are passed as inputs to the VLM. The VLM is only called if an action that requires text completion is selected, based on the action type output of AcT. The action is finally selected based on the protocol described in Section 3.")

> The figure illustrates the architecture of LiMAC, showing how the model processes observations and goals to generate actions, utilizing both AcT and a VLM.


![](figures/figures_16_0.png "🔼 Figure 4: Relaxed target element in yellow (timestep 3) and failed action in red (final timestep). The target element of the click in timestep 3 is considered correct under our relaxed accuracy because its bounding box is almost identical to the correct element, and clicking either would have the same effect (opening the text bar). In the final timestep, the agent inputs text 'Detroit' rather than 'Las Vegas', a clear confusion between the origin and destination of the trip stated in the goal, leading to an incorrect prediction.")

> This figure shows a sample episode from the AndroidControl dataset, highlighting a case where a relaxed target element is considered correct and another where an incorrect action is predicted.


![](figures/figures_16_1.png "🔼 Figure 5: Relaxed input-text in yellow (timestep 4) and overall successful episode. Timestep 4 is considered correct under our relaxed input-text textual component because it is simply the singular form of the correct text, leading to a Jaccard index greater than 0.5 and presumably the same search results. The episode terminates successfully, with all timesteps being considered correct under our evaluation metrics.")

> This figure shows a successful episode of app control, highlighting a case where a slightly inaccurate text input was still considered correct due to the relaxed evaluation metric.


</details>




<details>
<summary>More on tables
</summary>


{{< table-caption caption="🔽 Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets." >}}
<table id='1' style='font-size:20px'><tr><td rowspan="2">Framework</td><td colspan="3">Modules Used</td><td rowspan="2">Avg Inf. ⓢ+ Time</td><td colspan="2">Overall↑</td></tr><tr><td>Type</td><td>Click</td><td>Text</td><td>AitW</td><td>AndCtrl</td></tr><tr><td>T3A only</td><td>T3A</td><td>T3A</td><td>T3A</td><td>4.87</td><td>26.9</td><td>53.1</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>T3A</td><td>T3A</td><td>4.03</td><td>42.7</td><td>65.4</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>T3A</td><td>1.04</td><td>69.8</td><td>63.2</td></tr><tr><td>M3A only</td><td>M3A</td><td>M3A</td><td>M3A</td><td>10.64</td><td>35.6</td><td>57.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>M3A</td><td>M3A</td><td>8.40</td><td>52.6</td><td>66.8</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>M3A</td><td>1.87</td><td>70.0</td><td>62.5</td></tr><tr><td>Florence only</td><td>Florence2</td><td>Florence2</td><td>Florence2</td><td>0.50</td><td>70.8</td><td>57.0</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Florence2</td><td>Florence2</td><td>0.72</td><td>71.6</td><td>61.1</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Florence2</td><td>0.34</td><td>72.2</td><td>63.1</td></tr><tr><td>Qwen only</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>3.03</td><td>51.0</td><td>52.2</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>2.64</td><td>55.7</td><td>59.1</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Qwen2-VL</td><td>0.63</td><td>70.9</td><td>62.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>M3A</td><td>T3A</td><td>7.57</td><td>52.4</td><td>67.4</td></tr></table>{{< /table-caption >}}

> Table 1 compares different models' average inference time and overall accuracy on two datasets, showing LiMAC's superior performance.


{{< table-caption caption="🔽 Table 3: Action-type, click-target, and text accuracies across module combinations on the AitW and AndroidControl datasets. LiMAC achieves the best action-type accuracy in both datasets and the best click-target accuracy in AitW, while our fine-tuned Florence2 excels at text prediction." >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Framework</td><td colspan="3">Modules Used</td><td colspan="2">Action Type</td><td colspan="2">Click Target</td><td colspan="2">Text</td></tr><tr><td>Type</td><td>Click</td><td>Text</td><td>AitW</td><td>AndCtrl</td><td>AitW</td><td>AndCtrl</td><td>AitW</td><td>AndCtrl</td></tr><tr><td>SeeAct only</td><td>SeeActchoice</td><td>SeeActchoice</td><td>SeeActchoice</td><td>67.1</td><td>66.8</td><td>36.9</td><td>48.5</td><td>69.4</td><td>67.1</td></tr><tr><td>SeeAct only</td><td>SeeActann</td><td>SeeActann</td><td>SeeActann</td><td>68.2</td><td>66.8</td><td>44.7</td><td>55.7</td><td>66.0</td><td>61.8</td></tr><tr><td>T3A only</td><td>T3A</td><td>T3A</td><td>T3A</td><td>56.2</td><td>67.7</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td></tr><tr><td>M3A only</td><td>M3A</td><td>M3A</td><td>M3A</td><td>63.8</td><td>69.8</td><td>48.3</td><td>77.1</td><td>67.3</td><td>74.3</td></tr><tr><td>Qwen only</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>81.7</td><td>70.7</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>70.5</td><td>75.7</td></tr><tr><td>Florence only</td><td>Florence2</td><td>Florence2</td><td>Florence2</td><td>86.4</td><td>79.6</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>Florence2</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td></tr><tr><td>LiMAC (ours)</td><td>AcT</td><td>AcT</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>84.2</td><td>77.5</td></tr></table>{{< /table-caption >}}

> The table compares different model configurations using various combinations of modules on two datasets, showing their performance in terms of action-type, click-target, and text accuracies.


{{< table-caption caption="🔽 Table 4: Evaluation of three ablated versions of LiMAC using different types of input, on AndroidControl. For actions that require text completion, we use the fine-tuned Florence2." >}}
<br><table id='3' style='font-size:20px'><tr><td></td><td>Size</td><td>Action Type</td><td>Click Target</td><td>Overall</td></tr><tr><td>LiMAC</td><td>520M</td><td>82.3</td><td>65.4</td><td>63.1</td></tr><tr><td>LiMAC (no CLIP FT)</td><td>520M</td><td>81.9</td><td>62.3</td><td>60.0</td></tr><tr><td>LiMAC (no img)</td><td>433M</td><td>82.4</td><td>54.9</td><td>56.0</td></tr><tr><td>LiMAC (no txt)</td><td>410M</td><td>83.2</td><td>65.7</td><td>63.0</td></tr></table>{{< /table-caption >}}

> Table 4 presents the performance comparison of three ablated versions of LiMAC model using different input types on AndroidControl dataset, showing the impact of different components on the model's performance.


{{< table-caption caption="🔽 Table 1: Comparison of models in terms of average inference time and overall accuracy on the AitW and AndroidControl datasets. The table presents the size of each model, the average inference time (in seconds, lower is better), and the overall accuracy (higher is better) for both datasets." >}}
<br><table id='1' style='font-size:16px'><tr><td colspan="3">Modules Used</td><td colspan="2">Action Type</td><td colspan="2">Click Target</td><td colspan="2">Text</td><td colspan="2">Total</td></tr><tr><td>Type</td><td>Click</td><td>Text</td><td>AiTW</td><td>AndCtr</td><td>AiTW</td><td>AndCtr</td><td>AiTW</td><td>AndCtr</td><td>AiTW</td><td>AndCtr</td></tr><tr><td>AcT</td><td>AcT</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>84.2</td><td>77.5</td><td>72.2</td><td>63.1</td></tr><tr><td>AcT</td><td>Florence2</td><td>Florence2</td><td>86.9</td><td>82.3</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td><td>71.6</td><td>61.1</td></tr><tr><td>AcT</td><td>AcT</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>77.4</td><td>65.4</td><td>70.5</td><td>75.7</td><td>70.9</td><td>62.5</td></tr><tr><td>AcT</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>86.9</td><td>82.3</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td><td>55.7</td><td>59.1</td></tr><tr><td>AcT</td><td>AcT</td><td>T3A</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>66.5</td><td>78.4</td><td>69.8</td><td>63.2</td></tr><tr><td>AcT</td><td>T3A</td><td>T3A</td><td>85.3</td><td>81.7</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td><td>42.7</td><td>65.4</td></tr><tr><td>AcT</td><td>M3A</td><td>T3A</td><td>85.3</td><td>81.7</td><td>48.3</td><td>77.1</td><td>66.5</td><td>78.4</td><td>52.4</td><td>67.4</td></tr><tr><td>AcT</td><td>AcT</td><td>M3A</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>67.3</td><td>74.3</td><td>70.0</td><td>62.5</td></tr><tr><td>AcT</td><td>T3A</td><td>M3A</td><td>85.3</td><td>81.7</td><td>33.5</td><td>71.1</td><td>67.3</td><td>74.3</td><td>43.0</td><td>64.7</td></tr><tr><td>AcT</td><td>M3A</td><td>M3A</td><td>85.3</td><td>81.7</td><td>48.3</td><td>77.1</td><td>67.3</td><td>74.3</td><td>52.6</td><td>66.8</td></tr><tr><td>AcT</td><td>AcT</td><td>SeeActchoice</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>69.4</td><td>67.1</td><td>70.5</td><td>62.0</td></tr><tr><td>AcT</td><td>SeeActchoice</td><td>SeeActchoice</td><td>85.3</td><td>81.7</td><td>36.9</td><td>48.5</td><td>69.4</td><td>67.1</td><td>45.7</td><td>53.7</td></tr><tr><td>AcT</td><td>AcT</td><td>SeeActann</td><td>85.3</td><td>81.7</td><td>77.6</td><td>65.4</td><td>66.0</td><td>61.8</td><td>70.0</td><td>61.1</td></tr><tr><td>AcT</td><td>SeeActann</td><td>SeeActann</td><td>85.3</td><td>81.7</td><td>44.7</td><td>55.7</td><td>66.0</td><td>61.8</td><td>49.2</td><td>61.6</td></tr><tr><td>Florence2</td><td>Florence2</td><td>Florence2</td><td>86.4</td><td>79.6</td><td>76.2</td><td>62.0</td><td>84.2</td><td>77.5</td><td>70.8</td><td>57.0</td></tr><tr><td>Qwen2-VL</td><td>Qwen2-VL</td><td>Qwen2-VL</td><td>81.7</td><td>70.7</td><td>53.2</td><td>55.2</td><td>70.5</td><td>75.7</td><td>51.0</td><td>52.2</td></tr><tr><td>T3A</td><td>T3A</td><td>T3A</td><td>56.2</td><td>67.7</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td><td>26.9</td><td>53.1</td></tr><tr><td>T3A</td><td>M3A</td><td>T3A</td><td>56.2</td><td>67.7</td><td>48.3</td><td>77.1</td><td>66.5</td><td>78.4</td><td>30.9</td><td>55.2</td></tr><tr><td>M3A</td><td>T3A</td><td>T3A</td><td>63.8</td><td>69.8</td><td>33.5</td><td>71.1</td><td>66.5</td><td>78.4</td><td>27.0</td><td>53.5</td></tr><tr><td>M3A</td><td>M3A</td><td>T3A</td><td>63.8</td><td>69.8</td><td>48.3</td><td>77.1</td><td>66.5</td><td>78.4</td><td>35.8</td><td>57.7</td></tr><tr><td>SeeActchoice</td><td>SeeActchoice</td><td>SeeActchoice</td><td>67.1</td><td>66.8</td><td>36.9</td><td>48.5</td><td>69.4</td><td>67.1</td><td>29.5</td><td>38.9</td></tr><tr><td>SeeActann</td><td>SeeActann</td><td>SeeActann</td><td>68.2</td><td>66.8</td><td>44.7</td><td>55.7</td><td>66.0</td><td>61.8</td><td>34.3</td><td>45.7</td></tr></table>{{< /table-caption >}}

> Table 1 compares the performance of different models on two mobile phone control datasets in terms of model size, average inference time, and overall accuracy.


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
{{< /gallery >}}