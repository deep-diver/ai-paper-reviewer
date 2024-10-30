---
title: "DyVo: Dynamic Vocabularies for Learned Sparse Retrieval with Entities"
summary: "DyVo boosts learned sparse retrieval by dynamically adding Wikipedia entities to the vocabulary, significantly improving accuracy and relevance in entity-rich datasets."
categories: ["AI Generated"]
tags: ["🔖 24-10-10", ]
showSummary: true
date: 2024-10-10
draft: false
---

{{< keyword >}} 2410.07722 {{< /keyword >}}

### TL;DR


{{< lead >}}

The paper introduces DyVo, a novel method that significantly enhances Learned Sparse Retrieval (LSR) models.  LSR traditionally uses vocabularies from pre-trained transformers, which often fragment entities, hindering accuracy. DyVo overcomes this by dynamically incorporating Wikipedia entities into the LSR vocabulary, creating more comprehensive representations. This involves a 'Dynamic Vocabulary (DyVo) head' that leverages entity embeddings and an innovative entity retrieval component. The retrieval component utilizes a few-shot generative approach using LLMs like Mixtral and GPT-4 to identify relevant entities. Experiments show that DyVo consistently outperforms state-of-the-art baselines across three datasets, highlighting the effectiveness of entity integration in improving retrieval accuracy and relevance.  The researchers also examine different entity embedding methods, showcasing the efficacy of their chosen approach.  Overall, this research provides a valuable contribution to the field of information retrieval, particularly in addressing the challenge of handling entities effectively within LSR frameworks.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.07722" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.07722" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in information retrieval, especially those working on learned sparse retrieval (LSR). It introduces a novel approach to improve LSR by dynamically incorporating entities from Wikipedia, addressing the limitations of traditional word-piece vocabularies. This offers a new avenue for enhancing the accuracy and relevance of search results, impacting various applications such as question answering and document ranking. The few-shot generative entity retrieval method is also a significant contribution, showcasing the potential of LLMs in improving entity retrieval.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} DyVo, a novel method, significantly outperforms existing LSR models by dynamically incorporating Wikipedia entities into the vocabulary. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A few-shot generative approach for entity retrieval is introduced and shows promising results, achieving performance competitive with human annotations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments across three entity-rich datasets consistently demonstrate the effectiveness of DyVo in enhancing retrieval performance across various metrics such as nDCG@10 and R@1000. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](https://ai-paper-reviewer.com/2410.07722/figures_1_0.png)

> 🔼 The figure illustrates how DyVo enhances BERT's word piece vocabulary by incorporating an entity vocabulary to improve query disambiguation in learned sparse retrieval.
> <details>
> <summary>read the caption</summary>
> Figure 1: DyVo augments BERT's word piece vocabulary with an entity vocabulary to help disambiguate a query (or document). Word pieces are in blue and entities are in orange. Darker terms have a higher weight in the sparse representation.
> </details>





![](https://ai-paper-reviewer.com/2410.07722/charts_15_0.png)

> 🔼 The chart shows the number of entities and words in the sparse representation decreasing and increasing, respectively, over training steps.
> <details>
> <summary>read the caption</summary>
> Figure 3: Entity representation collapse during training.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Method</td><td rowspan="2">Reg</td><td colspan="3">TREC Robust04</td><td colspan="3">TREC Core 2018</td><td colspan="3">CODEC</td></tr><tr><td>nDCG@10</td><td>nDCG@20</td><td>R@1k</td><td>nDCG@10</td><td>nDCG @ 20</td><td>R@1k</td><td>nDCG@10</td><td>nDCG@20</td><td>R@1k</td></tr><tr><td colspan="11">Unsupervised sparse retrieval</td></tr><tr><td>BM25</td><td></td><td>39.71</td><td>36.25</td><td>57.18</td><td>30.94</td><td>29.19</td><td>52.19</td><td>37.70</td><td>35.28</td><td>61.25</td></tr><tr><td>BM25 + RM3</td><td></td><td>43.77</td><td>40.64</td><td>64.21</td><td>35.82</td><td>34.79</td><td>60.09</td><td>39.93</td><td>39.96</td><td>65.70</td></tr><tr><td colspan="11">Zero-shot Dense Retrieval</td></tr><tr><td>DistilBERT-dot-v5</td><td></td><td>37.95</td><td>34.97</td><td>52.41</td><td>37.02</td><td>34.60</td><td>54.07</td><td>42.76</td><td>46.67</td><td>60.33</td></tr><tr><td>GTR-T5-base</td><td></td><td>43.79</td><td>39.33</td><td>54.35</td><td>38.81</td><td>36.51</td><td>57.62</td><td>48.42</td><td>54.01</td><td>66.96</td></tr><tr><td>Sentence-T5-base</td><td></td><td>44.06</td><td>39.60</td><td>57.64</td><td>43.18</td><td>39.54</td><td>60.88</td><td>44.22</td><td>32.10</td><td>65.48</td></tr><tr><td colspan="11">Learned Sparse Retrieval</td></tr><tr><td>LSR-w</td><td rowspan="2">1e-3</td><td>40.37</td><td>37.23</td><td>55.66</td><td>34.50</td><td>31.45</td><td>52.66</td><td>39.10</td><td>35.32</td><td>57.58</td></tr><tr><td>DyVo (REL)</td><td>41.52</td><td>38.62</td><td>56.78</td><td>37.50</td><td>34.61</td><td>54.14</td><td>42.67</td><td>38.32</td><td>59.81</td></tr><tr><td>LSR-w</td><td rowspan="2">1e-4</td><td>47.69</td><td>44.48</td><td>64.47</td><td>38.94</td><td>37.37</td><td>60.44</td><td>50.54</td><td>46.71</td><td>66.39</td></tr><tr><td>DyVo (REL)</td><td>48.15</td><td>44.85</td><td>64.72</td><td>43.10</td><td>39.46</td><td>60.43</td><td>51.66</td><td>47.95</td><td>68.49</td></tr><tr><td>LSR-w</td><td rowspan="2">1e-5</td><td>49.13</td><td>46.34</td><td>66.86</td><td>40.99</td><td>38.73</td><td>63.22</td><td>52.61</td><td>49.22</td><td>69.07</td></tr><tr><td>DyVo (REL)</td><td>51.19</td><td>47.65</td><td>68.56</td><td>43.72</td><td>40.56</td><td>63.56</td><td>53.40</td><td>51.15</td><td>70.60</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the results of experiments comparing LSR models with and without linked entities, along with several other baselines, across three datasets using various evaluation metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Results with linked entities. All LSR models use a DistilBERT backbone. DyVo uses entities found by the REL entity linker and LaQue entity embeddings. All documents are truncated to the first 512 tokens.
> </details>



### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td rowspan="2">Method</td><td colspan="3">TREC Robust04</td><td colspan="3">TREC Core 2018</td><td colspan="3">CODEC</td></tr><tr><td>nDCG@10</td><td>nDCG @ 20</td><td>R@1k</td><td>nDCG@10</td><td>nDCG @ 20</td><td>R@1k</td><td>nDCG@10</td><td>nDCG@20</td><td>R@1k</td></tr><tr><td>LSR-w</td><td>49.13</td><td>46.34</td><td>66.86</td><td>40.99</td><td>38.73</td><td>63.22</td><td>52.61</td><td>49.22</td><td>69.07</td></tr><tr><td>DyVo (REL)</td><td>51.19</td><td>47.65</td><td>68.56</td><td>43.72</td><td>40.56</td><td>63.56</td><td>53.40</td><td>51.15</td><td>70.60</td></tr><tr><td>DyVo (BM25)</td><td>51.38</td><td>47.72</td><td>67.74</td><td>42.48</td><td>38.89</td><td>64.58</td><td>53.25</td><td>49.80</td><td>69.83</td></tr><tr><td>DyVo (LaQue)</td><td>49.42</td><td>46.31</td><td>68.25</td><td>40.24</td><td>38.39</td><td>64.83</td><td>53.73</td><td>50.34</td><td>70.87</td></tr><tr><td>DyVo (Mixtral)</td><td>52.97</td><td>49.21</td><td>69.28</td><td>43.80</td><td>41.86</td><td>68.27</td><td>54.90</td><td>52.82</td><td>73.20</td></tr><tr><td>DyVo (GPT4)</td><td>54.39</td><td>50.89</td><td>70.86</td><td>43.06</td><td>42.25</td><td>68.57</td><td>56.46</td><td>53.72</td><td>74.47</td></tr><tr><td>DyVo (Human)</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>-</td><td>56.42</td><td>52.96</td><td>75.13</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 shows the performance comparison of different LSR models with and without linked entities, using various evaluation metrics (nDCG@10, nDCG@20, R@1000) across three datasets (TREC Robust04, TREC Core 2018, CODEC).
> <details>
> <summary>read the caption</summary>
> Table 1: Results with linked entities. All LSR models use a DistilBERT backbone. DyVo uses entities found by the REL entity linker and LaQue entity embeddings. All documents are truncated to the first 512 tokens.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2">Method</td><td rowspan="2">Entity Rep.</td><td colspan="3">TREC Robust04</td><td colspan="3">TREC Core 2018</td><td colspan="3">CODEC</td></tr><tr><td>nDCG@10</td><td>nDCG @ 20</td><td>R@1k</td><td>nDCG @ 10</td><td>nDCG @ 20</td><td>R@1k</td><td>nDCG @ 10</td><td>nDCG @ 20</td><td>R@1k</td></tr><tr><td>LSR-w</td><td>-</td><td>49.13</td><td>46.34</td><td>66.86</td><td>40.99</td><td>38.73</td><td>63.22</td><td>52.61</td><td>49.22</td><td>69.07</td></tr><tr><td>DyVo (GPT4)</td><td>Token Aggr.</td><td>51.35</td><td>48.01</td><td>67.46</td><td>41.63</td><td>39.37</td><td>64.01</td><td>53.44</td><td>50.39</td><td>69.94</td></tr><tr><td>DyVo (GPT4)</td><td>DPR</td><td>48.68</td><td>45.77</td><td>75.21</td><td>40.26</td><td>37.52</td><td>70.81</td><td>53.04</td><td>49.18</td><td>75.19</td></tr><tr><td>DyVo (GPT4)</td><td>JDS</td><td>51.21</td><td>48.38</td><td>73.79</td><td>44.29</td><td>41.86</td><td>70.16</td><td>55.08</td><td>50.93</td><td>73.97</td></tr><tr><td>DyVo (GPT4)</td><td>Wiki2Vec</td><td>54.04</td><td>50.21</td><td>69.85</td><td>44.15</td><td>43.13</td><td>67.77</td><td>56.30</td><td>53.25</td><td>73.03</td></tr><tr><td>DyVo (GPT4)</td><td>LaQue</td><td>54.39</td><td>50.89</td><td>70.86</td><td>43.06</td><td>42.25</td><td>68.57</td><td>56.46</td><td>53.72</td><td>74.47</td></tr><tr><td>DyVo (GPT4)</td><td>BLINK</td><td>55.56</td><td>51.71</td><td>71.81</td><td>44.63</td><td>42.94</td><td>69.11</td><td>58.15</td><td>54.83</td><td>74.72</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents a comparison of different entity embedding techniques within the DyVo model, showing the impact of various embedding methods on different evaluation metrics across three datasets.
> <details>
> <summary>read the caption</summary>
> Table 3: Results with different entity embeddings. All models are trained with a DistilBERT backbone and L1 regularization (weight=1e-5). Entity candidates generated by GPT4 are used on queries for inference.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:14px'><tr><td>Retriever</td><td>Q: "How vital was French support during the American Revolutionary War?" WP : [how, vital, was, french, support, during, the, american, revolutionary, war, ?]</td></tr><tr><td>REL BM25</td><td>[Vitalism, French people, Military logistics, American Revolutionary War] [Richard Howe, 1st Earl Howe, HMS Childers (1778), Robert Howe (Continental Army officer), James Coutts Crawford, Glorious First of June, George Eyre, Jacques-Antoine de Chambarlhac de Laubespin, Anthony James Pye Molloy, Nantucket during the American Revolutionary War era, Friedrich Joseph, Count of Nauendorf, Jonathan Faulknor the elder, Joseph Spear, HMS Romney (1762), HMS Roebuck (1774), France in the American Revolutionary War, Invasion of Corsica (1794), List of British fencible regiments, Northern theater of the American Revolutionary War after Saratoga, Robert Linzee, Guilin Laurent Bizanet]</td></tr><tr><td>LaQue</td><td>[France in the American Revolutionary War, List of French units in the American Revolutionary War, Support our troops, List of wars involving France, List of American Revolutionary War battles, American Volunteers, Colonial American military history, List of battles involving France in modern history, Military history of France, List of the lengths of United States participation in wars, 1776, France and the American Civil War, USS Confederacy (1778), Financial costs of the American Revolutionary War, List of wars involving the United States, List of American Civil War generals (Union), United States assistance to Vietnam, French Revolutionary Wars, American Revolutionary War, List of battles involving France]</td></tr><tr><td>Mixtral</td><td>[American Revolutionary War, France, United States, Military history, Diplomacy, Military alliance]</td></tr><tr><td>GPT4</td><td>[France in the American Revolutionary War, French Army, American Revolutionary War, Benjamin Franklin, Kingdom of France, Treaty of Alliance (1778), George Washington, John Adams, Treaty of Paris (1783), Continental Congress, Continental Army, Naval battles of the American Revolutionary War, Siege of Savannah, Capture of Fort Ticond]</td></tr><tr><td>Human</td><td>[American Revolution, France in the American Revolutionary War, Kingdom of Great Britain, United States, George Washington, Roderigue Hortalez and Company, British Empire, France, George Washington in the American Revolution, Gilbert du Motier, Marquis de Lafayette, Spain and the American Revolutionary War, American Revolutionary War, Diplomacy in the American Revolutionary War, Treaty of Paris (1783), Franco-American alliance, Naval battles of the American Revolutionary War, Treaty of Alliance (1778), Battles of Saratoga]</td></tr><tr><td></td><td>Q: Why are many commentators arguing NFTs are the next big investment category? WP: [why, are, many, commentators, arguing, n, ##ft, ##s, are, the, next, big, investment, category]</td></tr><tr><td>REL</td><td>[Sports commentator, National Film and Television School, Next plc, Toronto, Investment banking, Catego- rization]</td></tr><tr><td>BM25</td><td>[Kuznets swing, The Green Bubble, Why We Get Fat, Big mama, Types of nationalism, Not for Tourists, Mark Roeder, Ernie Awards, Dramatistic pentad, Pagan Theology, RJ Balaji, Leslie Hardcastle, Why didn't you invest in Eastern Poland?, Big Data Maturity Model, Celebrity Big Brother racism controversy, The Bottom Billion, National Film and Television School, Canopy Group, The Wallypug of Why]</td></tr><tr><td>LaQue</td><td>[List of bond market indices, National Futures Association, NB Global, Companies listed on the New York Stock Exchange (N), Companies listed on the New York Stock Exchange (G), Companies listed on the New York Stock Exchange (F), List of exchange-traded funds, Companies listed on the New York Stock Exchange (T), Emerging and growth-leading economies, List of private equity firms, List of wealthiest organizations, Pension investment in private equity, Group of Ten (economics), Companies listed on the New York Stock Exchange (P), List of stock market indices, Lists of corporate assets, Companies listed on the New York Stock Exchange (U), List of public corporations by market capitalization, Net capital outflow, National best bid and offer]</td></tr><tr><td>Mixtral</td><td>[Non-fungible token, Blockchain, Cryptocurrency, Digital art, Ethereum, Value proposition, Art market, CryptoKitties, Investment strategy]</td></tr><tr><td>GPT4</td><td>[Non-fungible token, Cryptocurrency, Bitcoin, Ethereum, Digital art, Blockchain, CryptoKitties, Digital asset, Cryptocurrency bubble, Cryptocurrency exchange, Initial coin offering, Cryptocurrency wallet, Smart contract, Decentralized application, Digital currency]</td></tr><tr><td>Human</td><td>[Cryptocurrency, Public key certificate, Blockchain, Virtual economy, Bitcoin, Speculation, Non-fungible token, Ethereum]</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the results of experiments comparing different LSR models with and without linked entities, showing the impact on retrieval effectiveness using various metrics.
> <details>
> <summary>read the caption</summary>
> Table 1: Results with linked entities. All LSR models use a DistilBERT backbone. DyVo uses entities found by the REL entity linker and LaQue entity embeddings. All documents are truncated to the first 512 tokens.
> </details>

</details>


### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.07722/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.07722/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}