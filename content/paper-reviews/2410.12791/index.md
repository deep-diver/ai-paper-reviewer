---
title: "Context is Key(NMF): Modelling Topical Information Dynamics in Chinese Diaspora Media"
summary: "KeyNMF, a novel topic modeling approach, effectively analyzes information dynamics in Chinese diaspora media, revealing the PRC's potential influence on European elections."
categories: ["AI Generated"]
tags: ["🔖 24-10-16", ]
showSummary: true
date: 2024-10-16
draft: false
---

{{< keyword >}} 2410.12791 {{< /keyword >}}

### TL;DR


{{< lead >}}

This research introduces KeyNMF, a new method for topic modeling that leverages transformer-based contextual embeddings to analyze information dynamics.  It's especially valuable for analyzing text in languages with limited resources like Chinese.  Researchers applied it to five news sites targeting the Chinese diaspora in Europe, focusing on the period leading up to the 2024 European parliamentary elections.  KeyNMF is shown to be more efficient and accurate than previous approaches in analyzing these complex media environments.  The results revealed that information flow within Chinese diaspora media directly correlated with significant political events, highlighting the potential for foreign influence operations.   The study also offers preliminary analysis regarding the effects of the PRC on the elections. This research enhances our ability to quantitatively study information dynamics in large, diverse media datasets, particularly in cross-cultural communications, and aids in understanding how information is used to set specific political agendas.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.12791" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.12791" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers studying information dynamics, particularly within the context of cross-cultural communication and media influence.  It introduces a novel method, KeyNMF, which is highly relevant to the growing field of computational social science and offers significant improvements over existing techniques. The study of Chinese diaspora media, a politically sensitive area, greatly benefits from this innovative approach. This work opens many avenues for future investigation into the complex interplay between media, politics, and culture.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} KeyNMF, a novel topic modeling method, outperforms existing methods in analyzing Chinese-language data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Analysis reveals correlations between information dynamics in Chinese diaspora media and significant political events in Europe. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study highlights the PRC's potential influence on European elections through ethnic Chinese media, using quantitative text analysis. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.12791/figures_8_0.png)

> 🔼 The figure shows the number of new articles collected at each time point for five different Chinese diaspora news sources.
> <details>
> <summary>read the caption</summary>
> Figure 3: The number of new articles collected at each time point for each source. An article is 'new' if it did not appear in the collected set of articles from the previous time point.
> </details>





![](https://ai-paper-reviewer.com/2410.12791/charts_6_0.png)

> 🔼 The chart displays the sensitivity of KeyNMF's performance to the number of keywords used, across multiple metrics and five different news sources.
> <details>
> <summary>read the caption</summary>
> Figure 1: Sensitivity of KeyNMF to the choice of N keywords on multiple metrics and news sources.
> </details>





{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td></td><td colspan="3">chinanews</td><td colspan="3">ihuawen</td><td colspan="3">oushinet</td><td colspan="3">xinozhou</td><td colspan="3">yidali-huarenjie</td></tr><tr><td>Model</td><td>d</td><td>Cin</td><td>Cex</td><td>d</td><td>Cin</td><td>Cex</td><td>d</td><td>Cin</td><td>Cex</td><td>d</td><td>Cin</td><td>Cex</td><td>d</td><td>Cin</td><td>Cex</td></tr><tr><td>KeyNMF</td><td>0.93</td><td>0.29</td><td>0.63</td><td>0.91</td><td>0.17</td><td>0.64</td><td>0.84</td><td>0.23</td><td>0.58</td><td>0.85</td><td>0.26</td><td>0.55</td><td>0.88</td><td>0.52</td><td>0.57</td></tr><tr><td>S3</td><td>0.91</td><td>0.16</td><td>0.47</td><td>0.91</td><td>0.11</td><td>0.47</td><td>0.83</td><td>0.12</td><td>0.54</td><td>0.96</td><td>0.17</td><td>0.55</td><td>0.93</td><td>0.46</td><td>0.52</td></tr><tr><td>Top2Vec</td><td>0.78</td><td>0.14</td><td>0.71</td><td>0.83</td><td>0.10</td><td>0.70</td><td>0.87</td><td>0.12</td><td>0.73</td><td>0.86</td><td>0.14</td><td>0.71</td><td>0.75</td><td>0.46</td><td>0.69</td></tr><tr><td>BERTopic</td><td>0.89</td><td>0.31</td><td>0.52</td><td>0.89</td><td>0.26</td><td>0.50</td><td>0.84</td><td>0.23</td><td>0.50</td><td>0.84</td><td>0.26</td><td>0.52</td><td>0.91</td><td>0.57</td><td>0.51</td></tr><tr><td>CTMcombined</td><td>0.99</td><td>0.27</td><td>0.52</td><td>0.99</td><td>0.23</td><td>0.51</td><td>0.99</td><td>0.21</td><td>0.51</td><td>0.98</td><td>0.25</td><td>0.51</td><td>0.97</td><td>0.54</td><td>0.49</td></tr><tr><td>CTMzeroshot</td><td>0.99</td><td>0.28</td><td>0.53</td><td>0.99</td><td>0.23</td><td>0.50</td><td>0.99</td><td>0.22</td><td>0.50</td><td>1.00</td><td>0.26</td><td>0.51</td><td>0.97</td><td>0.54</td><td>0.51</td></tr><tr><td>NMF</td><td>0.74</td><td>0.27</td><td>0.57</td><td>0.60</td><td>0.18</td><td>0.53</td><td>0.64</td><td>0.18</td><td>0.54</td><td>0.66</td><td>0.18</td><td>0.56</td><td>0.71</td><td>0.49</td><td>0.54</td></tr><tr><td>LDA</td><td>0.61</td><td>0.19</td><td>0.57</td><td>0.53</td><td>0.16</td><td>0.54</td><td>0.41</td><td>0.13</td><td>0.54</td><td>0.48</td><td>0.14</td><td>0.58</td><td>0.57</td><td>0.34</td><td>0.54</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents KeyNMF's performance compared to other topic models on Chinese news datasets, evaluated by diversity, internal and external coherence.
> <details>
> <summary>read the caption</summary>
> Table 1 KeyNMF's performance on Chinese news data against a number of baselines. Topic descriptions were evaluated on diversity (d), internal (Cin) and external (Cex) word embedding coherence.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](https://ai-paper-reviewer.com/2410.12791/figures_17_0.png)

> 🔼 The figure shows the pseudo-probability distributions over time for two topics from the Oushinet news site, focusing on the period before Putin’s state visit to China.
> <details>
> <summary>read the caption</summary>
> Figure 7: The distributions over time for two topics with high pseudo-probabilities before Putin’s state visit to China. These topics are generated by the 10-topic KeyNMF model for Oushinet. Note that the y-axis scale differs for each subplot.
> </details>



![](https://ai-paper-reviewer.com/2410.12791/figures_19_0.png)

> 🔼 The figure shows the pseudo-probability distributions over time for five topics identified by the KeyNMF model during Xi Jinping’s European tour, highlighting changes in topic prominence across different time periods for Oushinet and Xinouzhou news sites.
> <details>
> <summary>read the caption</summary>
> Figure 9: The distributions over time for five topics with high pseudo-probabilities during Xi Jinping’s European tour. These topics are generated by the 10-topic KeyNMF models for Oushinet and Xinouzhou. Note that the y-axis scale differs for each subplot.
> </details>



</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.12791/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.12791/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}