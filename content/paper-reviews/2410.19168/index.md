---
title: "MMAU: A Massive Multi-Task Audio Understanding and Reasoning Benchmark"
summary: "MMAU benchmark challenges multimodal LLMs with diverse audio tasks, revealing significant gaps in current audio understanding capabilities and driving future advancements."
categories: ["AI Generated"]
tags: ["🔖 24-10-24", "🤗 24-10-28"]
showSummary: true
date: 2024-10-24
draft: false
---

### TL;DR


{{< lead >}}

The research introduces MMAU, a new benchmark for evaluating advanced audio understanding and reasoning capabilities in large audio-language models (LALMs).  MMAU features 10,000 meticulously curated audio clips paired with questions and answers, covering 27 distinct skills across three domains: speech, music, and environmental sounds. Evaluation of 18 open-source and proprietary models reveals that even the most advanced LALMs struggle to achieve high accuracy (around 53%), highlighting significant room for improvement.  The analysis of model responses reveals that current models often struggle with perceptual understanding and complex reasoning tasks. MMAU's comprehensiveness and difficulty are expected to significantly advance research in audio-language understanding.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.19168" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.19168" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in audio-language modeling because it introduces MMAU, a comprehensive benchmark for evaluating advanced audio understanding and reasoning. MMAU addresses the limitations of existing benchmarks by including complex tasks that require expert-level knowledge and reasoning, pushing the boundaries of current models and paving the way for future improvements. The detailed analysis of model performance and error types provided in the paper offers valuable insights for researchers to identify areas for improvement in their models and guide future research directions.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MMAU, a new benchmark, comprehensively evaluates multimodal audio understanding and reasoning capabilities of LLMs across speech, music, and sounds. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current state-of-the-art models achieve only around 53% accuracy on MMAU, indicating substantial room for improvement. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MMAU's analysis reveals key challenges, such as perceptual errors and limitations in complex reasoning, guiding future research towards more robust models. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 The figure illustrates the MMAU benchmark's comprehensive coverage across speech, sound, and music domains, highlighting its diverse audio samples and challenging tasks for multimodal LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the MMAU Benchmark. MMAU provides comprehensive coverage across three key domains: speech, sounds, and music, featuring diverse audio samples. It challenges multimodal LLMs with tasks across 27 distinct skills, requiring advanced audio perception, reasoning, and domain-specific knowledge.
> </details>





![](charts/charts_4_0.png)

> 🔼 The chart displays the distribution of skills required for information extraction and reasoning questions across three audio domains (speech, sound, and music) in the MMAU benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: (Left) Distribution of skills required for information extraction questions in the MMAU benchmark across the domains of sound, speech, and music. (Right) Distribution of skills required for reasoning questions in the MMAU benchmark across the same domains. Each question in MMAU demands the model to apply one or more of these skills to generate a reliable and accurate response. Appendix H provides example questions demanding these skills and the specific tasks associated with them. This chart underscores the diverse cognitive abilities necessary for success in the benchmark, mirroring the complexity and expert-level reasoning involved.
> </details>





