---
title: "How Many Van Goghs Does It Take to Van Gogh? Finding the Imitation Threshold"
summary: "Researchers discover the 'imitation threshold' in text-to-image models:  around 200-600 training examples of a concept are needed before reliable imitation occurs."
categories: ["AI Generated"]
tags: ["🔖 24-10-19", "🤗 24-10-22"]
showSummary: true
date: 2024-10-19
draft: false
---

### TL;DR


{{< lead >}}

This research explores the 'imitation threshold' in text-to-image models.  It investigates how many training examples of a specific concept (like a person's face or an art style) a model needs before it can convincingly generate similar content.  The researchers introduce a novel method called MIMETIC2 to estimate this threshold without needing to train numerous models, which is computationally expensive. They tested the method on two domains: human faces and art styles, using various models and datasets. The findings reveal that the imitation threshold for the tested models falls between 200 and 600 images, depending on the specific model and domain. This is a significant finding because it offers a concrete measure to assess the risk of copyright infringement and privacy violations associated with AI-generated content, impacting both the legal and ethical aspects of AI development.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.15002" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.15002" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is crucial for researchers in AI, particularly those working with text-to-image models.  It introduces a novel concept of "imitation threshold", offering a quantitative measure for evaluating the risk of copyright infringement and privacy violations. The methodology is practical and could influence model development guidelines and legal frameworks surrounding AI-generated content. Future work could expand upon this by examining various model architectures and datasets.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Text-to-image models exhibit an "imitation threshold", needing roughly 200-600 training instances of a concept to reliably reproduce it. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A new method, MIMETIC2, efficiently estimates this threshold without extensive model retraining. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Findings provide empirical support for copyright violation claims and guide the ethical development of text-to-image AI. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_2_0.png)

> 🔼 The figure illustrates the relationship between a concept's frequency in a training dataset and a model's ability to imitate that concept, showing how the imitation score increases with concept frequency and introducing the concept of an imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of FIT, where we seek the imitation threshold – the point at which a model was exposed to enough instances of a concept that it can reliably imitate it. The figure shows four concepts (e.g., Van Gogh's art style) that have different counts in the training data (e.g., 213K for Van Gogh). As the image count of a concept increases, the ability of the text-to-image model to imitate it increases (e.g. Piet Mondrian and Van Gogh). We propose an efficient approach, MIMETIC2, that estimates the imitation threshold without training models from scratch.
> </details>





![](charts/charts_8_0.png)

> 🔼 Figure 5 shows the imitation score (y-axis) for different concepts in two domains (human faces and art styles) plotted against their frequency in the training data (x-axis), with the imitation threshold marked.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis represents the sorted image frequencies in the training dataset, and the y-axis represents the imitation of the training images in the generated images, for each concept. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>





{{< table-caption >}}
<br><table id='8' style='font-size:14px'><tr><td>Domain</td><td>Dataset</td><td>Pretraining Data</td><td>Model</td></tr><tr><td>Human Faces</td><td>Celebrities, Politicians</td><td>LAION2B-en</td><td>SD1.1,SD1.5</td></tr><tr><td>Human Faces</td><td>Celebrities, Politicians</td><td>LAION5B</td><td>SD2.1</td></tr><tr><td>Art Style</td><td>Classical, Modern</td><td>LAION2B-en</td><td>SD1.1, SD1.5</td></tr><tr><td>Art Style</td><td>Classical, Modern</td><td>LAION5B</td><td>SD2.1</td></tr></table>{{< /table-caption >}}

> 🔼 Table 3 presents the imitation thresholds for human faces and art styles across different text-to-image models and pretraining datasets.
> <details>
> <summary>read the caption</summary>
> Table 3: Imitation Thresholds for human face and art style imitation for the different text-to-image models and pretraining datasets we experiment with.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_4_0.png)

> 🔼 The figure shows real and generated images of five celebrities with increasing numbers of training images used to generate them.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is \'a photorealistic close-up image of {name}\'
> </details>



![](figures/figures_5_0.png)

> 🔼 The figure illustrates the two-step process of MIMETIC², which estimates the imitation threshold by comparing concept frequencies in training data with imitation scores from generated images.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overview of MIMETIC²'s methodology to estimate the imitation threshold. In Step 1, we estimate the frequency of each concept (belonging to a domain) in the pretraining data by obtaining the images that contain the concept of interest. In Step 2, we use the filtered images of each concept (obtained in Step 1) and compare them to the generated images to measure imitation (using g that receives training and generated images). We repeat this process for each concept to generate the imitation score graph, and then determine the imitation threshold with a change detection algorithm.
> </details>



![](figures/figures_9_0.png)

> 🔼 Figure 2 shows examples of real and generated images of celebrities with increasing number of training images, demonstrating the effect of concept frequency on the model's imitation ability.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is ''a photorealistic close-up image of {name}''.
> </details>



![](figures/figures_9_1.png)

> 🔼 The figure shows real and generated images of five celebrities, demonstrating the model's increasing ability to imitate a celebrity's face with increasing frequency of training images.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is \'a photorealistic close-up image of {name}\'
> </details>



![](figures/figures_20_0.png)

> 🔼 The figure shows real and generated images of celebrities with increasing number of training images, illustrating the model's ability to imitate at different frequencies.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is “a photorealistic close-up image of {name}.”
> </details>



![](figures/figures_20_2.png)

> 🔼 The figure shows real and generated images of celebrities with increasing number of training images used to generate the images.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is 'a photorealistic close-up image of {name}'.
> </details>



![](figures/figures_23_0.png)

> 🔼 The figure illustrates the relationship between a concept's frequency in training data and a model's ability to imitate it, showing how the imitation threshold is the point where sufficient training data leads to reliable imitation.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of FIT, where we seek the imitation threshold – the point at which a model was exposed to enough instances of a concept that it can reliably imitate it. The figure shows four concepts (e.g., Van Gogh's art style) that have different counts in the training data (e.g., 213K for Van Gogh). As the image count of a concept increases, the ability of the text-to-image model to imitate it increases (e.g. Piet Mondrian and Van Gogh). We propose an efficient approach, MIMETIC2, that estimates the imitation threshold without training models from scratch.
> </details>



![](figures/figures_23_1.png)

> 🔼 The figure illustrates the relationship between a concept's frequency in a training dataset and a model's ability to imitate it, showing how the imitation threshold increases with concept frequency.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of FIT, where we seek the imitation threshold – the point at which a model was exposed to enough instances of a concept that it can reliably imitate it. The figure shows four concepts (e.g., Van Gogh's art style) that have different counts in the training data (e.g., 213K for Van Gogh). As the image count of a concept increases, the ability of the text-to-image model to imitate it increases (e.g. Piet Mondrian and Van Gogh). We propose an efficient approach, MIMETIC2, that estimates the imitation threshold without training models from scratch.
> </details>



![](figures/figures_23_2.png)

> 🔼 The figure illustrates the relationship between a concept's frequency in a training dataset and a text-to-image model's ability to imitate that concept, proposing the concept of an imitation threshold and an efficient method for estimating it.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of FIT, where we seek the imitation threshold – the point at which a model was exposed to enough instances of a concept that it can reliably imitate it. The figure shows four concepts (e.g., Van Gogh's art style) that have different counts in the training data (e.g., 213K for Van Gogh). As the image count of a concept increases, the ability of the text-to-image model to imitate it increases (e.g. Piet Mondrian and Van Gogh). We propose an efficient approach, MIMETIC2, that estimates the imitation threshold without training models from scratch.
> </details>



![](figures/figures_23_3.png)

> 🔼 The figure illustrates the relationship between a concept's frequency in a training dataset and a model's ability to imitate that concept, introducing the concept of an imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of FIT, where we seek the imitation threshold – the point at which a model was exposed to enough instances of a concept that it can reliably imitate it. The figure shows four concepts (e.g., Van Gogh's art style) that have different counts in the training data (e.g., 213K for Van Gogh). As the image count of a concept increases, the ability of the text-to-image model to imitate it increases (e.g. Piet Mondrian and Van Gogh). We propose an efficient approach, MIMETIC2, that estimates the imitation threshold without training models from scratch.
> </details>



![](figures/figures_23_5.png)

> 🔼 Figure 6 shows examples of real and generated images of two types of outliers where the model either overestimates or underestimates the imitation score.
> <details>
> <summary>read the caption</summary>
> Figure 6: Examples of the two kinds of outliers. The top and bottom rows show the real and SD1.1 generated images respectively. Images were generated using the prompt: '''a photorealistic close-up image of {name}'''.
> </details>



![](figures/figures_23_7.png)

> 🔼 The figure illustrates the relationship between a concept's frequency in a training dataset and a model's ability to imitate that concept, proposing an efficient method for estimating the imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of FIT, where we seek the imitation threshold – the point at which a model was exposed to enough instances of a concept that it can reliably imitate it. The figure shows four concepts (e.g., Van Gogh's art style) that have different counts in the training data (e.g., 213K for Van Gogh). As the image count of a concept increases, the ability of the text-to-image model to imitate it increases (e.g. Piet Mondrian and Van Gogh). We propose an efficient approach, MIMETIC2, that estimates the imitation threshold without training models from scratch.
> </details>



![](figures/figures_23_8.png)

> 🔼 The figure shows the imitation scores for politicians as a function of their image frequencies in the training dataset, with the imitation threshold detected at 252 faces.
> <details>
> <summary>read the caption</summary>
> Figure 14: Human Face Imitation (Politicians): Similarity between the training and generated images for all politicians. The politicians with zero image counts are shaded with light gray. We show the mean and variance over the five generation prompts. The images were generated using SD1.2. The change point for human face imitation for politicians when generating images using SD1.1 is detected at 252 faces.
> </details>



![](figures/figures_24_0.png)

> 🔼 The figure shows the imitation scores for politicians with varying image counts in the training dataset, where the change point (imitation threshold) is detected at 234 images.
> <details>
> <summary>read the caption</summary>
> Figure 15: Human Face Imitation (Politicians): Similarity between the training and generated images for all politicians. The politicians with zero image counts are shaded with light gray. We show the mean and variance over the five generation prompts. The images were generated using SD1.3. The change point for human face imitation for politicians when generating images using SD1.1 is detected at 234 faces.
> </details>



![](figures/figures_24_1.png)

> 🔼 The figure shows the imitation scores for politicians, sorted by image frequency in the training dataset, revealing a threshold at approximately 234 images where imitation significantly increases.
> <details>
> <summary>read the caption</summary>
> Figure 15: Human Face Imitation (Politicians): Similarity between the training and generated images for all politicians. The politicians with zero image counts are shaded with light gray. We show the mean and variance over the five generation prompts. The images were generated using SD1.3. The change point for human face imitation for politicians when generating images using SD1.1 is detected at 234 faces.
> </details>



![](figures/figures_25_0.png)

> 🔼 The figure shows the imitation scores for human faces and art styles as a function of their image frequencies in the training data, with the imitation thresholds indicated.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis represents the sorted image frequencies in the training dataset, and the y-axis represents the imitation of the training images in the generated images, for each concept. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_26_0.png)

> 🔼 The figure shows the imitation scores for celebrities and classical art styles with respect to their frequencies in the training dataset, indicating the imitation threshold for each.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis represents the sorted image frequencies in the training dataset, and the y-axis represents the imitation of the training images in the generated images, for each concept. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_26_1.png)

> 🔼 The figure shows the imitation scores of human faces and art styles generated by a text-to-image model as a function of the image frequency in the training dataset, highlighting the imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis represents the sorted image frequencies in the training dataset, and the y-axis represents the imitation of the training images in the generated images, for each concept. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_26_2.png)

> 🔼 The figure shows the imitation scores for politicians as a function of their image counts in the training data, indicating the imitation threshold at 234 faces using SD1.3.
> <details>
> <summary>read the caption</summary>
> Figure 15: Human Face Imitation (Politicians): Similarity between the training and generated images for all politicians. The politicians with zero image counts are shaded with light gray. We show the mean and variance over the five generation prompts. The images were generated using SD1.3. The change point for human face imitation for politicians when generating images using SD1.1 is detected at 234 faces.
> </details>



![](figures/figures_26_3.png)

> 🔼 The figure shows the imitation scores for human faces and art styles as a function of their image frequencies in the training datasets, with the imitation threshold indicated by the red vertical line.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis represents the sorted image frequencies in the training dataset, and the y-axis represents the imitation of the training images in the generated images, for each concept. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_26_4.png)

> 🔼 The figure shows the imitation scores for celebrities with increasing image counts in the training data, with the change point detected at 364 faces, indicating the imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 17: Human Face Imitation (Celebrities): Similarity between the training and generated images for all celebrities. The celebrities with zero image counts are shaded with light gray. We show the mean and variance over the five generation prompts. The images were generated using SD1.1. The change point for human face imitation for celebrities when generating images using SD1.1 is detected at 364 faces.
> </details>



![](figures/figures_27_0.png)

> 🔼 The figure shows the imitation scores of human faces and art styles using SD1.1, sorted by their frequency in the training data, with the imitation threshold indicated.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis is the sorted image frequencies in the training dataset, and the y-axis is the imitation score (averaged over the five image generation prompts) for each concept, sorted in increasing order of frequency. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_27_1.png)

> 🔼 The figure shows the imitation scores of human faces and art styles as a function of image frequency in training data, with the red line indicating the imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis represents the sorted image frequencies in the training dataset, and the y-axis represents the imitation of the training images in the generated images, for each concept. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_27_2.png)

