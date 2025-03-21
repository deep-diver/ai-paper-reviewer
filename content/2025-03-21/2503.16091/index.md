---
title: "AIMI: Leveraging Future Knowledge and Personalization in Sparse Event Forecasting for Treatment Adherence"
summary: "AIMI: A system leveraging future knowledge & personalized data for accurate treatment adherence forecasting, paving the way for timely mobile interventions."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Healthcare", "🏢 Arizona State University",]
showSummary: true
date: 2025-03-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16091 {{< /keyword >}}
{{< keyword icon="writer" >}} Abdullah Mamun et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16091" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16091" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16091/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Adherence to treatment plans is crucial for managing chronic conditions, yet forecasting and improving adherence remains a challenge. Current systems often lack the ability to provide timely and personalized support. This paper addresses this gap by introducing a novel system called **Adherence Forecasting and Intervention with Machine Intelligence (AIMI)**. AIMI uses data from smartphone sensors and medication history to predict the likelihood of forgetting medication.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LSTM models, enhanced with future knowledge, significantly improve treatment adherence forecasting accuracy. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Personalization of forecasting models is crucial for addressing individual variations and enhancing prediction performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The AIMI system demonstrates the potential of integrating wearable sensor data and future knowledge to enable timely and personalized interventions. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research is important because it addresses a critical need for **personalized adherence forecasting in healthcare**. By leveraging wearable sensor data and future knowledge, it opens new avenues for developing effective intervention tools and improving patient outcomes, contributing to the growing field of **mobile health and personalized medicine**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16091/extracted/6296383/acc_cnn_lstm.png)

> 🔼 This figure illustrates the Adherence Forecasting and Intervention with Machine Intelligence (AIMI) system's architecture, focusing on the LSTM-based forecasting model.  The data flow begins with sensor data and event data being processed. The processed data, along with knowledge features, is fed into the LSTM model which then outputs a prediction for the next hour's medication event.  The parentheses display the dimensions of the input data for a batch size of 32, showing the shape of the sensor data, event data, and knowledge features.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of the AIMI system with the architecture of the LSTM-based forecasting model. The shapes of the data for a batch size 32 and forecasting with sensor, event, and knowledge features are indicated in parentheses.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.7.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T1.7.1.1.1"><span class="ltx_text ltx_font_italic" id="S3.T1.7.1.1.1.1">Feature</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T1.7.1.1.2">Type</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S3.T1.7.1.1.3"><span class="ltx_text ltx_font_italic" id="S3.T1.7.1.1.3.1">Dimension</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.7.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.2.1.1.1">High-resolution features (H)</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.7.2.1.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.2.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.7.2.1.3.1">14</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.3.2">
<td class="ltx_td ltx_align_left" id="S3.T1.7.3.2.1">Yaw, Pitch, Roll</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.3.2.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.3.2.3">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.4.3">
<td class="ltx_td ltx_align_left" id="S3.T1.7.4.3.1">Rotation rate (x,y,z)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.4.3.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.4.3.3">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.5.4">
<td class="ltx_td ltx_align_left" id="S3.T1.7.5.4.1">Acceleration (x,y,z)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.5.4.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.5.4.3">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.6.5">
<td class="ltx_td ltx_align_left" id="S3.T1.7.6.5.1">Latitude, longitude</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.6.5.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.6.5.3">2</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7.6">
<td class="ltx_td ltx_align_left" id="S3.T1.7.7.6.1">Altitude, horizontal accuracy, speed</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.7.6.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.7.6.3">3</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.8.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.8.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.8.7.1.1">Low-resolution features (L)</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.7.8.7.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.8.7.3"><span class="ltx_text ltx_font_bold" id="S3.T1.7.8.7.3.1">39</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.9.8">
<td class="ltx_td ltx_align_left" id="S3.T1.7.9.8.1">Last medication event</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.9.8.2">B</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.9.8.3">1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.10.9">
<td class="ltx_td ltx_align_left" id="S3.T1.7.10.9.1">Last prescribed time</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.10.9.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.10.9.3">1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.11.10">
<td class="ltx_td ltx_align_left" id="S3.T1.7.11.10.1">Last event hour</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.11.10.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.11.10.3">1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.12.11">
<td class="ltx_td ltx_align_left" id="S3.T1.7.12.11.1">Day of the week</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.12.11.2">B</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.12.11.3">7</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.13.12">
<td class="ltx_td ltx_align_left" id="S3.T1.7.13.12.1">Hour of the day</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.13.12.2">B</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.13.12.3">24</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.14.13">
<td class="ltx_td ltx_align_left" id="S3.T1.7.14.13.1">Medication events of</td>
<td class="ltx_td" id="S3.T1.7.14.13.2"></td>
<td class="ltx_td" id="S3.T1.7.14.13.3"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.15.14">
<td class="ltx_td ltx_align_left" id="S3.T1.7.15.14.1">last 2, 3, 6, 12, and 24 hours</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.15.14.2">B</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.15.14.3">5</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.16.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.16.15.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.15.1.1">Future knowledge features (K)</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.7.16.15.2"></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.16.15.3"><span class="ltx_text ltx_font_bold" id="S3.T1.7.16.15.3.1">26</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.17.16">
<td class="ltx_td ltx_align_left" id="S3.T1.7.17.16.1"><span class="ltx_text ltx_font_italic" id="S3.T1.7.17.16.1.1">Relative timestamp</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.17.16.2">N</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.17.16.3"><span class="ltx_text ltx_font_italic" id="S3.T1.7.17.16.3.1">2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.18.17">
<td class="ltx_td ltx_align_left" id="S3.T1.7.18.17.1"><span class="ltx_text ltx_font_italic" id="S3.T1.7.18.17.1.1">Next prescribed hour</span></td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.18.17.2">B</td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.18.17.3"><span class="ltx_text ltx_font_italic" id="S3.T1.7.18.17.3.1">24</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.19.18">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T1.7.19.18.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.19.18.1.1">Medication next hour (target)</span></td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T1.7.19.18.2">B</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S3.T1.7.19.18.3"><span class="ltx_text ltx_font_bold" id="S3.T1.7.19.18.3.1">1</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the features used in the AIMI model for forecasting medication adherence.  It details the type and dimensionality of each feature, categorized into high-resolution sensor data, low-resolution sensor data, and future knowledge features.  The 'Relative Timestamp' and 'Next Prescribed Hour' features are particularly important because they incorporate knowledge of future events.  The target variable to be predicted is 'Medication Next Hour', indicating whether the medication was taken in the next hour.
> <details>
> <summary>read the caption</summary>
> Table 1: Dataset features. Here, the Relative timestamp and Next prescribed hour features embed knowledge of the future. Medication next hour is the forecast variable. Type N=numeric, B=boolean.
> </details>