{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Benchmark</td><td rowspan="2">Size</td><td colspan="3">Domain</td><td colspan="3">Tasks</td><td rowspan="2">Expert Comments</td><td rowspan="2">Difficulty Level</td></tr><tr><td>Speech</td><td>Sound</td><td>Music</td><td>Info</td><td>Extraction</td><td>Reasoning</td></tr><tr><td>CompA</td><td>600</td><td></td><td></td><td></td><td>0</td><td>0.6k</td><td>(</td><td>Requires only sound event sequence understanding. Limited in reasoning depth and knowledge scope.</td><td>2.0</td></tr><tr><td>CompA-R</td><td>1.5k</td><td>X</td><td></td><td></td><td>0</td><td>1.5k</td><td></td><td>Restricted to sounds and only contextual event understanding. Limited in knowledge scope.</td><td>3.0</td></tr><tr><td>- MuChin</td><td>1k</td><td>X</td><td>x</td><td></td><td>0</td><td>x 0</td><td>x</td><td>Restricted to music with minimal reasoning depth. Limited in knowledge scope.</td><td>2.5</td></tr><tr><td>· MusicBench</td><td>0.4k</td><td></td><td></td><td></td><td>0</td><td>x 0</td><td>x</td><td>Restricted to music with minimal reasoning depth. Limited in knowledge scope.</td><td>2.5</td></tr><tr><td>- MuChoMusic</td><td>1.2k</td><td></td><td></td><td></td><td>0.7k</td><td>0.4k</td><td></td><td>Restricted to music with open-ended answers. Limited in knowledge scope.</td><td>3.5</td></tr><tr><td>- OpenASQA</td><td>8.8k</td><td></td><td></td><td>X</td><td>8.8k</td><td>0</td><td>x</td><td>Requires limited acoustic scene understanding. Does not require external or expert knowledge.</td><td>3.0</td></tr><tr><td>AudioBench</td><td>100k+</td><td></td><td></td><td></td><td>5k</td><td>0</td><td>x</td><td>Basic acoustic information retrieval with minimal reasoning depth and complexity. Does not require external or expert knowledge.</td><td>3.5</td></tr><tr><td>AIR-Bench</td><td>19k</td><td></td><td></td><td></td><td>1.2k</td><td>0.8k</td><td>V</td><td>Basic acoustic information retrieval with minimal reasoning depth and complexity. Does not require external or expert knowledge.</td><td>2.5</td></tr><tr><td>MMAU (ours)</td><td>10K</td><td>(</td><td>V</td><td>V</td><td>3.5k</td><td>V 6.5k</td><td>V</td><td>Requires fine-grained audio understanding with expert-level, multi-step reasoning and specialized knowledge across a broad range of topics.</td><td>4.5</td></tr></table>{{< /table-caption >}}

> 🔼 Table 2 compares MMAU with other audio understanding and reasoning benchmarks across various metrics, highlighting MMAU's superior coverage of domains and complex reasoning tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison of MMAU with existing audio understanding and reasoning benchmarks across various statistics. MMAU covers all three domains—speech, sound, and music—while having the highest number of information extraction and complex reasoning tasks.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_2_0.png)

> 🔼 Figure 1 provides a visual overview of the MMAU benchmark, highlighting its comprehensive coverage of speech, sounds, and music domains, and the diverse skills it assesses in multimodal LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the MMAU Benchmark. MMAU provides comprehensive coverage across three key domains: speech, sounds, and music, featuring diverse audio samples. It challenges multimodal LLMs with tasks across 27 distinct skills, requiring advanced audio perception, reasoning, and domain-specific knowledge.
> </details>



![](figures/figures_4_0.png)

> 🔼 The figure shows the distribution of skills required for information extraction and reasoning questions in the MMAU benchmark across three audio domains: speech, sound, and music.
> <details>
> <summary>read the caption</summary>
> Figure 3: (Left) Distribution of skills required for information extraction questions in the MMAU benchmark across the domains of sound, speech, and music. (Right) Distribution of skills required for reasoning questions in the MMAU benchmark across the same domains. Each question in MMAU demands the model to apply one or more of these skills to generate a reliable and accurate response. Appendix H provides example questions demanding these skills and the specific tasks associated with them. This chart underscores the diverse cognitive abilities necessary for success in the benchmark, mirroring the complexity and expert-level reasoning involved.
> </details>



![](figures/figures_5_0.png)

> 🔼 The figure illustrates the seven-step pipeline used to create the MMAU benchmark, starting from source selection and ending with expert review of the final dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: MMAU Benchmark Construction Pipeline.
> </details>



![](figures/figures_5_1.png)

> 🔼 Figure 1 shows a conceptual overview of the MMAU benchmark, highlighting its coverage of various audio domains (speech, sounds, music) and the diverse tasks involved, emphasizing its complexity and the advanced skills required for successful model performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the MMAU Benchmark. MMAU provides comprehensive coverage across three key domains: speech, sounds, and music, featuring diverse audio samples. It challenges multimodal LLMs with tasks across 27 distinct skills, requiring advanced audio perception, reasoning, and domain-specific knowledge.
> </details>



![](figures/figures_32_0.png)

> 🔼 The figure shows a schematic overview of the MMAU benchmark, illustrating its comprehensive coverage of audio domains (speech, sounds, music), diverse task types, and the evaluation of multimodal LLMs across various skills.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of the MMAU Benchmark. MMAU provides comprehensive coverage across three key domains: speech, sounds, and music, featuring diverse audio samples. It challenges multimodal LLMs with tasks across 27 distinct skills, requiring advanced audio perception, reasoning, and domain-specific knowledge.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_8_0.png "🔼 Figure 5: Performance comparison on the MMAU test with Gaussian noise replacing the original audio. Models like MuLLaMa and SALMONN show little change in performance, indicating limited reliance on audio input, while others show a significant drop, suggesting greater audio dependence.")

> 🔼 The chart compares the performance of various models on the MMAU test when the original audio input is replaced with random Gaussian noise, showing that some models rely less on the audio input than others.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance comparison on the MMAU test with Gaussian noise replacing the original audio. Models like MuLLaMa and SALMONN show little change in performance, indicating limited reliance on audio input, while others show a significant drop, suggesting greater audio dependence.
> </details>


![](charts/charts_9_0.png "🔼 Figure 7: Distribution of human-annotated error types across 500 instances for Qwen2-Audio-Instruct (Left) and Gemini Pro v1.5 (Right). Appendix K provides detailed definitions of each error type.")

> 🔼 The chart shows the distribution of error types made by the Qwen2-Audio-Instruct and Gemini Pro v1.5 models across 500 instances, indicating that perceptual errors are the dominant type for both models.
> <details>
> <summary>read the caption</summary>
> Figure 7: Distribution of human-annotated error types across 500 instances for Qwen2-Audio-Instruct (Left) and Gemini Pro v1.5 (Right). Appendix K provides detailed definitions of each error type.
> </details>


![](charts/charts_9_1.png "🔼 Figure 6: Accuracy distribution for Gemini Pro across easy, medium, and hard questions, categorized by skill type. The graph highlights how LALMs excel in some skills across all difficulty levels (e.g., Phonemic Stress Pattern Analysis) but struggle with others (e.g., Temporal Reasoning) regardless of difficulty.")

> 🔼 The radar chart visualizes the performance of Gemini Pro across different skill categories (x-axis) and difficulty levels (color-coded lines) in the MMAU benchmark, showing varying proficiency across skills regardless of difficulty.
> <details>
> <summary>read the caption</summary>
> Figure 6: Accuracy distribution for Gemini Pro across easy, medium, and hard questions, categorized by skill type. The graph highlights how LALMs excel in some skills across all difficulty levels (e.g., Phonemic Stress Pattern Analysis) but struggle with others (e.g., Temporal Reasoning) regardless of difficulty.
> </details>


![](charts/charts_21_0.png "🔼 Figure 3: (Left) Distribution of skills required for information extraction questions in the MMAU benchmark across the domains of sound, speech, and music. (Right) Distribution of skills required for reasoning questions in the MMAU benchmark across the same domains. Each question in MMAU demands the model to apply one or more of these skills to generate a reliable and accurate response. Appendix H provides example questions demanding these skills and the specific tasks associated with them. This chart underscores the diverse cognitive abilities necessary for success in the benchmark, mirroring the complexity and expert-level reasoning involved.")

> 🔼 The chart shows the distribution of skills required for information extraction and reasoning questions across three audio domains (speech, sound, and music) in the MMAU benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: (Left) Distribution of skills required for information extraction questions in the MMAU benchmark across the domains of sound, speech, and music. (Right) Distribution of skills required for reasoning questions in the MMAU benchmark across the same domains. Each question in MMAU demands the model to apply one or more of these skills to generate a reliable and accurate response. Appendix H provides example questions demanding these skills and the specific tasks associated with them. This chart underscores the diverse cognitive abilities necessary for success in the benchmark, mirroring the complexity and expert-level reasoning involved.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="2">Models</td><td rowspan="2">Size</td><td rowspan="2" colspan="3">{So, Mu, Sp}</td><td colspan="2">Sound</td><td colspan="2">Music</td><td colspan="2">Speech</td><td colspan="2">Avg</td></tr><tr><td>Test-mini</td><td>Test</td><td>Test-mini</td><td>Test</td><td>Test-mini</td><td>Test</td><td>Test-mini</td><td>Test</td></tr><tr><td>Random Guess</td><td>-</td><td></td><td>-</td><td></td><td>26.72</td><td>25.73</td><td>24.55</td><td>26.53</td><td>26.72</td><td>25.50</td><td>26.00</td><td>25.92</td></tr><tr><td>Most Frequent Choice</td><td>-</td><td></td><td>-</td><td></td><td>27.02</td><td>25.73</td><td>20.35</td><td>23.73</td><td>29.12</td><td>30.33 </td><td>25.50</td><td>26.50</td></tr><tr><td>Human (test-mini)</td><td>-</td><td></td><td>-</td><td></td><td>86.31</td><td>-</td><td>78.22</td><td>-</td><td>82.17</td><td>-</td><td>82.23</td><td>-</td></tr><tr><td colspan="13">Large Audio Language Models (LALMs)</td></tr><tr><td>Pengi</td><td>323M</td><td></td><td></td><td>x</td><td>06.10</td><td>08.00</td><td>02.90</td><td>03.05</td><td>01.20</td><td>01.50</td><td>03.40</td><td>04.18</td></tr><tr><td>Audio Flamingo Chat</td><td>2.2B</td><td>V</td><td>V</td><td>x</td><td>23.42</td><td>28.26</td><td>15.26</td><td>18.20</td><td>11.41</td><td>10.16</td><td>16.69</td><td>18.87</td></tr><tr><td>LTU</td><td>7B</td><td>V</td><td>V</td><td>x</td><td>22.52</td><td>25.86</td><td>09.69</td><td>12.83</td><td>17.71</td><td>16.37</td><td>16.89</td><td>18.51</td></tr><tr><td>LTU AS</td><td>7B</td><td>V</td><td>V</td><td>V</td><td>23.35</td><td>24.96</td><td>9.10</td><td>10.46</td><td>20.60</td><td>21.30</td><td>17.68</td><td>18.90</td></tr><tr><td>MusiLingo</td><td>7B</td><td>x</td><td>V</td><td>x</td><td>23.12</td><td>27.76</td><td>03.96</td><td>06.00</td><td>05.88</td><td>06.42</td><td>10.98</td><td>13.39</td></tr><tr><td>MuLLaMa</td><td>7B</td><td>x</td><td>V</td><td>x</td><td>40.84</td><td>44.80</td><td>32.63</td><td>30.63</td><td>22.22</td><td>16.56</td><td>31.90</td><td>30.66</td></tr><tr><td>M2UGen</td><td>7B</td><td>x</td><td>V</td><td>x</td><td>03.60</td><td>03.69</td><td>32.93</td><td>30.40</td><td>06.36</td><td>04.53</td><td>14.28</td><td>12.87</td></tr><tr><td>GAMA</td><td>7B</td><td>V</td><td>V</td><td>x</td><td>41.44</td><td>45.40</td><td>32.33</td><td>30.83</td><td>18.91</td><td>19.21</td><td>30.90</td><td>31.81</td></tr><tr><td>GAMA-IT</td><td>7B</td><td>V</td><td>V</td><td>x</td><td>43.24</td><td>43.23</td><td>28.44</td><td>28.00</td><td>18.91</td><td>15.84</td><td>30.20</td><td>29.02</td></tr><tr><td>Qwen-Audio-Chat</td><td>8.4B</td><td>V</td><td>x</td><td>x</td><td>55.25</td><td>56.73</td><td>44.00</td><td>40.90</td><td>30.03</td><td>27.95</td><td>43.10</td><td>41.86</td></tr><tr><td>Qwen2-Audio</td><td>8.4B</td><td>V</td><td>V</td><td>V</td><td>07.50</td><td>08.20</td><td>05.14</td><td>06.16</td><td>03.10</td><td>04.24</td><td>05.24</td><td>06.20</td></tr><tr><td>Qwen2-Audio-Instruct</td><td>8.4B</td><td></td><td>V</td><td>V</td><td>54.95</td><td>45.90</td><td>50.98</td><td>53.26</td><td>42.04</td><td>45.90</td><td>49.20</td><td>52.50</td></tr><tr><td>SALAMONN</td><td>13B</td><td></td><td></td><td></td><td>41.00</td><td>40.30</td><td>34.80</td><td>33.76</td><td>25.50</td><td>24.24</td><td>33.70</td><td>32.77</td></tr><tr><td>Gemini Pro v1.5</td><td></td><td></td><td></td><td></td><td>56.75</td><td>一 54.46 -</td><td>- - 49.40</td><td>- - 48.56</td><td>58.55 -</td><td>- 55.90 -</td><td>- - 54.90</td><td>52.97</td></tr><tr><td colspan="13">Large Language Models (LLMs)</td></tr><tr><td>GPT4o + weak cap.</td><td>-</td><td></td><td>-</td><td></td><td>39.33</td><td>35.80</td><td>39.52</td><td>41.9</td><td>58.25</td><td>68.27</td><td>45.70</td><td>48.65</td></tr><tr><td>GPT4o + strong cap.</td><td>-</td><td></td><td>-</td><td></td><td>57.35</td><td>55.83</td><td>49.70</td><td>51.73</td><td>64.86</td><td>68.66</td><td>57.30</td><td>58.74</td></tr><tr><td>Llama-3-Ins. + weak cap.</td><td>8B</td><td></td><td>-</td><td></td><td>34.23</td><td>33.73</td><td>38.02</td><td>42.36</td><td>54.05</td><td>61.54</td><td>42.10</td><td>45.87</td></tr><tr><td>Llama-3-Ins. + strong cap.</td><td>8B</td><td></td><td>-</td><td></td><td>50.75</td><td>49.10</td><td>50.29</td><td>48.93</td><td>55.25</td><td>62.70</td><td>52.10</td><td>53.57</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table compares the performance of various Large Audio-Language Models (LALMs) and Large Language Models (LLMs) on the MMAU benchmark across different audio domains (sound, speech, music), including human performance on a subset.


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Models</td><td>Size</td><td>Sound</td><td>Music</td><td>Speech</td><td>Avg</td></tr><tr><td>CompA-CLAP</td><td>416M</td><td>42.66</td><td>38.20</td><td>27.98</td><td>36.28</td></tr><tr><td>ReCLAP</td><td>416M</td><td>47.43</td><td>34.83</td><td>29.51</td><td>37.26</td></tr><tr><td>LAION-CLAP</td><td>416M</td><td>45.10</td><td>35.19</td><td>25.61</td><td>35.30</td></tr><tr><td>MS CLAP 2023</td><td>159M</td><td>52.10</td><td>40.00</td><td>28.78</td><td>40.29</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 presents a performance comparison of various Audio-Language Encoders (ALEs) on the MMAU benchmark, showing their average accuracy across sound, music, and speech domains.


{{< table-caption >}}
<table id='9' style='font-size:14px'><tr><td>Models</td><td>Easy (2482)</td><td>Medium (5312)</td><td>Hard (2206)</td></tr><tr><td>LAION-CLAP</td><td>38.72</td><td>36.97</td><td>27.60</td></tr><tr><td>SALMONN</td><td>20.31</td><td>39.33</td><td>30.63</td></tr><tr><td>GAMA</td><td>31.36</td><td>35.70</td><td>22.85</td></tr><tr><td>Qwen2</td><td>50.59</td><td>55.63</td><td>46.99</td></tr><tr><td>Gemini Pro v1.5</td><td>57.04 一</td><td>51.49 一</td><td>52.07 -</td></tr><tr><td>Average</td><td>39.60</td><td>一 43.82</td><td>- 36.03</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 5 compares the performance of Audio-Language Encoders (ALEs) and Large Audio-Language Models (LALMs) across different difficulty levels of the MMAU benchmark, revealing their strengths and limitations in handling tasks of varying complexity.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Skills</td><td>Questions</td></tr><tr><td>Acoustic Scene Reasoning</td><td>Based on the given audio, what is most likely happening in this scene? A. Itis most likely that a person is hitting various bells with a rod in the scene depicted in the given audio. B. Itis most likely that a rod is hitting various bells with a person in the scene depicted in the given audio. C. It is most likely that a person is hitting various rod with a bell in the scene depicted in the given audio. D. It is most likely that a bell is hitting various person with a rod in the scene depicted in the given audio.</td></tr><tr><td>Acoustic Scene Reasoning</td><td>Based on the given audio, what events are most likely occur- ring? A. Based on the given audio, it is most likely that a horse is moo- ing and a cow is galloping. B. Based on the given audio, itis most likely that a cat is mooing and a dog is galloping. C. Based on the given audio, it is most likely that a horse is gal- loping and a cow is mooing. D. Based on the given audio, itis most likely that a horse and COW are galloping.</td></tr><tr><td>Event-Based Sound Reasoning</td><td>Given the audio sample, what might have caused the bird to chirp? A. It might have been the birds speaking nearby that caused the person to chirp. B. It might have been the person speaking nearby that caused the birds to chirp. C. The continuous rustling sounds in the audio sample could have caused the bird to chirp. D. A sudden hissing noise might have caused the bird to chirp.</td></tr><tr><td>Acoustic Scene Reasoning</td><td>Based on the given audio, what is likely happening? A. It is likely that a wood is cutting a saw based on the given audio. B. It is likely that a saw is cutting a wood based on the given audio. C. Itis likely that the animals are making noise. D. Itis likely that people are conversing.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU with other audio understanding and reasoning benchmarks across various metrics, highlighting MMAU's superior coverage of domains and task types.


{{< table-caption >}}
<table id='1' style='font-size:20px'><tr><td>Dataset</td><td># Audios</td></tr><tr><td>Audioset</td><td>2788</td></tr><tr><td>AudioSet Strong</td><td>391</td></tr><tr><td>Mustard</td><td>405</td></tr><tr><td>MELD</td><td>540</td></tr><tr><td>VoxCeleb-1</td><td>633</td></tr><tr><td>IEMOCAP</td><td>515</td></tr><tr><td>MusicBench</td><td>1937</td></tr><tr><td>Jamendo</td><td>32</td></tr><tr><td>SDD</td><td>277</td></tr><tr><td>MusicCaps</td><td>514</td></tr><tr><td>GuitarSet</td><td>506</td></tr><tr><td>MUSDB18</td><td>68</td></tr><tr><td>Synthetic</td><td>1394</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU against other audio understanding and reasoning benchmarks across various metrics, highlighting MMAU's comprehensiveness in terms of domains, tasks, and reasoning complexity.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Category</td><td>Prior Benchmarks</td><td>MMAU</td></tr><tr><td>Sound</td><td>Task: Simple event identification Example: "What's the provenance of the sound?" Difficulty: Easy Dataset: AirBench</td><td>Task: Ambient Sound Understanding Example: "What material is typically used for the strings of the instrument?" Difficulty: Hard Dataset: MMAU</td></tr><tr><td>Speech</td><td>Task: Speaker identification, emotion detection Example: "What emotion is at the forefront of the speaker's words?" Difficulty: Easy Dataset: AirBench</td><td>Task: Conversational Content Analysis Example: "Who was the surgeon responsible for the event mentioned?" Difficulty: Hard Dataset: MMAU</td></tr><tr><td>Music</td><td>Task: Genre identification, MIDI pitch detection Example: "What's the genre of this music?" Difficulty: Easy Dataset: AirBench</td><td>Task: Instrument identification, vocal characteristics analysis Example: "Which instrument is playing the high notes?" Difficulty: Medium Dataset: MMAU</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU against other existing audio understanding and reasoning benchmarks across various metrics, highlighting MMAU's superior coverage of audio domains and its focus on complex reasoning tasks.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Domain</td><td>Skills</td><td>Tasks</td><td>Question (with option)</td></tr><tr><td rowspan="6">Sound</td><td>Temporal Event Reasoning</td><td>Identify ordering and duration of various sounds</td><td>Identify the total number of drum beats in the audio. Choices: A. 2 B. 4 C. 5 D. 3</td></tr><tr><td>Acoustic-Source Inference</td><td>Identify the source of various sounds</td><td>For the given audio sample, identify the source of the singing sound. Choices: A. People B. Birds C. Musical Instrument D. Radio</td></tr><tr><td>Eco-Acoustic Knowledge</td><td>Identify the environ- mental background based on various sounds</td><td>Based on the audio, what is the likely set- ting? Choices: A. Beach B. Mountain C. City Park D. Forest</td></tr><tr><td>Ambient Sound Interpretation</td><td>Extracting informa- tion about the back- ground sound</td><td>Name a famous musician known for play- ing the instrument heard in the back- ground. Choices: A. Yo-Yo Ma B. Jimi Hendrix C. Miles Davis D. Flea</td></tr><tr><td>Acoustic Scene Reasoning</td><td>Answer the reason- ing questions based on the acoustic scene interpreted from multiple sounds.</td><td>Based on the given audio, what event 1S taking place? Choices: A. A person is playing percussive instru- ments simultaneously. B. Hard objects are being manipulated in various ways. C. Someone is rolling and striking hard ob- jects. D. A person is handling items and closing a container.</td></tr><tr><td>Event-Based Sound Reasoning</td><td>Causal reasoning question about what triggered a source to produce a specific sound.</td><td>Based on the given audio, what could have caused the dog's barking? Choices: A. A person approaching the dog. B. A cat approaching the dog. C. A laughter heard nearby D. A gentle splash of water.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU with other existing audio understanding and reasoning benchmarks based on various statistics such as the number of tasks, domains covered, types of reasoning involved, and difficulty level.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td>Sound-Based Event Recogni- tion</td><td>Based on multiple sound, infer the most likely event from the audio</td><td>What type of emergency vehicle is indi- cated by the sirens in the audio? Choices: A. Fire truck. B. Ambulance. C. Police car D. Garbage truck.</td></tr><tr><td rowspan="6">Speech</td><td>Dissonant Emo- tion Interpreta- tion</td><td>Identify sarcasm in multi-speaker settings</td><td>From the given conversation, What makes the last comment sarcastic in relation to the dialogue? Choices: A. Criticism of scientific method B. Genuine admiration of intelligence. C. Requesting further explanation D. Mocking exaggerated praise</td></tr><tr><td>Event-Based Knowledge Retrieval</td><td>Extract information about the event discussed in a conversation.</td><td>Who was the scientist behind the discovery mentioned by the speaker? Choices: A. Marie Curie B. Albert Einstein C. Alexander Fleming D. Isaac Newton</td></tr><tr><td>Counting</td><td>Count the number of speakers in a dia- logue</td><td>What's the number of speakers in the cur- rent conversation? Choices: A. 3 B. 4 C. 2 D. 1</td></tr><tr><td>Phonemic Stress Pattern Analysis</td><td>Identify the stress patterns of phonemes in an utterance.</td><td>From the given utterance, identify a pair of words that contain similar sounding stressed and unstressed phonemes Choices: A. Sometimes, want B. hair,directing C. first, second D. few, blanks</td></tr><tr><td>Emotional State summarisation</td><td>Identify the emotions of all the speakers in a conversation</td><td>From the given conversation, Identify the emotion of each speaker Choices: A. first speaker shows neutral, anger; sec- ond speaker shows fear, neutral, disgust. B. first speaker shows neutral, anger; sec- ond speaker seems neutral. C. first speaker shows happiness; second speaker shows fear. D. first speaker shows fear; second shows disgust</td></tr><tr><td>Conversational Fact Retrieval</td><td>Answer factual ques- tions based on the content discussed by the speakers.</td><td>How much money did the second speaker offer the first speaker to marry her? Choices: A. Twenty thousand dollars B. Seventy thousand dollars C. Fifty thousand dollars D. One hundred thousand dollars</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU with other existing audio understanding and reasoning benchmarks across various statistics, highlighting MMAU's comprehensiveness in covering all three audio domains and having the highest number of information extraction and complex reasoning tasks.


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td></td><td>Multi Speaker Role Mapping</td><td>Identify the role played by each speaker in a conver- sation</td><td>In the given conversation, identify the role of two speakers. Choices A. first speaker is a voice coach and the second speaker is singer B. both speakers are neighbors C. first speaker is a surgeon and the second speaker is surgical nurse D. first speaker is a nurse and the second speaker is a doctor</td></tr><tr><td></td><td>Phonological Se- quence Decoding</td><td>Identify the word order in similarly sounding words within tongue twisters.</td><td>For a given tongue twister, identify which word came first Choices: A. elves B. elk C. eve D. elite</td></tr><tr><td></td><td>Emotion Flip De- tection</td><td>Identify which speakers showed emotion flip in a conversation</td><td>From the given conversation, Identify the speakers that showed emotion flip. Choices: A. both speakers B. first speaker C. second speaker D. none of the speakers</td></tr><tr><td></td><td>Key highlight Ex- traction</td><td>Identify the intent of the conversation</td><td>What is the main topic of discussion be- tween the speakers Choice: A. negative aspects of environmental pol- lution B. improving one's relationship with sib- lings. C. challenges of maintaining parent-child relationships D. Impact of good communication skills</td></tr><tr><td></td><td>Temporal Rea- soning</td><td>Extract information about the temporal structure of the music track/song</td><td>How does the male VOICE follow the strummed electric guitar in the audio? Choices: A. It follows immediately after each strum B. It starts before the guitar C. It overlaps with the guitar D. It starts well after the guitar finishes</td></tr><tr><td></td><td>Musical Genre Reasoning</td><td>Understanding musi- cal genre and song type</td><td>Considering the mood and elements of the audio, what is the likely purpose of the song? Choices: A. A party anthem B. A workout mix C. A proposal song D. A lullaby</td></tr><tr><td></td><td>Lyrical Reason- ing</td><td>Involves analyz- ing song lyrics to interpret themes, emotions, and under- lying meanings.</td><td>What day is mentioned in the lyrics? Choices: A. Monday B. Friday C. Sunday D. Wednesday</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU benchmark with other existing benchmarks across various aspects such as domain coverage, task types, difficulty level, and the number of questions, highlighting MMAU's comprehensiveness and advanced reasoning capabilities.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Socio-cultural In- terpretation</td><td>Analyzing how his- torical events and cultural contexts influence musical styles, genres, and themes.</td><td>In which cultural setting would the music in the audio most likely be performed? Choices: A. Western classical concert hall B. Indian classical music festival C. Modern pop concert D. Jazz club</td></tr><tr><td>Melodic Struc- ture Interpreta- tion</td><td>Infer the organiza- tion and progression of melodies to under- stand their patterns, forms, and emotional expressions.</td><td>What type of bass line is playing in the au- dio? Choices: A. Acoustic bass line. B. Groovy synth bass line. C. Fretless bass line. D. Double bass line</td></tr><tr><td>Harmony and Chord Progres- sions</td><td>Involve the study of how chords interact and transition to cre- ate musical texture, mood, and overall structure.</td><td>What is the chord progression in the audio? Choices: A. C, G, Am, F B. G7, Fm, Ab, Eb, Bb C. Dm, A7, G, Bm D. F, C, Dm, Bb</td></tr><tr><td>Rhythm and Tempo Under- standing</td><td>Focuses on analyzing the timing, beats, and pace of a piece</td><td>What is the tempo of the audio? Choices: A. 120 bpm. B. 130 bpm. C. 149 bpm. D. 160 bpm</td></tr><tr><td>Musical Texture Interpretation</td><td>Analyzing the overall vocal quality of the singer.</td><td>What is the main characteristic of the male voice in the audio? Choices: A. Soft and mellow B. Loud and soulful C. High-pitched and fast D. Monotone and slow</td></tr><tr><td>Instrumentation</td><td>Extracting informa- tion about various in- struments present in a musical piece</td><td>What is the primary instrument playing in the audio? Choices: A. Violin B. Flute C. Guitar D. Piano</td></tr><tr><td>Emotional Tone Interpretation</td><td>Analyzing the feel- ings conveyed in music to understand the emotional impact and mood of a piece.</td><td>How would you describe the impact of the simple guitar solo in the bridge on the song's mood? Choices: A. It introduces a sense of calmness. B. It adds complexity and tension C. It enhances the upbeat and dynamic feel. D. It makes the song sound more melan- cholic.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU with other existing audio understanding and reasoning benchmarks across various metrics, highlighting MMAU's comprehensiveness in covering all three audio domains and its focus on complex reasoning tasks.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td rowspan="5">Speech</td><td>Event-Based Knowledge Retrieval</td><td>Who developed the vaccine mentioned by the speaker? Choices: A. Dr. Jonas Salk B. Dr. Louis Pasteur C. Dr. Albert Sabin D. Dr. Robert Koch</td><td>Dr. Jonas Salk</td><td>Dr. Albert Sabin</td></tr><tr><td>Multi-Speaker Identity Profiling</td><td>How many speakers are present in this conversation? Choices: A. Three B. Four C. Six D. Five</td><td>Three</td><td>Five</td></tr><tr><td>Phonemic Stress Pattern Analysis</td><td>From the given utterance, count the number of words that contain at least one stressed phoneme. Choices: A. Four B. Nine C. Seventeen D. One</td><td>Nine</td><td>One (incorrect reasoning)</td></tr><tr><td>Conversational Fact Retrieval</td><td>What is Second Speaker's first name according to First Speaker? Choices: A. Jack B. John C. Jones D. James</td><td>Jones</td><td>John</td></tr><tr><td>Conversational Fact Retrieval</td><td>Who directed First Speaker to get in line? Choices: A. Fourth Speaker B. Third Speaker C. Second Speaker D. First Speaker</td><td>Second Speaker</td><td>Third Speaker</td></tr><tr><td rowspan="3">Music</td><td>Metre and Rhythm</td><td>What is the tempo of the au- dio in bpm? Choices: A. 160.0 B. 135.0 C. 120.0 D. 150.0</td><td>135.0</td><td>150.0</td></tr><tr><td>Melody</td><td>Which instrument is pri- marily responsible for the melody in the audio? Choices: A. Piano B. Violin C. Electric guitar D. Flute</td><td>Electric guitar</td><td>Piano</td></tr><tr><td></td><td>28</td><td></td><td></td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU against other existing audio understanding and reasoning benchmarks across various metrics, highlighting MMAU's superior breadth and depth in terms of tasks and reasoning complexity.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Historical and Cultural Reason- ing</td><td>Identify the lead instrument in the jazz track as described in the audio. Choices: A. Piano B. Guitar C. Trumpet D. Saxophone</td><td>Trumpet Saxophone</td></tr><tr><td>Emotional Tone</td><td>What kind of emotional re- sponse is the audio most likely intended to evoke? Choices: A. Seriousness and urgency B. Sadness and contempla- tion C. Joy and excitement D. Calm and serenity</td><td>SeriousnessCalm and seren- and ur- ity gency</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU with other audio understanding and reasoning benchmarks across various metrics such as the number of tasks, domains covered, and complexity of reasoning.


{{< table-caption >}}
<table id='7' style='font-size:14px'><tr><td>Error Type</td><td>Definition</td><td>Question</td><td>Prediction</td><td>Reason</td></tr><tr><td>Perceptual Er- ror</td><td>The model fails to perceive the audio correctly.</td><td>Based on the given au- dio, identify the source of the flowing sound. Choices: A. Stream B. Faucet C. Waterfall D. Rain</td><td>Waterfall</td><td>Misinterpreted the sound</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 compares the performance of various Large Audio Language Models (LALMs) and Large Language Models (LLMs) on the MMAU benchmark across three audio domains (sound, speech, and music).


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Error Type</td><td>Definition</td><td>Question</td><td>Prediction</td><td>Reason</td></tr><tr><td>Knowledge Error</td><td>The model un- derstands the audio but lacks the knowledge to answer.</td><td>What is the typical fre- quency range of the in- strument playing in the background? Choices: A. The bass typically ranges from 40 Hz to 400 Hz. B. The bass typically ranges from 400 Hz to 4 kHz. C. The bass typically ranges from 20 Hz to 200 Hz. D. The bass typically ranges from 4 kHz to 40 kHz.</td><td>20-200 Hz</td><td>Lacked specific frequency knowledge</td></tr><tr><td>Reasoning Er- ror</td><td>The model strug- gles with logical reasoning.</td><td>What weather condition is indicated by the au- dio? Choices: A. Windy B. Calm C. Humid D. Rainy</td><td>Humid</td><td>Incorrect rea- soning about sound</td></tr><tr><td>Annotation Error</td><td>The model's re- sponse is correct but the answer key is wrong.</td><td>Given the audio sample, what was the primary focus of the audio? Choices: A. A man speaking with background mu- sic B. A man breathing heavily C. Only music playing continuously D. A man singing with music</td><td>Singing with music</td><td>Answer key was incorrect</td></tr><tr><td>Answer Extraction Error</td><td>The model's an- swer matches but formatting leads to incorrect marking.</td><td>Based on the given audio, what could have led to the shout? Choices: A. A whip sound oc- curring just before the shout B. Continuous music playing in the back- ground C. Human voice heard earlier in the audio D. Whistling and ap- plause towards the end</td><td>Whip sound</td><td>Incorrect for- mat in answer</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents a performance comparison of 18 different Large Audio-Language Models (LALMs) and Large Language Models (LLMs) on the MMAU benchmark, showcasing their accuracy across three audio domains (sound, speech, and music) and highlighting the top-performing models in each category.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Error Type</td><td>Definition</td><td>Question</td><td>Prediction</td><td>Reason</td></tr><tr><td>Other Error</td><td>The model refuses to answer or en- counters another issue.</td><td>Based on the given audio, what is the most likely source of the noise? Choices: A. A malfunctioning electronic device B. A gentle breeze C. A calm river stream D. A distant bird chirp- ing</td><td>Refused to answer</td><td>None of the options fit</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 2 compares MMAU with other existing benchmarks across various dimensions such as the number of tasks, domains covered, and difficulty level, highlighting MMAU's comprehensiveness and focus on complex reasoning.


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
<img src="paper_images/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/21.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/22.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/23.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/24.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/25.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/26.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/27.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/28.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/29.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/30.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/31.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/32.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/33.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}