> 🔼 The figure shows the imitation scores for celebrities and classical art styles as a function of their frequency in the training data, indicating the imitation threshold at which a text-to-image model reliably imitates a given concept.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis represents the sorted image frequencies in the training dataset, and the y-axis represents the imitation of the training images in the generated images, for each concept. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_27_3.png)

> 🔼 The figure shows the imitation scores of concepts in human faces and art styles domains plotted against their image frequencies in the training dataset, with the imitation threshold indicated.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis is the sorted image frequencies in the training dataset, and the y-axis is the imitation score (averaged over the five image generation prompts) for each concept, sorted in increasing order of frequency. Concepts with zero image frequencies are shaded with light gray. We show the mean imitation score and its variance over the five image generation prompts. The red vertical line indicates the imitation threshold found by the change detection algorithm, and the horizontal green line represents the average imitation scores before and after the threshold.
> </details>



![](figures/figures_27_4.png)

> 🔼 The figure shows the imitation scores of human faces and art styles in relation to their frequency in the training data, illustrating the concept of imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 5: Human Face and Art Style imitation graphs for SD1.1 using the Celebrities and Classical art style sets. The x-axis is the frequency and the y-axis is the imitation score (averaged over the five image generation prompts) for each concept, sorted in increasing order of frequency. We showcase the imitation graphs for all other models and sets in Appendix I, which follow similar trends.
> </details>



