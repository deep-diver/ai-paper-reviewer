---
title: "RARe: Retrieval Augmented Retrieval with In-Context Examples"
summary: "RARE enhances retrieval model accuracy by effectively integrating in-context examples, achieving up to +2.72% nDCG improvement."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Question Answering", "🏢 University of Texas at Austin",]
showSummary: true
date: 2024-10-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.20088 {{< /keyword >}}
{{< keyword icon="writer" >}} Atula Tejaswi et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.20088" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.20088" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Current retrieval methods struggle to leverage in-context examples effectively, limiting performance.  Naively adding examples often hurts performance.  This is a significant limitation because in-context learning dramatically improves performance in other large language models.



The paper introduces RARE, a method to use in-context examples successfully. RARE fine-tunes a pre-trained model with semantically similar queries and their associated documents as examples. This approach consistently improves results on various benchmarks, even demonstrating strong out-of-domain generalization. The work highlights the importance of careful design choices in how in-context examples are used and lays a foundation for further research in this space. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Incorporating in-context examples into retriever models significantly improves performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The proposed method, RARE, is effective across various architectures. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RARE shows stronger out-of-domain generalization compared to traditional methods. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial** because it bridges the gap between in-context learning (successful in LLMs) and retriever models.  By showing how to effectively use in-context examples in retrieval, it advances a widely-used technique and opens new avenues for improving retrieval systems' performance and generalization.

------
#### Visual Insights