### In-depth insights


#### AIMI: Adherence
**AIMI (Adherence Forecasting and Intervention with Machine Intelligence)** is an approach to improve **medication adherence** using technology. It leverages data from smartphone sensors and medication history to predict if someone will miss taking their medication. The core idea is to provide timely, **personalized support** to individuals who are at risk of non-adherence. AIMI utilizes machine learning models to analyze sensor data (activity, location) and combine it with information about prescribed medications, like dosage, frequency. The aim is to create a system that can accurately forecast treatment adherence and enable interventions, such as reminders or personalized support, to help patients stay on track. The 'intelligence' aspect refers to machine learning algorithms. It's important to note that the system accounts for both current activity, past adherence, time context, and future prescription information.

#### Sparse Event DL
Sparse Event Deep Learning (DL) presents unique challenges and opportunities. The "sparse" nature implies data scarcity, where events of interest are infrequent compared to background noise or irrelevant data. This necessitates specialized DL architectures and training methodologies. **Data augmentation techniques** become crucial to artificially inflate the event dataset, and **transfer learning** from related, denser datasets can bootstrap model performance. **Anomaly detection** approaches can be adapted, framing rare events as deviations from the norm. Careful consideration of **loss functions** is essential; weighted losses or focal loss can prioritize accurate classification of the sparse event class. Furthermore, DL models must be robust to the imbalanced nature of sparse event data. **Specialized architectures like autoencoders or generative adversarial networks (GANs)** can learn the underlying data distribution and generate synthetic events for augmentation. The goal is to extract meaningful insights from limited data, requiring careful **feature engineering** and algorithm selection.