![](figures/figures_28_0.png)

> 🔼 The figure shows real and generated images of celebrities with increasing numbers of training images, demonstrating the model's imitation ability at different training data frequencies.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is 'a photorealistic close-up image of {name}'.
> </details>



![](figures/figures_28_1.png)

> 🔼 The figure shows real and generated images of celebrities with increasing number of training examples, demonstrating the effect of training data size on imitation.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is “a photorealistic close-up image of {name}.”
> </details>



![](figures/figures_29_0.png)

> 🔼 The figure shows real and generated images of celebrities with increasing number of training examples to illustrate the concept of imitation threshold.
> <details>
> <summary>read the caption</summary>
> Figure 2: Examples of real celebrity images (top) and generated images from a text-to-image model (bottom) with increasing image counts from left to right (3, 273, 3K, 10K, and 90K, respectively). The prompt is 'a photorealistic close-up image of {name}'.
> </details>



![](figures/figures_29_1.png)

> 🔼 Figure 1 illustrates the relationship between concept frequency in training data and a model's ability to imitate that concept, introducing the concept of an imitation threshold and the MIMETIC2 approach.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of FIT, where we seek the imitation threshold – the point at which a model was exposed to enough instances of a concept that it can reliably imitate it. The figure shows four concepts (e.g., Van Gogh's art style) that have different counts in the training data (e.g., 213K for Van Gogh). As the image count of a concept increases, the ability of the text-to-image model to imitate it increases (e.g. Piet Mondrian and Van Gogh). We propose an efficient approach, MIMETIC2, that estimates the imitation threshold without training models from scratch.
> </details>



