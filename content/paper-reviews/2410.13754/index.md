---
title: "MixEval-X: Any-to-Any Evaluations from Real-World Data Mixtures"
summary: "MixEval-X: a new benchmark standardizes multi-modal AI evaluations using real-world data mixtures, improving consistency and reducing bias in model rankings."
categories: ["AI Generated"]
tags: ["🔖 24-10-17", "🤗 24-10-18"]
showSummary: true
date: 2024-10-17
draft: false
---

### TL;DR


{{< lead >}}

MixEval-X tackles inconsistencies and biases in current AI model evaluations by creating a new, any-to-any benchmark using real-world data mixtures.  It covers eight input-output modality combinations (image-to-text, text-to-image, etc.),  applying benchmark mixture and adaptation-rectification techniques to accurately reflect real-world task distributions.  Extensive meta-evaluations demonstrate strong correlations between MixEval-X rankings and crowd-sourced real-world evaluations. This unified, high-standard benchmark helps standardize evaluations across communities, improve model development, and enhance understanding of multi-modal evaluations.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.13754" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.13754" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for AI researchers as it introduces MixEval-X, the first any-to-any real-world benchmark for multi-modal AI evaluations.  It addresses critical issues of inconsistent standards and biases in current evaluations, providing a unified, high-standard approach across diverse modalities.  This opens up new avenues for research and enables more robust model development and comparisons.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MixEval-X is the first any-to-any real-world benchmark for multi-modal AI, addressing inconsistencies and biases in existing evaluations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark's model rankings correlate strongly with crowd-sourced real-world evaluations, demonstrating its effectiveness. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MixEval-X uses multi-modal benchmark mixture and adaptation-rectification pipelines to reconstruct real-world task distributions, improving generalization. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_3_0.png)

> 🔼 The figure illustrates the pipeline used to create the MixEval-X benchmark, showing the steps involved in gathering web queries, creating benchmark mixtures, and performing adaptation and rectification to construct the final benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall pipeline for creating MixEval-X.
> </details>





![](charts/charts_7_0.png)

> 🔼 The chart displays the overall Elo scores of various multi-modal generation (MMG) models across three different tasks (Text2Image, Text2Video, Text2Audio) based on human evaluations, showing the model rankings and confidence intervals.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>





{{< table-caption >}}
<table id='6' style='font-size:14px'><tr><td></td><td>Image to Text Ratio on web: 1.31%</td><td>Video to Text Ratio on web: 0.61%</td><td>Audio to Text Ratio on web: 2.87%</td></tr><tr><td>Tasks MMU</td><td>Normal / Hard Instruction: The subject of the Normal / Hard painting was most strongly influenced by which of the following? Options: B. The ideals of the Enlightenment A. The principles of mercantilism C. The the⌀ries of classical liberalism D. The tenets of Marxism Correct Answer: B</td><td>Instruction: Which event likely occurs next based on typical hot air ball⌀on flight patterns? Options: B) Steady altitude. A) Rapid ascent. C) Planned descent. D) Lateral maneuver.. Correct Answer: B</td><td>Normal / Hard Instruction: Based on the audio clip, which band is it likely to be? Options: B. Led Zeppelin A. The Beatles C. Queen <audio input> D. AC/DC (music and environmental noise) Correct Answer: D</td></tr><tr><td>Text to Image Ratio on web: 0.73%</td><td>Text to Video</td><td>Ratio on web: 0.23%</td><td>Text to Audio Ratio on web: 2.84%</td></tr><tr><td>Turn 1: Create an image of a Turn 2: Remove the flowers in Tasks with a good whether.... corgi standing in a flower park the background. Example Answer 1: Example Answer 2: MMG <generated image 1> <generated image 2></td><td>Turn 1: Create a 3-minute video maintained soccer field whose scene is set on a well- video Example Answer 1: Example <generated video 1></td><td>Turn 2: The style of <generated an animation one. 1> is too realistic, make Answer 2: <generated video 2></td><td>Turn 1: Produce an audio Turn 2: Remove all the noise chirping of crickets, gradually... starting with gentle, rhythmic in the background. Example Answer 1: Example Answer 2: <generated audio 1> <generated audio 2></td></tr><tr><td>Text to Action Ratio on web: 19.5% Tasks Allowed Actions: [Navigation], [PickupObject], Instruction: Purchase a single day pass at the ticket booth. [PutObject] , [UseObject] , [Speak] , ■ · Visible Objects: <festival entrance>, <ticket Agent Already Executed Steps: booth>  <crowd> , <festival map> , ... [Navigation] <festival entrance> Correct Answer: [IdentifyObject] <ticket booth>, ...</td><td>Image to Action</td><td>Ratio on web: 1.17% Settings from here? Instruction: How to access Notification Allowed Actions: [Navigate], [Tap], [ReadText] , [ScrollDown] , · <Settings> , [Scrol lDown] , . - Already Executed Steps: [Navigate] Correct Answer: [Tap] <Apps & notifications>, [ScrollDown] , ·</td><td>Frontier Organizations on MixEval-X 41 4641 7268 66 7777747573 73747266 6359 49 5959 30 OpenAI Qwen 6161 71 69 Average Text2Text Image2Text Video2Text Audio2Text 58 75 75 8582 67 Anthropic Meta Google N.A. Text2Image Text2Video Text2Audio Text2Action Image2Action</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the statistics of MixEval-X subsets, including the number of tasks, turns, average number of tokens, average input length, and English ratio for each subset.
> <details>
> <summary>read the caption</summary>
> Table 1: The statistics of MixEval-X subsets. All MMU tasks have both free-form and multiple-choice tasks except Audio2Text and Audio2Text-Hard.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_20_0.png)