#### Time-Series Future
The idea of "Time-Series Future" in research is intriguing, particularly when considering predictive modeling. It suggests leveraging not only historical data but also anticipated future events to improve forecast accuracy. **Incorporating future knowledge could significantly enhance the precision of models**, especially in domains with scheduled events or known interventions. For example, in healthcare, knowing future medication schedules or appointments could refine adherence predictions. The challenge lies in **effectively integrating this future information** without introducing bias or overfitting to known events. **Careful feature engineering** is needed to ensure the model learns generalizable patterns rather than simply memorizing specific future occurrences. Additionally, **handling uncertainty associated with future events** is crucial, as predictions about the future are inherently probabilistic. The potential benefits of incorporating future knowledge into time-series models warrant further investigation, as it could lead to more robust and reliable forecasting in various fields.

#### CNN vs. LSTM
When comparing CNNs and LSTMs, several factors must be considered. **CNNs excel at extracting spatial features**, making them suitable for tasks where local patterns are important. Their **computational efficiency** often allows for faster training, especially with large datasets. However, **CNNs might struggle with long-range dependencies** in sequential data. Conversely, **LSTMs are designed to capture temporal dependencies**, processing sequences step-by-step and maintaining a memory of past inputs. This makes them ideal for time-series analysis and natural language processing, but they can be **computationally intensive** and may require more training data. The choice between CNNs and LSTMs depends on the specific task and data characteristics. **Hybrid approaches** combining the strengths of both architectures are also common, leveraging CNNs for feature extraction and LSTMs for sequence modeling. Additionally, it is very important to choose the **appropriate hyperparameters** of each model to get the best results.

#### Personalization
The section on personalization highlights the importance of tailoring treatment adherence strategies to individual needs and behaviors. **Generic interventions often fall short** due to the diverse factors influencing adherence, such as personal beliefs, lifestyle, and social support. **Personalization involves leveraging individual data**, including sensor data, adherence history, and contextual information, to create targeted interventions. This approach acknowledges that individuals respond differently to reminders, feedback, and support mechanisms. **Adaptive interventions**, which adjust in real-time based on individual responses, hold significant promise. Personalization further improves by addressing the parameter challanges during model training for a specific set of users. **Personalized models** can thus forcast better than generic, and more robust models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16091/extracted/6296383/f1_cnn_lstm.png)

> 🔼 This figure illustrates the data processing pipeline used in the AIMI system.  It starts with raw sensor data and event data (medication taken or missed) collected from individual users. The data is then processed to add more features like contextual information (day of week, time of day), and derived features. This enriched dataset is then split into training and testing datasets, with 90% of the data used for training and the remaining 10% for testing the prediction model.  The training data is further processed using a sliding window technique to create multiple instances for model training.
> <details>
> <summary>read the caption</summary>
> Figure 2: An illustration of the AIMI system’s data processing method and separation of training and test data.
> </details>