</details>



<details>
<summary>More on charts
</summary>


![](charts/charts_20_0.png "🔼 Figure 7: Average cosine similarity between the faces of the same people (blue colored) and of the faces of different people (red colored), measured across the reference images of the celebrities.")

> 🔼 The chart displays the distribution of average cosine similarity scores for face pairs, differentiating between pairs of the same person and pairs of different people.
> <details>
> <summary>read the caption</summary>
> Figure 7: Average cosine similarity between the faces of the same people (blue colored) and of the faces of different people (red colored), measured across the reference images of the celebrities.
> </details>


![](charts/charts_21_0.png "🔼 Figure 9: The first filtering step involves determining the threshold to distinguish between art and non-art images from the pretraining images, for which we compare the similarity of the image's embedding to the embedding of the text 'an artwork'.")

> 🔼 Figure 9 shows the histograms of cosine similarity between the art and non-art images' embeddings and the embeddings of the text 'an artwork' for classical and modern artists to determine the threshold.
> <details>
> <summary>read the caption</summary>
> Figure 9: The first filtering step involves determining the threshold to distinguish between art and non-art images from the pretraining images, for which we compare the similarity of the image's embedding to the embedding of the text 'an artwork'.
> </details>


![](charts/charts_22_0.png "🔼 Figure 12: The second filtering step involves determining the if an art work whose caption mentions an artist actually belongs to that artist or not.")

