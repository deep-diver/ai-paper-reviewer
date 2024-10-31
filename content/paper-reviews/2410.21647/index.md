---
title: "Can Language Models Replace Programmers? REPOCOD Says 'Not Yet'"
summary: "REPOCOD benchmark exposes current LLMs' struggles with real-world, complex code generation tasks, pushing the field towards building stronger, more context-aware models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Purdue University",]
showSummary: true
date: 2024-10-29
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.21647 {{< /keyword >}}
{{< keyword icon="writer" >}} Shanchao Liang et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.21647" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.21647" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Large language models (LLMs) have shown promise in code generation, but existing benchmarks are limited to simple tasks, not reflecting real-world complexities. This gap motivated the development of REPOCOD, a new comprehensive benchmark with 980 tasks from real-world projects.  These tasks are significantly more complex and require a deeper understanding of project context than previous benchmarks. 



REPOCOD was used to evaluate 10 LLMs, and none achieved over 30% accuracy on the complex tasks. The paper's contributions include the creation of REPOCOD, a new benchmark for evaluating LLMs' code generation capabilities, providing a clearer understanding of LLMs' limitations in real-world settings.  It emphasizes the need for development of more robust models and improved evaluation metrics to facilitate advancements in the field.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Current LLMs underperform on complex, real-world code generation tasks requiring project-level context. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} REPOCOD, a new benchmark dataset with 980 challenging problems, unveils limitations of existing LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study emphasizes a need for improved LLMs and more advanced evaluation metrics for realistic software development. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial** because it introduces a new benchmark, **REPOCOD**, rigorously evaluating large language models' (LLMs) real-world code generation capabilities.  It reveals significant limitations of current LLMs in handling complex, project-level tasks, highlighting the need for improved models and better evaluation methods in software engineering research. This work **opens up new avenues** for developing more robust and practical LLMs and **influences the direction** of future research in this field.

------
#### Visual Insights