> 🔼 MixEval-X is a benchmark that encompasses eight input-output modality combinations, shows real-world task distributions, and presents scores of frontier organizations' flagship models.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_21_0.png)

> 🔼 Figure 1 shows MixEval-X, a multi-modal benchmark encompassing eight input-output modality combinations, along with example tasks and the performance of leading AI models.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_21_1.png)

> 🔼 MixEval-X is a benchmark that encompasses eight input-output modality combinations, showing frontier organization model scores, normalized to 0-100, reflecting real-world task distributions.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_21_2.png)

> 🔼 MixEval-X is a benchmark that evaluates eight different input-output modality combinations, showing scores from various organizations' models on real-world data.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_22_0.png)

> 🔼 MixEval-X is a benchmark that encompasses eight input-output modality combinations, showing the scores of frontier organizations' flagship models across various tasks.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_22_1.png)

> 🔼 MixEval-X is a benchmark that encompasses eight input-output modality combinations, showing real-world task distributions and scores from frontier organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_23_0.png)

> 🔼 MixEval-X is a benchmark that encompasses eight input-output modality combinations, showing real-world task distributions and scores from frontier organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_23_1.png)

> 🔼 MixEval-X is a benchmark encompassing eight input-output modality combinations, showing real-world task distributions and the scores of several frontier organizations' models.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_23_2.png)

> 🔼 MixEval-X is a benchmark that encompasses eight input-output modality combinations, showing real-world task distributions and model scores from frontier organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_24_0.png)

> 🔼 MixEval-X is a benchmark encompassing eight input-output modality combinations, showing real-world task distributions and model performance scores from several frontier organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_24_1.png)

> 🔼 The figure visualizes the distributions of various benchmark datasets and real-world web queries across different modalities using t-SNE for dimensionality reduction, showing MixEval-X's alignment with real-world task distributions.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>



![](figures/figures_24_2.png)

> 🔼 This figure shows the comparison of the task distributions between various existing benchmarks and the distribution of real-world user queries, using t-SNE to visualize 2D embeddings of sentence embeddings of the queries.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>



![](figures/figures_25_0.png)

> 🔼 This figure visualizes the distribution of various benchmark tasks and compares them to real-world web queries across eight different input/output modalities, showing the alignment of MixEval-X with real-world task distributions.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>



![](figures/figures_25_1.png)

> 🔼 This figure visualizes the distributions of various modality benchmarks and compares them with real-world task distributions using t-SNE.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>



![](figures/figures_25_2.png)

> 🔼 The figure visualizes the distribution of various benchmark datasets and compares them to the distribution of real-world web queries for multiple modalities.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>



![](figures/figures_25_3.png)

> 🔼 MixEval-X is a multimodal benchmark that evaluates eight input-output modality combinations, showing the scores of different models from frontier organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_26_0.png)

> 🔼 The figure shows the Elo scores of different MMG models across three subsets (Text2Image, Text2Video, Text2Audio) of MixEval-X, based on human evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>



![](figures/figures_26_1.png)

> 🔼 The figure shows the overall Elo scores of different MMG models across three subsets (Text2Image, Text2Video, Text2Audio) based on crowd-sourced human evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>



![](figures/figures_26_2.png)

> 🔼 The figure shows an overview of MixEval-X, illustrating eight input-output modality combinations, their real-world task distributions, and the performance of various frontier organizations' models.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_26_3.png)

> 🔼 The figure shows the overall Elo scores of different MMG models across three subsets (Text2Image, Text2Video, and Text2Audio) based on crowd-sourced human evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>



![](figures/figures_26_4.png)

> 🔼 MixEval-X is a benchmark that evaluates eight input-output modality combinations and shows the performance of flagship models from frontier organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_26_5.png)

> 🔼 MixEval-X is a benchmark encompassing eight input-output modality combinations, showing real-world task distributions and model performance scores from several organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_27_0.png)

> 🔼 MixEval-X is a benchmark encompassing eight input-output modality combinations, showing real-world task distributions and the performance of frontier organization models.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_27_1.png)

> 🔼 MixEval-X is a benchmark that encompasses eight input-output modality combinations, showing frontier organization model scores, and example data samples.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_27_2.png)

> 🔼 MixEval-X is a benchmark encompassing eight input-output modality combinations, showing real-world task distributions and model performance from leading organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_27_3.png)

> 🔼 Figure 1 shows an overview of MixEval-X, its eight input-output modality combinations, real-world task distributions, and the performance of various frontier organizations' flagship models.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-X encompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_27_4.png)

> 🔼 Figure 1 shows an overview of MixEval-X, including its eight input-output modality combinations, real-world task distributions, and the performance of various organizations' models.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_27_5.png)

> 🔼 MixEval-X is a multi-modal benchmark with eight input-output modality combinations, showing real-world task distributions and the performance of flagship models from leading AI organizations.
> <details>
> <summary>read the caption</summary>
> Figure 1: MixEval-Xencompasses eight input-output modality combinations and can be further extended. Its data points reflect real-world task distributions. The last grid presents the scores of frontier organizations' flagship models on MixEval-X, normalized to a 0-100 scale, with MMG tasks using win rates instead of Elo. Section C presents example data samples and model responses.
> </details>



![](figures/figures_28_0.png)

> 🔼 The figure shows the performance of various models on the Image2Action task of MixEval-X, highlighting the relative strengths and weaknesses of different models.
> <details>
> <summary>read the caption</summary>
> Figure 8: The evaluation results of prominent models on Image2Action. See Section G for details.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_7_1.png "🔼 Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.")

