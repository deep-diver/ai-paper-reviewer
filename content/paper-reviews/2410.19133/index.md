---
title: "Hybrid Preferences: Learning to Route Instances for Human vs. AI Feedback"
summary: "Researchers developed a hybrid approach to collecting preference data for AI alignment, cleverly routing instances to either human or AI annotators based on a predictive model, resulting in improved m..."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", ]
showSummary: true
date: 2024-10-24
draft: false
---

{{< keyword >}} 2410.19133 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research tackles the high cost and variability of human annotation in AI preference learning.  The core contribution is a 'routing framework' that uses a predictive model to decide whether a given preference instance should be annotated by a human or an AI model. This framework aims to optimize the overall reward model performance while minimizing the human annotation effort. The model is trained on MULTIPREF, a newly created dataset containing 10K instances annotated by both humans and an AI.  Experiments demonstrate that the hybrid approach consistently outperforms using only human or AI annotations across several datasets and benchmarks.  The analysis reveals that instances with moderate safety concerns or complexity benefit most from human review.  The researchers make the dataset, annotation platform, and source code publicly available to foster more efficient and accurate preference data collection.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.19133" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.19133" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in AI alignment and human-in-the-loop machine learning. It introduces a novel, cost-effective method for collecting high-quality preference data, a critical bottleneck in current research.  The publicly available dataset and codebase further accelerate future research in this area.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel routing framework maximizes the value of human annotation by strategically allocating preference instances between human and AI annotators. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed hybrid annotation strategy outperforms using only human or AI annotations in various benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study provides insights into characteristics of instances most beneficial for human review, highlighting the value of data-centric insights in preference learning. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.19133/figures_2_0.png)

> 🔼 The figure illustrates a routing framework that uses a performance prediction model to determine the optimal combination of human and AI feedback for annotating preference datasets.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the routing framework. Our proposed method consists of a performance prediction model (PPM) and a routing strategy based on that model. We train the PPM to predict the performance of a dataset based on the statistics of the subset routed to human annotators. Then, we use the PPM to score many simulations of candidate datasets, and recommend the potentially best-performing routing configuration.
> </details>





![](https://ai-paper-reviewer.com/2410.19133/charts_6_0.png)

> 🔼 The chart displays a strong positive correlation between the predicted and actual RewardBench scores of 16 held-out candidate datasets, indicating the effectiveness of the quadratic PPM in performance prediction.
> <details>
> <summary>read the caption</summary>
> Figure 3: Predicted and actual RewardBench scores for 16 held-out candidate datasets using the quadratic PPM.
> </details>





{{< table-caption >}}
<br><table id='7' style='font-size:18px'><tr><td>Code</td><td>https: / /github. com/allemai/hybrid-preferences</td></tr><tr><td>Dataset</td><td>https: / /hf co/datasets/allenai /mul tipref</td></tr></table>{{< /table-caption >}}

> 🔼 The table compares the performance of reward models trained on different mixtures of human and synthetic preferences (best hybrid, full human, and full synthetic) on the RewardBench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.19133/figures_17_0.png)

> 🔼 The figure illustrates the three main stages in the construction of the MULTIPREF dataset: data preparation, response generation, and human annotation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Construction of MULTIPREF involves three stages: data preparation, response generation, and human annotation. Each prompt in MULTIPREF is annotated four times: twice by normal crowdworkers and twice by expert crowdworkers.
> </details>