> 🔼 The histogram shows the distribution of average cosine similarity between images of the same artist and images by different artists to determine a threshold for filtering.
> <details>
> <summary>read the caption</summary>
> Figure 12: The second filtering step involves determining the if an art work whose caption mentions an artist actually belongs to that artist or not.
> </details>


![](charts/charts_22_1.png "🔼 Figure 12: The second filtering step involves determining the if an art work whose caption mentions an artist actually belongs to that artist or not.")

> 🔼 The histogram shows the distribution of average cosine similarity between art images of the same artist (blue) and art images of different artists (red) for modern artists, used to determine a threshold for filtering.
> <details>
> <summary>read the caption</summary>
> Figure 12: The second filtering step involves determining the if an art work whose caption mentions an artist actually belongs to that artist or not.
> </details>


![](charts/charts_29_0.png "🔼 Figure 33: False-match rate (FMR) of all the face embedding models across the six demographic groups. Amazon Rekognition and InsightFace have the lowest FMR values. Moreover, these two models have lowest disparity of FMR over the demographic groups.")

> 🔼 The chart displays the false-match rate (FMR) for different face recognition models across six demographic groups, showing Amazon Rekognition and InsightFace to have the lowest FMR and lowest disparity.
> <details>
> <summary>read the caption</summary>
> Figure 33: False-match rate (FMR) of all the face embedding models across the six demographic groups. Amazon Rekognition and InsightFace have the lowest FMR values. Moreover, these two models have lowest disparity of FMR over the demographic groups.
> </details>


![](charts/charts_30_0.png "🔼 Figure 34: True-match rate (TMR) of all the face embedding models across the six demographic groups. Amazon Rekognition model has the highest TMR values.")

> 🔼 The chart displays the true-match rate (TMR) of eight different face embedding models across six demographic groups, illustrating their performance in correctly identifying individuals within various demographic categories.
> <details>
> <summary>read the caption</summary>
> Figure 34: True-match rate (TMR) of all the face embedding models across the six demographic groups. Amazon Rekognition model has the highest TMR values.
> </details>


</details>



<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<br><table id='11' style='font-size:14px'><tr><td>Human faces</td><td>Art style</td></tr><tr><td>A photorealistic close-up photograph of x</td><td>A painting in the style of X</td></tr><tr><td>High-resolution close-up image of X</td><td>An artwork in the style of X</td></tr><tr><td>Close-up headshot of x</td><td>A sketch in the style of X</td></tr><tr><td>X's facial close-up</td><td>A fine art piece in the style of X</td></tr><tr><td>X's face portrait</td><td>An illustration in the style of X</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the imitation thresholds for human faces and art styles, estimated using three different text-to-image models trained on two distinct pretraining datasets.


{{< table-caption >}}
<br><table id='2' style='font-size:14px'><tr><td></td><td></td><td colspan="2">Human Faces</td><td colspan="2">Art Style</td></tr><tr><td>Pretraining Dataset</td><td>Model</td><td>Celebrities</td><td>Politicians</td><td>Classical</td><td>Modern</td></tr><tr><td rowspan="2">LAION2B-en</td><td>SD1.1</td><td>364</td><td>234</td><td>112</td><td>198</td></tr><tr><td>SD1.5</td><td>364</td><td>234</td><td>112</td><td>198</td></tr><tr><td>LAION-5B</td><td>SD2.1</td><td>527</td><td>369</td><td>185</td><td>241</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the imitation thresholds for human faces and art styles across three different text-to-image models trained on two distinct pretraining datasets.