![](https://arxiv.org/html/2503.16091/extracted/6296383/personalized_acc.png)

> 🔼 The figure shows a comparison of the CNN and LSTM models' accuracies and F1-scores across different training phases.  The x-axis represents different training phases, each labeled with the number of training and test participants involved (e.g., 1-1 indicates one training and one testing participant, while 22-5 represents 22 training and 5 testing participants). The y-axis represents the model's performance, measured in terms of accuracy (sub-figure a) and F1-score (sub-figure b).  The lines represent the performance of each model (CNN and LSTM) across various training phases.  This visual helps demonstrate how the models perform with increasing amounts of training data and the relative strengths of each model in terms of accuracy and F1-score.
> <details>
> <summary>read the caption</summary>
> (a) Accuracies
> </details>



![](https://arxiv.org/html/2503.16091/extracted/6296383/personalized_f1.png)

> 🔼 This figure shows the macro-averaged F-1 scores of the CNN and LSTM models across different training phases.  The x-axis represents the training phase, indicating the number of participants used for training and testing in each phase (e.g., 1-1 means 1 participant for training and 1 for testing, while 22-5 represents 22 participants for training and 5 for testing).  The y-axis represents the F-1 score, a metric that combines precision and recall, measuring the overall accuracy of the model's predictions. The plot shows how the F-1 score changes for both CNN and LSTM models as the amount of training data increases. This illustrates the models' performance improvement with more training data and allows for a comparison between the two model architectures.
> <details>
> <summary>read the caption</summary>
> (b) F-1 scores
> </details>



![](https://arxiv.org/html/2503.16091/extracted/6296383/model_plot_cnn_79.png)

> 🔼 This figure compares the performance of Convolutional Neural Network (CNN) and Long Short-Term Memory (LSTM) models for forecasting medication adherence.  The models were trained incrementally, adding more participants' data in each phase. The x-axis shows the training phases, identified by the number of training and testing participants (e.g., 1-1 means 1 participant for training and 1 for testing, 5-4 means 5 for training and 4 for testing, and so on).  The y-axis represents the model's accuracy and F1-score, key metrics evaluating model performance.  The figure helps to visualize how the models' accuracy and F1-score change as more data is included in the training process. This provides insight into the effectiveness of each model and the impact of data size on prediction accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 3: Comparison of the CNN and LSTM models’ accuracies and macro average F-1 scores in different training phases. The training phase labels, 1-1, 5-4, 9-4, 13-4, 17-4, and 22-5, indicate the numbers of training and test participants for those phases.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.1.1">#Train</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.1.2">Input</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.1.3">Feature</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.1.4">#Param</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.1.5">Epochs</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.4.1.1.6">Train</th>
</tr>
<tr class="ltx_tr" id="S4.T2.4.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T2.4.2.2.1">users</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T2.4.2.2.2"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T2.4.2.2.3">dim.</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T2.4.2.2.4"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T2.4.2.2.5"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S4.T2.4.2.2.6">hours</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.3.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.3.1.1">22</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.3.1.2">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.3.1.3">14</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.3.1.4">139</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.3.1.5">10</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.3.1.6">1.89</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.2">
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.2.1">22</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.2.2">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.2.3">40</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.2.4">347</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.2.5">10</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.2.6">1.93</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.5.3">
<td class="ltx_td ltx_align_left" id="S4.T2.4.5.3.1">22</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.5.3.2">H+L</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.5.3.3">53</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.5.3.4">451</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.5.3.5">10</td>
<td class="ltx_td ltx_align_left" id="S4.T2.4.5.3.6">2.40</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.6.4">
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.4.6.4.1">22</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.4.6.4.2">H+L+K</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.4.6.4.3">79</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.4.6.4.4">659</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.4.6.4.5">10</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T2.4.6.4.6">2.47</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the computational time required for training LSTM models using different sets of features. The models were trained on a CPU.  The table shows the number of training users, input dimensions, the features used (High-resolution (H), Low-resolution (L), and Future knowledge (K) features), the number of model parameters, the number of training epochs, and the total training time in hours. This allows for a comparison of training time across different feature combinations and model complexities.
> <details>
> <summary>read the caption</summary>
> Table 2: Compute time needed with CPU for training the LSTM models. H = high-resolution, L = low-resolution, and K = future knowledge features.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.5.1.1.1">#Train</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T3.5.1.1.2">#Test</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.1.3">Features</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.1.4">Accuracy</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.1.5">Precision</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.1.6">Recall</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T3.5.1.1.7">F-1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T3.5.2.1.1">users</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T3.5.2.1.2">users</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.5.2.1.3"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.5.2.1.4"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.5.2.1.5"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T3.5.2.1.6"></th>
<td class="ltx_td" id="S4.T3.5.2.1.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.3.2.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.3.2.2">1</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.3.2.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.3.2.4">0.617</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.3.2.5">0.189</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.3.2.6">0.521</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.3.2.7">0.237</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.4.3.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.4.3.2">1</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.4.3.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.4.3.4">0.869</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.4.3.5">0.385</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.4.3.6">0.562</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.4.3.7">0.449</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.5.4.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.5.4.2">1</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.4.3">H+L</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.4.4">0.510</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.4.5">0.015</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.4.6">0.333</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.5.4.7">0.028</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.6.5.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.6.5.2">1</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.6.5.3">H+L+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.6.5.4.1">0.937</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.6.5.5.1">0.405</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.6.5.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.6.5.6.1">0.600</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.6.5.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.6.5.7.1">0.469</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.7.6.1">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.7.6.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.7.6.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.7.6.4">0.549</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.7.6.5">0.447</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.7.6.6">0.328</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.7.6.7">0.375</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.8.7.1">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.8.7.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.8.7.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.8.7.4">0.805</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.8.7.5">0.847</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.8.7.6">0.719</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.8.7.7">0.733</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.9.8.1">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.9.8.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.9.8.3">H+L</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.9.8.4">0.659</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.9.8.5">0.652</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.9.8.6">0.820</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.9.8.7">0.705</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.10.9.1">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.10.9.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.10.9.3">H+L+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.10.9.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.10.9.4.1">0.912</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.10.9.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.10.9.5.1">0.895</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.10.9.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.10.9.6.1">0.936</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.10.9.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.10.9.7.1">0.913</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.11.10.1">9</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.11.10.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.11.10.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.11.10.4">0.475</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.11.10.5">0.321</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.11.10.6">0.441</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.11.10.7">0.361</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.12.11.1">9</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.12.11.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.12.11.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.12.11.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.12.11.4.1">0.909</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.12.11.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.12.11.5.1">0.871</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.12.11.6">0.961</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.12.11.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.12.11.7.1">0.914</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.13.12.1">9</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.13.12.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.13.12.3">H+L</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.13.12.4">0.782</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.13.12.5">0.824</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.13.12.6">0.715</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.13.12.7">0.765</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.14.13.1">9</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.14.13.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.14.13.3">H+L+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.14.13.4">0.896</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.14.13.5">0.848</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.14.13.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.14.13.6.1">0.970</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.14.13.7">0.904</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.15.14.1">13</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.15.14.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.15.14.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.15.14.4">0.494</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.15.14.5">0.166</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.15.14.6">0.333</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.15.14.7">0.222</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.16.15.1">13</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.16.15.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.16.15.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.16.15.4">0.845</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.16.15.5">0.878</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.16.15.6">0.801</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.16.15.7">0.838</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.17.16.1">13</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.17.16.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.17.16.3">H+L</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.17.16.4">0.833</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.17.16.5">0.787</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.17.16.6">0.921</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.17.16.7">0.847</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.18.17.1">13</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.18.17.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.18.17.3">H+L+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.18.17.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.18.17.4.1">0.919</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.18.17.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.18.17.5.1">0.888</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.18.17.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.18.17.6.1">0.958</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.18.17.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.18.17.7.1">0.922</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.19.18.1">17</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.19.18.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.19.18.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.19.18.4">0.605</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.19.18.5">0.665</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.19.18.6">0.659</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.19.18.7">0.616</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.20.19.1">17</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.20.19.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.20.19.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.20.19.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.20.19.4.1">0.906</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.20.19.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.20.19.5.1">0.855</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.20.19.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.20.19.6.1">0.977</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.20.19.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.20.19.7.1">0.912</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.21.20.1">17</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.21.20.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.21.20.3">H+L</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.21.20.4">0.834</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.21.20.5">0.794</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.21.20.6">0.899</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.21.20.7">0.842</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.22.21.1">17</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.22.21.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.22.21.3">H+L+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.22.21.4">0.894</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.22.21.5">0.849</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.22.21.6">0.959</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.22.21.7">0.901</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.23.22.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.5.23.22.2">5</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.23.22.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.23.22.4">0.516</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.23.22.5">0.455</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.23.22.6">0.526</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.23.22.7">0.442</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.24.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.24.23.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.24.23.2">5</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.24.23.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.24.23.4"><span class="ltx_text ltx_font_bold" id="S4.T3.5.24.23.4.1">0.932</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.24.23.5"><span class="ltx_text ltx_font_bold" id="S4.T3.5.24.23.5.1">0.888</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.24.23.6"><span class="ltx_text ltx_font_bold" id="S4.T3.5.24.23.6.1">0.989</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.24.23.7"><span class="ltx_text ltx_font_bold" id="S4.T3.5.24.23.7.1">0.936</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.25.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.25.24.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.5.25.24.2">5</th>
<td class="ltx_td ltx_align_left" id="S4.T3.5.25.24.3">H+L</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.25.24.4">0.829</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.25.24.5">0.798</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.25.24.6">0.903</td>
<td class="ltx_td ltx_align_left" id="S4.T3.5.25.24.7">0.837</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T3.5.26.25.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T3.5.26.25.2">5</th>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T3.5.26.25.3">H+L+K</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T3.5.26.25.4">0.898</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T3.5.26.25.5">0.867</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T3.5.26.25.6">0.946</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T3.5.26.25.7">0.903</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results comparing four LSTM models trained with different feature sets across six iterations.  The models used high-resolution (H), low-resolution (L), and future knowledge (K) features in various combinations. The results demonstrate the impact of each feature set on model performance, measured by accuracy, precision, recall, and F1-score. A statistically significant improvement (p<0.00006) in the F1-score was observed when future knowledge features (K) were included, highlighting their importance in improving prediction accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation experiments for training in 6 iterations. Four LSTM models are independently trained for different sets of features: H= high-resolution, L= low-resolution, and K= future knowledge features. The p-value for the effect of K on F-1 scores is 0.00006 <<much-less-than<<< < standard threshold of 0.05.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.5.1.1.1">#Train</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T4.5.1.1.2">#Test</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.1.3">Features</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.1.4">Accuracy</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.1.5">Precision</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.1.6">Recall</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T4.5.1.1.7">F-1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.5.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T4.5.2.1.1">users</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T4.5.2.1.2">users</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T4.5.2.1.3"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T4.5.2.1.4"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T4.5.2.1.5"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T4.5.2.1.6"></th>
<td class="ltx_td" id="S4.T4.5.2.1.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.3.2.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.3.2.2">1</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.3.2.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.3.2.4">0.905</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.3.2.5">0.575</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.3.2.6">0.574</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.3.2.7">0.575</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.4.3.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.4.3.2">1</th>
<td class="ltx_td ltx_align_left" id="S4.T4.5.4.3.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.4.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.4.3.4.1">0.952</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.4.3.5.1">0.577</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.4.3.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.4.3.6.1">0.599</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.4.3.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.4.3.7.1">0.588</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.5.4.1">8</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.5.4.2">7</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.5.4.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.5.4.4">0.403</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.5.4.5">0.241</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.5.4.6">0.406</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.5.4.7">0.292</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.6.5.1">8</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.6.5.2">7</th>
<td class="ltx_td ltx_align_left" id="S4.T4.5.6.5.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.6.5.4.1">0.879</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.6.5.5.1">0.879</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.6.5.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.6.5.6.1">0.879</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.6.5.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.6.5.7.1">0.879</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.7.6.1">12</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.7.6.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.7.6.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.7.6.4">0.525</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.7.6.5">0.526</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.7.6.6">0.524</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.7.6.7">0.518</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.8.7.1">12</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.8.7.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T4.5.8.7.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.8.7.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.7.4.1">0.880</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.8.7.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.7.5.1">0.880</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.8.7.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.7.6.1">0.880</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.8.7.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.8.7.7.1">0.880</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.9.8.1">16</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.9.8.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.9.8.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.9.8.4">0.490</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.9.8.5">0.489</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.9.8.6">0.490</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.9.8.7">0.485</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.10.9.1">16</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.5.10.9.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T4.5.10.9.3">H+K</td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.10.9.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.10.9.4.1">0.936</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.10.9.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.10.9.5.1">0.943</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.10.9.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.10.9.6.1">0.937</span></td>
<td class="ltx_td ltx_align_left" id="S4.T4.5.10.9.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.10.9.7.1">0.936</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.11.10.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.5.11.10.2">6</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.11.10.3">H</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.11.10.4">0.516</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.11.10.5">0.549</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.11.10.6">0.518</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.5.11.10.7">0.428</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T4.5.12.11.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T4.5.12.11.2">6</th>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T4.5.12.11.3">H+K</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T4.5.12.11.4"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.11.4.1">0.922</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T4.5.12.11.5"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.11.5.1">0.932</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T4.5.12.11.6"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.11.6.1">0.922</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T4.5.12.11.7"><span class="ltx_text ltx_font_bold" id="S4.T4.5.12.11.7.1">0.921</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results comparing the performance of an LSTM model trained with different combinations of features (high-resolution, low-resolution, and future knowledge).  The model was trained across 5 iterations, with participant data selected differently than in Table 3. The results show the impact of including future knowledge (K) features on model accuracy, precision, recall, and F1-score. Statistical significance of the impact of K on the F1-score is demonstrated using a p-value significantly below the standard threshold of 0.05.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation experiments for training in 5 iterations. Participants for each phase are chosen differently than the experiments of Table 3. H= high-resolution, L= Low-resolution, and K= future knowledge features. The p-value for the effect of K on F-1 scores is 0.001 <<much-less-than<<< < standard threshold of 0.05. Therefore, our results are statistically significant.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.5">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T5.5.1.1.1">#Train</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T5.5.1.1.2">#Test</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.1.3">Features</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.1.4">Accuracy</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.1.5">Precision</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.1.6">Recall</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T5.5.1.1.7">F-1</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.5.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T5.5.2.1.1">users</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T5.5.2.1.2">users</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T5.5.2.1.3"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T5.5.2.1.4"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T5.5.2.1.5"></th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T5.5.2.1.6"></th>
<td class="ltx_td" id="S4.T5.5.2.1.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.3.2.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.3.2.2">1</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.3.2.3">Loc</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.3.2.4">0.500</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.3.2.5">0.181</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.3.2.6">0.667</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.3.2.7">0.250</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.4.3.1">1</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.4.3.2">1</th>
<td class="ltx_td ltx_align_left" id="S4.T5.5.4.3.3">Loc+K</td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.4.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.4.3.4.1">0.543</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.4.3.5.1">0.329</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.4.3.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.4.3.6.1">1.000</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.4.3.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.4.3.7.1">0.402</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.5.4.1">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.5.4.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.5.4.3">Loc</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.5.4.4">0.501</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.5.4.5">0.168</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.5.4.6">0.333</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.5.4.7">0.223</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.6.5.1">5</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.6.5.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T5.5.6.5.3">Loc+K</td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.6.5.4.1">0.756</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.6.5.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.6.5.5.1">0.578</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.6.5.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.6.5.6.1">0.602</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.6.5.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.6.5.7.1">0.589</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.7.6.1">9</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.7.6.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.7.6.3">Loc</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.7.6.4">0.500</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.7.6.5">0.166</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.7.6.6">0.333</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.7.6.7">0.221</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.8.7.1">9</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.8.7.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T5.5.8.7.3">Loc+K</td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.8.7.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.8.7.4.1">0.889</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.8.7.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.8.7.5.1">0.872</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.8.7.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.8.7.6.1">0.911</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.8.7.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.8.7.7.1">0.888</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.9.8.1">13</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.9.8.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.9.8.3">Loc</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.9.8.4">0.503</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.9.8.5">0.336</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.9.8.6">0.667</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.9.8.7">0.446</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.10.9.1">13</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.10.9.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T5.5.10.9.3">Loc+K</td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.10.9.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.10.9.4.1">0.906</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.10.9.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.10.9.5.1">0.858</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.10.9.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.10.9.6.1">0.978</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.10.9.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.10.9.7.1">0.913</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.11.10.1">17</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.11.10.2">4</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.11.10.3">Loc</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.11.10.4">0.502</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.11.10.5">0.168</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.11.10.6">0.333</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.11.10.7">0.223</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.12.11.1">17</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.5.12.11.2">4</th>
<td class="ltx_td ltx_align_left" id="S4.T5.5.12.11.3">Loc+K</td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.12.11.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.12.11.4.1">0.876</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.12.11.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.12.11.5.1">0.847</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.12.11.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.12.11.6.1">0.921</span></td>
<td class="ltx_td ltx_align_left" id="S4.T5.5.12.11.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.12.11.7.1">0.879</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.13.12.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T5.5.13.12.2">5</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.13.12.3">Loc</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.13.12.4">0.501</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.13.12.5">0.334</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.13.12.6">0.667</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.5.13.12.7">0.445</td>
</tr>
<tr class="ltx_tr" id="S4.T5.5.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T5.5.14.13.1">22</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S4.T5.5.14.13.2">5</th>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T5.5.14.13.3">Loc+K</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T5.5.14.13.4"><span class="ltx_text ltx_font_bold" id="S4.T5.5.14.13.4.1">0.925</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T5.5.14.13.5"><span class="ltx_text ltx_font_bold" id="S4.T5.5.14.13.5.1">0.870</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T5.5.14.13.6"><span class="ltx_text ltx_font_bold" id="S4.T5.5.14.13.6.1">1.000</span></td>
<td class="ltx_td ltx_align_left ltx_border_b" id="S4.T5.5.14.13.7"><span class="ltx_text ltx_font_bold" id="S4.T5.5.14.13.7.1">0.930</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of location data and future knowledge features on the accuracy of medication adherence forecasting using LSTM models.  Two sets of experiments are shown. One uses only location data ('Loc'), and the other combines location data with future knowledge features ('Loc+K'). The results (accuracy, precision, recall, and F1-score) are presented for each model across different training set sizes, ranging from 1 to 22 participants.  The p-value of 0.00013 indicates that the inclusion of future knowledge ('K') significantly improves the F1-score, surpassing the standard threshold for statistical significance (0.05).
> <details>
> <summary>read the caption</summary>
> Table 5: Performance of forecasting with location features. Two LSTM models are independently trained for different sets of features: Loc = location, and K= future knowledge features. The p-value for the effect of K on F-1 scores is 0.00013 <<much-less-than<<< < standard threshold of 0.05.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16091/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16091/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}