{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td>Shanchao Liang</td><td>Yiran Hu</td><td>Nan Jiang</td><td>Lin Tan</td></tr><tr><td>Purdue University</td><td>Purdue University</td><td>Purdue University</td><td>Purdue University</td></tr><tr><td>liang422@purdue.edu</td><td>hu954@purdue.edu</td><td>jiang719@purdue.edu</td><td>lintan@purdue.edu</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents detailed statistics for instances from each repository in REPOCOD, categorized by context complexity types (repository-level, file-level, and self-contained), showing the number of natural language tokens in function descriptions, canonical solutions, average cyclomatic complexity, and number of target functions.
> <details>
> <summary>read the caption</summary>
> Table 1: Basic statistics of REPOCOD, with details broken down by each collected repository.
> </details>





### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Dataset</td><td colspan="4">Repository-level</td><td colspan="4">File-level</td><td colspan="4">Self-contained</td><td colspan="4">Total</td></tr><tr><td>#NL</td><td>#GT</td><td>Cyclo.</td><td>#Funcs.</td><td>#NL</td><td>#GT</td><td>Cyclo.</td><td>#Funcs.</td><td>#NL</td><td>#GT</td><td>Cyclo.</td><td>#Funcs.</td><td>#NL</td><td>#GT</td><td>Cyclo.</td><td>#Funcs.</td></tr><tr><td>astropy</td><td>274.9</td><td>446.4</td><td>9.4</td><td>10</td><td>399.4</td><td>407.1</td><td>8.8</td><td>37</td><td>291.5</td><td>284.8</td><td>7.9</td><td>38</td><td>336.5</td><td>357.0</td><td>8.5</td><td>85</td></tr><tr><td>datasets</td><td>497.1</td><td>308.4</td><td>9.1</td><td>19</td><td>297.3</td><td>196.7</td><td>4.8</td><td>20</td><td>311.9</td><td>135.3</td><td>3.6</td><td>20</td><td>366.6</td><td>211.9</td><td>5.8</td><td>59</td></tr><tr><td>flask</td><td>448.0</td><td>215.0</td><td>6.5</td><td>2</td><td>326.2</td><td>152.3</td><td>5.2</td><td>13</td><td>231.2</td><td>99.4</td><td>3.6</td><td>28</td><td>270.0</td><td>120.8</td><td>4.2</td><td>43</td></tr><tr><td>more-itertools</td><td>242.8</td><td>87.3</td><td>2.7</td><td>6</td><td>300.2</td><td>136.8</td><td>4.3</td><td>23</td><td>233.4</td><td>96.3</td><td>5.0</td><td>57</td><td>252.0</td><td>106.5</td><td>4.6</td><td>86</td></tr><tr><td>plotly.py</td><td>1806.0</td><td>3393.0</td><td>132.0</td><td>1</td><td>1366.9</td><td>932.2</td><td>23.5</td><td>19</td><td>1661.7</td><td>605.1</td><td>23.9</td><td>56</td><td>1589.9</td><td>723.5</td><td>25.3</td><td>76</td></tr><tr><td>pylint</td><td>-</td><td>-</td><td>-</td><td>0</td><td>163.9</td><td>432.1</td><td>15.2</td><td>9</td><td>176.4</td><td>193.1</td><td>7.0</td><td>17</td><td>172.0</td><td>275.8</td><td>9.8</td><td>26</td></tr><tr><td>scikit-learn</td><td>222.1</td><td>398.9</td><td>7.7</td><td>208</td><td>262.9</td><td>258.3</td><td>5.3</td><td>43</td><td>204.3</td><td>220.9</td><td>5.0</td><td>63</td><td>224.1</td><td>344.0</td><td>6.8</td><td>314</td></tr><tr><td>seaborn</td><td>349.5</td><td>426.0</td><td>10.3</td><td>6</td><td>201.2</td><td>236.0</td><td>6.4</td><td>42</td><td>240.8</td><td>211.6</td><td>6.7</td><td>30</td><td>227.9</td><td>241.3</td><td>6.8</td><td>78</td></tr><tr><td>sphinx</td><td>-</td><td>-</td><td>-</td><td>0</td><td>191.7</td><td>606.6</td><td>17.7</td><td>12</td><td>263.8</td><td>127.8</td><td>4.0</td><td>21</td><td>237.5</td><td>301.9</td><td>8.9</td><td>33</td></tr><tr><td>sympy</td><td>918.6</td><td>347.6</td><td>8.8</td><td>5</td><td>903.9</td><td>586.7</td><td>17.6</td><td>58</td><td>837.8</td><td>277.6</td><td>8.6</td><td>34</td><td>881.5</td><td>466.0</td><td>14.0</td><td>97</td></tr><tr><td>xarray</td><td>-</td><td>-</td><td>-</td><td>0</td><td>902.1</td><td>418.5</td><td>11.4</td><td>40</td><td>593.0</td><td>160.5</td><td>5.3</td><td>43</td><td>742.0</td><td>284.8</td><td>8.2</td><td>83</td></tr><tr><td>Total</td><td>269.4</td><td>396.7</td><td>8.3</td><td>257</td><td>537.6</td><td>394.9</td><td>10.6</td><td>316</td><td>522.8</td><td>241.4</td><td>8.2</td><td>407</td><td>461.1</td><td>331.6</td><td>9.0</td><td>980</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents detailed statistics for instances from each repository, categorized by context complexity types and including the number of tokens in target function descriptions, number of tokens in canonical solutions, average cyclomatic complexity of the canonical solution, and number of target functions.
> <details>
> <summary>read the caption</summary>
> Table 1: Basic statistics of REPOCOD, with details broken down by each collected repository.
> </details>

{{< table-caption >}}
<br><table id='10' style='font-size:14px'><tr><td>Datasets</td><td>#Instances</td><td>#Tokens</td><td>Cyclo.</td><td>#Tests</td></tr><tr><td>CrossCodeEval</td><td>2,665</td><td>13.2</td><td>N/A</td><td>N/A</td></tr><tr><td>RepoBench</td><td>23,561</td><td>13.7</td><td>N/A</td><td>N/A</td></tr><tr><td>Long-Code-Arena</td><td>32,803</td><td>12.0</td><td>N/A</td><td>N/A</td></tr><tr><td>CoderEval</td><td>230</td><td>108.2</td><td>4.71</td><td>-</td></tr><tr><td>ClassEval</td><td>100</td><td>123.7</td><td>2.89</td><td>33.1</td></tr><tr><td>REPOCOD</td><td>980</td><td>331.6</td><td>9.00</td><td>313.49</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents basic statistics of the REPOCOD benchmark, including the number of instances, tokens, cyclomatic complexity, and number of functions categorized by context complexity type (repository-level, file-level, and self-contained) for each of the 11 repositories.
> <details>
> <summary>read the caption</summary>
> Table 1: Basic statistics of REPOCOD, with details broken down by each collected repository.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Dataset</td><td>Repository-level</td><td>File-level</td><td>Self-contained</td><td>Total</td></tr><tr><td>CoderEval</td><td>23</td><td>123</td><td>84</td><td>230</td></tr><tr><td>ClassEval</td><td>0</td><td>314</td><td>153</td><td>467</td></tr><tr><td>REPOCOD</td><td>257</td><td>316</td><td>407</td><td>980</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the distribution of code generation tasks in three complexity levels (repository-level, file-level, and self-contained) across three code generation benchmarks: CoderEval, ClassEval, and REPOCOD.
> <details>
> <summary>read the caption</summary>
> Table 3: Data context complexity distribution of code generation benchmarks.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td>RepoCod Task</td><td>Prompt</td><td>LLM Output</td><td>: : dupl "AssertionError: Lists differ: " Test Cases Execution</td></tr><tr><td>Repository Snapshot more-itertools: more_ itertools init__·py more . py recipes . py · README . rst Target Function more-itertools : more itertools : more · py :partitions Relevant Tests test , more · py : : PartitionsTest: : test_ duplicates test order</td><td>You will be provided a function signature and the documentation, } your task is to complete the function body . - These are a list of files that contain the related classes and functions for you to refer to. ## File path: more_ itertools/more ·py def set_partitions(iterable, k, min_size=None, max_size=None): ## File path: more_ itertools/recipes. py def partition(pred, iterable): This is the file containing the target function to be generated. ## File path: more_ itertools/more ·py ### Target function to compl ete def partitions(iterable): ⌀⌀ " Yield all possible order-preserving partitions of *iterable* >>> iterable = I abc , >>> for part in partitions(iterable): , join(p) for p in part]) ... print([' . ⌀⌀ "</td><td colspan="2">Sytem Prompt iterable = list(iterable) n = len(iterable) def generate_partitions(start=0): if start == n: yield [] return Context for end in range(start + 1, n + 1): for rest in generate_partitions(end): yield [iterable[start:end]] + rest yield from generate_partitions() ④ Insert Completion ⑤ Evaluation Result more-itertools: test_ more. py Function Description more_itertools : PartitionsTest init__ . py : test ⌀ icates more.py Error : Target recipes.py ■ README . rst</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents detailed statistics for instances from each repository categorized by context complexity types (repository-level, file-level, and self-contained), including the number of tokens in target function descriptions, number of tokens in canonical solutions, average cyclomatic complexity of the canonical solution, and number of target functions.
> <details>
> <summary>read the caption</summary>
> Table 1: Basic statistics of REPOCOD, with details broken down by each collected repository.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:16px'><tr><td>Models</td><td>BM25</td><td>Dense</td><td>Current-File</td></tr><tr><td>CodeLlama-7B</td><td>10.71</td><td>10.41</td><td>5.71</td></tr><tr><td>CodeLlama-34B</td><td>12.35</td><td>12.76</td><td>9.59</td></tr><tr><td>DeepSeekCoder-6.7B</td><td>13.98</td><td>14.08</td><td>10.92</td></tr><tr><td>DeepSeekCoder-33B</td><td>16.73</td><td>17.14</td><td>14.90</td></tr><tr><td>OpenCodeInterpreter-6.7B</td><td>12.14</td><td>12.45</td><td>13.16</td></tr><tr><td>OpenCodeInterpreter-33B</td><td>15.31</td><td>16.33</td><td>18.27</td></tr><tr><td>Claude 3.5 Sonnet</td><td>14.39</td><td>17.45</td><td>19.80</td></tr><tr><td>DeepSeek-V2.5</td><td>18.47</td><td>20.71</td><td>27.04</td></tr><tr><td>GPT-4o-Mini</td><td>15.10</td><td>15.00</td><td>18.67</td></tr><tr><td>GPT-4o</td><td>27.35</td><td>27.04</td><td>26.84</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the pass@1 scores of state-of-the-art large language models on the REPOCOD benchmark under three different retrieval settings.
> <details>
> <summary>read the caption</summary>
> Table 4: Pass@1 of SOTA LLMs on REPOCOD.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Models</td><td colspan="2">BM25</td><td colspan="2">Dense</td><td colspan="2">Current-File</td></tr><tr><td>Pass</td><td>Fail</td><td>Pass</td><td>Fail</td><td>Pass</td><td>Fail</td></tr><tr><td>CodeLlama-7B</td><td>43.6</td><td>16.1</td><td>38.3</td><td>16.8</td><td>25.0</td><td>18.7</td></tr><tr><td>CodeLlama-34B</td><td>51.0</td><td>24.7</td><td>63.3</td><td>22.8</td><td>19.0</td><td>28.9</td></tr><tr><td>DeepSeekCoder-6.7B</td><td>33.8</td><td>8.3</td><td>31.6</td><td>8.6</td><td>16.4</td><td>11.3</td></tr><tr><td>DeepSeekCoder-33B</td><td>72.1</td><td>11.1</td><td>77.6</td><td>9.6</td><td>14.5</td><td>22.4</td></tr><tr><td>OpenCodeInterpreter-6.7B</td><td>1.4</td><td>1.4</td><td>1.4</td><td>1.4</td><td>1.4</td><td>1.4</td></tr><tr><td>OpenCodeInterpreter-33B</td><td>1.4</td><td>0.9</td><td>1.4</td><td>0.9</td><td>1.4</td><td>0.9</td></tr><tr><td>DeepSeek-V2.5</td><td>2.7</td><td>1.6</td><td>2.5</td><td>1.6</td><td>2.9</td><td>1.4</td></tr><tr><td>Claude 3.5 Sonnet</td><td>18.6</td><td>4.0</td><td>21.9</td><td>2.7</td><td>7.8</td><td>5.7</td></tr><tr><td>GPT-4o-Mini</td><td>3.6</td><td>2.7</td><td>3.9</td><td>2.6</td><td>9.9</td><td>1.2</td></tr><tr><td>GPT-4o</td><td>1.3</td><td>1.2</td><td>1.3</td><td>1.2</td><td>2.1</td><td>1.0</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents detailed statistics for instances from each repository, categorized by context complexity types: repository-level, file-level, and self-contained, showing the number of tokens in target function descriptions, number of tokens in canonical solutions, average cyclomatic complexity of the canonical solution, and number of target functions.
> <details>
> <summary>read the caption</summary>
> Table 1: Basic statistics of REPOCOD, with details broken down by each collected repository.
> </details>