{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td colspan="2">Algorithm 1: RARe - Training</td></tr><tr><td colspan="2">Input: Training set D, embedder E( ·), BM25, the number of in-context examples k, mini-batch size B.</td></tr><tr><td colspan="2">1: for each training iteration do</td></tr><tr><td>2:</td><td>Sample mini-batch B of size B from D</td></tr><tr><td>3:</td><td>for (ti, q, d+ , d ) E B do</td></tr><tr><td>4:</td><td>In-Context Example Retrieval:</td></tr><tr><td>5:</td><td>{qi c ic qik } ← Retrieve nearest neighbor queries of q from D using BM25 , 92 , · · · ,</td></tr><tr><td>6:</td><td>2 c+ {d+ : (q', d+ ) E D,q E {qic , · · · , qik }} {d1 c+ dic+ , · · · , d k } ← ,</td></tr><tr><td>7:</td><td>Dic ← {(gic dic+ ) , · . · , (qk, dic+)} ,</td></tr><tr><td>8:</td><td>Query Augmentation:</td></tr><tr><td>9:</td><td>inst+ic {qic}; Document: {dic+} ...; Query: {q} q = Instruct: {ti}; Query:</td></tr><tr><td>10:</td><td>Training with Contrastive Loss:</td></tr><tr><td>11:</td><td>Compute the mini-batch contrastive loss LRARe as described in Equation 5</td></tr><tr><td>12:</td><td>Update E(・) by minimizing LRARe.</td></tr><tr><td colspan="2">Output: Trained embedder E(·)</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance of different models trained from decoder-only checkpoints (LLMs) and their variants on the BeIR and RAR-b benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 1: Training from decoder-only (LLM) checkpoint. Performance is measured by nDCG@10. RARe shows up to +2.72% absolute gain on average over Promptriever, demonstrating that starting from an existing embedding model is not a requirement. We provide a breakdown of In-Domain (ID) and Out-of-Domain (OOD) performance.
> </details>





### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='4' style='font-size:16px'><tr><td rowspan="2">Method</td><td rowspan="2">Base model</td><td rowspan="2">Training Data</td><td>ID</td><td colspan="2">OOD</td><td rowspan="2">Average</td></tr><tr><td>MS-MARCO</td><td>BeIR</td><td>RAR-b</td></tr><tr><td>RepLLaMA</td><td>Llama-2</td><td>MS-MARCO</td><td>42.00</td><td>53.69</td><td>20.23</td><td>38.64</td></tr><tr><td>RepLLaMA</td><td>Llama-3</td><td>MS-MARCO</td><td>43.56</td><td>53.99</td><td>18.50</td><td>38.68</td></tr><tr><td>RARe</td><td>Llama-3</td><td>MS-MARCO</td><td>44.77</td><td>55.87</td><td>22.34</td><td>40.99</td></tr><tr><td>RepLLaMA</td><td>Llama-3.1-Instruct</td><td>MS-MARCO</td><td>43.67</td><td>54.34</td><td>19.20</td><td>39.07</td></tr><tr><td>Promtpriever</td><td>Llama-3.1-Instruct</td><td>MS-MARCO + Synthetic</td><td>42.70</td><td>56.10</td><td>20.95</td><td>39.94</td></tr><tr><td>RARe</td><td>Llama-3.1-Instruct</td><td>MS-MARCO</td><td>42.93</td><td>56.05</td><td>23.67</td><td>40.88</td></tr></table>{{< /table-caption >}}
> 🔼 This table presents the performance of different models trained from decoder-only checkpoints on three retrieval benchmarks (BeIR, RAR-b, and MS-MARCO), showing the effectiveness of the proposed RARe method.
> <details>
> <summary>read the caption</summary>
> Table 1: Training from decoder-only (LLM) checkpoint. Performance is measured by nDCG@10. RARe shows up to +2.72% absolute gain on average over Promptriever, demonstrating that starting from an existing embedding model is not a requirement. We provide a breakdown of In-Domain (ID) and Out-of-Domain (OOD) performance.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td rowspan="3">Method</td><td colspan="4">LLM2Vec-Llama-3-8b-Supervised</td><td colspan="4">E5-Mistral-Instruct</td></tr><tr><td colspan="3">BeIR</td><td rowspan="2">RAR-b</td><td colspan="3">BeIR</td><td rowspan="2">RAR-b</td></tr><tr><td>ID</td><td>OOD</td><td>All</td><td>ID</td><td>OOD</td><td>All</td></tr><tr><td>Base</td><td>71.31</td><td>49.28</td><td>56.63</td><td>21.55</td><td>71.95</td><td>49.33</td><td>56.87</td><td>22.17</td></tr><tr><td>Instruct</td><td>70.46</td><td>47.79</td><td>55.35</td><td>23.44</td><td>72.91</td><td>48.98</td><td>56.96</td><td>24.12</td></tr><tr><td>RARe</td><td>71.67</td><td>49.30</td><td>56.76</td><td>23.10</td><td>72.98</td><td>50.93</td><td>58.28</td><td>25.79</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 shows the performance of different retriever models on BeIR and RAR-b benchmarks after fine-tuning with and without in-context examples.
> <details>
> <summary>read the caption</summary>
> Table 2: Training from retriever checkpoint. Performance (nDCG@10) on BeIR (Thakur et al., 2021) and RAR-b (Xiao et al., 2024) benchmarks when fine-tuning retriever model on E5 dataset. We report a breakdown of performance on In-Domain (ID) and Out-of-Domain (OOD) tasks on BeIR. We consider all RAR-b tasks as OOD.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>k</td><td>Arguana</td><td>CQADupStack</td><td>FiQA2018</td><td>NFCorpus</td><td>SciFact</td><td>Touche2020</td><td>Average</td></tr><tr><td>Instruct (0)</td><td>61.19</td><td>44.82</td><td>57.39</td><td>40.99</td><td>77.28</td><td>29.35</td><td>51.84</td></tr><tr><td>1</td><td>60.47</td><td>46.76</td><td>56.07</td><td>40.67</td><td>81.47</td><td>29.78</td><td>52.54</td></tr><tr><td>3</td><td>62.98</td><td>47.12</td><td>57.08</td><td>40.77</td><td>83.71</td><td>27.12</td><td>53.13</td></tr><tr><td>5</td><td>60.87</td><td>48.46</td><td>57.31</td><td>42.28</td><td>84.79</td><td>28.70</td><td>53.74</td></tr><tr><td>10</td><td>58.85</td><td>48.92</td><td>57.03</td><td>42.24</td><td>87.61</td><td>28.29</td><td>53.82</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the impact of varying the number of in-context examples (k) during both training and evaluation phases on the E5-Mistral-Instruct model's performance across six different datasets.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of the number of in-context examples (k) during training and evaluation. All results are on E5-Mistral-Instruct. In general, performance increases when increasing the number of examples, and the optimal number of examples depends on the task.
> </details>

{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Fine-Tuning</td><td>IC Eval Setting</td><td>ArguAna</td><td>CQA</td><td>FiQA2018</td><td>NFCorpus</td><td>SciFact</td><td>Touche2020</td><td>Average</td></tr><tr><td>Instruct</td><td>-</td><td>61.19</td><td>44.82</td><td>57.39</td><td>40.99</td><td>77.28</td><td>29.35</td><td>51.83</td></tr><tr><td rowspan="5">RARe</td><td>Queries-Only</td><td>58.88</td><td>46.66</td><td>54.44</td><td>41.42</td><td>78.84</td><td>28.09</td><td>51.39</td></tr><tr><td>Doc-Only</td><td>57.54</td><td>48.28</td><td>56.02</td><td>41.62</td><td>79.80</td><td>29.01</td><td>52.05</td></tr><tr><td>Shuffle-NC</td><td>60.17</td><td>45.78</td><td>54.25</td><td>41.17</td><td>80.70</td><td>29.18</td><td>51.88</td></tr><tr><td>Shuffle-C</td><td>58.97</td><td>47.97</td><td>55.98</td><td>41.78</td><td>80.51</td><td>28.97</td><td>52.36</td></tr><tr><td>Regular</td><td>60.87</td><td>48.46</td><td>57.31</td><td>42.28</td><td>84.79</td><td>28.70</td><td>53.74</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 compares the performance of different in-context example formats on the E5-Mistral-Instruct model for various downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: In-Context Format Comparing variants of in-context example format on E5-Mistral-Instruct. Instruct refers to the baseline which does not use any in-context examples.
> </details>

{{< table-caption >}}
<br><table id='6' style='font-size:16px'><tr><td>Training / Eval Setting</td><td>ArguAna</td><td>CQA</td><td>FiQA2018</td><td>NFCorpus</td><td>SciFact</td><td>Touche2020</td><td>Average</td></tr><tr><td>inst+ic RARe-q</td><td>60.87</td><td>48.46</td><td>57.31</td><td>42.28</td><td>84.79</td><td>28.70</td><td>53.74</td></tr><tr><td>inst+ic+neg RARe-q</td><td>61.19</td><td>48.09</td><td>56.89</td><td>41.58</td><td>82.37</td><td>30.51</td><td>53.44</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 shows the impact of adding negative document pairs to the in-context examples on the performance of the E5-Mistral-Instruct model, indicating no performance gains.
> <details>
> <summary>read the caption</summary>
> Table 5: Impact of adding negative documents in the in-context prompt. All results are on E5-Mistral-Instruct. Negative documents (d¯) in the prompt do not enhance performance.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>Dataset</td><td># Corpus</td><td>Eval Setting</td><td>Avg Q len.</td><td>NN</td><td>Query</td><td>Search</td><td>Total</td><td>Inc.</td></tr><tr><td rowspan="2">NFCorpus</td><td rowspan="2">3633</td><td>inst q</td><td>3.3</td><td>0</td><td>3.30</td><td>0.54</td><td>3.84</td><td>-</td></tr><tr><td>inst+ic q</td><td>866.0</td><td>0.20</td><td>152.99</td><td>0.57</td><td>153.76</td><td>40.04x</td></tr><tr><td rowspan="2">FiQA2018</td><td rowspan="2">57638</td><td>inst q</td><td>10.9</td><td>0</td><td>6.92</td><td>7.92</td><td>14.84</td><td>-</td></tr><tr><td>inst+ic q</td><td>1016.6</td><td>0.45</td><td>278.62</td><td>8.83</td><td>287.90</td><td>19.40x</td></tr><tr><td rowspan="2">TRECCOVID</td><td rowspan="2">171332</td><td>inst q inst+ic</td><td>10.6</td><td>0</td><td>1.83</td><td>4.08</td><td>5.91</td><td>、</td></tr><tr><td>q</td><td>722.54</td><td>0.31</td><td>21.78</td><td>4.30</td><td>26.39</td><td>4.47x</td></tr><tr><td rowspan="2">Touche2020</td><td rowspan="2">382545</td><td>inst q</td><td>6.6</td><td>0</td><td>1.42</td><td>9.29</td><td>10.71</td><td>-</td></tr><tr><td>inst+ic q</td><td>1287.8</td><td>0.20</td><td>40.32</td><td>10.50</td><td>51.02</td><td>4.76x</td></tr><tr><td rowspan="2">Quora</td><td rowspan="2">522931</td><td>inst q</td><td>9.5</td><td>0</td><td>113.93</td><td>986.42</td><td>1100.35</td><td>-</td></tr><tr><td>inst+ic q</td><td>129.5</td><td>3.19</td><td>530.33</td><td>982.61</td><td>1516.13</td><td>1.38x</td></tr><tr><td rowspan="2">DBPedia</td><td rowspan="2">4635922</td><td>inst q</td><td>5.5</td><td>0</td><td>36.93</td><td>588.38</td><td>625.31</td><td>-</td></tr><tr><td>inst+ic q</td><td>158.2</td><td>0.19</td><td>46.21</td><td>709.27</td><td>755.67</td><td>1.21x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents the latency breakdown of each stage in the retrieval pipeline for both baseline and in-context settings, showing the impact of in-context examples on processing time across datasets of varying sizes and query lengths.
> <details>
> <summary>read the caption</summary>
> Table 6: Latency breakdown (in seconds) of each stage in the retrieval pipeline for qinst and qinst+ic evaluation settings. # Corpus denote the number of documents and Avg Q len. denote the average number of query tokens split by whitespace. Table 11 in the Appendix provides numbers on additional datasets.
> </details>

{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td rowspan="3">Category</td><td rowspan="3">Dataset</td><td colspan="4">LLM2Vec-Llama-3-8b-Supervised</td><td colspan="4">E5-Mistral-Instruct</td></tr><tr><td>Base</td><td>Instruct</td><td colspan="2">RARe</td><td>Base</td><td>Instruct</td><td colspan="2">RARe</td></tr><tr><td>inst q</td><td>inst q</td><td>inst q</td><td>inst+ic q</td><td>inst q</td><td>inst q</td><td>inst q</td><td>inst+ic q</td></tr><tr><td rowspan="5">ID</td><td>FEVER</td><td>90.20</td><td>88.12</td><td>88.43</td><td>86.62</td><td>87.84</td><td>91.50</td><td>90.18</td><td>90.48</td></tr><tr><td>HotpotQA</td><td>71.76</td><td>72.50</td><td>73.83</td><td>79.09</td><td>75.72</td><td>73.91</td><td>72.18</td><td>75.95</td></tr><tr><td>NQ</td><td>64.21</td><td>63.63</td><td>65.00</td><td>66.13</td><td>63.53</td><td>67.44</td><td>68.15</td><td>67.66</td></tr><tr><td>QuoraRetrieval</td><td>87.16</td><td>87.85</td><td>87.88</td><td>87.63</td><td>89.61</td><td>89.82</td><td>89.59</td><td>88.95</td></tr><tr><td>MSMARCO</td><td>43.24</td><td>40.19</td><td>40.77</td><td>38.88</td><td>43.06</td><td>41.89</td><td>41.88</td><td>41.88</td></tr><tr><td rowspan="10">OOD</td><td>ArguAna</td><td>62.78</td><td>60.51</td><td>59.54</td><td>57.05</td><td>61.65</td><td>61.19</td><td>62.90</td><td>60.87</td></tr><tr><td>ClimateFEVER</td><td>34.27</td><td>34.49</td><td>34.67</td><td>34.73</td><td>38.35</td><td>39.03</td><td>38.99</td><td>37.50</td></tr><tr><td>CQADupStack</td><td>48.25</td><td>49.76</td><td>49.10</td><td>49.93</td><td>42.97</td><td>44.82</td><td>45.57</td><td>48.46</td></tr><tr><td>DBPedia</td><td>48.34</td><td>48.61</td><td>48.41</td><td>49.09</td><td>48.89</td><td>48.92</td><td>49.24</td><td>49.65</td></tr><tr><td>FiQA2018</td><td>55.33</td><td>52.99</td><td>54.26</td><td>52.82</td><td>56.81</td><td>57.39</td><td>56.33</td><td>57.31</td></tr><tr><td>NFCorpus</td><td>41.83</td><td>41.92</td><td>41.61</td><td>41.84</td><td>38.58</td><td>40.99</td><td>41.19</td><td>42.28</td></tr><tr><td>SCIDOCS</td><td>22.96</td><td>23.97</td><td>22.92</td><td>23.35</td><td>16.32</td><td>17.94</td><td>18.71</td><td>20.19</td></tr><tr><td>SciFact</td><td>78.22</td><td>76.89</td><td>77.70</td><td>81.77</td><td>76.42</td><td>77.28</td><td>77.11</td><td>84.79</td></tr><tr><td>Touche2020</td><td>20.50</td><td>22.11</td><td>22.71</td><td>19.54</td><td>26.27</td><td>29.35</td><td>27.56</td><td>28.7</td></tr><tr><td>TRECCOVID</td><td>80.34</td><td>68.37</td><td>78.55</td><td>82.78</td><td>87.03</td><td>72.89</td><td>77.03</td><td>79.58</td></tr><tr><td></td><td>Average</td><td>56.63</td><td>55.35</td><td>56.36</td><td>56.76</td><td>56.87</td><td>56.96</td><td>57.11</td><td>58.28</td></tr></table>{{< /table-caption >}}
> 🔼 Table 7 presents the performance of different retrieval methods (base, instruct, and RARE) on various datasets of the BeIR benchmark, categorized by in-domain and out-of-domain, showing the impact of RARE on both types of data.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance (nDCG@10) on BeIR (Thakur et al., 2021) when fine-tuning retriever model on E5 dataset. We report a breakdown of performance on In-Domain (ID) and Out-of-Domain (OOD) tasks on BeIR.
> </details>

{{< table-caption >}}
<br><table id='4' style='font-size:14px'><tr><td rowspan="3">Dataset</td><td colspan="4">LLM2Vec-Llama-3-8b-Supervised</td><td colspan="4">E5-Mistral-Instruct</td></tr><tr><td rowspan="2">Base inst q</td><td rowspan="2">Instruct inst q</td><td colspan="2">RARe</td><td rowspan="2">Base inst q</td><td rowspan="2">Instruct inst q</td><td colspan="2">RARe</td></tr><tr><td>inst q</td><td>inst+ic q</td><td>inst q</td><td>inst+ic q</td></tr><tr><td>ARC-C</td><td>18.81</td><td>18.77</td><td>18.28</td><td>17.02</td><td>19.00</td><td>20.37</td><td>22.72</td><td>26.44</td></tr><tr><td>�-NLI</td><td>26.59</td><td>27.29</td><td>25.25</td><td>23.66</td><td>26.04</td><td>25.70</td><td>24.19</td><td>23.23</td></tr><tr><td>HellaSwag</td><td>34.32</td><td>34.19</td><td>34.19</td><td>33.29</td><td>35.38</td><td>35.99</td><td>35.07</td><td>36.29</td></tr><tr><td>PIQA</td><td>33.57</td><td>37.07</td><td>38.12</td><td>39.72</td><td>39.80</td><td>39.35</td><td>37.22</td><td>41.35</td></tr><tr><td>Quail</td><td>6.83</td><td>6.06</td><td>5.57</td><td>4.25</td><td>8.40</td><td>10.94</td><td>15.34</td><td>14.69</td></tr><tr><td>SiQA</td><td>6.99</td><td>5.34</td><td>4.39</td><td>4.55</td><td>5.66</td><td>5.45</td><td>5.75</td><td>6.15</td></tr><tr><td>TempReason-L1</td><td>5.24</td><td>5.89</td><td>5.55</td><td>7.87</td><td>3.60</td><td>4.71</td><td>4.55</td><td>4.67</td></tr><tr><td>WinoGrande</td><td>40.02</td><td>52.88</td><td>48.47</td><td>54.44</td><td>39.48</td><td>50.41</td><td>44.26</td><td>53.50</td></tr><tr><td>Average</td><td>21.55</td><td>23.44</td><td>22.48</td><td>23.10</td><td>22.17</td><td>24.12</td><td>23.64</td><td>25.79</td></tr></table>{{< /table-caption >}}
> 🔼 Table 8 presents the performance of different retrieval models on the RAR-b benchmark, comparing the base model, the model with only instructions, and the model augmented with in-context examples.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance on reasoning-focused IR benchmark RAR-b (Xiao et al., 2024) when fine-tuning existing retriever models.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td rowspan="3">Dataset</td><td>Llama2</td><td colspan="2">Llama3</td><td colspan="4">Llama-3.1-Instruct</td></tr><tr><td rowspan="2">RepLLaMA inst q</td><td rowspan="2">RepLLaMA inst q</td><td rowspan="2">RARe inst+ic q</td><td rowspan="2">RepLLaMA inst q</td><td rowspan="2">Promptreiver inst q</td><td colspan="2">RARe</td></tr><tr><td>inst q</td><td>inst+ic q</td></tr><tr><td>ArguAna</td><td>48.60</td><td>52.83</td><td>49.48</td><td>51.38</td><td>58.90</td><td>54.77</td><td>52.83</td></tr><tr><td>ClimateFEVER</td><td>29.30</td><td>32.52</td><td>32.12</td><td>33.13</td><td>29.80</td><td>35.91</td><td>34.24</td></tr><tr><td>CQADupStack</td><td>37.91</td><td>42.59</td><td>42.96</td><td>41.58</td><td>42.18</td><td>42.55</td><td>43.31</td></tr><tr><td>DBPedia</td><td>44.80</td><td>45.62</td><td>45.79</td><td>44.73</td><td>46.00</td><td>45.87</td><td>45.95</td></tr><tr><td>FEVER</td><td>82.90</td><td>81.79</td><td>83.66</td><td>79.22</td><td>85.50</td><td>80.05</td><td>81.84</td></tr><tr><td>FiQA2018</td><td>45.00</td><td>44.31</td><td>47.13</td><td>44.50</td><td>47.20</td><td>44.36</td><td>46.20</td></tr><tr><td>HotpotQA</td><td>68.80</td><td>72.24</td><td>72.72</td><td>70.90</td><td>71.70</td><td>70.55</td><td>74.01</td></tr><tr><td>MSMARCO</td><td>42.00</td><td>43.56</td><td>44.77</td><td>43.67</td><td>42.70</td><td>41.65</td><td>42.93</td></tr><tr><td>NFCorpus</td><td>36.00</td><td>37.73</td><td>39.34</td><td>38.77</td><td>38.50</td><td>38.16</td><td>39.74</td></tr><tr><td>NQ</td><td>63.00</td><td>62.70</td><td>65.96</td><td>61.09</td><td>63.80</td><td>60.92</td><td>65.20</td></tr><tr><td>Quora</td><td>86.00</td><td>88.34</td><td>87.65</td><td>86.84</td><td>87.30</td><td>87.95</td><td>87.65</td></tr><tr><td>SCIDOCS</td><td>16.10</td><td>19.66</td><td>19.45</td><td>19.26</td><td>20.80</td><td>20.02</td><td>19.52</td></tr><tr><td>SciFact</td><td>75.30</td><td>75.02</td><td>77.20</td><td>75.38</td><td>77.50</td><td>74.59</td><td>76.54</td></tr><tr><td>TRECCOVID</td><td>83.90</td><td>83.15</td><td>85.76</td><td>83.15</td><td>84.50</td><td>77.52</td><td>85.30</td></tr><tr><td>Touche2020</td><td>34.10</td><td>27.84</td><td>32.89</td><td>30.77</td><td>31.70</td><td>25.47</td><td>32.38</td></tr><tr><td>Average</td><td>52.91</td><td>53.99</td><td>55.13</td><td>53.62</td><td>55.21</td><td>53.36</td><td>55.18</td></tr></table>{{< /table-caption >}}
> 🔼 Table 9 presents the nDCG@10 scores on the BeIR benchmark for different methods when training is performed only on decoder-only models.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance (nDCG@10) on BeIR when training decoder-only models.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td rowspan="3">Dataset</td><td>Llama2</td><td colspan="2">Llama3</td><td colspan="4">Llama-3.1-Instruct</td></tr><tr><td></td><td></td><td></td><td></td><td>Promptreiver</td><td colspan="2">RARe</td></tr><tr><td>RepLLaMA inst q</td><td>RepLLaMA inst q</td><td>RARe inst+ic q</td><td>RepLLaMA inst q</td><td>inst q</td><td>inst q</td><td>inst+ic q</td></tr><tr><td>ARC-C</td><td>11.79</td><td>11.65</td><td>13.48</td><td>11.68</td><td>14.63</td><td>13.24</td><td>15.02</td></tr><tr><td>�-NLI</td><td>25.40</td><td>24.35</td><td>30.38</td><td>24.96</td><td>24.70</td><td>27.34</td><td>31.58</td></tr><tr><td>HellaSwag</td><td>30.83</td><td>31.47</td><td>30.27</td><td>31.03</td><td>32.57</td><td>31.42</td><td>28.81</td></tr><tr><td>PIQA</td><td>31.56</td><td>32.84</td><td>34.12</td><td>33.42</td><td>34.80</td><td>34.23</td><td>35.59</td></tr><tr><td>Quail</td><td>6.40</td><td>6.21</td><td>5.98</td><td>5.71</td><td>7.80</td><td>6.92</td><td>6.91</td></tr><tr><td>SiQA</td><td>2.82</td><td>2.61</td><td>3.87</td><td>2.75</td><td>3.53</td><td>2.18</td><td>3.14</td></tr><tr><td>TempReason-L1</td><td>1.49</td><td>1.75</td><td>3.61</td><td>2.05</td><td>4.32</td><td>4.84</td><td>6.59</td></tr><tr><td>WinoGrande</td><td>51.58</td><td>37.11</td><td>57.01</td><td>42.01</td><td>45.25</td><td>44.72</td><td>61.69</td></tr><tr><td>Average</td><td>20.23</td><td>18.50</td><td>22.34</td><td>19.20</td><td>20.95</td><td>20.61</td><td>23.67</td></tr></table>{{< /table-caption >}}
> 🔼 Table 10 presents the performance of different models on reasoning-focused retrieval tasks from the RAR-b benchmark when training from decoder-only model checkpoints.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance (nDCG@10) on datasets from RAR-b when training decoder-only models.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:14px'><tr><td>Dataset</td><td># Corpus</td><td>Eval Setting</td><td>Avg Q len.</td><td>NN</td><td>Query</td><td>Search</td><td>Total</td><td>Inc.</td></tr><tr><td rowspan="2">SciFact</td><td rowspan="2">5183</td><td>inst q</td><td>12.5</td><td>0</td><td>4.52</td><td>0.61</td><td>5.13</td><td>-</td></tr><tr><td>inst+ic q</td><td>1250.7</td><td>0.25</td><td>212.35</td><td>0.61</td><td>213.21</td><td>41.56x</td></tr><tr><td rowspan="2">SCIDOCS</td><td rowspan="2">25657</td><td>inst q</td><td>9.4</td><td>0</td><td>11.29</td><td>5.74</td><td>17.03</td><td>-</td></tr><tr><td>inst+ic q</td><td>901.1</td><td>0.67</td><td>354.82</td><td>5.79</td><td>361.28</td><td>21.21x</td></tr><tr><td rowspan="2">CQADupStack</td><td rowspan="2">38100</td><td>inst q</td><td>8.6</td><td>0</td><td>10.80</td><td>10.20</td><td>21.01</td><td>-</td></tr><tr><td>inst+ic q</td><td>678.2</td><td>1.33</td><td>570.04</td><td>10.30</td><td>581.67</td><td>27.69x</td></tr><tr><td rowspan="2">ClimateFEVER</td><td rowspan="2">5416593</td><td>inst q</td><td>20.2</td><td>0</td><td>26.06</td><td>1725.90</td><td>1751.96</td><td>-</td></tr><tr><td>inst+ic q</td><td>831.3</td><td>3.55</td><td>651.76</td><td>1723.84</td><td>2379.15</td><td>1.36x</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 presents a breakdown of the latency of each stage of the retrieval pipeline for both baseline and in-context settings, showing the time required for nearest-neighbor in-context examples, query embeddings, and search.
> <details>
> <summary>read the caption</summary>
> Table 6: Latency breakdown (in seconds) of each stage in the retrieval pipeline for qinst and qinst+ic evaluation settings. # Corpus denote the number of documents and Avg Q len. denote the average number of query tokens split by whitespace. Table 11 in the Appendix provides numbers on additional datasets.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:18px'><tr><td></td><td></td><td colspan="5"># Examples</td></tr><tr><td>Dataset</td><td>Instruct (0)</td><td>0</td><td>1</td><td>3</td><td>5</td><td>10</td></tr><tr><td>ArguAna</td><td>61.19</td><td>62.90</td><td>61.24</td><td>60.99</td><td>61.18</td><td>60.37</td></tr><tr><td>ClimateFEVER</td><td>39.03</td><td>38.99</td><td>38.27</td><td>37.97</td><td>37.50</td><td>37.67</td></tr><tr><td>CQADupStack</td><td>44.82</td><td>45.57</td><td>47.49</td><td>48.33</td><td>48.46</td><td>48.48</td></tr><tr><td>DBPedia</td><td>48.92</td><td>49.24</td><td>49.79</td><td>48.34</td><td>49.65</td><td>49.82</td></tr><tr><td>FiQA2018</td><td>57.39</td><td>56.33</td><td>57.61</td><td>57.42</td><td>57.31</td><td>57.38</td></tr><tr><td>NFCorpus</td><td>40.99</td><td>41.19</td><td>41.48</td><td>42.10</td><td>42.28</td><td>42.29</td></tr><tr><td>SCIDOCS</td><td>17.94</td><td>18.71</td><td>19.83</td><td>20.17</td><td>20.19</td><td>20.20</td></tr><tr><td>SciFact</td><td>77.28</td><td>77.11</td><td>83.56</td><td>84.45</td><td>84.79</td><td>85.12</td></tr><tr><td>Touche2020</td><td>29.35</td><td>27.56</td><td>27.53</td><td>27.70</td><td>28.70</td><td>30.77</td></tr><tr><td>TRECCOVID</td><td>72.89</td><td>77.03</td><td>76.96</td><td>78.99</td><td>79.58</td><td>78.77</td></tr><tr><td>Average</td><td>48.98</td><td>49.46</td><td>50.38</td><td>50.65</td><td>50.96</td><td>51.09</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 shows the impact of varying the number of in-context examples used during both training and evaluation on the performance of the E5-Mistral-Instruct model across different datasets.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of the number of in-context examples (k) during training and evaluation. All results are on E5-Mistral-Instruct. In general, performance increases when increasing the number of examples, and the optimal number of examples depends on the task.
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:16px'><tr><td></td><td></td><td colspan="5"># Examples</td></tr><tr><td>Dataset</td><td>Instruct (0)</td><td>0</td><td>1</td><td>3</td><td>5</td><td>10</td></tr><tr><td>Arguana</td><td>61.19</td><td>62.90</td><td>60.47</td><td>62.98</td><td>60.87</td><td>58.85</td></tr><tr><td>ClimateFEVER</td><td>39.03</td><td>38.99</td><td>37.94</td><td>36.45</td><td>37.50</td><td>36.54</td></tr><tr><td>CQADupStack</td><td>44.82</td><td>45.57</td><td>46.76</td><td>47.12</td><td>48.46</td><td>48.92</td></tr><tr><td>DBPedia</td><td>48.92</td><td>49.24</td><td>47.70</td><td>49.05</td><td>49.65</td><td>47.95</td></tr><tr><td>FiQA2018</td><td>57.39</td><td>56.33</td><td>56.07</td><td>57.08</td><td>57.31</td><td>57.03</td></tr><tr><td>NFCorpus</td><td>40.99</td><td>41.19</td><td>40.67</td><td>40.77</td><td>42.28</td><td>42.24</td></tr><tr><td>SCIDOCS</td><td>17.94</td><td>18.71</td><td>20.01</td><td>19.28</td><td>20.19</td><td>21.54</td></tr><tr><td>SciFact</td><td>77.28</td><td>77.11</td><td>81.47</td><td>83.71</td><td>84.79</td><td>87.61</td></tr><tr><td>Touche2020</td><td>29.35</td><td>27.56</td><td>29.78</td><td>27.12</td><td>28.70</td><td>28.29</td></tr><tr><td>TRECCOVID</td><td>72.89</td><td>77.03</td><td>78.95</td><td>73.25</td><td>79.58</td><td>86.11</td></tr><tr><td>Average</td><td>48.98</td><td>49.46</td><td>50.18</td><td>48.83</td><td>51.11</td><td>53.16</td></tr></table>{{< /table-caption >}}
> 🔼 Table 13 shows the impact of varying the number of in-context examples during training and inference on the performance of the E5-Mistral-Instruct model across multiple datasets.
> <details>
> <summary>read the caption</summary>
> Table 13: Impact of the number of in-context examples (k) during training and inference. All results are on E5-Mistral-Instruct. In general, performance increases when increasing the number of examples, and the optimal number of in-context examples can vary by task.
> </details>

{{< table-caption >}}
<br><table id='1' style='font-size:16px'><tr><td></td><td>Instruct</td><td colspan="5">RARe</td></tr><tr><td>Dataset</td><td>-</td><td>Query-Only</td><td>Doc-only</td><td>Shuffle-NC</td><td>Shuffle-C</td><td>Regular</td></tr><tr><td>ArguAna</td><td>61.19</td><td>57.36</td><td>60.35</td><td>55.64</td><td>60.49</td><td>60.87</td></tr><tr><td>ClimateFEVER</td><td>39.03</td><td>38.35</td><td>38.32</td><td>37.44</td><td>37.84</td><td>37.50</td></tr><tr><td>CQADupStack</td><td>44.82</td><td>39.56</td><td>48.43</td><td>47.70</td><td>48.27</td><td>48.46</td></tr><tr><td>DBPedia</td><td>48.92</td><td>49.14</td><td>49.69</td><td>49.72</td><td>50.04</td><td>49.65</td></tr><tr><td>FiQA2018</td><td>57.39</td><td>55.67</td><td>56.85</td><td>56.64</td><td>57.41</td><td>57.31</td></tr><tr><td>NFCorpus</td><td>40.99</td><td>41.00</td><td>42.09</td><td>42.02</td><td>41.92</td><td>42.28</td></tr><tr><td>SCIDOCS</td><td>17.94</td><td>19.06</td><td>20.06</td><td>19.98</td><td>20.25</td><td>20.19</td></tr><tr><td>SciFact</td><td>77.28</td><td>77.46</td><td>81.88</td><td>81.51</td><td>82.20</td><td>84.79</td></tr><tr><td>Touche2020</td><td>29.35</td><td>27.04</td><td>29.02</td><td>28.60</td><td>29.31</td><td>28.70</td></tr><tr><td>TRECCOVID</td><td>72.89</td><td>75.11</td><td>79.97</td><td>79.07</td><td>80.03</td><td>79.58</td></tr><tr><td>Average</td><td>48.98</td><td>47.98</td><td>50.67</td><td>49.83</td><td>50.78</td><td>50.93</td></tr></table>{{< /table-caption >}}
> 🔼 This table compares the performance of different in-context example formats during inference only on the E5-Mistral-Instruct model, showing the impact of various query augmentation strategies on retrieval tasks.
> <details>
> <summary>read the caption</summary>
> Table 14: In-Context Format Comparing variants of in-context example format on E5-Mistral-Instruct during inference only. Training is done with the Regular format. Instruct refers to the baseline which does not use any in-context examples.
> </details>

{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td></td><td>Instruct</td><td colspan="5">RARe</td></tr><tr><td>Dataset</td><td>-</td><td>Query-Only</td><td>Doc-Only</td><td>Shuffle-NC</td><td>Shuffle-C</td><td>Regular</td></tr><tr><td>ArguAna</td><td>61.19</td><td>58.88</td><td>57.54</td><td>60.17</td><td>58.97</td><td>60.87</td></tr><tr><td>ClimateFEVER</td><td>39.03</td><td>36.21</td><td>35.59</td><td>30.83</td><td>35.71</td><td>37.50</td></tr><tr><td>CQADupStack</td><td>44.82</td><td>46.66</td><td>48.28</td><td>45.78</td><td>47.97</td><td>48.46</td></tr><tr><td>DBPedia</td><td>48.92</td><td>49.98</td><td>49.08</td><td>50.93</td><td>50.24</td><td>49.65</td></tr><tr><td>FiQA2018</td><td>57.39</td><td>54.44</td><td>56.02</td><td>54.25</td><td>55.98</td><td>57.31</td></tr><tr><td>NFCorpus</td><td>40.99</td><td>41.42</td><td>41.62</td><td>41.17</td><td>41.78</td><td>42.28</td></tr><tr><td>SCIDOCS</td><td>17.94</td><td>20.04</td><td>20.12</td><td>20.35</td><td>20.11</td><td>20.19</td></tr><tr><td>SciFact</td><td>77.28</td><td>78.84</td><td>79.80</td><td>80.70</td><td>80.51</td><td>84.79</td></tr><tr><td>Touche2020</td><td>29.35</td><td>28.09</td><td>29.01</td><td>29.18</td><td>28.97</td><td>28.70</td></tr><tr><td>TRECCOVID</td><td>72.89</td><td>79.54</td><td>83.29</td><td>82.14</td><td>82.97</td><td>79.58</td></tr><tr><td>Average</td><td>48.98</td><td>49.41</td><td>50.04</td><td>49.55</td><td>50.32</td><td>50.93</td></tr></table>{{< /table-caption >}}
> 🔼 Table 14 shows the impact of different in-context example formats on retrieval performance when only modifying the query at inference time, holding the training format constant.
> <details>
> <summary>read the caption</summary>
> Table 14: In-Context Format Comparing variants of in-context example format on E5-Mistral-Instruct during inference only. Training is done with the Regular format. Instruct refers to the baseline which does not use any in-context examples.
> </details>

{{< table-caption >}}
<br><table id='5' style='font-size:14px'><tr><td>Training</td><td>Eval</td><td>NQ</td><td>Quora</td><td>NFCorpus</td><td>SciFact</td><td>SCIDOCS</td><td>FiQA2018</td><td>CQA</td><td>Average</td></tr><tr><td>RepLLaMA-q inst</td><td>inst q</td><td>62.70</td><td>88.34</td><td>37.73</td><td>75.02</td><td>19.66</td><td>44.31</td><td>42.59</td><td>52.91</td></tr><tr><td rowspan="2">inst+ic RARe-q</td><td>inst q</td><td>39.64</td><td>88.39</td><td>35.42</td><td>74.52</td><td>21.04</td><td>30.44</td><td>37.74</td><td>46.74</td></tr><tr><td>inst+ic q</td><td>65.19</td><td>86.79</td><td>38.87</td><td>78.41</td><td>19.70</td><td>46.58</td><td>43.75</td><td>54.18</td></tr><tr><td rowspan="2">inst inst+ic RARe-q + q</td><td>inst q inst+ic</td><td>63.68</td><td>87.84</td><td>38.06</td><td>76.07</td><td>20.11</td><td>46.02</td><td>42.99</td><td>53.54</td></tr><tr><td>q</td><td>65.96</td><td>87.65</td><td>39.34</td><td>77.20</td><td>19.45</td><td>47.13</td><td>42.96</td><td>54.24</td></tr></table>{{< /table-caption >}}
> 🔼 The table shows the performance of different training methods (using various combinations of instruction-only queries and in-context example queries) on the BeIR benchmark when starting from decoder-only LLMs.
> <details>
> <summary>read the caption</summary>
> Table 16: Performance (nDCG@10) on datasets from the BeIR benchmark Thakur et al., 2021 when training decoder-only model (Llama3). Applying RARE with only in-context examples can lead to degradation of performance in the zero-shot setting (qinst), but this is easily mitigated my including a mixture of qinst and qinst+ic data (30% and 70%) respectively.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.20088/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.20088/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}