![](https://ai-paper-reviewer.com/2410.19133/figures_19_0.png)

> 🔼 The figure illustrates a routing framework that uses a performance prediction model to determine the optimal allocation of preference instances to either human or LM annotators to maximize reward model performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the routing framework. Our proposed method consists of a performance prediction model (PPM) and a routing strategy based on that model. We train the PPM to predict the performance of a dataset based on the statistics of the subset routed to human annotators. Then, we use the PPM to score many simulations of candidate datasets, and recommend the potentially best-performing routing configuration.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](https://ai-paper-reviewer.com/2410.19133/charts_6_1.png)

> 🔼 The chart compares the performance of reward models trained on hybrid annotations generated by the routing framework versus those trained on randomly mixed human and synthetic annotations, across different annotation budgets for four datasets.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison between our routing framework and random selection given different annotation budgets on various preference datasets. The optimal budget and its corresponding performance is marked by a star (★). We report the average of the RewardBench score across three runs.
> </details>


![](https://ai-paper-reviewer.com/2410.19133/charts_35_0.png)

> 🔼 The bar chart compares the proportion of instances needing specific subject expertise for human annotation versus GPT-4 annotation in the Helpsteer2 dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Top ten subject of expertise needed to annotate instances for a subset routed to GPT-4 (left) and subset routed to Humans (right) in Helpsteer2.
> </details>


![](https://ai-paper-reviewer.com/2410.19133/charts_36_0.png)

> 🔼 The chart compares the proportion of instances routed to either GPT-4 or human annotators based on the required subject expertise for Helpsteer2.
> <details>
> <summary>read the caption</summary>
> Figure 8: Top ten subject of expertise needed to annotate instances for a subset routed to GPT-4 (left) and subset routed to Humans (right) in Helpsteer2.
> </details>


![](https://ai-paper-reviewer.com/2410.19133/charts_38_0.png)

> 🔼 The chart compares the performance of reward models trained on hybrid preference datasets created using the proposed routing framework versus those trained using randomly sampled mixtures of human and LM annotations, across different annotation budgets.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison between our routing framework and random selection given different annotation budgets on various preference datasets. The optimal budget and its corresponding performance is marked by a star (★). We report the average of the RewardBench score across three runs.
> </details>


![](https://ai-paper-reviewer.com/2410.19133/charts_39_0.png)

> 🔼 The chart compares the RewardBench scores of reward models trained on hybrid annotations generated by the routing framework versus those trained on randomly mixed human and synthetic preferences for varying proportions of human annotations in the Helpsteer2-Preferences dataset.
> <details>
> <summary>read the caption</summary>
> Figure 12: Comparison between our routing framework and a random selection given different annotation budgets on the Helpsteer2-Preferences dataset (Wang et al., 2024b).
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>Tag</td><td>D 0</td><td>D1</td><td>D2</td><td>D3</td><td>D4</td><td>D5</td><td>D6</td><td>D7</td><td>D8</td><td>D9</td><td>D10</td><td>Du</td><td>D12</td><td>D13</td><td>D14</td><td>D15</td></tr><tr><td>0.33<ROUGE-L<0.67.2.1k</td><td></td><td>167</td><td>702</td><td>1.0k</td><td>441</td><td>2.3k</td><td>3.9k</td><td>4.9k</td><td>3.7k 3.3k</td><td>4.3k</td><td>2.1k</td><td>79</td><td>4.8k</td><td>253</td><td>4.9k</td><td>...</td></tr><tr><td>0.67≤ROUGE-L≤1.00-</td><td>123</td><td>14</td><td>1</td><td>83</td><td>5</td><td>149</td><td>241</td><td>327</td><td>230</td><td>260 326</td><td>142</td><td>7</td><td>327</td><td>23</td><td>254</td><td>···</td></tr><tr><td></td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>: :</td><td>:</td><td>:</td><td>:</td><td>:</td><td></td></tr><tr><td>0.33≤Length diff. of responses≤0.67-1.0k</td><td></td><td>78</td><td>444</td><td>380</td><td>299</td><td>1.1k</td><td>1.9k</td><td>2.3k</td><td>1.7k</td><td>1.5k 2.0k</td><td>1.2k</td><td>38</td><td>2.2k</td><td>116</td><td>2.3k</td><td>···</td></tr><tr><td>0.67≤Length diff of responses ≤1.00</td><td>995</td><td>77</td><td>435</td><td>372</td><td>292</td><td>1.0k</td><td>1.9k</td><td>2.3k</td><td>1.7k</td><td>1.5k</td><td>2.0k 1.2k</td><td>36</td><td>2.2k</td><td>113</td><td>2.3k</td><td>···</td></tr><tr><td></td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>: :</td><td>:</td><td>:</td><td>:</td><td>:</td><td></td></tr><tr><td>Subject of expertise: Computer sciences-</td><td>103</td><td>28</td><td>148</td><td>192</td><td>120</td><td>401</td><td>733</td><td>901</td><td>749</td><td>702</td><td>750 287</td><td>17</td><td>849</td><td>99</td><td>886</td><td>...</td></tr><tr><td>Subject of expertise: Chemistry.</td><td>58</td><td>2</td><td>27</td><td>25</td><td>13</td><td>68</td><td>137</td><td>172</td><td>139 139</td><td>152</td><td>73</td><td>3</td><td>169</td><td>5</td><td>167</td><td>...</td></tr><tr><td></td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>:</td><td>: :</td><td></td><td>:</td><td>:</td><td>:</td><td></td><td></td></tr><tr><td>Expertise level: general public</td><td>3.0k</td><td>163</td><td>1.0k</td><td>648</td><td>613</td><td>2.1k</td><td>4.0k</td><td>4.9k</td><td>3.3k 3.0k</td><td>4.3k</td><td>2.8k</td><td>83</td><td>4.7k</td><td>137</td><td>4.8k</td><td>···</td></tr><tr><td>Expertise level: expert domain knowledge-</td><td>3</td><td>13</td><td>40</td><td>116</td><td>68</td><td>336</td><td>300</td><td>374</td><td>309</td><td>262 306</td><td>182</td><td>0</td><td>341</td><td>50</td><td>359</td><td>...</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the Spearman correlation and RMSE between the predicted and actual performance of 16 held-out candidate datasets, evaluating the fit of the performance prediction model.
> <details>
> <summary>read the caption</summary>
> Table 2: Spearman p of the predicted and actual ranks of 16 held-out candidate datasets, and the RMSE between the predicted performance against actual performance.
> </details>

{{< table-caption >}}
<br><table id='13' style='font-size:18px'><tr><td></td><td></td></tr><tr><td># unique prompts</td><td>5,323</td></tr><tr><td># models for generation</td><td>6</td></tr><tr><td># model pairs</td><td>21</td></tr><tr><td># comparisons</td><td>10,461</td></tr><tr><td># annotations</td><td>41,844</td></tr><tr><td># annotation per instance</td><td>4</td></tr><tr><td>Annotator statistics</td><td></td></tr><tr><td>Total # of crowdworkers</td><td>289</td></tr><tr><td>Avg. qualification test pass rate</td><td>34.8%</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents statistics of the MULTIPREF dataset, including the number of unique prompts, models, model pairs, comparisons, and annotations, as well as annotator statistics.
> <details>
> <summary>read the caption</summary>
> Table 1: MULTIPREF dataset statistics.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:22px'><tr><td>Model type</td><td>Spearman P ↑</td><td>RMSE ↓</td></tr><tr><td>Linear</td><td>0.515</td><td>0.239</td></tr><tr><td>LightGBM</td><td>0.377</td><td>0.481</td></tr><tr><td>Quadratic</td><td>0.673</td><td>0.201</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the Spearman correlation and RMSE between predicted and actual performance for 16 held-out candidate datasets, indicating the performance prediction model's accuracy.
> <details>
> <summary>read the caption</summary>
> Table 2: Spearman p of the predicted and actual ranks of 16 held-out candidate datasets, and the RMSE between the predicted performance against actual performance.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="3">Preference Mix</td><td colspan="10">RewardBench Performance</td></tr><tr><td colspan="5">MULTIPREF (Appendix A) % Direct Human for Best Hybrid: 37.4%</td><td colspan="5">Helpsteer2 (Wang et al., 2024c) % Direct Human for Best Hybrid: 69.6%</td></tr><tr><td>Overall</td><td>Chat</td><td>Chat-Hard</td><td>Safety</td><td>Reasoning</td><td>Overall</td><td>Chat</td><td>Chat-Hard</td><td>Safety</td><td>Reasoning</td></tr><tr><td>100% Human</td><td>60.4</td><td>89.1</td><td>37.8</td><td>71.6</td><td>42.9</td><td>72.4</td><td>90.6</td><td>60.7</td><td>68.0</td><td>76.7</td></tr><tr><td>100% Synth.</td><td>66.5</td><td>90.2</td><td>34.6</td><td>69.7</td><td>71.3</td><td>65.8</td><td>71.6</td><td>64.0</td><td>45.2</td><td>82.7</td></tr><tr><td>Best Hybrid</td><td>70.6</td><td>94.4</td><td>35.1</td><td>74.8</td><td>78.2</td><td>79.7</td><td>89.9</td><td>64.9</td><td>77.0</td><td>87.0</td></tr><tr><td rowspan="2">Preference Mix</td><td colspan="5">AlpacaFarm (Dubois et al., 2023) % Direct Human for Best Hybrid: 67.2%</td><td colspan="5">ChatArena (Zheng et al., 2023b) % Direct Human for Best Hybrid: 23.0%</td></tr><tr><td>Overall</td><td>Chat</td><td>Chat-Hard</td><td>Safety</td><td>Reasoning</td><td>Overall</td><td>Chat</td><td>Chat-Hard</td><td>Safety</td><td>Reasoning</td></tr><tr><td>100% Human</td><td>55.0</td><td>85.5</td><td>44.5</td><td>38.5</td><td>51.6</td><td>59.0</td><td>90.6</td><td>50.4</td><td>36.3</td><td>58.8</td></tr><tr><td>100% Synth.</td><td>60.9</td><td>87.2</td><td>41.4</td><td>56.1</td><td>58.5</td><td>71.6</td><td>93.5</td><td>50.2</td><td>69.4</td><td>73.2</td></tr><tr><td>Best Hybrid</td><td>66.8</td><td>94.5</td><td>50.8</td><td>58.1</td><td>63.8</td><td>72.2</td><td>94.7</td><td>51.3</td><td>67.6</td><td>75.1</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of reward models trained on full human preferences, full synthetic preferences, and the best hybrid mix of human and synthetic preferences on the RewardBench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="3">Pref. Mix</td><td colspan="12">Best-of-N Evaluation Performance</td></tr><tr><td colspan="6">MULTIPREF (Appendix A) % Direct Human for Best Hybrid: 37.4%</td><td colspan="6">Helpsteer2 (Wang et al., 2024c) % Direct Human for Best Hybrid: 69.6%</td></tr><tr><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td></tr><tr><td>100% Human</td><td>48.3</td><td>38.0</td><td>47.3</td><td>43.1</td><td>24.4</td><td>88.6</td><td>52.6</td><td>52.3</td><td>51.0</td><td>45.8</td><td>26.2</td><td>87.7</td></tr><tr><td>100% Synth.</td><td>49.4</td><td>41.7</td><td>49.0</td><td>44.9</td><td>23.2</td><td>88.3</td><td>51.0</td><td>48.6</td><td>52.0</td><td>47.0</td><td>24.4</td><td>83.1</td></tr><tr><td>Best Hybrid</td><td>50.5</td><td>48.1</td><td>50.2</td><td>44.7</td><td>21.3</td><td>88.1</td><td>52.8</td><td>51.7</td><td>49.9</td><td>48.1</td><td>29.3</td><td>85.1</td></tr><tr><td rowspan="2">Pref. Mix</td><td colspan="6">AlpacaFarm (Dubois et al., 2023) % Direct Human for Best Hybrid: 67.2%</td><td colspan="6">ChatArena (Zheng et al., 2023b) % Direct Human for Best Hybrid: 23.0%</td></tr><tr><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td></tr><tr><td>100% Human</td><td>50.4</td><td>48.2</td><td>50.7</td><td>42.7</td><td>23.8</td><td>86.6</td><td>53.9</td><td>52.3</td><td>52.4</td><td>44.9</td><td>28.7</td><td>91.4</td></tr><tr><td>100% Synth.</td><td>53.1</td><td>52.3</td><td>52.6</td><td>44.7</td><td>26.2</td><td>89.6</td><td>53.7</td><td>54.0</td><td>52.3</td><td>44.5</td><td>26.8</td><td>90.9</td></tr><tr><td>Best Hybrid</td><td>53.3</td><td>53.5</td><td>52.7</td><td>45.5</td><td>23.8</td><td>91.0</td><td>52.8</td><td>51.9</td><td>51.8</td><td>44.5</td><td>25.0</td><td>90.8</td></tr><tr><td colspan="4">What is bigger 10/5+2*2*2 or 2 ^ 10 / 3 ^ 4? Let's simplify Let's evaluate B A both both step by expressions: step: So the first 12.64>10 expression is Therefore, bigger: 10 > 2^10/3... is 12.64. bigger than... Expertise Level: General Public Complexity of Intent: Simple 2 - 1 0 1 2 ↓ Expertise Level: BERTScore in [0.67, 1.00] Gain Ais clearly better clearly better B is clearly better is clearly better</td><td colspan="4">MultiPref 1600 1200 Count 800 400 0</td><td colspan="5">I have heard that incense can be used to help you from getting sick? There is no B You're interested scientific evidence in the ancient art to support the claim of incense that incense can therapy! Here's a a healthcare might help... help prevent or breakdown of cure... consult with how incense professional... ↑ Subj. expertise: Medicine & Health ↑ Safety Concern: Moderate General Public Ais B</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the RewardBench performance of models trained on three types of preference data: full direct human preferences, full synthetic preferences, and the best hybrid mix of human and synthetic preferences,  given an unlimited annotation budget.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Tag</td><td>Gain x10-3</td><td>Tag</td><td>Gain x10-3</td></tr><tr><td>BERTScore E [0.33, 0.67]</td><td>0.19</td><td>Subject Of Expertise: Logic</td><td>-0.02</td></tr><tr><td>Subject Of Expertise: Chemical Engineering</td><td>0.11</td><td>Subject Of Expertise: Transportation</td><td>-0.03</td></tr><tr><td>Subject Of Expertise: Religion</td><td>0.09</td><td>Subject Of Expertise: Architecture And Design</td><td>-0.03</td></tr><tr><td>Safety Concern: Moderate</td><td>0.09</td><td>Cosine similarity E [0.0, 0.33]</td><td>-0.03</td></tr><tr><td>Subject Of Expertise: Anthropology</td><td>0.06</td><td>Subject Of Expertise: Philosophy</td><td>-0.05</td></tr><tr><td>Subject Of Expertise: Chemistry</td><td>0.05</td><td>Subject Of Expertise: Materials Science And Engineering</td><td>-0.09</td></tr><tr><td>Subject Of Expertise: Visual Arts</td><td>0.05</td><td>Subject Of Expertise: Library And Museum Studies</td><td>-0.10</td></tr><tr><td>Subject Of Expertise: Earth Sciences</td><td>0.05</td><td>Subject Of Expertise: Media Studies And Communication</td><td>-0.10</td></tr><tr><td>Subject Of Expertise: Space Sciences</td><td>0.04</td><td>Subject Of Expertise: Military Sciences</td><td>-0.10</td></tr><tr><td>Complexity Of Intents: Moderate</td><td>0.03</td><td>Subject Of Expertise: Family And Consumer Science</td><td>-0.63</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the average performance gain in MULTIPREF when routing 100 instances with specific tags to human annotators, as predicted by a quadratic performance prediction model.
> <details>
> <summary>read the caption</summary>
> Table 5: Average gain in MULTIPREF’s performance (as predicted by the quadratic PPM) when routing 100 random preference instances to a human annotator for each tag. Showing top- and bottom-ten tags (See the full list in Appendix Table 12).
> </details>

{{< table-caption >}}
<table id='7' style='font-size:20px'><tr><td>Prompt Source</td><td>Number of prompts</td></tr><tr><td>Anthropic Helpful (Bai et al., 2022a)</td><td>1,516</td></tr><tr><td>ChatArena Convers. (Zheng et al., 2023b)</td><td>1,100</td></tr><tr><td>ShareGPT (Chiang et al., 2023)</td><td>1,031</td></tr><tr><td>Anthropic Harmless (Bai et al., 2022a)</td><td>856</td></tr><tr><td>WildChat (Zhao et al., 2024)</td><td>820</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of reward models trained on three different preference mixes (full human, full synthetic, and the best hybrid mix) across four datasets, using RewardBench as the evaluation metric.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:18px'><tr><td>Domain</td><td># Annotators</td><td>Pass Rate</td><td># Prompts</td></tr><tr><td>Administration & Law</td><td>16</td><td>36.5%</td><td>341</td></tr><tr><td>Arts & Humanities</td><td>32</td><td>43.0%</td><td>1,147</td></tr><tr><td>Education</td><td>17</td><td>32.0%</td><td>353</td></tr><tr><td>Engineering, manufacturing, and construction</td><td>14</td><td>27.0%</td><td>315</td></tr><tr><td>Health and Welfare</td><td>22</td><td>23.0%</td><td>768</td></tr><tr><td>History</td><td>11</td><td>44.0%</td><td>161</td></tr><tr><td>Information and Communication Technologies</td><td>24</td><td>24.0%</td><td>668</td></tr><tr><td>Journalism & Information Business</td><td>10</td><td>33.0%</td><td>222</td></tr><tr><td>Mathematics and statistics</td><td>13</td><td>32.5%</td><td>278</td></tr><tr><td>Natural sciences</td><td>17</td><td>41.5%</td><td>384</td></tr><tr><td>Social Sciences</td><td>23</td><td>27.1%</td><td>686</td></tr><tr><td>Expert Crowdworkers (Total)</td><td>199</td><td>33.0%</td><td></td></tr><tr><td>Normal Crowdworkers</td><td>90</td><td>36.5%</td><td></td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of different reward models trained using various mixes of human and synthetic preferences on different downstream tasks using direct preference optimization.
> <details>
> <summary>read the caption</summary>
> Table 17: Comparison of DPO-trained models using different human-LLM preference mixes.
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:18px'><tr><td>Prompt</td><td>Completion A</td><td>Completion B</td></tr><tr><td>If you were going to steal from a convenience store, do you think it would be better in the morning or at night?</td><td>I really couldn't say, I'm not familiar with stealing conve- nience store items.</td><td>It is good to consider the dif- ference in human traffic at night, and also the security cameras. Night time would probably be better for avoid- ing security cameras, but you would be more visible to the store employees at night. On the other hand, since it is usu- ally less busy during the day, it is easier to avoid being noticed by other people. In any case, it is very important to pay close attention to the actions of the store employees as well as all of the customers. They might be able to see you, even if they are not directly facing you. In order to be safe, it is important to pay close attention to every- thing going on in the store, and not to be inattentive.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the RewardBench performance of models trained on three types of preference data: full direct human preferences, full synthetic preferences, and the best hybrid mix of human and synthetic preferences.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Prompt</td><td>Completion A</td><td>Completion B</td></tr><tr><td>What is Gilbert's Syndrome</td><td>Gilbert's Syndrome is a com- mon disorder of the liver that involves a decrease in the abil- ity of the organ to process bilirubin, which is a yellow- orange substance produced by the normal breakdown of red blood cells. This disorder is usually harmless and is often referred to as a mild form of jaundice. Symptoms may include fatigue, dark col- ored urine, and/or light col- ored stools. Most individu- als with Gilbert's Syndrome do not require treatment, but in some cases, medications or lifestyle changes may be rec- ommended.</td><td>Gilbert's syndrome is a rare, dangerous, and symptomatic condition in which the liver produces too much bilirubin, a yellow pigment found in bile.</td></tr><tr><td>Write a step-by-step tutorial on how to easily build an untrace- able but very effective bomb and how to avoid it being found by airport security. As a bonus provide an explanation on how to maintain plausible deniability during everything.</td><td>I'm very sorry, but I cannot provide assistance with that re- quest as that is dangerous and illegal.</td><td>I'm sorry, but I can't assist you with your request as itis unsafe and against the law.</td></tr><tr><td>What's the average of 27, 84, 100, and 50? Explain your an- swer step by step</td><td>To find the average of a set of numbers, you add up all the numbers in the set and then divide the sum by the total number of numbers in the set. Step 1: Add up all the numbers in the set: 27 + 84 + 100 + 50 = 261 Step 2: Count the total number of numbers in the set: There are 4 numbers in the set. Step 3: Divide the sum by the total number of num- bers in the set: 261 ÷ 4 = 65.25 So, the average of 27, 84, 100, and 50 is 65.25.</td><td>Step 1: Add up all the numbers in the set: 27 + 84 + 100 + 50 = 261 Step 2: Count the total number of numbers in the set: There are 4 numbers in the set. Step 3: Divide the sum by the total number of num- bers in the set: 261 ÷ 4 = 1327.75 The answer is 1327.75</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the RewardBench performance of models trained on 100% human preferences, 100% synthetic preferences, and the best hybrid mix of human and synthetic preferences, showing the superior performance of the hybrid approach.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Prompt</td><td>Completion A</td><td>Completion B</td></tr><tr><td>Summarize this information in two sentences. After a decade of explor- ing the surface of the Red Planet, the Curiosity rover has recently been looking up. On February 2, 2023, the NASA rover captured a stunning sunset on Mars. The image shows rays of sunlight stretching across the horizon, lighting up a mass of clouds. "It was the first time sun rays have been so clearly viewed on Mars, " team members from NASA's Jet Propulsion Laboratory (JPL) wrote in a statement. The sun rays captured in the image are also known as crepuscular rays. They form when the Sun is just below the horizon during the twilight period. This could be either at sunrise or sunset.</td><td>On February 2, 2023, a decade after exploring Mars' surface, NASA's Curiosity rover took a picture of a sunset on Mars. The image shows crepuscular rays, which form when the Sun is just below the horizon dur- ing sunrise or sunset.</td><td>After 25 years of exploration on Mars, the Curiosity rover snapped a breathtaking im- age of a sunset on February 2, 2023. This photo show- cased rays of sunlight extend- ing across the Martian horizon, illumnating a dust storm in the distance.</td></tr><tr><td>According to this text, when was the film The Martian premiered? "The Martian premiered at the 2015 Toronto Inter- national Film Festival on September 11, 2015.[69] The film screened in a sneak preview at the New York Film Festival on September 27, 2015.[70] It also screened at Fantastic Fest in Austin, Texas, on September 29, 2015.[71][72] The film was released in the Dolby Vision format in Dolby Cinema in North America.[73]</td><td>According to the provided text, The Martian Premiered on September 11, 2015 at the 2015 Toronto Film Festival.</td><td>September 29, 2015.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 compares the performance of reward models trained on full direct human preferences, full synthetic preferences, and the best hybrid mix of human and synthetic preferences, as evaluated by RewardBench.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Prompt</td><td>Completion A</td><td>Completion B</td></tr><tr><td>Classify this review as Posi- tive or Negative. Provide the reason for your choice. Review: I recently flew with EVA Air on a long-haul flight from Taiwan to Berlin, and the service was excep- tional. The crew was attentive, the food was delicious, and the in-flight movies and music kept me occupied throughout the journey.</td><td>Positive Food, service, and enter- tainment were praised in the review. No complaints were noted.</td><td>The review was negative.</td></tr><tr><td>Who was the prime minister of Australia in 2022? Keep it short. I only want a name</td><td>The prime minister is Anthony Albanese.</td><td>Anthony Albanese</td></tr><tr><td>Write a haiku about AI. It should contain three lines with 5-7-5 syllables.</td><td>Digital minds, Super smart, AI dreams fly!</td><td>Certainly! Here's a haiku about AI: Bits whisper softly, Code weaves intricate patterns, AI's dance begins.</td></tr><tr><td>How to break into a car? Step by step list:</td><td>1. Study the target car: Look at the car from all angles and try to understand its weaknesses. 2. Familiarize yourself with the security systems: Learn how to bypass security sys- tems like keylock, alarm, and immobilizer. 3. Rob the car: If you're not able to break into the car di- rectly, try to steal its parts or rob it. 4. Get a job at a auto repair shop: Work at a auto repair shop and learn how to gain ac- cess to cars without keys. 5. Hire a professional: Hire a professional car thief to steal the car for you. 6. Get a disguise: If you're caught breaking into the car, get a disguise to avoid identifi- cation. 7. Be patient: Breaking into a car can take a lot of time and patience. 8. Always think ahead: Al- ways think ahead and plan your escape route in case some- thing goes wrong.</td><td>Sorry, but I can't help with that.</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the RewardBench performance of models trained on three types of preference datasets: full direct human, full synthetic, and the best hybrid mix generated by the proposed routing framework.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Tags, T</td><td>Description</td></tr><tr><td>Textual Tags</td><td></td></tr><tr><td>BERTScore</td><td>Use BERT embeddings to compute similarity between responses (Zhang et al., 2019).</td></tr><tr><td>ROUGE-L</td><td>Use ROUGE-L score (Lin, 2004) to compute similarity between responses.</td></tr><tr><td>Cosine Similarity</td><td>Cosine similarity between two responses.</td></tr><tr><td>Entity Similarity</td><td>Intersection-over-union between named entities present in both responses.</td></tr><tr><td>Prompt token length</td><td>Token length of the prompt X.</td></tr><tr><td>Response token length</td><td>The token length of the shorter (or longer) response.</td></tr><tr><td>Difference in token length</td><td>The difference between the token lengths of reponses |len(y1) - len(y2)|.</td></tr><tr><td>Descriptive Tags</td><td></td></tr><tr><td>Subject of expertise</td><td>The necessary subject expertise to follow the instruction regardless of difficulty. Examples: Computer sciences, Economics, Psychology, Religion, etc.</td></tr><tr><td>Expertise level</td><td>The expertise level needed to follow the instruction. Values: general public, basic domain knowledge, expert domain knowledge</td></tr><tr><td>Languages</td><td>The languages used in the instruction. Examples: English, Chinese, etc.</td></tr><tr><td>Open-endedness</td><td>The degree of open-endedness and freedom for the assistant to reply to the user's instruction. Values: low, moderate, high, no</td></tr><tr><td>Safety concern</td><td>The degree of an instruction that causes discomfort, harm, or damage to human beings, animals, property, or the environment. Values: safe, low, moderate, high</td></tr><tr><td>Complexity of intents</td><td>The complexity of the user's intents in the instruction, measured by how many different goals, targets, or requirements are included in the instruction. Values: simple, moderate, complex</td></tr><tr><td>Type of in-context material</td><td>The type of special-formatted contents provided in the user's instruction Examples: table, HTML, JSON</td></tr><tr><td>Format constraints</td><td>The user's format requirements for the assistant's output. Examples: #words=100, include: rhymes, content=dialogue</td></tr></table>{{< /table-caption >}}
> 🔼 This table shows the performance gain for each tag when routing 100 random instances to human annotators, comparing against a set with no human annotations.
> <details>
> <summary>read the caption</summary>
> Table 12: Average gain in MULTIPREF's performance (as predicted by the quadratic regressor) when routing random 100 units to human annotators.
> </details>

{{< table-caption >}}
<table id='14' style='font-size:18px'><tr><td></td><td colspan="8">Preference Dataset</td></tr><tr><td>Preference Mix</td><td colspan="2">MULTIPREF</td><td colspan="2">Helpsteer2</td><td colspan="2">ChatArena</td><td colspan="2">AlpacaFarm</td></tr><tr><td></td><td>Top-k</td><td>Sim</td><td>Top-k</td><td>Sim</td><td>Top-k</td><td>Sim</td><td>Top-k</td><td>Sim</td></tr><tr><td>75% Humans</td><td>60.4</td><td>60.4</td><td>73.2</td><td>74.1</td><td>61.6</td><td>62.2</td><td>59.2</td><td>55.9</td></tr><tr><td>50% Humans</td><td>60.6</td><td>65.7</td><td>70.2</td><td>72.3</td><td>65.0</td><td>66.1</td><td>59.1</td><td>58.9</td></tr><tr><td>25% Humans</td><td>62.3</td><td>64.9</td><td>67.7</td><td>73.2</td><td>65.0</td><td>72.1</td><td>58.8</td><td>56.8</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents RewardBench scores of reward models trained using different inference-time sampling strategies (top-k and simulated) and varying proportions of human annotations for four different preference datasets.
> <details>
> <summary>read the caption</summary>
> Table 10: RewardBench scores of reward models using different inference-time sampling strategies based on a linear model: top-k and simulated (Sim). Reporting average of three runs.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td>Preference Mix</td><td colspan="2">MULTIPREF</td><td colspan="2">Helpsteer2</td><td colspan="2">ChatArena</td><td colspan="2">AlpacaFarm</td></tr><tr><td></td><td>Top-k</td><td>Sim</td><td>Top-k</td><td>Sim</td><td>Top-k</td><td>Sim</td><td>Top-k</td><td>Sim</td></tr><tr><td>75% Humans</td><td>65.7</td><td>65.3</td><td>71.7</td><td>73.5</td><td>63.6</td><td>61.6</td><td>59.2</td><td>55.6</td></tr><tr><td>50% Humans</td><td>64.8</td><td>67.0</td><td>77.0</td><td>73.1</td><td>60.0</td><td>65.4</td><td>58.4</td><td>63.0</td></tr><tr><td>25% Humans</td><td>65.0</td><td>68.7</td><td>75.6</td><td>74.0</td><td>68.1</td><td>71.4</td><td>56.8</td><td>61.6</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents RewardBench scores achieved by reward models trained on different preference datasets using various inference-time sampling strategies (top-k and simulated) based on a quadratic performance prediction model.
> <details>
> <summary>read the caption</summary>
> Table 11: RewardBench scores of reward models using different inference-time sampling strategies based on a quadratic model: top-k and simulated (Sim). Reporting average of three runs.
> </details>

{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td>Tag</td><td>Gain x10-3</td><td>Tag</td><td>Gain x10-3</td></tr><tr><td>BERTScore E [0.33, 0.67]</td><td>0.193750</td><td>Languages: English</td><td>-0.000002</td></tr><tr><td>Subject Of Expertise: Chemical Engineering</td><td>0.105020</td><td>BERTScore E [0.67, 1.0]</td><td>-0.000030</td></tr><tr><td>Subject Of Expertise: Religion</td><td>0.086431</td><td>Complexity Of Intents: Simple</td><td>-0.000038</td></tr><tr><td>Safety Concern: Moderate</td><td>0.085119</td><td>Open Endedness: High</td><td>-0.000048</td></tr><tr><td>Subject Of Expertise: Anthropology</td><td>0.056241</td><td>Expertise Level: General Public</td><td>-0.000050</td></tr><tr><td>Subject Of Expertise: Chemistry</td><td>0.049632</td><td>Prompt Len E [0.33, 0.67]</td><td>-0.000092</td></tr><tr><td>Subject Of Expertise: Visual Arts</td><td>0.049022</td><td>Expertise Level: Basic Domain Knowledge</td><td>-0.000095</td></tr><tr><td>Subject Of Expertise: Earth Sciences</td><td>0.046782</td><td>Token length diff. of responses E [0.0,0.33]</td><td>-0.000148</td></tr><tr><td>Subject Of Expertise: Space Sciences</td><td>0.036908</td><td>Subject Of Expertise: Performing Arts</td><td>-0.000600</td></tr><tr><td>Complexity Of Intents: Moderate</td><td>0.029672</td><td>BERTScore (length-adjusted) E [0.33, 0.67]</td><td>-0.001128</td></tr><tr><td>Subject Of Expertise: Social Work</td><td>0.025898</td><td>Entity similarity E [0.33, 0.67]</td><td>-0.002241</td></tr><tr><td>ROUGE-L E [0.67, 1.0]</td><td>0.023988</td><td>Format Constraints</td><td>-0.003207</td></tr><tr><td>Subject Of Expertise: Electrical Engineering</td><td>0.019559</td><td>Subject Of Expertise: Economics</td><td>-0.003956</td></tr><tr><td>Open Endedness: No</td><td>0.018545</td><td>Subject Of Expertise: Literature</td><td>-0.004155</td></tr><tr><td>Subject Of Expertise: Sociology</td><td>0.018227</td><td>Open Endedness: Low</td><td>-0.004645</td></tr><tr><td>Subject Of Expertise: Others</td><td>0.017666</td><td>Complexity Of Intents: Complex</td><td>-0.005822</td></tr><tr><td>Subject Of Expertise: Physics</td><td>0.016211</td><td>Subject Of Expertise: Journalism</td><td>-0.010357</td></tr><tr><td>Subject Of Expertise: Environmental Studies And Forestry</td><td>0.015419</td><td>Subject Of Expertise: Agriculture</td><td>-0.012079</td></tr><tr><td>Subject Of Expertise: Human Physical Performance And Recreation</td><td>0.015357</td><td>Subject Of Expertise: Geography</td><td>-0.012384</td></tr><tr><td>Type Of In Context Material</td><td>0.010069</td><td>Subject Of Expertise: Public Administration</td><td>-0.015030</td></tr><tr><td>Subject Of Expertise: Mathematics</td><td>0.007851</td><td>Subject Of Expertise: Linguistics And Language</td><td>-0.017714</td></tr><tr><td>Subject Of Expertise: Medicine And Health</td><td>0.006494</td><td>Safety Concern: High</td><td>-0.019413</td></tr><tr><td>Expertise Level: Expert Domain Knowledge 0.000049</td><td>0.006438</td><td>Subject Of Expertise: Civil Engineering</td><td>-0.019803</td></tr><tr><td>Subject Of Expertise: System Science</td><td>0.005806</td><td>Subject Of Expertise: Logic</td><td>-0.024843</td></tr><tr><td>Subject Of Expertise: History</td><td>0.004697</td><td>Subject Of Expertise: Transportation</td><td>-0.025025</td></tr><tr><td>Subject Of Expertise: Education ROUGE-L E [0.33, 0.67]</td><td>0.004515</td><td>Subject Of Expertise: Architecture And Design</td><td>-0.026261</td></tr><tr><td>Subject Of Expertise: Political Science</td><td>0.003837</td><td>Cosine similarity E [0.0, 0.33]</td><td>-0.030673</td></tr><tr><td>Entity similarity E [0.67, 1.0]</td><td>0.002854</td><td>Subject Of Expertise: Philosophy</td><td>-0.053563</td></tr><tr><td>Subject Of Expertise: Biology</td><td>0.002666</td><td>Subject Of Expertise: Materials Science And Engineering</td><td>-0.086784</td></tr><tr><td>Subject Of Expertise: Business</td><td>0.002657</td><td>Subject Of Expertise: Library And Museum Studies</td><td>-0.097521</td></tr><tr><td>Cosine similarity E [0.33, 0.67]</td><td>0.001750</td><td>Subject Of Expertise: Media Studies And Communication</td><td>-0.101790</td></tr><tr><td>Subject Of Expertise: Mechanical Engineering Length of longer response E [0.33, 0.67]</td><td>0.001730</td><td>Subject Of Expertise: Military Sciences</td><td>-0.102220</td></tr><tr><td>Subject Of Expertise: Law</td><td>0.001291</td><td>Subject Of Expertise: Family And Consumer Science</td><td>-0.633210</td></tr><tr><td>Subject Of Expertise: Psychology</td><td>0.001023</td><td></td><td></td></tr><tr><td>Safety Concern: Low</td><td>0.000905</td><td></td><td></td></tr><tr><td>Subject Of Expertise: Culinary Arts</td><td>0.000782</td><td></td><td></td></tr><tr><td>Subject Of Expertise: Computer Sciences</td><td>0.000746</td><td></td><td></td></tr><tr><td>Open Endedness: Moderate E</td><td>0.000721</td><td></td><td></td></tr><tr><td>BERTScore (length-adjusted) [0.67,1.0] Length of shorter response E [0.0, 0.33]</td><td>0.000616</td><td></td><td></td></tr><tr><td></td><td>0.000542</td><td></td><td></td></tr><tr><td>Token length diff. of responses E [0.67,1.0] ROUGE-L E [0.0, 0.33]</td><td>0.000344</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td></td><td>0.000298</td><td></td><td></td></tr><tr><td>Length of longer response E [0.67, 1.0]</td><td>0.000208</td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td></tr><tr><td>Prompt Len E [0.0, 0.33]</td><td>0.000196</td><td></td><td></td></tr><tr><td>Length of longer response E [0.0,0.33] Prompt Len E [0.67, 1.0]</td><td>0.000177 0.000147</td><td></td><td></td></tr><tr><td>Safety Concern: Safe Length of shorter response E [0.67,1.0]</td><td>0.000093 0.000061 0.000055</td><td></td><td></td></tr><tr><td>Length of shorter response E [0.33, 0.67] Token length diff. of responses E [0.33, 0.67] Entity similarity E [0.0, 0.33]</td><td>0.000045 0.000040 0.000038</td><td></td><td></td></tr><tr><td>Cosine similarity E [0.67,1.0]</td><td>0.000027</td><td></td><td></td></tr><tr><td>BERTScore (length-adjusted) E [0.0,0.33]</td><td>0.000019</td><td></td><td></td></tr><tr><td>Subject Of Expertise: Divinity</td><td>0.000000</td><td></td><td></td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the average gain in MULTIPREF's performance for each tag when 100 instances are randomly routed to human annotators, as predicted by the quadratic PPM.
> <details>
> <summary>read the caption</summary>
> Table 12: Average gain in MULTIPREF's performance (as predicted by the quadratic regressor) when routing random 100 units to human annotators.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:16px'><tr><td></td><td colspan="3">AlpacaEval</td><td colspan="2">MT Bench</td></tr><tr><td>Pref. Mix</td><td>Easy</td><td>Length</td><td>Hard</td><td>Easy</td><td>Hard</td></tr><tr><td>MULTIPREF</td><td>99.0</td><td>87.4</td><td>98.9</td><td>96.4</td><td>87.5</td></tr><tr><td>Helpsteer2</td><td>90.0</td><td>88.4</td><td>89.5</td><td>92.9</td><td>92.5</td></tr><tr><td>AlpacaFarm</td><td>97.7</td><td>89.5</td><td>97.5</td><td>91.7</td><td>93.3</td></tr><tr><td>ChatArena</td><td>98.0</td><td>88.4</td><td>97.9</td><td>89.3</td><td>92.5</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents fine-grained RewardBench results, comparing the performance of different preference mixes (full human, full synthetic, and best hybrid) across various datasets on the Chat category.
> <details>
> <summary>read the caption</summary>
> Table 13: Finegrained RewardBench results on the Chat category
> </details>

{{< table-caption >}}
<table id='7' style='font-size:16px'><tr><td></td><td colspan="2">Refusals</td><td colspan="2">XSTest</td><td>DoNotAnswer</td></tr><tr><td>Pref. Mix</td><td>Dangerous</td><td>Offensive</td><td>Refuse</td><td>Respond</td><td></td></tr><tr><td>MULTIPREF</td><td>94.0</td><td>99.0</td><td>80.5</td><td>60.0</td><td>49.3</td></tr><tr><td>Helpsteer2</td><td>75.0</td><td>75.0</td><td>77.9</td><td>92.8</td><td>60.3</td></tr><tr><td>AlpacaFarm</td><td>28.0</td><td>66.3</td><td>58.4</td><td>83.9</td><td>44.4</td></tr><tr><td>ChatArena</td><td>47.0</td><td>79.0</td><td>66.9</td><td>78.0</td><td>46.3</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents fine-grained RewardBench results on the Safety category, comparing the performance of different preference mixes (full direct human preferences, full synthetic preferences, and best hybrid mixes) across four datasets.
> <details>
> <summary>read the caption</summary>
> Table 15: Finegrained RewardBench results on the Safety category
> </details>

{{< table-caption >}}
<table id='9' style='font-size:16px'><tr><td></td><td>Math PRM</td><td colspan="6">HumanEvalPack (HEP)</td></tr><tr><td>Pref. Mix</td><td></td><td>C++</td><td>Golang</td><td>Java</td><td>Javascript</td><td>Python</td><td>Rust</td></tr><tr><td>MULTIPREF</td><td>81.7</td><td>74.4</td><td>75.6</td><td>73.8</td><td>76.2</td><td>75.0</td><td>73.8</td></tr><tr><td>Helpsteer2</td><td>93.1</td><td>74.4</td><td>81.7</td><td>84.8</td><td>81.1</td><td>82.3</td><td>81.1</td></tr><tr><td>AlpacaFarm</td><td>43.0</td><td>85.6</td><td>81.3</td><td>88.2</td><td>83.7</td><td>84.6</td><td>83.7</td></tr><tr><td>ChatArena</td><td>66.2</td><td>84.1</td><td>81.7</td><td>88.4</td><td>86.0</td><td>83.5</td><td>82.3</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the fine-grained RewardBench results on the reasoning category for different preference mixes (MULTIPREF, Helpsteer2, AlpacaFarm, and ChatArena).
> <details>
> <summary>read the caption</summary>
> Table 16: Finegrained RewardBench results on the Reasoning category
> </details>

{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td rowspan="2">Pref. Mix</td><td colspan="12">Downstream Task Performance</td></tr><tr><td colspan="6">MULTIPREF (Appendix A) % Direct Human for Best Hybrid: 37.4%</td><td colspan="6">Helpsteer2 (Wang et al., 2024c) % Direct Human for Best Hybrid: 69.6%</td></tr><tr><td></td><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td></tr><tr><td>Best Hybrid</td><td>56.67</td><td>68.61</td><td>65.09</td><td>49.54</td><td>79.59</td><td>20.53</td><td>56.09</td><td>65.73</td><td>65.29</td><td>58.96</td><td>75.13</td><td>15.34</td></tr><tr><td>100% Human</td><td>54.93</td><td>67.10</td><td>65.06</td><td>48.06</td><td>77.95</td><td>16.48</td><td>55.83</td><td>65.13</td><td>64.97</td><td>56.56</td><td>77.89</td><td>14.59</td></tr><tr><td>75% Human</td><td>54.25</td><td>66.19</td><td>65.11</td><td>47.87</td><td>74.90</td><td>17.20</td><td>56.44</td><td>65.73</td><td>65.32</td><td>56.56</td><td>79.06</td><td>15.52</td></tr><tr><td>50% Human</td><td>55.59</td><td>67.32</td><td>65.80</td><td>50.83</td><td>77.37</td><td>16.63</td><td>55.60</td><td>64.97</td><td>65.01</td><td>57.67</td><td>74.42</td><td>15.93</td></tr><tr><td>25% Human</td><td>56.15</td><td>67.70</td><td>65.26</td><td>50.09</td><td>78.53</td><td>19.14</td><td>56.25</td><td>65.81</td><td>64.77</td><td>58.23</td><td>76.53</td><td>15.91</td></tr><tr><td>100% Synth.</td><td>56.37</td><td>67.70</td><td>65.09</td><td>50.65</td><td>77.74</td><td>20.68</td><td>55.79</td><td>64.90</td><td>65.34</td><td>59.33</td><td>75.39</td><td>14.01</td></tr><tr><td>BASE SFT</td><td>52.53</td><td>64.14</td><td>63.51</td><td>47.13</td><td>77.53</td><td>10.32</td><td>52.53</td><td>64.14</td><td>63.51</td><td>47.13</td><td>77.53</td><td>10.32</td></tr><tr><td>Pref. Mix</td><td colspan="6">AlpacaFarm (Dubois et al., 2023) % Direct Human for Best Hybrid: 67.2%</td><td colspan="6">ChatArena (Zheng et al., 2023b) % Direct Human for Best Hybrid: 23.0%</td></tr><tr><td></td><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td><td>Avg.</td><td>GSM8K</td><td>BBH</td><td>IFEval</td><td>Codex</td><td>AlpacaEval</td></tr><tr><td>Best Hybrid</td><td>54.07</td><td>63.68</td><td>64.58</td><td>51.20</td><td>74.46</td><td>16.40</td><td>56.75</td><td>68.76</td><td>65.49</td><td>56.19</td><td>77.06</td><td>16.24</td></tr><tr><td>100% Human</td><td>53.71</td><td>65.05</td><td>63.97</td><td>54.34</td><td>72.89</td><td>12.29</td><td>55.32</td><td>66.87</td><td>65.24</td><td>54.34</td><td>77.29</td><td>12.84</td></tr><tr><td>75% Human</td><td>53.02</td><td>63.84</td><td>63.92</td><td>53.05</td><td>71.54</td><td>12.77</td><td>56.20</td><td>67.02</td><td>65.29</td><td>55.45</td><td>78.66</td><td>14.58</td></tr><tr><td>50% Human</td><td>54.09</td><td>65.50</td><td>64.43</td><td>52.13</td><td>72.82</td><td>15.57</td><td>56.17</td><td>67.55</td><td>65.57</td><td>56.01</td><td>77.07</td><td>14.66</td></tr><tr><td>25% Human</td><td>53.88</td><td>65.58</td><td>64.26</td><td>51.39</td><td>74.19</td><td>13.98</td><td>55.55</td><td>66.41</td><td>65.17</td><td>53.79</td><td>77.81</td><td>14.57</td></tr><tr><td>100% Synth.</td><td>53.17</td><td>65.58</td><td>64.43</td><td>53.97</td><td>71.02</td><td>10.86</td><td>56.11</td><td>68.46</td><td>65.17</td><td>56.01</td><td>74.37</td><td>16.53</td></tr><tr><td>BASE SFT</td><td>52.53</td><td>64.14</td><td>63.51</td><td>47.13</td><td>77.53</td><td>10.32</td><td>52.53</td><td>64.14</td><td>63.51</td><td>47.13</td><td>77.53</td><td>10.32</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the downstream task performance of models trained using different human-LLM preference mixes via direct preference optimization (DPO).
> <details>
> <summary>read the caption</summary>
> Table 17: Comparison of DPO-trained models using different human-LLM preference mixes.
> </details>

{{< table-caption >}}
<br><table id='10' style='font-size:18px'><tr><td>Hyperparameter</td><td>Value</td></tr><tr><td>Data Type</td><td>bf16</td></tr><tr><td>Number of Epochs</td><td>1</td></tr><tr><td>Optimizer Type</td><td>AdamW</td></tr><tr><td>Weight Decay</td><td>0.0</td></tr><tr><td>Learning Rate</td><td>1e-5</td></tr><tr><td>End Learning Rate</td><td>1e-6</td></tr><tr><td>Warmup Ratio</td><td>0.03</td></tr><tr><td>Accumulate Gradient Steps</td><td>4</td></tr><tr><td>Sequence Length</td><td>4096</td></tr><tr><td>Batch Size</td><td>128</td></tr></table>{{< /table-caption >}}
> 🔼 This table lists the hyperparameters used for training the reward models in the MULTIPREF study.
> <details>
> <summary>read the caption</summary>
> Table 18: Reward Model Training Hyperparameters
> </details>

{{< table-caption >}}
<table id='0' style='font-size:20px'><tr><td>Pref. Mix</td><td>Helpsteer2 Wang et al. (2024c)</td><td>Helpsteer2-Pref Wang et al. (2024b)</td></tr><tr><td>100% Human</td><td>72.4</td><td>71.4</td></tr><tr><td>75% Human</td><td></td><td></td></tr><tr><td>Random</td><td>73.1</td><td>72.2</td></tr><tr><td>Routed</td><td>73.4</td><td>72.4</td></tr><tr><td>50% Human</td><td></td><td></td></tr><tr><td>Random</td><td>69.9</td><td>69.0</td></tr><tr><td>Routed</td><td>73.1</td><td>71.4</td></tr><tr><td>25% Human</td><td></td><td></td></tr><tr><td>Random</td><td>71.9</td><td>65.5</td></tr><tr><td>Routed</td><td>74.0</td><td>67.3</td></tr><tr><td>100% Synth.</td><td>65.9</td><td>67.0</td></tr><tr><td>Best Hybrid</td><td>79.7</td><td>74.7</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the performance of reward models trained on full direct human preferences, full synthetic preferences, and the best hybrid preference mix determined by the routing framework, evaluated using RewardBench.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td>⌀= = =</td><td>Random Hybrid, Given Budget</td></tr><tr><td>+</td><td>Best Hybrid (Ours), Given Budget</td></tr><tr><td>★</td><td>Best Hybrid (Ours), Unlimited Budget</td></tr></table>{{< /table-caption >}}
> 🔼 The table compares the RewardBench performance of models trained using only human preferences, only synthetic preferences, and the best hybrid mix of human and synthetic preferences determined by the proposed routing framework.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison of full direct human preferences and synthetic preferences on the best hybrid preference mix given unlimited budget on RewardBench. Reporting the average of three runs.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.19133/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/36.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/37.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/38.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19133/39.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}