> 🔼 The chart displays the overall Elo scores for multi-modal generation (MMG) models across three different tasks (Text2Image, Text2Video, Text2Audio), indicating model performance based on crowd-sourced evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>


![](charts/charts_8_0.png "🔼 Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.")

> 🔼 The chart displays the Elo scores of multi-modal generation (MMG) models across three different MixEval-X subsets (Text2Image, Text2Video, Text2Audio), showing model rankings based on human evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>


![](charts/charts_8_1.png "🔼 Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.")

> 🔼 The chart displays the overall Elo scores of various multi-modal generation (MMG) models across three MixEval-X subsets (Text2Image, Text2Video, Text2Audio), showing the model rankings based on crowd-sourced user preferences and the confidence intervals.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>


![](charts/charts_10_0.png "🔼 Figure 10: Model judge scores and crowd-sourcing Elo scores of the Text2Image subset. The upper and lower error bars represent the 1st and 2nd turn scores, respectively. Each data point is an average of five different runs.")

> 🔼 The chart displays a comparison of model judge scores and crowd-sourced Elo scores for Text2Image tasks, showing the correlation between automated evaluation and human preference.
> <details>
> <summary>read the caption</summary>
> Figure 10: Model judge scores and crowd-sourcing Elo scores of the Text2Image subset. The upper and lower error bars represent the 1st and 2nd turn scores, respectively. Each data point is an average of five different runs.
> </details>


![](charts/charts_56_0.png "🔼 Figure 40: Image2Text benchmark pool distribution on benchmark level.")

> 🔼 The bar chart displays the distribution of benchmark tasks within the Image2Text benchmark pool, categorized by benchmark and task type (free-form or multiple-choice).
> <details>
> <summary>read the caption</summary>
> Figure 40: Image2Text benchmark pool distribution on benchmark level.
> </details>


![](charts/charts_56_1.png "🔼 Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.")

> 🔼 This chart visualizes the similarity between the task distributions of various multi-modal benchmarks and real-world web queries, showing how closely each benchmark aligns with real-world tasks.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>


![](charts/charts_57_0.png "🔼 Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.")

> 🔼 The chart visualizes the distribution similarity between various benchmark datasets and real-world web queries across eight different multi-modal categories, revealing MixEval-X's close alignment with real-world task distributions.
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>


![](charts/charts_57_1.png "🔼 Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.")

> 🔼 This chart visualizes the distribution of various benchmark tasks and their proximity to real-world web queries across different modalities (Image2Text, Video2Text, Audio2Text, etc.).
> <details>
> <summary>read the caption</summary>
> Figure 9: Task distribution of various modality benchmarks, with each modality uniquely color-coded. Benchmark data points (orange dots) are plotted against the detected web queries (blue dots) for the corresponding modality. The sentence embeddings of the queries were dimensionally reduced into a unified 2D space, enabling direct comparison of topic distributions across benchmarks. Benchmarks are sorted by their cluster distance (C-Dist) from the corresponding web queries.
> </details>


![](charts/charts_58_0.png "🔼 Figure 44: Audio2Text benchmark pool distribution on benchmark level.")

> 🔼 The bar chart displays the distribution of the Audio2Text benchmark pool across different benchmark datasets, showing the proportion of tasks from each dataset.
> <details>
> <summary>read the caption</summary>
> Figure 44: Audio2Text benchmark pool distribution on benchmark level.
> </details>


![](charts/charts_58_1.png "🔼 Figure 44: Audio2Text benchmark pool distribution on benchmark level.")

> 🔼 The chart displays the distribution of the Audio2Text benchmark pool at the benchmark level, showing the proportion of tasks from each benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 44: Audio2Text benchmark pool distribution on benchmark level.
> </details>


![](charts/charts_59_0.png "🔼 Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.")

> 🔼 The chart displays the Elo scores of multi-modal generation (MMG) models across three MixEval-X subsets (Text2Image, Text2Video, Text2Audio), showing model performance based on crowd-sourced evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 6: The overall Elo scores of MMG models on the MixEval-X MMG subsets, with error bars representing the 95% confidence intervals for the ratings. These scores are derived using the Bradley-Terry model, based on crowd-sourced user preferences. Additionally, the number of human evaluators per subset is provided for reference. The turn-level scores are shown in Figure 46.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td></td><td>Task Type</td><td># Tasks</td><td># Turns</td><td>Avg. # Toks per Query</td><td>Avg. # Inputs</td><td>Avg. Input Length</td><td>Min Input Length</td><td>Max Input Length</td><td>English Ratio</td></tr><tr><td>Image2Text</td><td>MMU</td><td>2,000</td><td>1</td><td>12.1</td><td>1.0</td><td>-</td><td>-</td><td>-</td><td>99.2%</td></tr><tr><td>Image2text-Hard</td><td>MMU</td><td>1,000</td><td>1</td><td>14.7</td><td>1.0</td><td>-</td><td>-</td><td>-</td><td>99.4%</td></tr><tr><td>Video2Text</td><td>MMU</td><td>2,000</td><td>1</td><td>10.2</td><td>1.0</td><td>56.5 (s)</td><td>1.5 (s)</td><td>238.4 (s)</td><td>100.0%</td></tr><tr><td>Video2Text-Hard</td><td>MMU</td><td>1,000</td><td>1</td><td>10.8</td><td>1.0</td><td>70.7 (s)</td><td>1.4 (s)</td><td>238.4 (s)</td><td>100.0%</td></tr><tr><td>Audio2Text</td><td>MMU</td><td>1,000</td><td>1</td><td>8.2</td><td>1.0</td><td>40.2 (s)</td><td>5.3 (s)</td><td>146.5 (s)</td><td>100.0%</td></tr><tr><td>Audio2Text-Hard</td><td>MMU</td><td>500</td><td>1</td><td>9.2</td><td>1.0</td><td>54.6 (s)</td><td>5.6 (s)</td><td>149.5 (s)</td><td>100.0%</td></tr><tr><td>Text2Action</td><td>Agent</td><td>100</td><td>1</td><td>14.3</td><td>1.0</td><td>139.7 (toks)</td><td>35 (toks)</td><td>214 (toks)</td><td>99.0%</td></tr><tr><td>Image2Action</td><td>Agent</td><td>100</td><td>1</td><td>14.2</td><td>1.0</td><td>61.7 (toks)</td><td>34 (toks)</td><td>100 (toks)</td><td>100.0%</td></tr><tr><td>Text2Image</td><td>MMG</td><td>200</td><td>2</td><td>31.5</td><td>-</td><td>-</td><td>-</td><td>-</td><td>100.0%</td></tr><tr><td>Text2Video</td><td>MMG</td><td>200</td><td>2</td><td>48.0</td><td>-</td><td>-</td><td>-</td><td>-</td><td>100.0%</td></tr><tr><td>Text2Audio</td><td>MMG</td><td>200</td><td>2</td><td>54.5</td><td>-</td><td>-</td><td>-</td><td>-</td><td>100.0%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the statistics of MixEval-X subsets, including the number of tasks, turns, average token counts, and input lengths for each modality.


