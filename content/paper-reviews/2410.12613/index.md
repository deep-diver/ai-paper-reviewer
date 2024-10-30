---
title: "Exploring Model Kinship for Merging Large Language Models"
summary: "Researchers improve large language model capabilities by introducing 'model kinship' – a metric measuring LLM similarity, which guides a novel merging strategy for enhanced performance."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.12613 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research explores model merging in large language models (LLMs), a key technique for improving their capabilities and efficiency.  The authors introduce a new concept called 'model kinship,' which is essentially a measure of how similar two LLMs are. They find that similar models tend to yield less improvement when merged.  This leads them to propose a new merging strategy, called 'Top-k Greedy Merging with Model Kinship,' that uses the kinship metric to select which models to merge, helping to prevent the process from getting stuck in suboptimal solutions. Experiments show that their approach can consistently improve performance over a simpler merging approach, especially in later stages where improvements tend to plateau.  Essentially, this paper provides both a new way to measure the relatedness of different LLMs and a more effective way to merge them together.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12613" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12613" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for LLM researchers due to its introduction of 'model kinship', a novel metric for evaluating LLM similarity, aiding in improved merging strategies.  It offers practical guidance for iterative model merging, addressing common optimization challenges, and potentially increasing efficiency. The findings are relevant to ongoing research in multitask learning and LLM evolution, opening avenues for automated model merging.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Model kinship, a new metric, measures the similarity between LLMs, analogous to biological kinship. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Top-k Greedy Merging with Model Kinship, a new strategy, improves LLM merging by leveraging model kinship to avoid local optima and enhance efficiency. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Model kinship correlates with merging performance gains, revealing a two-stage merging process: a learning stage with significant gains followed by a saturation stage with diminishing returns. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.12613/figures_2_0.png)

> 🔼 Figure 1 provides an intuitive comparison between biological evolution and model evolution through merging, illustrating the iterative process of model merging and the role of model kinship.
> <details>
> <summary>read the caption</summary>
> Figure 1: An intuitive comparison between wheat evolution and model evolution. An interesting parallel can be drawn between biological reproduction (Part a) and the process of model evolution (Part b). In biological systems, offspring inherit genetic material from both parents, forming a new genotype through the combination of parental traits. Similarly, in model merging, the merged model inherits parameters or weights from the contributing models. Part c demonstrates the iterative execution of model evolution. Starting with a group of LLMs, the repository evolves through a Selection-Merge-Recycle iteration. To be noted, model kinship can serve as an effective tool to guide this iterative model merging process (e.g., infer whether there may be gains after model merging).
> </details>





![](https://ai-paper-reviewer.com/2410.12613/charts_5_0.png)

> 🔼 The chart displays the distribution of sample experiments, illustrating the relationship between model kinship and merge gain, calculated using three different similarity metrics.
> <details>
> <summary>read the caption</summary>
> Figure 2: Distribution of Sample Experiments: Relationship Between Model Kinship (X-axis) and Merge Gain (Y-axis). Model Kinships are calculated using the Pearson Correlation Coefficient (PCC), Cosine Similarity (CS) and Euclidean Distance (ED).
> </details>





{{< table-caption >}}
<br><table id='14' style='font-size:14px'><tr><td>Metric</td><td>Correlation (Normal Value)</td><td>Correlation (Absolute Value)</td></tr><tr><td>PCC</td><td>-0.50</td><td>-0.59</td></tr><tr><td>P-value</td><td>0.063</td><td>0.023</td></tr><tr><td>CS</td><td>-0.45</td><td>-0.66</td></tr><tr><td>P-value</td><td>0.098</td><td>0.008</td></tr><tr><td>ED</td><td>0.46</td><td>0.67</td></tr><tr><td>P-value</td><td>0.091</td><td>0.007</td></tr></table>{{< /table-caption >}}

> 🔼 The table presents the correlation of model kinship (using Pearson Correlation Coefficient, Cosine Similarity, and Euclidean Distance) with merge gain, and their corresponding p-values.
> <details>
> <summary>read the caption</summary>
> Table 1: Correlation of Model Kinship based on different correlation function sim(,) with Merge Gain, along with their corresponding p-values.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.12613/figures_8_0.png)