{{< table-caption >}}
<br><table id='6' style='font-size:16px'><tr><td>Domain</td><td>Dataset</td><td>Avg. difference in imitation score</td></tr><tr><td>Human Faces</td><td>Celebrities</td><td>0.0007</td></tr><tr><td>Human Faces</td><td>Politicians</td><td>0.0023</td></tr><tr><td>Art Style</td><td>Classical Art Style</td><td>-0.0088</td></tr><tr><td>Art Style</td><td>Modern Art Style</td><td>-0.0013</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 4 shows the average difference in imitation scores for concepts whose image counts differ by less than 10, providing empirical evidence supporting the distributional invariance assumption.


{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td>Celebrity</td><td>Face Count in 100K images</td><td>Face Count in Images with Caption Mention</td><td>Percentage of Missed Images</td><td>Number of Missed Images</td></tr><tr><td>Floyd Mayweather</td><td>1</td><td>0</td><td>0.001%</td><td>23K</td></tr><tr><td>Oprah Winfrey</td><td>2</td><td>0</td><td>0.002%</td><td>46K</td></tr><tr><td>Ronald Reagan</td><td>6</td><td>3</td><td>0.003%</td><td>69K</td></tr><tr><td>Ben Affleck</td><td>0</td><td>0</td><td>0.0%</td><td>0</td></tr><tr><td>Anne Hathaway</td><td>0</td><td>0</td><td>0.0%</td><td>0</td></tr><tr><td>Stephen King</td><td>0</td><td>0</td><td>0.0%</td><td>0</td></tr><tr><td>Johnny Depp</td><td>9</td><td>1</td><td>0.008%</td><td>184K</td></tr><tr><td>Abraham Lincoln</td><td>52</td><td>1</td><td>0.051%</td><td>1.17M</td></tr><tr><td>Kate Middleton</td><td>34</td><td>1</td><td>0.033%</td><td>759K</td></tr><tr><td>Donald Trump</td><td>16</td><td>0</td><td>0.016%</td><td>368K</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the imitation thresholds for human faces and art styles across different text-to-image models and their respective pretraining datasets.


{{< table-caption >}}
<br><table id='13' style='font-size:20px'><tr><td>Pretraining Dataset</td><td>Model</td><td>Human Faces : Politicians</td></tr><tr><td rowspan="5">LAION2B-en</td><td>SD1.1</td><td>234</td></tr><tr><td>SD1.2</td><td>252</td></tr><tr><td>SD1.3</td><td>234</td></tr><tr><td>SD1.4</td><td>234</td></tr><tr><td>SD1.5</td><td>234</td></tr><tr><td>LAION-5B</td><td>SD2.1</td><td>369</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> The table presents the imitation thresholds for politicians for different Stable Diffusion models trained on LAION2B-en and LAION-5B datasets.


{{< table-caption >}}
<br><table id='2' style='font-size:18px'><tr><td></td><td></td><td colspan="2">Human Faces</td><td colspan="2">Art Style</td></tr><tr><td>Pretraining Dataset</td><td>Model</td><td>Celebrities</td><td>Politicians</td><td>Classical Artists</td><td>Modern Artists</td></tr><tr><td rowspan="2">LAION2B-en</td><td>SD1.1</td><td>364</td><td>234</td><td>112, 391</td><td>198</td></tr><tr><td>SD1.5</td><td>364, 8571</td><td>234, 4688</td><td>112, 360</td><td>198, 4821</td></tr><tr><td>LAION-5B</td><td>SD2.1</td><td>527, 9650</td><td>369, 8666</td><td>185, 848</td><td>241, 1132</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 3 presents the imitation thresholds for human faces and art styles across different text-to-image models and their corresponding pretraining datasets.


{{< table-caption >}}
<br><table id='5' style='font-size:18px'><tr><td>Caption Counts (LAION-2B)</td><td>Celebrities</td><td>Politicians</td><td>Classical Artists</td><td>Modern Artists</td></tr><tr><td>0</td><td>19</td><td>15</td><td>14</td><td>15</td></tr><tr><td>1-100</td><td>48</td><td>60</td><td>67</td><td>69</td></tr><tr><td>100-500</td><td>57</td><td>120</td><td>133</td><td>139</td></tr><tr><td>500-1K</td><td>52</td><td>80</td><td>62</td><td>62</td></tr><tr><td>1K-5K</td><td>151</td><td>65</td><td>63</td><td>64</td></tr><tr><td>5K-10K</td><td>19</td><td>40</td><td>39</td><td>32</td></tr><tr><td>> 10K</td><td>53</td><td>40</td><td>40</td><td>34</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> This table shows the imitation thresholds for human faces and art styles across different text-to-image models and their respective pretraining datasets.


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