{{< table-caption >}}
<table id='1' style='font-size:16px'><tr><td>Claude 3.5 Sonnet</td><td>76.9</td><td>46.2</td><td>76.0</td><td>75.1</td><td>94.6</td><td>90.3</td><td>62.5</td><td>78.8</td><td>31.0</td><td>48.9</td></tr><tr><td>GPT-4⌀</td><td>76.6</td><td>45.8</td><td>75.6</td><td>74.1</td><td>87.4</td><td>90.9</td><td>66.9</td><td>79.0</td><td>29.3</td><td>45.9</td></tr><tr><td>GPT-4V</td><td>75.0</td><td>44.6</td><td>75.6</td><td>68.0</td><td>92.1</td><td>89.3</td><td>53.7</td><td>79.2</td><td>31.9</td><td>40.6</td></tr><tr><td>Qwen2-VL-72B</td><td>74.8</td><td>43.4</td><td>71.5</td><td>67.5</td><td>90.6</td><td>90.3</td><td>66.3</td><td>80.4</td><td>25.4</td><td>27.8</td></tr><tr><td>Gemini 1.5 Pro</td><td>74.2</td><td>42.2</td><td>72.2</td><td>77.2</td><td>85.6</td><td>86.8</td><td>63.7</td><td>76.7</td><td>29.7</td><td>44.4</td></tr><tr><td>Llama 3.2 90B</td><td>73.0</td><td>40.6</td><td>73.3</td><td>62.9</td><td>92.7</td><td>90.9</td><td>61.6</td><td>89.8</td><td>28.9</td><td>30.1</td></tr><tr><td>Intern VL2-26B</td><td>71.5</td><td>41.5</td><td>71.5</td><td>55.8</td><td>90.3</td><td>91.2</td><td>58.2</td><td>70.2</td><td>32.3</td><td>28.6</td></tr><tr><td>Claude 3 Opus</td><td>69.5</td><td>41.1</td><td>72.0</td><td>66.5</td><td>84.2</td><td>86.7</td><td>56.9</td><td>66.9</td><td>34.9</td><td>44.4</td></tr><tr><td>Qwen-VL-MAX</td><td>69.2</td><td>37.5</td><td>70.0</td><td>68.5</td><td>83.1</td><td>87.2</td><td>53.1</td><td>66.1</td><td>27.6</td><td>37.6</td></tr><tr><td>LLaVA-1.6-34B</td><td>68.1</td><td>37.5</td><td>70.4</td><td>60.4</td><td>71.0</td><td>81.8</td><td>48.6</td><td>58.8</td><td>31.9</td><td>36.8</td></tr><tr><td>Claude 3 Sonnet -</td><td>67.8</td><td>38.3</td><td>71.1</td><td>50.8</td><td>86.7</td><td>80.3</td><td>58.2</td><td>78.6</td><td>32.3</td><td>30.8</td></tr><tr><td>Reka Core</td><td>67.4</td><td>37.3</td><td>67.5</td><td>71.1</td><td>76.5</td><td>79.9</td><td>56.9</td><td>59.6</td><td>25.0</td><td>39.1</td></tr><tr><td>Reka Flash</td><td>67.4</td><td>36.6</td><td>73.6</td><td>53.8</td><td>71.3</td><td>76.8</td><td>59.6</td><td>62.5</td><td>32.8</td><td>23.3</td></tr><tr><td>InternVL-Chat-V1.2</td><td>67.2</td><td>36.0</td><td>70.7</td><td>54.8</td><td>51.8</td><td>76.3</td><td>60.0</td><td>59.2</td><td>25.4</td><td>33.8</td></tr><tr><td>Qwen-VL-PLUS</td><td>67.0</td><td>35.9</td><td>66.2</td><td>56.9</td><td>84.1</td><td>83.1</td><td>57.5</td><td>52.7</td><td>19.8</td><td>27.1</td></tr><tr><td>Claude 3 Haiku -</td><td>66.1</td><td>37.5</td><td>67.8</td><td>58.4</td><td>88.3</td><td>83.0</td><td>59.8</td><td>59.4</td><td>32.8</td><td>45.9</td></tr><tr><td>Gemini 1.0 Pro</td><td>66.1</td><td>35.0</td><td>67.6</td><td>60.9</td><td>70.3</td><td>81.3</td><td>55.7</td><td>51.8</td><td>29.3</td><td>39.8</td></tr><tr><td>InternLM-XComposer2-VL</td><td>62.1</td><td>33.6</td><td>66.9</td><td>40.6</td><td>54.7</td><td>74.9</td><td>56.3</td><td>46.5</td><td>28.9</td><td>24.8</td></tr><tr><td>Yi-VL-34B</td><td>58.5</td><td>30.6</td><td>68.0</td><td>53.8</td><td>21.5</td><td>59.7</td><td>53.3</td><td>41.4</td><td>27.6</td><td>29.3</td></tr><tr><td>OmniLMM-12B</td><td>58.2</td><td>29.2</td><td>67.3</td><td>54.8</td><td>42.3</td><td>70.2</td><td>48.6</td><td>26.9</td><td>31.9</td><td>32.3</td></tr><tr><td>DeepSeek-VL-7B-Chat</td><td>56.7</td><td>26.5</td><td>61.3</td><td>41.1</td><td>39.4</td><td>69.9</td><td>50.8</td><td>32.0</td><td>21.1</td><td>14.3</td></tr><tr><td>Yi-VL-6B -</td><td>55.4</td><td>30.1</td><td>65.6</td><td>45.7</td><td>23.6</td><td>62.3</td><td>52.2</td><td>28.0</td><td>27.6</td><td>19.5</td></tr><tr><td>InfiMM-Zephyr-7B</td><td>53.7</td><td>29.4</td><td>62.5</td><td>44.2</td><td>21.9</td><td>46.1</td><td>46.1</td><td>27.6</td><td>26.7</td><td>25.6</td></tr><tr><td>MiniCPM-V</td><td>51.5</td><td>25.9</td><td>59.1</td><td>32.0</td><td>53.2</td><td>76.6</td><td>40.8</td><td>32.2</td><td>23.7</td><td>18.0</td></tr><tr><td>Marco-VL</td><td>50.5</td><td>24.3</td><td>56.0</td><td>37.1</td><td>48.2</td><td>58.1</td><td>37.3</td><td>40.6</td><td>19.0</td><td>27.8</td></tr><tr><td>LLaVA-1.5-13B</td><td>50.2</td><td>26.0</td><td>56.9</td><td>32.5</td><td>22.4</td><td>53.7</td><td>42.9</td><td>24.3</td><td>19.0</td><td>24.8</td></tr><tr><td>SVIT</td><td>49.9</td><td>25.4</td><td>59.1</td><td>35.5</td><td>19.9</td><td>51.2</td><td>42.9</td><td>27.8</td><td>27.6</td><td>15.8</td></tr><tr><td>mPLUG-OWL2 -</td><td>48.9</td><td>22.5</td><td>57.5</td><td>28.9</td><td>26.9</td><td>59.7</td><td>39.8</td><td>29.4</td><td>28.0</td><td>10.5</td></tr><tr><td>SPHINX</td><td>47.5</td><td>23.8</td><td>54.5</td><td>39.1</td><td>16.4</td><td>51.0</td><td>41.4</td><td>24.5</td><td>19.8</td><td>18.0</td></tr><tr><td>InstructBLIP-T5-XXL</td><td>46.2</td><td>21.5</td><td>58.0</td><td>31.0</td><td>11.2</td><td>41.7</td><td>44.3</td><td>24.5</td><td>19.4</td><td>28.6</td></tr><tr><td>InstructBLIP-T5-XL</td><td>45.5</td><td>22.9</td><td>53.1</td><td>32.0</td><td>14.5</td><td>44.5</td><td>44.5</td><td>12.9</td><td>21.1</td><td>18.8</td></tr><tr><td>BLIP-2 FLAN-T5-XXL</td><td>45.2</td><td>21.6</td><td>55.1</td><td>33.0</td><td>13.5</td><td>46.3</td><td>42.2</td><td>29.6</td><td>22.8</td><td>17.3</td></tr><tr><td>BLIP-2 FLAN-T5-XL -</td><td>43.0</td><td>20.0</td><td>52.5</td><td>33.5</td><td>16.3</td><td>40.9</td><td>39.2</td><td>9.4</td><td>23.3</td><td>11.3</td></tr><tr><td>Adept Fuyu-Heavy -</td><td>37.4</td><td>19.4</td><td>43.5</td><td>26.4</td><td>6.9</td><td>41.1</td><td>35.5</td><td>8.2</td><td>21.6</td><td>11.3</td></tr><tr><td>LLaMA-Adapter2-7B -</td><td>36.6</td><td>20.4</td><td>42.5</td><td>32.5</td><td>15.6</td><td>23.7</td><td>44.5</td><td>25.1</td><td>18.1</td><td>14.3</td></tr><tr><td>Otter -</td><td>34.1</td><td>18.5</td><td>42.5</td><td>31.5</td><td>5.3</td><td>17.9</td><td>21.2</td><td>21.4</td><td>23.3</td><td>9.8</td></tr><tr><td>MiniGPT4- Vicuna-13B - Image2Text</td><td>32.1</td><td>15.8 Image2Text SEED -Hard</td><td>38.2 . (Mixed) (Mixed) (Mixed)</td><td>25.4 I MMMU (Mixed)</td><td>15.4 DocVQA (Mixed)</td><td>23.4 , TextVQA</td><td>33.7 VisWiz InfographicVQA (Mixed) (Mixed)</td><td>18.4</td><td>15.5 -Hard SEED</td><td>13.5 . MMMU -Hard (Mixed)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the statistics of MixEval-X subsets, including the number of tasks, turns, average tokens, and average input length for each modality.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Claude 3.5 Sonnet</td><td>74.2</td><td>45.5</td><td>73.3</td><td>76.6</td><td>64.8</td><td>79.4</td><td>76.4</td><td>78.9</td><td>60.4</td><td>39.4</td></tr><tr><td>GPT-4⌀ -</td><td>72.7</td><td>38.9</td><td>64.6</td><td>78.2</td><td>74.6</td><td>80.9</td><td>70.1</td><td>78.2</td><td>32.4</td><td>48.0</td></tr><tr><td>Gemini 1.5 Pro</td><td>71.8</td><td>38.1</td><td>65.2</td><td>64.8</td><td>82.6</td><td>82.9</td><td>74.4</td><td>75.7</td><td>43.2</td><td>68.5</td></tr><tr><td>GPT-4V</td><td>71.0</td><td>40.0</td><td>63.4</td><td>78.2</td><td>69.5</td><td>77.9</td><td>69.5</td><td>78.5</td><td>37.2</td><td>37.8</td></tr><tr><td>Qwen2-VL-72B -</td><td>66.5</td><td>32.0</td><td>55.1</td><td>76.6</td><td>58.1</td><td>74.2</td><td>65.0</td><td>78.5</td><td>27.3</td><td>17.3</td></tr><tr><td>Gemini 1.5 Flash</td><td>66.3</td><td>33.9</td><td>59.0</td><td>67.4</td><td>70.3</td><td>73.8</td><td>61.4</td><td>72.3</td><td>26.7</td><td>51.2</td></tr><tr><td>LLaVA-OneVision-72B-OV</td><td>64.7</td><td>32.0</td><td>56.0</td><td>77.0</td><td>64.4</td><td>71.2</td><td>64.9</td><td>70.6</td><td>35.6</td><td>28.3</td></tr><tr><td>Qwen2-VL-7B</td><td>64.2</td><td>31.9</td><td>54.3</td><td>74.7</td><td>52.1</td><td>74.9</td><td>62.6</td><td>68.9</td><td>27.2</td><td>26.0</td></tr><tr><td>LLaVA-Next-Video-34B -</td><td>63.1</td><td>28.4</td><td>56.1</td><td>68.6</td><td>62.7</td><td>74.0</td><td>62.8</td><td>68.0</td><td>26.7</td><td>38.6</td></tr><tr><td>Claude 3 Haiku</td><td>58.7</td><td>29.4</td><td>52.3</td><td>63.6</td><td>48.7</td><td>70.8</td><td>62.7</td><td>70.2</td><td>23.6</td><td>29.1</td></tr><tr><td>LLaVA-Next- Video-7B</td><td>58.7</td><td>27.2</td><td>53.2</td><td>62.1</td><td>44.5</td><td>72.5</td><td>61.0</td><td>74.4</td><td>25.9</td><td>33.1</td></tr><tr><td>Reka-edge</td><td>58.7</td><td>27.3</td><td>51.7</td><td>72.4</td><td>46.6</td><td>69.1</td><td>59.3</td><td>65.2</td><td>29.0</td><td>22.8</td></tr><tr><td>LLaMA-VID -</td><td>55.6</td><td>23.8</td><td>52.9</td><td>60.9</td><td>36.0</td><td>72.8</td><td>61.3</td><td>67.1</td><td>19.1</td><td>17.3</td></tr><tr><td>VideoLLaVA</td><td>55.3</td><td>22.6</td><td>51.7</td><td>64.0</td><td>39.4</td><td>66.7</td><td>61.9</td><td>64.7</td><td>18.2</td><td>26.0</td></tr><tr><td>Video-ChatGPT -</td><td>46.4</td><td>20.7</td><td>45.7</td><td>46.7</td><td>25.4</td><td>72.2</td><td>56.3</td><td>64.8</td><td>24.7</td><td>14.2</td></tr><tr><td>mPLUG-video -</td><td>39.1 Video2Text</td><td>17.8 Video2Text -Hard (Mixed)</td><td>41.5 I ActivityNet-QA</td><td>36.4 I (Mixed) HowToQA</td><td>23.3 1 (Mixed) TVQA</td><td>71.9 MSVD-QA (Mixed)</td><td>56.7 I NextQA-freetext (Mixed)</td><td>61.8 I (Mixed) TGIF-QA</td><td>22.7 -Hard ActivityNet-QA (Mixed)</td><td>7.9 (Mixed) -Hard TVQA</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of MixEval-X subsets, showing the number of tasks, turns, average number of tokens, and input length for each task type, including MMU and agent tasks.