> 🔼 Figure 6 shows a comparison of task performance improvement across merging generations using a greedy strategy and a modified strategy incorporating model kinship, along with a partial model family tree illustrating the evolution path.
> <details>
> <summary>read the caption</summary>
> Figure 6: Left (a): The comparison of task performance improvement across merging generations. The red curve (greedy strategy) saturates by generation 2, while the blue curve (modified strategy) escapes the local optima at generation 2 and continues improving multitask capabilities. Right (b): The partial model family tree from the controled experiments. The red arrow shows the critical change between experiment 1 and experiment 2 in the evolution path.
> </details>



![](https://ai-paper-reviewer.com/2410.12613/figures_19_0.png)

> 🔼 The figure illustrates how the optimization process in model evolution can be simplified to a binary search process, where models progressively converge toward an optimal model.
> <details>
> <summary>read the caption</summary>
> Figure 8: An intuitive illustration of the optimization process assumption in model evolution, where models progressively converge towards the optimal model.
> </details>



![](https://ai-paper-reviewer.com/2410.12613/figures_21_0.png)

> 🔼 Figure 1 provides an intuitive comparison of biological evolution with model evolution through merging, highlighting the role of model kinship in guiding iterative model merging.
> <details>
> <summary>read the caption</summary>
> Figure 1: An intuitive comparison between wheat evolution and model evolution. An interesting parallel can be drawn between biological reproduction (Part a) and the process of model evolution (Part b). In biological systems, offspring inherit genetic material from both parents, forming a new genotype through the combination of parental traits. Similarly, in model merging, the merged model inherits parameters or weights from the contributing models. Part c demonstrates the iterative execution of model evolution. Starting with a group of LLMs, the repository evolves through a Selection-Merge-Recycle iteration. To be noted, model kinship can serve as an effective tool to guide this iterative model merging process (e.g., infer whether there may be gains after model merging.)
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.12613/charts_5_1.png)

> 🔼 The chart displays the change in average task performance and merge gain across two different model evolution paths, highlighting the learning and saturation stages.
> <details>
> <summary>read the caption</summary>
> Figure 3: Change in Average Task Performance and Merge Gain across the Model Evolution process: The selected paths originate from two distinct initial models, with the saturation stage observed after the vertical line. Note that the generation of Path 2 is aligned with Path 1 for demonstration purposes.
> </details>


![](https://ai-paper-reviewer.com/2410.12613/charts_6_0.png)

> 🔼 The chart compares model kinship and average task performance across generations for two model evolution paths, revealing a correlation between the two and highlighting two distinct stages: learning and saturation.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparision between Model Kinship (measured by Pearson Correlation Coefficient) and Average Task Performance (normalized to the same value scale).
> </details>


![](https://ai-paper-reviewer.com/2410.12613/charts_7_0.png)

> 🔼 The chart displays the model kinship matrices for three model groups (fine-tuned models, learning stage, and saturation stage), showing the degree of similarity between models within each group.
> <details>
> <summary>read the caption</summary>
> Figure 5: The Model Kinship Matrices for the three model groups. Each element represents the model kinship value between the corresponding models. In Group B and C, the merged models are arranged by average task performance, ordered from high to low (left to right).
> </details>


![](https://ai-paper-reviewer.com/2410.12613/charts_8_0.png)

> 🔼 The chart compares the performance improvement across multiple merging generations using a greedy strategy versus a modified strategy incorporating model kinship, showing that the modified strategy avoids local optima and continues improving multitask capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 6: Left (a): The comparison of task performance improvement across merging generations. The red curve (greedy strategy) saturates by generation 2, while the blue curve (modified strategy) escapes the local optima at generation 2 and continues improving multitask capabilities. Right (b): The partial model family tree from the controled experiments. The red arrow shows the critical change between experiment 1 and experiment 2 in the evolution path.
> </details>


![](https://ai-paper-reviewer.com/2410.12613/charts_9_0.png)

> 🔼 The heatmap visualizes the weight changes in different layers of the model after merging with exploration models versus merging with similar models.
> <details>
> <summary>read the caption</summary>
> Figure 7: Weight Change
> </details>


![](https://ai-paper-reviewer.com/2410.12613/charts_20_0.png)

> 🔼 The chart illustrates the optimization process in model evolution, showing how models progressively converge toward an optimal model through iterative merging.
> <details>
> <summary>read the caption</summary>
> Figure 8: An intuitive illustration of the optimization process assumption in model evolution, where models progressively converge towards the optimal model.
> </details>


![](https://ai-paper-reviewer.com/2410.12613/charts_21_0.png)

> 🔼 Figure 10 shows the correlation between model kinship (measured with three different metrics) and average task performance across two model evolution paths.
> <details>
> <summary>read the caption</summary>
> Figure 10: Illustration of comparison between the correlation of Pearson Correlation Coefficient (PCC), Cosine Similarity (CS), and Euclidean Distance (ED) with average task performance (Normalized to the same value scale).
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='5' style='font-size:16px'><tr><td colspan="2">Algorithm 1 Top k Greedy Merging with Model Kinship.</td></tr><tr><td colspan="2">Require: A set M of n foundation models {M1, M2, . . · , Mn}, Evaluation function f, Similarity metric function sim(⌀, .) for model kinship.</td></tr><tr><td>1:</td><td>Generate the first generation of merged models by merging each pair in set M {M1 , M2, · · · , Mn}.</td></tr><tr><td>2:</td><td>Evaluate each merged model using f and select the top k models. Denote this set as S {M1, M2, · · · , Mn}.</td></tr><tr><td>3:</td><td>Initialize a variable Sprev ⌀ to store the top m models from the previous iteration.</td></tr><tr><td>4:</td><td>while S ≠ Sprev do Set</td></tr><tr><td>5:</td><td>Mprev = M. Set Sprev = S.</td></tr><tr><td>6:</td><td>Select k pairs of models from S with the highest performance according to f.</td></tr><tr><td>7: 8:</td><td>Identify the current best model Mbest E S.</td></tr><tr><td>9:</td><td>Identify the model Mf E S with the highest model kinship to Mbest from the Mprev according to the similarity metric sim(⌀, .).</td></tr><tr><td>10:</td><td>Merge Mf with Mbest to generate a new model Mexp and add Mexp into set M.</td></tr><tr><td>11:</td><td>Merge each selected pair to Mmerged (named as Model-gen-id) for merged models and add merged models into set M.</td></tr><tr><td>12:</td><td>Evaluate each new model using f and update S to be the new top k models.</td></tr><tr><td></td><td></td></tr><tr><td>13:</td><td>end while</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the average task performance, merge gain, and model kinship for each generation in two iterative model merging experiments, comparing a greedy strategy with a modified strategy that incorporates model kinship.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of merging experiments comparing the vanilla greedy strategy and our proposed approach. The first three models serve as the foundation models in both experiments. Merged models are labeled using the structure: Model-{generation number}-{model identification number}.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:16px'><tr><td colspan="4">Greedy Strategy</td><td colspan="4">+ Model Kinship</td></tr><tr><td>Model</td><td>Avg.</td><td>Gain</td><td>Kinship</td><td>Model</td><td>Avg.</td><td>Gain</td><td>Kinship</td></tr><tr><td>MetaMath</td><td>63.72</td><td>/</td><td></td><td>MetaMath</td><td>63.72</td><td>/</td><td></td></tr><tr><td>Instruct</td><td>61.82</td><td>/</td><td>/</td><td>Instruct</td><td>61.82</td><td>/</td><td>/</td></tr><tr><td>Open-chat</td><td>66.28</td><td>/</td><td>/</td><td>Open-chat</td><td>66.28</td><td>/</td><td>/</td></tr><tr><td>model-1-1</td><td>62.17</td><td>-0.6</td><td>0.01</td><td>model-1-1</td><td>62.17</td><td>-0.6</td><td>0.01</td></tr><tr><td>model-1-2</td><td>64.02</td><td>-0.03</td><td>-0.02</td><td>model-1-2</td><td>64.02</td><td>-0.03</td><td>-0.02</td></tr><tr><td>model-1-3</td><td>66.84</td><td>+1.84</td><td>0.05</td><td>model-1-3</td><td>66.84</td><td>+1.84</td><td>0.05</td></tr><tr><td>model-2-1</td><td>68.72</td><td>+2.16</td><td>0.93</td><td>model-2-1</td><td>68.72</td><td>+2.16</td><td>0.93</td></tr><tr><td>model-2-2</td><td>61.47</td><td>-3.96</td><td>0.57</td><td>model-2-2</td><td>61.47</td><td>-3.96</td><td>0.57</td></tr><tr><td>model-2-3</td><td>61.32</td><td>-3.83</td><td>0.58</td><td>model-2-3</td><td>61.32</td><td>-3.83</td><td>0.58</td></tr><tr><td>model-3-1</td><td>68.59</td><td>+1.09</td><td>0.95</td><td>model-3-2</td><td>67.74</td><td>+1.09</td><td>0.93</td></tr><tr><td>model-3-2</td><td>67.74</td><td>-0.04</td><td>0.93</td><td>model-3-3</td><td>69.06</td><td>+0.74</td><td>0.24</td></tr><tr><td></td><td>-</td><td>-</td><td>-</td><td>model-3-4</td><td>68.61</td><td>+1.13</td><td>0.32</td></tr><tr><td>model-4-1</td><td>68.51</td><td>-0.14</td><td>0.98</td><td>model-4-4</td><td>68.75</td><td>-0.14</td><td>0.54</td></tr><tr><td>model-4-2</td><td>68.04</td><td>-0.19</td><td>0.98</td><td>model-4-5</td><td>68.39</td><td>-0.27</td><td>0.66</td></tr><tr><td>model-4-3</td><td>68.53</td><td>+0.37</td><td>0.94</td><td>model-4-6</td><td>69.03</td><td>+0.15</td><td>0.52</td></tr><tr><td></td><td></td><td></td><td>-</td><td>model-5-1</td><td>69.13</td><td>+0.04</td><td>0.65</td></tr><tr><td></td><td></td><td></td><td></td><td>model-5-2</td><td>68.98</td><td>+0.07</td><td>0.65</td></tr><tr><td></td><td></td><td>-</td><td>-</td><td>model-5-3</td><td>68.63</td><td>-0.37</td><td>0.98</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the results of model merging experiments using a greedy strategy and a modified strategy incorporating model kinship, showing the average performance, gain, and kinship for each model in each generation.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of merging experiments comparing the vanilla greedy strategy and our proposed approach. The first three models serve as the foundation models in both experiments. Merged models are labeled using the structure: Model-{generation number}-{model identification number}.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:20px'><tr><td>Gen</td><td>Model-1</td><td>Model-2</td><td>Model-Merged</td></tr><tr><td></td><td>Marcoroni-7B-v3</td><td>Mistral-7B-Merge-14-v0.1</td><td>distilabeled-Marcoro14-7B-slerp</td></tr><tr><td>2</td><td>distilabeled-Marcoro14-7B</td><td>UNA-TheBeagle-7b-v1</td><td>Beagle14-7B</td></tr><tr><td>3</td><td>NeuralBeagle14-7B</td><td>Turdus</td><td>TurdusBeagle-7B</td></tr><tr><td>4</td><td>TurdusBeagle-7B</td><td>FernandoGPT-v1</td><td>StrangeMerges_9-7B-dare_ties</td></tr><tr><td>5</td><td>StrangeMerges_9-7B-dare_ties</td><td>MBX-7B-v3</td><td>StrangeMerges_10-7B-slerp</td></tr><tr><td>6</td><td>StrangeMerges_10-7B-slerp</td><td>NeuralBeagle14-7B</td><td>StrangeMerges_11-7B-slerp</td></tr><tr><td>7</td><td>StrangeMerges_11-7B-slerp</td><td>MBX-7B-v3</td><td>StrangeMerges_20-7B-slerp</td></tr><tr><td>8</td><td>StrangeMerges_20-7B-slerp</td><td>NeuTrixOmniBe-7B-model</td><td>StrangeMerges_21-7B-slerp</td></tr><tr><td>9</td><td>StrangeMerges_21-7B-slerp</td><td>Experiment26</td><td>StrangeMerges_30-7B-slerp</td></tr><tr><td>10</td><td>StrangeMerges_30-7B-slerp</td><td>Experiment24</td><td>StrangeMerges_31-7B-slerp</td></tr><tr><td>11</td><td>StrangeMerges_31-7B-slerp</td><td>Experiment28</td><td>StrangeMerges_32-7B-slerp</td></tr><tr><td>12</td><td>StrangeMerges_32-7B-slerp</td><td>...</td><td>shadow-clown-7B-slerp</td></tr><tr><td>13</td><td>shadow-clown-7B-slerp</td><td>yam-jom-7B</td><td>YamShadow-7B</td></tr><tr><td>14</td><td>YamShadow-7B</td><td>Experiment28</td><td>YamshadowExperiment28-7B</td></tr></table>{{< /table-caption >}}
> 🔼 This table details the models involved in each merge for evolution path 1, showing the lineage of models from initial models to the final merged model.
> <details>
> <summary>read the caption</summary>
> Table 3: Model Family tree of evolution Path 1.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td>Gen</td><td>Model-1</td><td>Model-2</td><td>Model-Merged</td></tr><tr><td></td><td>neural-chat-7b-v3-3</td><td>openchat-3.5-1210</td><td>CatPPT-base</td></tr><tr><td>2</td><td>Marcoroni-7B-v3</td><td>CatPPT-base</td><td>CatMacaroni-Slerp</td></tr><tr><td>3</td><td>LeoScorpius-7B</td><td>CatMacaroni-Slerp</td><td>SamirGPT-v1</td></tr><tr><td>4</td><td>SamirGPT-v1</td><td>...</td><td>Daredevil-7B</td></tr><tr><td>5</td><td>NeuralBeagle14-7B</td><td>NeuralDaredevil-7B</td><td>DareBeagle-7B</td></tr><tr><td>6</td><td>Turdus</td><td>DareBeagle-7B</td><td>TurdusDareBeagle-7B</td></tr><tr><td>7</td><td>MarcMistral-7B</td><td>TurdusDareBeagle-7B</td><td>MarcDareBeagle-7B</td></tr><tr><td>8</td><td>MarcBeagle-7B</td><td>MarcDareBeagle-7B</td><td>MBX-7B</td></tr><tr><td>9</td><td>MBX-7B</td><td>...</td><td>pastiche-crown-clown-7b-dare</td></tr><tr><td>10</td><td>pastiche-crown-clown-7b-dare</td><td>...</td><td>shadow-clown-7B-slerp</td></tr><tr><td>11</td><td>yam-jom-7B</td><td>shadow-clown-7B-slerp</td><td>YamShadow-7B</td></tr><tr><td>12</td><td>Experiment28-7B</td><td>YamShadow-7B</td><td>YamshadowExperiment28-7B</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 details the models involved in each merge for evolution Path 2, showing the lineage of merged models.
> <details>
> <summary>read the caption</summary>
> Table 4: Model Family tree of evolution Path 2.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:16px'><tr><td>Gen</td><td>Model-Merged</td><td>ATP</td><td>Gain</td><td>PCC</td><td>CS</td><td>ED</td></tr><tr><td></td><td>distilabeled-Marcoro14-7B-slerp</td><td>73.63</td><td>0.55</td><td>0.82</td><td>0.76</td><td>5.15</td></tr><tr><td>2</td><td>Beagle14-7B</td><td>74.74</td><td>1.01</td><td>0.81</td><td>0.79</td><td>6.43</td></tr><tr><td>3</td><td>StrangeMerges_9-7B-dare_ties</td><td>75.15</td><td>0.45</td><td>0.93</td><td>0.89</td><td>4.66</td></tr><tr><td>4</td><td>StrangeMerges_9-7B-dare_ties</td><td>73.32</td><td>-0.69</td><td>0.90</td><td>0.84</td><td>4.70</td></tr><tr><td>5</td><td>StrangeMerges_10-7B-slerp</td><td>74.77</td><td>0.59</td><td>0.59</td><td>0.59</td><td>9.43</td></tr><tr><td>6</td><td>StrangeMerges_11-7B-slerp</td><td>74.8</td><td>0.045</td><td>0.87</td><td>0.86</td><td>5.31</td></tr><tr><td>7</td><td>StrangeMerges_20-7B-slerp</td><td>75.52</td><td>0.6</td><td>0.84</td><td>0.85</td><td>4.82</td></tr><tr><td>8</td><td>StrangeMerges_21-7B-slerp</td><td>76.29</td><td>0.38</td><td>0.85</td><td>0.89</td><td>4.28</td></tr><tr><td>9</td><td>StrangeMerges_30-7B-slerp</td><td>76.58</td><td>0.065</td><td>0.96</td><td>0.94</td><td>2.83</td></tr><tr><td>10</td><td>StrangeMerges_31-7B-slerp</td><td>76.67</td><td>-0.02</td><td>0.97</td><td>0.97</td><td>2.21</td></tr><tr><td>11</td><td>StrangeMerges_32-7B-slerp</td><td>76.68</td><td>0.11</td><td>0.99</td><td>0.99</td><td>0.62</td></tr><tr><td>12</td><td>shadow-clown-7B-slerp</td><td>76.64</td><td>-0.02</td><td>0.93</td><td>0.94</td><td>2.49</td></tr><tr><td>13</td><td>YamShadow-7B</td><td>76.6</td><td>-0.02</td><td>0.97</td><td>0.97</td><td>2.19</td></tr><tr><td>14</td><td>YamshadowExperiment28-7B</td><td>76.86</td><td>0.25</td><td>0.98</td><td>0.98</td><td>1.61</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the average task performance, merge gain, and model kinship values for each merge in Path 1, computed using Pearson Correlation coefficient, Cosine Similarity, and Euclidean Distance.
> <details>
> <summary>read the caption</summary>
> Table 5: Summary of Path 1 Results.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:16px'><tr><td>Gen</td><td>Model-Merged</td><td>ATP</td><td>Gain</td><td>PCC</td><td>CS</td><td>ED</td></tr><tr><td>I</td><td>CatPPT-base</td><td>72.25</td><td>2.89</td><td>0.02</td><td>0.01</td><td>20.41</td></tr><tr><td>2</td><td>CatMacaroni-Slerp</td><td>72.74</td><td>0.35</td><td>0.88</td><td>0.83</td><td>6.16</td></tr><tr><td>3</td><td>SamirGPT-v1</td><td>73.11</td><td>0.64</td><td>0.79</td><td>0.70</td><td>6.47</td></tr><tr><td>4</td><td>Daredevil-7B</td><td>74.12</td><td>0.33</td><td>0.87</td><td>0.83</td><td>4.81</td></tr><tr><td>5</td><td>DareBeagle-7B</td><td>74.58</td><td>0.15</td><td>0.79</td><td>0.77</td><td>6.01</td></tr><tr><td>6</td><td>TurdusDareBeagle-7B</td><td>74.94</td><td>0.32</td><td>0.90</td><td>0.86</td><td>4.59</td></tr><tr><td>7</td><td>MarcDareBeagle-7B</td><td>74.75</td><td>0.67</td><td>0.87</td><td>0.87</td><td>4.17</td></tr><tr><td>8</td><td>MBX-7B</td><td>75.04</td><td>0.11</td><td>0.96</td><td>0.96</td><td>2.90</td></tr><tr><td>9</td><td>pastiche-crown-clown-7b-dare</td><td>76.50</td><td>0.29</td><td>0.83</td><td>0.84</td><td>5.38</td></tr><tr><td>10</td><td>shadow-clown-7B-slerp</td><td>76.64</td><td>-0.02</td><td>0.93</td><td>0.94</td><td>2.49</td></tr><tr><td>11</td><td>YamShadow-7B</td><td>76.60</td><td>-0.02</td><td>0.97</td><td>0.97</td><td>2.19</td></tr><tr><td>12</td><td>YamshadowExperiment28-7B</td><td>76.86</td><td>0.25</td><td>0.98</td><td>0.98</td><td>1.61</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the average task performance, merge gain, and model kinship values for each merge in evolution path 2, computed using Pearson Correlation Coefficient, Cosine Similarity, and Euclidean Distance.
> <details>
> <summary>read the caption</summary>
> Table 6: Summary of Path 2 Results.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:20px'><tr><td>Group</td><td>Models</td></tr><tr><td>Top Model Group</td><td>YamshadowExperiment28-7B Yamshadow-7B Experiment25-7B StrangeMerges_24-7B-slerp MonaTrix-v6</td></tr><tr><td>Mid Stage Model Group</td><td>Daredevil-7B CatMarcoro14-7B Mayo Calmesmol-7B-slerp StrangeMerges_4-7B-slerp</td></tr><tr><td>Fine-tuned Model Group</td><td>Zephyr-beta MetaMath-Mistral-7B Mistral-7B-Instruct-v0.2 openchat-3.5-1210 WizardLM-2</td></tr></table>{{< /table-caption >}}
> 🔼 This table lists the models included in each of three model groups used in the kinship matrix analysis, categorized as top models, mid-stage models, and fine-tuned models.
> <details>
> <summary>read the caption</summary>
> Table 8: Model Group in Kinship Matrix Analysis.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td>Model</td><td>Avg.</td><td>Gain</td><td>Kinship</td></tr><tr><td>model-2-exp</td><td>68.11</td><td>+3.78</td><td>-0.02</td></tr><tr><td>model-3-exp</td><td>68.15</td><td>+2.70</td><td>0.03</td></tr><tr><td>model-4-exp</td><td>68.49</td><td>+3.42</td><td>0.48</td></tr><tr><td>model-5-exp</td><td>68.36</td><td>-0.09</td><td>0.53</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the average task performance, merge gain, and model kinship for each generation, comparing the original greedy merging strategy with the proposed kinship-based method.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of merging experiments comparing the vanilla greedy strategy and our proposed approach. The first three models serve as the foundation models in both experiments. Merged models are labeled using the structure: Model-{generation number}-{model identification number}.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.12613/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12613/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}