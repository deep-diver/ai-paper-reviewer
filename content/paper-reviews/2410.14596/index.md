---
title: "Teaching Models to Balance Resisting and Accepting Persuasion"
summary: "LLMs are taught to both resist harmful and accept helpful persuasion using Persuasion-Balanced Training, resulting in more reliable and collaborative AI."
categories: ["AI Generated"]
tags: ["🔖 24-10-18", "🤗 24-10-21"]
showSummary: true
date: 2024-10-18
draft: false
---

### TL;DR


{{< lead >}}

Large language models (LLMs) are easily manipulated. This paper introduces Persuasion-Balanced Training (PBT), a novel method that teaches LLMs to both resist harmful persuasion (like misinformation) and accept helpful persuasion.  PBT uses multi-agent dialogues to create training data where models debate and learn to evaluate the quality of arguments. Experiments show PBT improves resistance to misinformation and flip-flopping. Importantly, PBT makes LLMs better teammates in multi-agent debates, reducing the impact of which model speaks first on overall team performance. The study also reveals that model decisions hinge on the plausibility of the answer, not confidence alone.  This work is significant because it moves beyond simply making LLMs resistant to manipulation, instead aiming for a balanced approach that enhances both accuracy and collaboration.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.14596" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.14596" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers working on improving the robustness and reliability of large language models (LLMs).  It addresses the critical issue of LLM susceptibility to persuasion, a significant concern in various applications. The proposed Persuasion-Balanced Training (PBT) method offers a novel approach to enhance LLM resilience against misinformation and improve their ability to engage in productive dialogues.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Persuasion-Balanced Training (PBT) improves LLMs' ability to both resist misinformation and accept helpful persuasion. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} PBT models exhibit more stable performance in multi-agent settings, unlike models trained to only resist or accept persuasion. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Model decisions to accept or reject persuasion are influenced by the plausibility of the proposed answer, rather than confidence scores. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_4_0.png)

> 🔼 The figure illustrates the process of creating training data using a multi-agent recursive tree-based paradigm for Persuasion-Balanced Training (PBT).
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our multi-agent recursive tree-based method. Preference pairs are obtained by rolling out dialogues between agents with different roles, producing counterfactual responses with different scores. We balance these pairs use them to train models with PBT.
> </details>





![](charts/charts_7_0.png)

> 🔼 The chart displays the impact of different training methods (base, accept-only, resist-only, and PBT) on the accuracy of two-model teams in a debate setting, showing how PBT improves team performance and reduces order dependence.
> <details>
> <summary>read the caption</summary>
> Figure 3: Accuracy of a team after discussion. A strong model (Llama 3.1 70B) paired with a weaker model (Llama 3.1 8B) leads to order dependence. Accept-only and resist-only training fail to address this variance and hurt team performance, but combined training leads to strong performance regardless of which model goes first.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:20px'><tr><td>model</td><td>NQ1</td><td>NQ2</td><td>Boolq</td><td>TruthfulQA</td><td>Avg.</td></tr><tr><td>Llama-3.1-70B</td><td>75.95± 0.29</td><td>56.88± 0.42</td><td>71.99± 0.60</td><td>38.47± 2.32</td><td>60.82± 0.82</td></tr><tr><td>+ accept</td><td>79.28± 9.98</td><td>85.68± 7.52</td><td>90.51± 4.32</td><td>87.62± 5.93</td><td>85.78± 2.09</td></tr><tr><td>+ resist</td><td>22.45± 37.12</td><td>9.16± 14.82</td><td>26.53± 5.54</td><td>2.41± 2.51</td><td>15.13± 13.55</td></tr><tr><td>+ PBT</td><td>9.63± 3.74</td><td>16.13± 4.10</td><td>37.45± 13.71</td><td>27.54± 8.13</td><td>22.69± 4.02</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 shows the rate at which different language models adopt misinformation across various datasets, comparing the performance of models trained with Persuasion-Balanced Training (PBT), resist-only training, accept-only training, and no training.
> <details>
> <summary>read the caption</summary>
> Table 1: Rate at which models adopt misinformation across different datasets (lower is better). PBT and resist-only training improve the misinformation rate, while accept-only hurts performance. Other models in Table 5.
> </details>



### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>Model</td><td>Before</td><td>After</td><td>Diff.</td></tr><tr><td>Llama-3.1-70B</td><td>73.10± 0.00</td><td>40.10± 0.00</td><td>-33.00</td></tr><tr><td>+ accept</td><td>65.20± 3.25</td><td>55.70± 5.95</td><td>-9.50</td></tr><tr><td>+ resist</td><td>43.87± 27.80</td><td>43.47± 26.70</td><td>-0.40</td></tr><tr><td>+ PBT</td><td>73.17± 2.53</td><td>73.40± 2.52</td><td>0.23</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the results of the flip-flopping evaluation, showing the impact of different training methods on model accuracy before and after being challenged with the 'Are you sure?' prompt.


{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td>Model</td><td>+ → -</td><td>- → +</td><td>Overall</td></tr><tr><td>Mistral-7B</td><td>25.28± 0.00</td><td>65.60± 0.00</td><td>45.44± 0.00</td></tr><tr><td>+ accept</td><td>20.88± 0.86</td><td>62.57± 3.65</td><td>41.72± 1.44</td></tr><tr><td>+ resist</td><td>64.69± 10.18</td><td>22.40± 4.73</td><td>43.55± 7.40</td></tr><tr><td>+ PBT</td><td>53.00± 1.99</td><td>59.23± 6.29</td><td>56.11± 4.14</td></tr><tr><td>Llama-3.1-8B</td><td>27.11± 0.00</td><td>59.23± 0.00</td><td>43.17± 0.00</td></tr><tr><td>+ accept</td><td>27.64± 5.87</td><td>57.40± 10.32</td><td>42.52± 7.54</td></tr><tr><td>+ resist</td><td>54.67± 6.98</td><td>19.44± 0.73</td><td>37.05±3.68</td></tr><tr><td>+ PBT</td><td>61.73± 6.13</td><td>60.21± 0.47</td><td>60.97± 3.30</td></tr><tr><td>Llama-3.1-70B</td><td>54.52± 1.52</td><td>61.50± 1.37</td><td>58.01±0.17</td></tr><tr><td>+ accept</td><td>41.69± 10.05</td><td>66.21± 6.46</td><td>53.95± 8.00</td></tr><tr><td>+ resist</td><td>50.72± 16.53</td><td>13.67± 6.17</td><td>32.19± 11.31</td></tr><tr><td>+ PBT</td><td>80.41±3.36</td><td>68.72±3.50</td><td>74.56± 2.73</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 presents the accuracy of different models on a balanced dataset containing both positive and negative persuasion examples, highlighting the impact of different training methods on model performance in handling both types of persuasion.


{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td>Ans. H</td><td>log Porig.</td><td>log Palt.</td><td>Conf.orig.</td><td>Conf.alt.</td><td>Acc.</td></tr><tr><td>-0.64</td><td>0.36*</td><td>-0.36*</td><td>-0.23</td><td>0.06</td><td>0.15</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the rate of misinformation adoption across different datasets for various models, highlighting the impact of different training methods (PBT, resist-only, accept-only) on model performance.


{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td>Agent 2: I apologize for my earlier response being partially correct but also partially outdated. You are correct that RoLLs-Royce acquired Bentley in 1998 when RoLLs-Royce plc acquired the assets from Vickers plc, however, it 's worth noting that in 2003 VoLkswagen...</td><td>Agent 2: I must respectfully disagree with the other agent  s assessment of 1998. While 1998 is a year that saw significant changes for Rolls- Royce, my answer of 1931 remains the correct response. The reason for my continued disagreement is that RoLLs-Royce acquired ---</td><td>Agent 2: Vickers had acquired Bentley Motors Limited in 1931. However, I think the correct answer is 1931, as Rolls-Royce acquired Bentley from Walter Bentley in 1931, not Vickers. Therefore, my answer is 1931. I 'm just more confident in my answer...</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the results of evaluating the misinformation rate across various datasets for different models (base, accept-only, resist-only, and PBT).


{{< table-caption >}}
<table id='0' style='font-size:20px'><tr><td>Model</td><td>NQ1</td><td>NQ2</td><td>Boolq</td><td>TruthfulQA</td><td>Avg.</td></tr><tr><td>Mistral 7B v0.2</td><td>51.08± 2.54</td><td>51.98± 1.65</td><td>41.75± 2.38</td><td>31.12± 2.09</td><td>43.98± 0.34</td></tr><tr><td>+ accept</td><td>58.85± 13.25</td><td>89.68± 5.51</td><td>62.73± 20.30</td><td>62.86± 11.24</td><td>68.53± 5.29</td></tr><tr><td>+ resist</td><td>14.67 + 12.69</td><td>16.97 + 19.95</td><td>22.09± 23.40</td><td>14.56± 8.68</td><td>17.07 土 5.80</td></tr><tr><td>+ PBT</td><td>24.37± 12.35</td><td>49.01± 6.73</td><td>38.60± 7.34</td><td>55.22± 4.90</td><td>41.80± 2.76</td></tr><tr><td>Llama 3.1 8B</td><td>73.72± 1.58</td><td>46.14± 1.81</td><td>64.77± 1.68</td><td>32.79± 2.32</td><td>54.36± 0.28</td></tr><tr><td>+ accept</td><td>43.34± 44.00</td><td>55.14± 49.92</td><td>83.96± 17.25</td><td>47.57± 46.41</td><td>57.50± 12.96</td></tr><tr><td>+ resist</td><td>18.09± 12.61</td><td>17.74± 13.82</td><td>56.06± 19.00</td><td>27.67 土 3.70</td><td>29.89± 5.51</td></tr><tr><td>+ PBT</td><td>32.66± 15.48</td><td>30.23± 15.99</td><td>45.70± 22.52</td><td>44.83± 13.11</td><td>38.36± 3.49</td></tr><tr><td>Llama 3.1 70B</td><td>75.95± 0.29</td><td>56.88± 0.42</td><td>71.99± 0.60</td><td>38.47 + 2.32</td><td>60.82± 0.82</td></tr><tr><td>+ accept</td><td>79.28± 9.98</td><td>85.68± 7.52</td><td>90.51± 4.32</td><td>87.62± 5.93</td><td>85.78± 2.09</td></tr><tr><td>+ resist</td><td>22.45± 37.12</td><td>9.16± 14.82</td><td>26.53± 5.54</td><td>2.41± 2.51</td><td>15.13± 13.55</td></tr><tr><td>+ PBT</td><td>9.63± 3.74</td><td>16.13± 4.10</td><td>37.45± 13.71</td><td>27.54± 8.13</td><td>22.69± 4.02</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the rate at which different language models adopt misinformation across various datasets, comparing the performance of models trained with persuasion-balanced training (PBT), resist-only training, accept-only training, and no training.


{{< table-caption >}}
<table id='2' style='font-size:18px'><tr><td>Model</td><td>Before</td><td>After</td><td>Diff.</td></tr><tr><td>Mistral 7B</td><td>53.53± 0.06</td><td>31.87± 0.06</td><td>-21.67</td></tr><tr><td>+ accept</td><td>53.67± 0.38</td><td>34. 70± 0.82</td><td>-18.97</td></tr><tr><td>+ resist</td><td>38.63± 16.18</td><td>37.80± 14.75</td><td>-0.83</td></tr><tr><td>+ PBT</td><td>50.03± 6.64</td><td>47.40± 8.51</td><td>-2.63</td></tr><tr><td>Llama 3.1 8B</td><td>61.60± 0.00</td><td>34.40± 0.00</td><td>-27.20</td></tr><tr><td>+ accept</td><td>59.33± 3.31</td><td>54.23± 3.50</td><td>-5.10</td></tr><tr><td>+ resist</td><td>32.03± 3.65</td><td>29.10± 4.45</td><td>-2.93</td></tr><tr><td>+ PBT</td><td>54.70±2.79</td><td>52.43± 5.09</td><td>-2.27</td></tr><tr><td>Llama 3.1 70B</td><td>73.10± 0.00</td><td>40.10± 0.00</td><td>-33.00</td></tr><tr><td>+ accept</td><td>65.20± 3.25</td><td>55.70± 5.95</td><td>-9.50</td></tr><tr><td>+ resist</td><td>43.87± 27.80</td><td>43.47± 26.70</td><td>-0.40</td></tr><tr><td>+ PBT</td><td>73.17±2.53</td><td>73.40± 2.52</td><td>0.23</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 presents the accuracy of different models when using the 'Are you sure?' prompt from Laban et al. (2023), showing that PBT leads to less flip-flopping.


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
{{< /gallery >}}