{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td>Gemini 1.5 Pro -</td><td>62.7</td><td>24.0</td><td>67.4</td><td>53.4</td><td>26.8</td><td>21.7</td></tr><tr><td>Gemini 1.5 Flash -</td><td>60.1</td><td>23.0</td><td>67.1</td><td>46.9</td><td>27.4</td><td>19.7</td></tr><tr><td>Qwen2-Audio-7B-Instruct -</td><td>58.8</td><td>23.5</td><td>64.7</td><td>46.0</td><td>22.5</td><td>23.5</td></tr><tr><td>Qwen2-Audio-7B</td><td>56.6</td><td>24.6</td><td>63.1</td><td>44.0</td><td>29.9</td><td>20.0</td></tr><tr><td>SALMONN-13B</td><td>52.5</td><td>20.9</td><td>57.6</td><td>41.4</td><td>14.9</td><td>25.4</td></tr><tr><td>Qwen-Audio</td><td>52.4</td><td>16.0</td><td>61.5</td><td>33.8</td><td>19.0</td><td>12.8</td></tr><tr><td>Qwen-Audio-Chat</td><td>50.2</td><td>20.0</td><td>55.7</td><td>39.4</td><td>19.8</td><td>19.7</td></tr><tr><td>SALMONN-7B -</td><td>38.9</td><td>17.1</td><td>46.6</td><td>22.2</td><td>20.6</td><td>11.6</td></tr><tr><td>Pengi -</td><td>22.6 , Audio2Text</td><td>8.2 I Audio2Text Clotho-AQA -Hard (Mixed)</td><td>26.9 I</td><td>14.4 I DAQA Clotho-AQA (Mixed)</td><td>12.5 I -Hard (Mixed)</td><td>3.8 , DAQA -Hard (Mixed)</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the statistics of MixEval-X subsets, including the number of tasks, turns, average number of tokens per query, and the average input length for each task type.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td>Image2Text Web Queries C-Dist:0.00</td><td>Image2Text-Hard C-Dist:</td><td>Image2Text C-Dist:4.57</td><td>WildVision C-Dist:4.83</td><td>TextVQA</td><td>A-OKVQA</td></tr><tr><td>MMBench C-Dist:8.83</td><td>4.44 VisWiz C-Dist:8.87</td><td>MM-Vet C-Dist:9.52</td><td>DocVQA C-Dist:9.79</td><td>C-Dist: 7.35 Image2Text-Open C-Dist:9.88</td><td>C-Dist: 7.88 InfographicVQA C-Dist: 10.42</td></tr><tr><td>MMMU C-Dist:10.69</td><td>SEED-Bench C-Dist:11.34</td><td>SEED-Bench 2 C-Dist:11.36</td><td>GQA C-Dist: 12.40</td><td>MME C-Dist: 13.30</td><td>ScienceQA C-Dist:17.57</td></tr><tr><td>HallusionBench</td><td>ChartQA</td><td>AI2D C-Dist:20.38</td><td>Q-Bench C-Dist:30.19</td><td>MathVista C-Dist:47.21</td><td>Video2Text Web Queries C-Dist:0.00</td></tr><tr><td>C-Dist:19.44 Video2Text</td><td>C-Dist:20.18 Video2Text-Hard</td><td>Video-MME C-Dist:5.61</td><td>VideoVista C-Dist: 7.00</td><td>MSRVTT-QA C-Dist: 7.75</td><td>HowToQA C-Dist:8.91</td></tr><tr><td>C-Dist: Video2Text-Open</td><td>C-Dist:5.27 ActivityNet-QA</td><td>NextQA-choice</td><td>TVQA</td><td>IVQA</td><td>NextQA-freetext</td></tr><tr><td>C-Dist:9.66 Social-IQ-2.0</td><td>C-Dist: 9.86 TGIF-QA</td><td>C-Dist: 12.20 EgoSchema</td><td>C-Dist: 13.07 MSVD-QA</td><td>C-Dist: 13.46 STAR</td><td>C-Dist: 15.16 Perception-Test</td></tr><tr><td>C-Dist: 16.18 SUTD-TrafficQA C-Dist:62.91 DAQA C-Dist: 42.18 PlanBench C-Dist:j84.92</td><td>C-Dist: 18.77 Audio2Text Web Queries C-Dist:0.00 CLEAR C-Dist: 86.92 Image2Action Web Queries C-Dist:0.46</td><td>C-Dist: 19.77 Audio2Text C-Dist: 10.38 Text2Action Web Queries C-Dist: 0.22 Image2Action C-Dist:16.58</td><td>C-Dist:21.17 Audio2Text-Hard C-Dist: 10.56 Text2Action C-Dist: 12.47 Android-In-The-Zoo C-Dist:39.23</td><td>C-Dist:32.90 Audio2Text-Open C-Dist: 15.22 WebArena C-Dist: 27.13 ALFRED C-Dist:77.93</td><td>C-Dist:36.69 Clotho-AQA C-Dist: 18.03 ToolBench C-Dist: 39.29 VisualWebArena C-Dist:81.06</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the statistics of MixEval-X subsets, showing the number of tasks, turns, average token counts, and input lengths for each task type.


{{< table-caption >}}
<table id='15' style='font-size:18px'><tr><td>Text2Action Tasks</td></tr><tr><td>Task Description: Find and send a copy of the Donor Privacy Policy to a requesting donor. Allowed Actions: [Navigation], [PickupObject], [PutObject], [OpenObject], [CloseObject], [ReadText], [PrintObject], [ScanObject], [SendEmail], [TypeText], [AttachFile], [OpenEmailClient],</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of MixEval-X subsets, including the number of tasks, turns, average number of tokens, average input length, minimum input length, maximum input length, and English ratio for each subset.


{{< table-caption >}}
<table id='13' style='font-size:14px'><tr><td>Text2Image - turn 2</td></tr><tr><td>In this task, you will act as an impartial judge for an image editing task.</td></tr><tr><td>You will be provided with an image to edit, the user prompt to edit the image, and the edited image. Your task is to evaluate the quality of the edited image based on the given information.</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table presents the statistics of the MixEval-X benchmark's subsets, including the number of tasks, turns, tokens, input length, and English ratio for each task type.


{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td></td><td>GPT</td><td>Claude</td><td>Gemini</td><td>Avg.</td></tr><tr><td>1st turn</td><td>0.82</td><td>0.68</td><td>0.78</td><td>0.83</td></tr><tr><td>2nd turn</td><td>0.67</td><td>0.56</td><td>0.6</td><td>0.58</td></tr><tr><td>Avg.</td><td>0.75</td><td>0.8</td><td>0.83</td><td>0.78</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the statistics of MixEval-X subsets, including the number of tasks, turns, average number of tokens per query, average input length, minimum and maximum input length, and English ratio for each task type.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td>Location Environment Nearby Buildings Piano Lyrics Product</td><td>Weather Conditions Water Sounds Location Objects and Actions Miscellaneous</td><td>Instrument Notes Sound Characteristics Scene Position Sequence of Sounds Count of Specific Notes</td><td>Sound Position Sound Loudness Sound Brightness Instrument Note</td></tr><tr><td></td><td>Activity Inquiry Work Progress Location Query Speech Content Miscellaneous</td><td>Speaking Detection Speech Content Ambient Sounds Scene Description Audio Captions</td><td>Y Animal Sounds Vehicle Sounds Musical Instruments Natural Environment Sound Characteristics</td><td>Brightness ▶ Loudness Sound Count Sound Sequence Volume Change</td></tr><tr><td></td><td>Conversations Arguments Contextual Inquiries</td><td>Audio Interpretation Human Speech Analysis Emotional Response Podcast Preferences Miscellaneous</td><td>Sound Counts Sound Sequences Sound Identification Human Reactions Comparative Sounds</td><td>Sound Duration Sound Loudness Sound Event Sequence Sound Comparison Specific Sound Inquiry</td></tr><tr><td>Invitations Calls Requests Statements</td><td></td><td>Phone Ringing Court/Legal Personal Experiences Questions Credit Card WarninG</td><td>Human Typing Emergency Vehicles Phone Ringing Crowds Rioting Vehicles Passing</td><td>Loudness Comparison Frequency Comparison Equal Occurrences Crowd VS. Other Noises Shapiro Query</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents the statistics of the MixEval-X benchmark, including the number of tasks, turns, average token counts, average input length, and the ratio of English tasks.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td>Dictionary Words News Articles Comics Recommendations Translation Requests GitHub Repository</td><td>Travel Planning Order Management Domain and Web Data Forex Trading Service and Installation</td><td>Directions Internet Security Medical Referral Cookies Map Queries</td><td>Data Deletion Rollback Data Clone Command Audio Options Settings Navigation</td></tr><tr><td></td><td>Social Media E-commerce Subreddit Posts Charity Event User Reviews</td><td>Subscriptions Educational Activities Health and Safety User Awareness Reporting and Evaluation</td><td>Notifications Adjust Settings Administer Medication Travel Instructions Maintenance Tasks</td><td>Computer Operations Gaming Configuration Navigation Miscellaneous</td></tr><tr><td></td><td>Political Advocacy Seasonal Activities Call to Action Daily Updates Personal Requests</td><td>Assistance Delivery Investigation Relationships Safety</td><td>Health Advice Exercise Safety Practices Games/Sports Travel Tips</td><td>Block Stacking Object Actions Game Combat Logistics Planning Gameplay Mechanics</td></tr><tr><td></td><td>Weapons Business Winning Conditions Fun Stealing Basement Beers General Rules</td><td>Orders Dress Code Demons Assistance Guests</td><td>Cooking Instructions Scientific Procedures Animal Care Cleaning Tips Handling Materials</td><td>3D Model Engines Archimedes Experiment Fluid Mechanics Ovals</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of MixEval-X subsets, including the number of tasks, turns, average number of tokens per query, average input length, minimum and maximum input length, and English ratio.


{{< table-caption >}}
<table id='1' style='font-size:14px'><tr><td></td><td>Product Recall Fuel Tank Image Editing Grid Drawing</td></tr><tr><td>Medical Procedures Drawing Assembly Instructions Wiring Safety Instructions Drilling Technical Process Clamping</td><td>Click Actions Navigate/Move Photo Enhancements Adjust Settings File Operations Delete/Remove Scan Adjustments</td></tr><tr><td>Gardening tasks Gun Manipulation Household chores Laser Calibration Baby care Medication Label Object placement Arch Bricks Health instructions Measuring Techniques</td><td>Zoom/Enlarge Clicking Analyze Image Scrolling Game Instructions Tapping Printing/Test Prints Typing VR/3D Viewing Viewing</td></tr><tr><td>Cooking Potato Measuring and Construction Moving Objects Action and Interaction Labeling Kitchen Counters Creative Arts Child Safety Missions and Quests Storing Items Costumes and Props</td><td>Image Identification Click Button User Authentication Register/Login Game Instructions Change Username Map/Navigation Create/Post Content Poster Printing Messaging</td></tr><tr><td>Photography Directions Travel Landmarks Dining Photography Shopping Safety Alerts Assistance Miscellaneous</td><td>Upvote Requests Subscription Requests Navigation/Driving Comment Requests Information Retrieval Price Inquiries Calendar/Alarms Viewing Requests Instructions/Actions Navigation Requests</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the statistics of MixEval-X subsets, including the number of tasks, turns, average token numbers, and input lengths for each modality.


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
<img src="paper_images/34.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/35.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/36.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/37.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/38.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/39.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/40.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/41.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/42.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/43.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/44.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/45.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/46.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/47.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/48.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/49.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/50.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/51.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/52.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/53.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/54.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/55.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/56.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/57.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/58.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="paper_images/59.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}