{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td>Models</td><td>0</td><td>[0,0.5)</td><td>[0.5,1)</td><td>1</td></tr><tr><td>CodeLlama-7B</td><td>6.05</td><td>0.00</td><td>13.16</td><td>13.27</td></tr><tr><td>CodeLlama-34B</td><td>5.04</td><td>2.50</td><td>21.05</td><td>16.33</td></tr><tr><td>DeepSeekCoder-6.7B</td><td>5.54</td><td>5.00</td><td>13.16</td><td>21.43</td></tr><tr><td>DeepSeekCoder-33B</td><td>7.81</td><td>5.00</td><td>15.79</td><td>25.51</td></tr><tr><td>OpenCodeInterpreter-6.7B</td><td>6.05</td><td>0.00</td><td>15.79</td><td>16.33</td></tr><tr><td>OpenCodeInterpreter-33B</td><td>9.07</td><td>5.00</td><td>15.79</td><td>20.41</td></tr><tr><td>DeepSeek-V2.5</td><td>10.33</td><td>5.00</td><td>18.42</td><td>26.53</td></tr><tr><td>Claude 3.5 Sonnet</td><td>6.55</td><td>5.00</td><td>7.89</td><td>29.59</td></tr><tr><td>GPT-4o-Mini</td><td>6.55</td><td>5.00</td><td>18.42</td><td>26.53</td></tr><tr><td>GPT-4o</td><td>14.61</td><td>7.50</td><td>26.32</td><td>35.71</td></tr></table>{{< /table-caption >}}
> 🔼 The table presents the pass@1 performance of ten state-of-the-art large language models on the REPOCOD benchmark under three different retrieval settings.
> <details>
> <summary>read the caption</summary>
> Table 4: Pass@1 of SOTA LLMs on REPOCOD.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:18px'><tr><td>Repository</td><td>Sparse</td><td>Dense</td></tr><tr><td>astropy</td><td>0.28</td><td>0.25</td></tr><tr><td>datasets</td><td>0.25</td><td>0.33</td></tr><tr><td>flask</td><td>0.30</td><td>0.45</td></tr><tr><td>more-itertools</td><td>0.11</td><td>0.33</td></tr><tr><td>plotly.py</td><td>0.07</td><td>0.42</td></tr><tr><td>pylint</td><td>0.46</td><td>0.46</td></tr><tr><td>scikit-learn</td><td>0.07</td><td>0.05</td></tr><tr><td>seaborn</td><td>0.24</td><td>0.26</td></tr><tr><td>sphinx</td><td>0.06</td><td>0.12</td></tr><tr><td>sympy</td><td>0.22</td><td>0.23</td></tr><tr><td>xarray</td><td>0.12</td><td>0.29</td></tr><tr><td>Total</td><td>0.13</td><td>0.15</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents detailed statistics for instances from each repository, categorized by context complexity types: repository-level, file-level, and self-contained, showing the number of tokens in target function descriptions, number of tokens in canonical solutions, average cyclomatic complexity of the canonical solution, and number of target functions.
> <details>
> <summary>read the caption</summary>
> Table 1: Basic statistics of REPOCOD, with details broken down by each collected repository.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Setting</td><td>pylint</td><td>sympy</td><td>sphinx</td><td>seaborn</td><td>flask</td><td>more-itertools</td><td>scikit-learn</td><td>xarray</td><td>datasets</td><td>plotly.py</td><td>astropy</td><td>Total</td></tr><tr><td>CodeLlama-7B</td><td>7.69</td><td>7.22</td><td>9.09</td><td>23.08</td><td>37.21</td><td>13.95</td><td>5.10</td><td>6.02</td><td>22.03</td><td>6.58</td><td>5.88</td><td>10.41</td></tr><tr><td>CodeLlama-34B</td><td>0.00</td><td>4.12</td><td>18.18</td><td>21.79</td><td>32.56</td><td>24.42</td><td>5.73</td><td>16.87</td><td>18.64</td><td>14.47</td><td>10.59</td><td>12.76</td></tr><tr><td>DeepSeekCoder-6.7B</td><td>7.69</td><td>6.19</td><td>15.15</td><td>26.92</td><td>41.86</td><td>12.79</td><td>6.37</td><td>16.87</td><td>16.95</td><td>25.00</td><td>14.12</td><td>14.08</td></tr><tr><td>DeepSeekCoder-33B</td><td>3.85</td><td>7.22</td><td>27.27</td><td>28.21</td><td>37.21</td><td>11.63</td><td>7.32</td><td>15.66</td><td>33.90</td><td>43.42</td><td>16.47</td><td>17.14</td></tr><tr><td>OpenCodeInterpreter-6.7B</td><td>3.85</td><td>4.12</td><td>12.12</td><td>16.67</td><td>41.86</td><td>18.60</td><td>6.37</td><td>10.84</td><td>16.95</td><td>21.05</td><td>12.94</td><td>12.45</td></tr><tr><td>OpenCodeInterpreter-33B</td><td>11.54</td><td>7.22</td><td>21.21</td><td>20.51</td><td>41.86</td><td>29.07</td><td>8.28</td><td>13.25</td><td>25.42</td><td>23.68</td><td>16.47</td><td>16.33</td></tr><tr><td>Claude 3.5 Sonnet</td><td>19.23</td><td>11.34</td><td>15.15</td><td>25.64</td><td>39.53</td><td>38.37</td><td>6.05</td><td>9.64</td><td>27.12</td><td>36.84</td><td>10.59</td><td>17.45</td></tr><tr><td>DeepSeek-V2.5</td><td>15.38</td><td>13.40</td><td>27.27</td><td>30.77</td><td>41.86</td><td>36.05</td><td>9.87</td><td>16.87</td><td>30.51</td><td>35.53</td><td>16.47</td><td>20.71</td></tr><tr><td>GPT-4o-Mini</td><td>11.54</td><td>11.34</td><td>15.15</td><td>25.64</td><td>39.53</td><td>18.60</td><td>6.05</td><td>10.84</td><td>33.90</td><td>25.00</td><td>9.41</td><td>15.00</td></tr><tr><td>GPT-4o</td><td>19.23</td><td>15.46</td><td>27.27</td><td>37.18</td><td>58.14</td><td>43.02</td><td>13.69</td><td>24.10</td><td>47.46</td><td>44.74</td><td>23.53</td><td>27.04</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents detailed statistics for instances from each repository, categorized by context complexity types, showing the number of tokens in target function descriptions, number of tokens in canonical solutions, average cyclomatic complexity of the canonical solution, and number of target functions.
> <details>
> <summary>read the caption</summary>
> Table 1: Basic statistics of REPOCOD, with details broken down by each collected repository.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21647/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21647/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}