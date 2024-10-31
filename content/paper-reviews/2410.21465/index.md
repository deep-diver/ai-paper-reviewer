---
title: "ShadowKV: KV Cache in Shadows for High-Throughput Long-Context LLM Inference"
summary: "SHADOWKV boosts long-context LLM inference throughput by up to 3.04x by cleverly caching low-rank keys on the GPU and offloading value caches to the CPU, minimizing latency while maintaining accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Carnegie Mellon University",]
showSummary: true
date: 2024-10-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.21465 {{< /keyword >}}
{{< keyword icon="writer" >}} Hanshi Sun et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.21465" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.21465" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Serving long-context Large Language Models (LLMs) efficiently is challenging due to the expanding key-value (KV) cache, which impacts memory and access times. Existing solutions like dynamic sparse attention either don't sufficiently reduce memory usage or introduce significant latency. 

This paper introduces SHADOWKV, a system that addresses these issues. SHADOWKV stores low-rank key caches on the GPU and offloads value caches to the CPU to reduce memory footprint.  It also employs an accurate KV selection strategy to reconstruct minimal sparse KV pairs on-the-fly, minimizing decoding latency. Experiments show that SHADOWKV supports much larger batch sizes and boosts throughput significantly without sacrificing accuracy, achieving up to 6x larger batch sizes and 3.04x throughput improvements on an A100 GPU.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} **SHADOWKV significantly improves the throughput of long-context LLM inference.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} **The method efficiently manages the key-value cache by utilizing low-rank key compression and offloading value caches.** {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} **SHADOWKV demonstrates superior performance on various benchmarks, outperforming other methods while maintaining high accuracy.** {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is crucial for researchers working on large language models (LLMs) and high-throughput inference.**  It addresses the critical challenge of efficiently serving long-context LLMs, a significant hurdle in deploying these powerful models. The proposed method, SHADOWKV, offers a novel approach to enhance performance which can greatly benefit the wider AI community, especially those focused on LLM optimization and deployment.  The research opens exciting avenues for further investigation in dynamic sparse attention, KV cache management, and efficient LLM deployment strategies. 

------
#### Visual Insights







{{< table-caption >}}
<table id='5' style='font-size:14px'><tr><td>Methods</td><td>N-S1</td><td>N-S2</td><td>N-MK1</td><td>N-MK2</td><td>N-MQ</td><td>N-MV</td><td>QA-1</td><td>QA-2</td><td>VT</td><td>FWE</td><td>Avg.</td></tr><tr><td>Llama-3-8B-1M</td><td>100.00</td><td>100.00</td><td>98.96</td><td>98.96</td><td>98.96</td><td>95.57</td><td>75.00</td><td>48.96</td><td>78.54</td><td>71.85</td><td>86.68</td></tr><tr><td>Loki</td><td>18.75</td><td>1.04</td><td>2.08</td><td>0.00</td><td>1.56</td><td>0.78</td><td>4.17</td><td>13.54</td><td>26.04</td><td>25.35</td><td>9.33</td></tr><tr><td>Loki (V only)</td><td>41.67</td><td>6.25</td><td>37.50</td><td>1.04</td><td>8.07</td><td>30.73</td><td>10.42</td><td>19.79</td><td>51.67</td><td>37.50</td><td>24.46</td></tr><tr><td>Quest</td><td>100.00</td><td>100.00</td><td>98.96</td><td>77.08</td><td>97.65</td><td>93.49</td><td>60.42</td><td>50.00</td><td>77.08</td><td>65.63</td><td>82.03</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>100.00</td><td>98.96</td><td>85.42</td><td>97.92</td><td>95.49</td><td>70.83</td><td>46.88</td><td>78.75</td><td>65.63</td><td>83.99</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>97.92</td><td>98.96</td><td>96.88</td><td>95.83</td><td>72.92</td><td>52.08</td><td>81.67</td><td>72.57</td><td>86.88</td></tr><tr><td>GLM-4-9B-1M</td><td>100.00</td><td>100.00</td><td>94.79</td><td>87.50</td><td>99.74</td><td>93.75</td><td>67.71</td><td>55.21</td><td>97.29</td><td>72.22</td><td>86.82</td></tr><tr><td>Loki</td><td>71.88</td><td>27.08</td><td>22.92</td><td>2.08</td><td>9.90</td><td>11.46</td><td>28.13</td><td>27.08</td><td>31.04</td><td>54.17</td><td>28.57</td></tr><tr><td>Loki (V only)</td><td>96.88</td><td>55.21</td><td>56.25</td><td>18.75</td><td>51.04</td><td>50.52</td><td>45.83</td><td>39.58</td><td>72.71</td><td>59.72</td><td>54.65</td></tr><tr><td>Quest</td><td>100.00</td><td>95.83</td><td>90.62</td><td>54.17</td><td>94.01</td><td>76.30</td><td>55.21</td><td>52.08</td><td>95.83</td><td>64.58</td><td>77.86</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>96.88</td><td>93.75</td><td>72.92</td><td>95.83</td><td>83.07</td><td>56.25</td><td>53.13</td><td>96.88</td><td>65.97</td><td>81.47</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>95.83</td><td>83.33</td><td>98.70</td><td>87.76</td><td>69.79</td><td>55.21</td><td>97.50</td><td>68.06</td><td>85.62</td></tr><tr><td>Llama-3.1-8B</td><td>100.00</td><td>100.00</td><td>98.96</td><td>91.67</td><td>98.96</td><td>95.31</td><td>82.29</td><td>47.92</td><td>68.96</td><td>71.18</td><td>85.53</td></tr><tr><td>Loki</td><td>68.75</td><td>32.29</td><td>32.29</td><td>20.83</td><td>42.71</td><td>28.65</td><td>41.67</td><td>33.33</td><td>24.79</td><td>29.86</td><td>35.52</td></tr><tr><td>Loki (V only)</td><td>95.83</td><td>36.46</td><td>57.29</td><td>62.50</td><td>77.86</td><td>70.83</td><td>69.79</td><td>39.58</td><td>35.21</td><td>37.50</td><td>58.29</td></tr><tr><td>Quest</td><td>100.00</td><td>98.96</td><td>97.92</td><td>34.38</td><td>93.49</td><td>88.54</td><td>70.83</td><td>44.79</td><td>65.63</td><td>68.40</td><td>76.29</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>98.96</td><td>98.96</td><td>56.25</td><td>95.83</td><td>90.63</td><td>76.04</td><td>46.88</td><td>66.25</td><td>67.36</td><td>79.72</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>100.00</td><td>83.33</td><td>97.92</td><td>92.19</td><td>81.25</td><td>48.96</td><td>67.08</td><td>64.93</td><td>83.57</td></tr><tr><td>Yi-9B-200K</td><td>100.00</td><td>100.00</td><td>86.46</td><td>62.50</td><td>64.58</td><td>32.55</td><td>44.79</td><td>39.58</td><td>36.87</td><td>89.93</td><td>65.73</td></tr><tr><td>Loki</td><td>34.38</td><td>2.08</td><td>2.08</td><td>0.00</td><td>0.00</td><td>0.52</td><td>22.92</td><td>21.88</td><td>0.00</td><td>25.00</td><td>10.89</td></tr><tr><td>Loki (V only)</td><td>59.38</td><td>11.46</td><td>18.75</td><td>5.21</td><td>4.43</td><td>2.08</td><td>22.92</td><td>31.25</td><td>0.00</td><td>35.07</td><td>19.06</td></tr><tr><td>Quest</td><td>100.00</td><td>98.96</td><td>79.17</td><td>26.04</td><td>56.51</td><td>31.77</td><td>32.29</td><td>31.25</td><td>51.04</td><td>71.88</td><td>57.89</td></tr><tr><td>Quest (V only)</td><td>100.00</td><td>100.00</td><td>80.21</td><td>45.83</td><td>59.37</td><td>31.90</td><td>36.45</td><td>34.37</td><td>53.54</td><td>71.88</td><td>61.36</td></tr><tr><td>SHADOWKV</td><td>100.00</td><td>100.00</td><td>82.29</td><td>67.71</td><td>63.28</td><td>31.51</td><td>43.75</td><td>38.54</td><td>56.04</td><td>72.22</td><td>65.53</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance comparison of various methods (Loki, Quest, and SHADOWKV) on the RULER benchmark with Llama-3.8B-1M, GLM-4-9B-1M, and Llama-3.1-8B models at a sequence length of 128K, showing SHADOWKV's superior accuracy with a 1.56% sparse KV cache budget.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of different models and different methods on RULER [20] evaluated at length of 128K. SHADOWKV outperforms other methods with a 1.56% sparse budget.
> </details>





### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Methods</td><td>NarratQA</td><td>MultiFQA</td><td>HotpotQA</td><td>MuSiQue</td><td>DuRead</td><td>GovRep</td><td>SAMSum</td><td>PassRetr</td><td>LCC</td><td>Avg.</td></tr><tr><td>Llama-3-8B-1M</td><td>18.98</td><td>41.84</td><td>36.79</td><td>21.47</td><td>31.93</td><td>34.18</td><td>35.96</td><td>81.50</td><td>56.07</td><td>39.86</td></tr><tr><td>Loki</td><td>2.26</td><td>10.19</td><td>5.48</td><td>3.16</td><td>12.17</td><td>28.97</td><td>7.84</td><td>40.52</td><td>31.44</td><td>15.78</td></tr><tr><td>Loki (V only)</td><td>3.20</td><td>21.01</td><td>12.41</td><td>3.86</td><td>17.07</td><td>31.24</td><td>16.23</td><td>52.57</td><td>38.10</td><td>21.74</td></tr><tr><td>Quest</td><td>20.13</td><td>36.63</td><td>35.00</td><td>18.14</td><td>24.55</td><td>27.11</td><td>35.63</td><td>79.00</td><td>53.64</td><td>36.65</td></tr><tr><td>Quest (V only)</td><td>17.26</td><td>39.51</td><td>36.78</td><td>18.71</td><td>26.41</td><td>29.49</td><td>35.80</td><td>79.50</td><td>60.05</td><td>38.17</td></tr><tr><td>SHADOWKV</td><td>17.17</td><td>39.73</td><td>38.29</td><td>21.08</td><td>31.77</td><td>31.62</td><td>35.87</td><td>80.00</td><td>63.93</td><td>39.94</td></tr><tr><td>GLM-4-9B-1M</td><td>25.44</td><td>51.09</td><td>58.67</td><td>39.61</td><td>32.04</td><td>29.97</td><td>40.31</td><td>99.00</td><td>58.02</td><td>48.24</td></tr><tr><td>Loki</td><td>5.82</td><td>30.60</td><td>22.73</td><td>9.20</td><td>30.09</td><td>30.35</td><td>22.70</td><td>98.92</td><td>40.77</td><td>32.35</td></tr><tr><td>Loki (V only)</td><td>10.89</td><td>44.97</td><td>45.44</td><td>23.51</td><td>32.07</td><td>30.56</td><td>35.34</td><td>99.50</td><td>50.27</td><td>41.39</td></tr><tr><td>Quest</td><td>23.81</td><td>44.53</td><td>56.41</td><td>35.49</td><td>23.54</td><td>21.73</td><td>37.39</td><td>87.00</td><td>43.80</td><td>41.52</td></tr><tr><td>Quest (V only)</td><td>26.00</td><td>46.32</td><td>57.54</td><td>36.42</td><td>24.58</td><td>24.52</td><td>37.71</td><td>93.50</td><td>46.52</td><td>43.68</td></tr><tr><td>SHADOWKV</td><td>26.50</td><td>51.31</td><td>59.09</td><td>38.87</td><td>32.92</td><td>28.54</td><td>38.70</td><td>96.50</td><td>58.55</td><td>47.89</td></tr><tr><td>Llama-3.1-8B</td><td>31.56</td><td>55.10</td><td>57.65</td><td>29.46</td><td>35.26</td><td>34.45</td><td>29.84</td><td>100.00</td><td>67.31</td><td>48.96</td></tr><tr><td>Loki</td><td>2.31</td><td>18.89</td><td>10.64</td><td>5.47</td><td>19.30</td><td>31.16</td><td>15.91</td><td>94.88</td><td>44.60</td><td>27.02</td></tr><tr><td>Loki (V only)</td><td>3.93</td><td>38.59</td><td>22.85</td><td>12.96</td><td>27.43</td><td>32.22</td><td>26.43</td><td>98.25</td><td>56.11</td><td>35.42</td></tr><tr><td>Quest</td><td>29.70</td><td>49.04</td><td>53.96</td><td>27.18</td><td>27.16</td><td>30.43</td><td>29.85</td><td>98.50</td><td>57.35</td><td>44.80</td></tr><tr><td>Quest (V only)</td><td>30.02</td><td>53.97</td><td>56.39</td><td>27.06</td><td>29.06</td><td>31.65</td><td>30.23</td><td>99.00</td><td>63.89</td><td>46.81</td></tr><tr><td>SHADOWKV</td><td>30.93</td><td>55.20</td><td>57.32</td><td>29.13</td><td>31.85</td><td>32.79</td><td>30.40</td><td>99.50</td><td>66.03</td><td>48.13</td></tr><tr><td>Yi-9B-200K</td><td>13.88</td><td>30.02</td><td>52.46</td><td>28.20</td><td>22.29</td><td>30.25</td><td>19.08</td><td>67.00</td><td>73.50</td><td>37.41</td></tr><tr><td>Loki</td><td>1.63</td><td>2.73</td><td>16.21</td><td>4.87</td><td>4.75</td><td>2.13</td><td>4.95</td><td>0.00</td><td>38.72</td><td>8.44</td></tr><tr><td>Loki (V only)</td><td>1.96</td><td>10.39</td><td>21.31</td><td>7.36</td><td>6.78</td><td>9.15</td><td>10.02</td><td>4.00</td><td>58.75</td><td>14.41</td></tr><tr><td>Quest</td><td>10.57</td><td>25.83</td><td>46.06</td><td>23.04</td><td>17.09</td><td>17.11</td><td>20.59</td><td>50.50</td><td>67.70</td><td>30.94</td></tr><tr><td>Quest (V only)</td><td>14.56</td><td>25.73</td><td>48.73</td><td>24.73</td><td>18.44</td><td>20.83</td><td>20.08</td><td>57.50</td><td>71.13</td><td>33.53</td></tr><tr><td>SHADOWKV</td><td>12.44</td><td>30.82</td><td>52.43</td><td>27.73</td><td>20.79</td><td>29.83</td><td>20.73</td><td>64.00</td><td>72.89</td><td>36.85</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the performance comparison of different methods (SHADOWKV, Loki, Quest) across various Long-Context LLMs on the LongBench benchmark for samples exceeding 4K tokens.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance of various methods on different models with LongBench [4] samples exceeding 4K tokens. SHADOWKV outperforms other methods and maintains the accuracy.
> </details>

{{< table-caption >}}
<table id='5' style='font-size:18px'><tr><td>Methods</td><td>8K</td><td>16K</td><td>32K</td><td>64K</td><td>128K</td><td>256K</td><td>Avg.</td></tr><tr><td>Llama-3-8B-1M w  MInference</td><td>89.92</td><td>88.02</td><td>82.81</td><td>78.45</td><td>78.12</td><td>74.57</td><td>81.98</td></tr><tr><td>SHADOWKV w / MInference</td><td>90.47</td><td>88.12</td><td>83.28</td><td>77.71</td><td>78.32</td><td>74.31</td><td>82.04</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the performance of various methods (Loki, Quest, and SHADOWKV) on the RULER benchmark using different language models at a sequence length of 128K, highlighting SHADOWKV's superior performance with a 1.56% sparse budget.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of different models and different methods on RULER [20] evaluated at length of 128K. SHADOWKV outperforms other methods with a 1.56% sparse budget.
> </details>

{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Model</td><td>Context</td><td>Full Attention</td><td>SHADOWKV</td><td>Gain</td><td>Full Attention (Inf)</td></tr><tr><td rowspan="3">Llama-3-8B-1M (8 KV heads)</td><td>60K</td><td>160.62 (8)</td><td>455.14 (48)</td><td>2.83x</td><td>168.72 (48) / 273.07 (Inf)</td></tr><tr><td>122K</td><td>80.77 (4)</td><td>239.51 (24)</td><td>2.97x</td><td>83.05 (24) / 134.30 (Inf)</td></tr><tr><td>244K</td><td>40.37 (2)</td><td>119.01 (12)</td><td>2.95x</td><td>52.00 (12) / 67.15 (Inf)</td></tr><tr><td rowspan="2">Llama-3.1-8B (8 KV heads)</td><td>60K</td><td>160.93 (8)</td><td>472.77 (48)</td><td>2.94x</td><td>168.72 (48) / 273.07 (Inf)</td></tr><tr><td>122K</td><td>80.78 (4)</td><td>245.90 (24)</td><td>3.04x</td><td>83.05 (24) / 134.30 (Inf)</td></tr><tr><td rowspan="3">GLM-4-9B-1M (4 KV heads)</td><td>60K</td><td>241.05 (12)</td><td>615.89 (50)</td><td>2.56x</td><td>266.24 (50) / 436.91 (Inf)</td></tr><tr><td>122K</td><td>122.67 (6)</td><td>293.40 (25)</td><td>2.39x</td><td>158.83 (25) / 214.87 (Inf)</td></tr><tr><td>244K</td><td>61.13 (3)</td><td>136.51 (12)</td><td>2.23x</td><td>78.84 (12) / 107.44 (Inf)</td></tr><tr><td rowspan="3">Yi-9B-200K (4 KV heads)</td><td>60K</td><td>204.81 (10)</td><td>544.36 (42)</td><td>2.66x</td><td>271.21 (42) / 364.09 (Inf)</td></tr><tr><td>122K</td><td>101.44 (5)</td><td>260.03 (21)</td><td>2.56x</td><td>133.53 (21) / 179.06 (Inf)</td></tr><tr><td>244K</td><td>46.74 (2)</td><td>118.55 (10)</td><td>2.54x</td><td>65.79 (10) / 89.53 (Inf)</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the generation throughput in tokens per second on an A100 GPU for various models and context lengths, comparing full attention with SHADOWKV and showing the throughput gain and theoretical maximum throughput.
> <details>
> <summary>read the caption</summary>
> Table 4: Generation throughput (tokens/s) on an A100. The gray text in brackets denotes batch size.
> </details>

{{< table-caption >}}
<table id='12' style='font-size:14px'><tr><td>Methods</td><td>En.Sum</td><td>En.QA</td><td>En.MC</td><td>En.Dia</td><td>Zh.QA</td><td>Code.Debug</td><td>Math.Find</td><td>Retr.PassKey</td><td>Retr.Num</td></tr><tr><td>Llama-3-8B-1M</td><td>23.05</td><td>18.14</td><td>65.06</td><td>10.50</td><td>12.47</td><td>24.36</td><td>37.14</td><td>100.00</td><td>100.00</td></tr><tr><td>SHADOWKV</td><td>21.50</td><td>17.73</td><td>64.63</td><td>10.50</td><td>12.45</td><td>23.86</td><td>37.43</td><td>100.00</td><td>100.00</td></tr><tr><td>GLM-4-9B-1M</td><td>28.61</td><td>9.25</td><td>68.12</td><td>39.50</td><td>11.77</td><td>30.20</td><td>40.00</td><td>100.00</td><td>100.00</td></tr><tr><td>SHADOWKV</td><td>23.22</td><td>8.48</td><td>68.56</td><td>32.50</td><td>11.27</td><td>30.46</td><td>40.00</td><td>100.00</td><td>100.00</td></tr><tr><td>Llama-3.1-8B</td><td>26.42</td><td>14.48</td><td>66.38</td><td>16.00</td><td>12.92</td><td>21.07</td><td>34.00</td><td>100.00</td><td>99.66</td></tr><tr><td>SHADOWKV</td><td>24.23</td><td>13.83</td><td>66.38</td><td>16.50</td><td>12.76</td><td>21.07</td><td>34.00</td><td>100.00</td><td>94.41</td></tr><tr><td>Yi-9B-200K</td><td>8.88</td><td>10.61</td><td>61.57</td><td>5.50</td><td>13.88</td><td>21.57</td><td>23.71</td><td>100.00</td><td>99.66</td></tr><tr><td>SHADOWKV</td><td>8.92</td><td>10.06</td><td>59.39</td><td>6.00</td><td>13.89</td><td>20.56</td><td>24.29</td><td>100.00</td><td>99.83</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 presents the accuracy of different methods (including SHADOWKV) using different models on the InfiniteBench benchmark.
> <details>
> <summary>read the caption</summary>
> Table 5: Accuracy of different methods with different models on InfiniteBench [65].
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.21465/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.21465/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}