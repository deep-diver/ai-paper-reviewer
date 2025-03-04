---
title: "Can Community Notes Replace Professional Fact-Checkers?"
summary: "Community moderation success relies on fact-checking!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Applications", "Security", "🏢 University of Copenhagen",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.14132 {{< /keyword >}}
{{< keyword icon="writer" >}} Nadav Borenstein et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.14132" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.14132" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.14132/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Two primary strategies combat misinformation on social media: fact-checking by professionals and community moderation. Recent policy shifts suggest a move away from professional fact-checking toward crowdsourced approaches. However, it is unclear how fact-checking efforts and community notes relate. This paper tackles this question by examining Twitter/X's community notes, investigating the connection between fact-checking and community moderation to reveal their shared role. 



Using language models to analyze a large corpus of Twitter/X community notes, the study assesses attributes like topic, cited sources, and whether notes refute broader narratives. Results show that community notes cite fact-checking sources up to five times more than previously thought. Also, fact-checking is especially vital for notes addressing posts connected to wider narratives. The findings suggest that quality community moderation relies on professional fact-checking.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Community notes cite fact-checking sources more often than previously reported. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Fact-checking is crucial for notes on posts linked to broader narratives. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Successful community moderation relies on professional fact-checking. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it reveals the **critical dependency of community moderation on professional fact-checking**, challenging the narrative that these strategies are independent. Understanding this relationship is essential for developing effective misinformation mitigation strategies and for **assessing the impact of defunding fact-checking organizations**.

------
#### Visual Insights



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/note_pan.png)

> 🔼 The figure shows a screenshot of a Twitter community note.  The note provides a factual correction to a tweet, citing reliable sources such as news articles. The user can rate the note as helpful or not helpful, indicating its value in combating misinformation.
> <details>
> <summary>read the caption</summary>
> Figure 1: An example of a community note. Notice the fact-checking link and rating.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.1.1.1" style="width:142.3pt;">Tweet</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1.2.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.2.1.1" style="width:199.2pt;">Note</span>
</span>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.3">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.1.1.1.1.3.1" style="width:8.9pt;height:147.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:147.5pt;transform:translate(-69.31pt,72.22pt) rotate(-270deg) ;">
<p class="ltx_p" id="S4.T1.1.1.1.1.3.1.1">misleadingUnverifiedClaimAsFact</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.4">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.1.1.1.1.4.1" style="width:8.9pt;height:139.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:139.5pt;transform:translate(-65.32pt,68.24pt) rotate(-270deg) ;">
<p class="ltx_p" id="S4.T1.1.1.1.1.4.1.1">misleadingOutdatedInformation</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.5">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.1.1.1.1.5.1" style="width:8.9pt;height:102.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:102.1pt;transform:translate(-46.6pt,49.51pt) rotate(-270deg) ;">
<p class="ltx_p" id="S4.T1.1.1.1.1.5.1.1">misleadingFactualError</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.6">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.1.1.1.1.6.1" style="width:8.9pt;height:71.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:71.8pt;transform:translate(-31.43pt,34.35pt) rotate(-270deg) ;">
<p class="ltx_p" id="S4.T1.1.1.1.1.6.1.1">misleadingSatire</p>
</span></div>
</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1.7">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.1.1.1.1.7.1" style="width:8.9pt;height:93pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:93.0pt;transform:translate(-42.06pt,44.97pt) rotate(-270deg) ;">
<p class="ltx_p" id="S4.T1.1.1.1.1.7.1.1">Fact Checking source</p>
</span></div>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.1.1.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.1.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.2.1.1.1.1" style="width:142.3pt;">The NASA War Document is absolutely terrifying <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://t.co/..." title="">https://t.co/...</a></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.2.1.2.1">
<span class="ltx_p" id="S4.T1.1.1.2.1.2.1.1" style="width:199.2pt;">misrepresenting a presentation by NASA scientist Dennis Bushnell, The lecture was not detailing plans by NASA to attack the world it was a lecture for defense industry professionals, and how defense tactics might rise to meet evolving threats in the future. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://leadstories.com/hoax-alert/2021/06/fact-check-the-future-is-now-is-not-a-nasa-war-document-plan-for-world-domination-and-phasing-out-of-humans.html" title="">https://leadstories.com/hoax-alert/2021/06/fact-check-the-future-is-now-is-not-a-nasa-war-document-plan-for-world-domination-and-phasing-out-of-humans.html</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.3">✓</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.4">✗</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.5">✗</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.6">✗</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.1.1.2.1.7">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.3.2.1.1">
<span class="ltx_p" id="S4.T1.1.1.3.2.1.1.1" style="width:142.3pt;">BREAKING NEWS: International Criminal Investigation calls on every public citizen to recommend indictments for Bill Gates, Anthony Fauci, Pfizer, BlackRock, Tedros and Christian Drosten for pushing everyone to receive the ineffective highly dangerous lethal experimental vaccines…</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.3.2.2.1">
<span class="ltx_p" id="S4.T1.1.1.3.2.2.1.1" style="width:199.2pt;">Video has been fact-checked by USA Today, was found to be misleading, and promotes a conspiracy theory about COVID … <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://ca.movies.yahoo.com/movies/fact-check-viral-video-promotes-204414488.html" title="">https://ca.movies.yahoo.com/movies/fact-check-viral-video-promotes-204414488.html</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.3.2.3">✓</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.3.2.4">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.3.2.5">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.3.2.6">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.3.2.7">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.3.1.1">
<span class="ltx_p" id="S4.T1.1.1.4.3.1.1.1" style="width:142.3pt;">1) California is RED.
It is just because of the MASSIVE Election Fraud that stupid, brainwashed people believe Calif. is blue. Joe Biden won only in the SFO Bay area …</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.4.3.2.1">
<span class="ltx_p" id="S4.T1.1.1.4.3.2.1.1" style="width:199.2pt;">The map shows the results of Reagan’s reelection in 1984, not Biden’s election in 2020. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://en.wikipedia.org/wiki/1984_United_States_presidential_election_in_California" title="">https://en.wikipedia.org/wiki/1984_United_States_presidential_election_in_California</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.4.3.3">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.4.3.4">✓</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.4.3.5">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.4.3.6">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.4.3.7">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.4.1.1">
<span class="ltx_p" id="S4.T1.1.1.5.4.1.1.1" style="width:142.3pt;">Davis blows up $100,000 fireworks in Kai Cenat setup During the Mr Beast Stream …</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.5.4.2.1">
<span class="ltx_p" id="S4.T1.1.1.5.4.2.1.1" style="width:199.2pt;">The second photo is from a house fire in Atlanta in 2019. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.11alive.com/article/news/local/woodland-brook-drive-cause-of-house-fire/85-ecb7df9b-5f65-44e9-bf9d-8c162d36c334" title="">https://www.11alive.com/article/news/local/woodland-brook-drive-cause-of-house-fire/85-ecb7df9b-5f65-44e9-bf9d-8c162d36c334</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.5.4.3">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.5.4.4">✓</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.5.4.5">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.5.4.6">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.5.4.7">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.5.1.1">
<span class="ltx_p" id="S4.T1.1.1.6.5.1.1.1" style="width:142.3pt;">@cnviolations I swear community notes are the only good thing Elon added since he bought Twitter.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.6.5.2.1">
<span class="ltx_p" id="S4.T1.1.1.6.5.2.1.1" style="width:199.2pt;">Community notes was first launched under former Twitter CEO Jack Dorsey in 2021 under the name of “Birdwatch”. The only thing Elon Musk did was that he renamed the feature to community notes. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://blog.twitter.com/en_us/topics/product/2021/introducing-birdwatch-a-community-based-approach-to-misinformation" title="">https://blog.twitter.com/en_us/topics/product/2021/introducing-birdwatch-a-community-based-approach-to-misinformation</a> <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.reuters.com/article/factcheck-elon-birdwatch-idUSL1N31Z2VG/" title="">https://www.reuters.com/article/factcheck-elon-birdwatch-idUSL1N31Z2VG/</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.6.5.3">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.6.5.4">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.6.5.5">✓</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.6.5.6">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.6.5.7">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.6.1.1">
<span class="ltx_p" id="S4.T1.1.1.7.6.1.1.1" style="width:142.3pt;">Thailand will become the first country to make the contract null and void, meaning that Pfizer will become responsible for all vaccine injuries …</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.7.6.2.1">
<span class="ltx_p" id="S4.T1.1.1.7.6.2.1.1" style="width:199.2pt;">Thailand has no plans to void its Pfizer COVID vaccine contract, an official with the country’s National Vaccine Institute said. Thailand’s Department of Disease Control also rejected the claims as “fake news.” … <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://apnews.com/article/fact-check-covid-vaccine-pfizer-thailand-203948163859" title="">https://apnews.com/article/fact-check-covid-vaccine-pfizer-thailand-203948163859</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.7.6.3">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.7.6.4">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.7.6.5">✓</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.7.6.6">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.7.6.7">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.7.1.1">
<span class="ltx_p" id="S4.T1.1.1.8.7.1.1.1" style="width:142.3pt;">Hilarious tweets by footballers, A thread: 1. Virgil Van Dijk [Current Liverpool Captain] <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://t.co/..." title="">https://t.co/...</a></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.1.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.8.7.2.1">
<span class="ltx_p" id="S4.T1.1.1.8.7.2.1.1" style="width:199.2pt;">Virgil Van Dijk did not tweet this, the tweet was made by a fan account in his name. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.pinkvilla.com/sports/fact-check-did-virgil-van-dijk-really-root-for-man-u-because-no-one-likes-liverpool-in-resurfaced-viral-tweet-1287250" title="">https://www.pinkvilla.com/sports/fact-check-did-virgil-van-dijk-really-root-for-man-u-because-no-one-likes-liverpool-in-resurfaced-viral-tweet-1287250</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.8.7.3">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.8.7.4">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.8.7.5">✗</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.8.7.6">✓</td>
<td class="ltx_td ltx_align_right" id="S4.T1.1.1.8.7.7">✓</td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.1.1.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.9.8.1.1">
<span class="ltx_p" id="S4.T1.1.1.9.8.1.1.1" style="width:142.3pt;">Rob Reiner announces he’s on the Epstein Client List and Epstein Flight logs. What a fool! When a lawyer tells me to STFU, I STFU! <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://t.co/..." title="">https://t.co/...</a></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.1.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.9.8.2.1">
<span class="ltx_p" id="S4.T1.1.1.9.8.2.1.1" style="width:199.2pt;">This is a digitally altered photo that might be misinterpreted even if used as a joke. The name Rob Reiner is misspelled, and the text is not on Reiner’s X timeline. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://twitter.com/robreiner?t=iqu43-NszIW5oOM_KqRSpw" title="">https://twitter.com/robreiner?t=iqu43-NszIW5oOM_KqRSpw</a></span>
</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.9.8.3">✗</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.9.8.4">✗</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.9.8.5">✗</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.9.8.6">✓</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.1.1.9.8.7">✗</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents example tweets, their corresponding community notes, and relevant annotations.  It shows the content of the tweet and the note's response, highlighting whether the note includes a fact-checking link and how the community labeled aspects of both the original tweet and note's content (such as misleading, satire, or missing context). This helps illustrate the interplay between user-generated notes and professional fact-checking resources in addressing misinformation.
> <details>
> <summary>read the caption</summary>
> Table 1: A sample of tweets, notes, and their community annotations, as well as whether the note contains a fact-checking link.
> </details>





### In-depth insights


#### Fact-check's role
**Fact-checking plays a crucial role in combating misinformation**, partnering with platforms like Meta and YouTube. Yet, **challenges exist due to the scale of online content**, leading to community moderation. A shift towards crowdsourcing is seen with policies from Twitter/X and Meta, signaling a move from fact-checking organizations to community notes. **This trend threatens the financial stability of fact-checkers**, impacting their ability to counter misinformation effectively. Fact-checkers provide veracity judgments, lacking content moderation influence. The relationship between expert fact-checking and community-driven methods is vital in the global information ecosystem.

#### Notes' limits
**Community Notes**, while promising, faces several limitations. **Only a small fraction** achieves 'helpful' status, hindering its overall impact. The **time lag** before notes gain traction can be detrimental, failing to address misinformation swiftly. There are also **concerns about expertise**, with potential for subjective ratings undermining objective accuracy. The notes are constrained by requiring **subjective helpfulness rather than objective facts,** potentially causing inadequate support on certain sensitive topics. These limitations affect their overall effectiveness in combating misinformation, and may affect information integrity on a wide scale.

#### Notes rely on FC
**Community notes rely significantly on fact-checking (FC)**. The research indicates that at least 5% of all English community notes contain links to professional fact-checkers, rising to 7% for notes rated as 'helpful.' This is far higher than previous estimates. **Notes with FC links are generally viewed more favorably**, receiving higher user ratings. This underscores the dependence of successful community moderation on expert fact-checking.  **FC is vital to debunking false claims in broader narratives/conspiracy theories**, successful community moderation relies heavily on professional fact-checking.

#### Note traits' impact
**Note traits** have a multifaceted impact. Community notes identified as misleading reduce virality, but effectiveness varies. Some studies show reduced belief in misinformation, while others find engagement unaffected. **Note traits** like sourcing and topic influence helpfulness ratings. Fact-checking sources enhance perceived quality and debunk broader narratives or conspiracy theories. However, notes can trigger negative replies, and crowd workers exhibit biases. The balance between community and expert knowledge is vital for effective moderation. **Note traits affect** engagement and trustworthiness.

#### Notes' accuracy
Assessing the accuracy of community notes is crucial, but multifaceted. While the paper touches on user ratings as a proxy for helpfulness, these ratings don't always equate to factual correctness. **Subjectivity and biases can influence ratings**, potentially leading to inaccurate notes being deemed helpful. A deeper dive into methodologies for evaluating the factual accuracy of notes is needed, perhaps through comparisons with professional fact-checks or expert reviews. The paper could also explore the **types of errors** commonly found in community notes (e.g., misinterpretations of sources, logical fallacies) and their potential impact. Furthermore, **the accuracy of notes might vary across different topics**, with some subjects being more prone to misinformation or biased interpretations. Understanding these nuances is essential for improving the overall reliability of community moderation systems. The paper needs to investigate the **accuracy levels based on user rating impact**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/link_types_tilt.png)

> 🔼 This figure shows a breakdown of the types of sources cited by authors of Community Notes on Twitter/X.  It indicates the percentage of links used that fall into various categories, such as News, Social Media, Fact-Checking Organizations, Government sites, Academic sources, and others.  This helps to illustrate the breadth and nature of the evidence cited in support of community notes’ claims.
> <details>
> <summary>read the caption</summary>
> Figure 2: The categories of links used by Community notes’ authors as a source.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/annotations_of_notes_narrow.png)

> 🔼 This bar chart displays the mean scores of community annotations for misleading posts categorized by type.  Each bar represents a category of misleading posts, such as 'Misleading Factual Error' or 'Misleading Manipulated Media,' and its height shows the average score assigned by community annotators.  The scores likely reflect the degree to which the community considered the posts to be misleading, with higher scores indicating a greater perceived level of misleadingness.
> <details>
> <summary>read the caption</summary>
> Figure 3: Mean scores of community annotations of misleading posts.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/manual_annotation.png)

> 🔼 Figure 4 presents two subfigures illustrating how community notes engage with fact-checking resources in the context of broader misinformation narratives. Subfigure (a) categorizes the strategies used in community notes to debunk claims related to these narratives, while subfigure (b) shows how fact-checking sources are specifically employed within these debunking strategies.  This visual representation helps to understand the interplay between community-driven fact-checking and professional fact-checking sources in combating misinformation.
> <details>
> <summary>read the caption</summary>
> Figure 4: (a) strategies in debunking claims related to broader narratives. (b) the different ways in which fact-checking sources are used to debunk claims.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/Distribution_of_topics_vertical.png)

> 🔼 This figure shows a bar chart comparing the distribution of topics across community notes that do and do not include fact-checking sources.  It illustrates which topics are more or less likely to be addressed by notes that cite fact-checkers, offering insights into the relationship between fact-checking and community moderation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Distribution of notes’ topics, with and without a fact-checking source.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/notes_per_month.png)

> 🔼 This figure shows the number of community notes created each month, categorized by their helpfulness rating (helpful, not helpful, or needs more data).  The x-axis represents time (months), and the y-axis represents the count of notes.  The grey vertical line highlights December 2022, marking when the community notes feature became globally accessible. This visualization provides insight into the growth and user engagement with the community notes system over time.
> <details>
> <summary>read the caption</summary>
> Figure 6: A histogram of the number of community notes written every month and their rating (helpful, not helpful, or needs more data. The grey vertical line (December 2022) indicates the date when the community notes became visible worldwide.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/link_types_only_helpful.png)

> 🔼 This figure shows the distribution of link categories used by authors of community notes that received a 'helpful' rating.  It provides a breakdown of the types of sources cited to support claims within these notes.  Categories include news websites, social media, academic sources, government sources, etc. The percentages illustrate the relative frequency of each source type within the 'helpful' community notes.
> <details>
> <summary>read the caption</summary>
> Figure 7: The categories of links used by Community notes’ authors as a source, filtering for notes rated as “helpful”.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/link_types_only_not_helpful.png)

> 🔼 This figure shows the distribution of link categories used in community notes that received a 'not helpful' rating.  It breaks down the types of sources cited by users in their notes, such as news websites, social media, academic sources, fact-checking organizations, and others.  This provides insight into the types of sources deemed unhelpful by the community in their efforts to provide context to posts.
> <details>
> <summary>read the caption</summary>
> Figure 8: The categories of links used by Community notes’ authors as a source, filtering for notes rated as “not helpful”.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/ratings_of_notes_2.png)

> 🔼 This figure displays a bar chart showing the average community ratings for notes categorized by whether or not they include a fact-checking source.  It visually compares the mean rating scores of notes that cite fact-checking sources to those that do not, allowing for a direct comparison of perceived helpfulness and quality based on the presence or absence of such references.
> <details>
> <summary>read the caption</summary>
> Figure 9: Community ratings of notes with and without fact-checking source.
> </details>



![](https://arxiv.org/html/2502.14132/extracted/6218171/Figures/annotation_setup.jpeg)

> 🔼 This figure details the annotation scheme used in the study to analyze community notes on Twitter.  It shows a table outlining the twelve binary attributes used to characterize each (tweet, note) pair. These attributes capture various aspects of the interaction, such as whether the note addresses a broader narrative or conspiracy theory, discredits the source, adds missing context, highlights AI-generated content or edited media, and includes links to different types of sources (e.g., direct source, official source, scientific source, fact-checking source, etc.). The table also specifies if fact-checking is performed within the note or through external links.  Each attribute can be checked (☑) or unchecked (☐) to reflect the presence or absence of that feature in the tweet and its associated community note. 
> <details>
> <summary>read the caption</summary>
> Figure 10: Our annotation setup.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T2.1.1.1.1"></th>
<th class="ltx_td ltx_th ltx_th_column ltx_th_row" id="S4.T2.1.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="S4.T2.1.1.1.3">FC source</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.2.1">
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.1.2.1.1"></th>
<th class="ltx_td ltx_th ltx_th_row" id="S4.T2.1.2.1.2"></th>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.1.2.1.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.2.1.4">✗</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.1" rowspan="2"><span class="ltx_text" id="S4.T2.1.3.2.1.1">
<span class="ltx_inline-block ltx_transformed_outer" id="S4.T2.1.3.2.1.1.1" style="width:36.0pt;height:14.2pt;vertical-align:-14.2pt;"><span class="ltx_transformed_inner" style="width:14.2pt;transform:translate(10.89pt,32.36pt) rotate(-90deg) ;">
<span class="ltx_p ltx_parbox ltx_align_middle" id="S4.T2.1.3.2.1.1.1.1" style="width:14.2pt;">Conspi-racy</span>
</span></span></span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.1.3.2.2">✓</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.3.2.3">22%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.3.2.4">11%</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.4.3.1">✗</th>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.4.3.2">28%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.4.3.3">39%</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the relationship between the presence of fact-checking sources and the topic of community notes.  It shows the percentage of notes discussing a broader narrative or conspiracy theory that also include a fact-checking source, compared to the percentage of notes on other topics that include a fact-checking source. This helps to illustrate the importance of fact-checking in addressing complex or controversial claims.
> <details>
> <summary>read the caption</summary>
> Table 2: Percentage of samples related to a broader narrative or conspiracy vs. have a fact-checking source.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T3.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.1">Name</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.2">URL</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.3">Language</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T3.1.1.1.1.4">Region/domain</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.2.1.1">Lead stories</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.2.1.2">leadstories.com</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.2.1.3">English</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.1.1.2.1.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.3.2">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.3.2.1">AFP Factuel</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.3.2.2">factuel.afp.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.3.2.3">French</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.3.2.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.4.3">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.4.3.1">AAP FactCheck</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.4.3.2">aap.com.au/factcheck</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.4.3.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.4.3.4">Australia</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.5.4">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.5.4.1">Full Fact</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.5.4.2">fullfact.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.5.4.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.5.4.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.6.5">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.6.5.1">Science Feedback</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.6.5.2">science.feedback.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.6.5.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.6.5.4">Science</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.7.6">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.7.6.1">Politifact</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.7.6.2">politifact.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.7.6.3">English, Spanish</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.7.6.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.8.7">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.8.7.1">HoaxEye</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.8.7.2">hoaxeye.wordpress.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.8.7.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.8.7.4">Images</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.9.8">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.9.8.1">Logically Facts</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.9.8.2">logicallyfacts.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.9.8.3">Multiple</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.9.8.4">Europe/India</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.10.9">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.10.9.1">FactCheckNI</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.10.9.2">factcheckni.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.10.9.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.10.9.4">North Ireland</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.11.10">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.11.10.1">DFRLab</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.11.10.2">dfrlab.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.11.10.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.11.10.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.12.11">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.12.11.1">FactReview</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.12.11.2">factreview.gr</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.12.11.3">Greek</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.12.11.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.13.12">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.13.12.1">Lupa</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.13.12.2">lupa.uol.com.br/jornalismo</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.13.12.3">Portuguese</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.13.12.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.14.13">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.14.13.1">Check your fact</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.14.13.2">checkyourfact.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.14.13.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.14.13.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.15.14">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.15.14.1">Climate feedback</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.15.14.2">climatefeedback.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.15.14.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.15.14.4">Climate</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.16.15">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.16.15.1">Factcheck</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.16.15.2">factcheck.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.16.15.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.16.15.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.17.16">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.17.16.1">Health feedback</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.17.16.2">healthfeedback.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.17.16.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.17.16.4">Health</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.18.17">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.18.17.1">Snopes</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.18.17.2">snopes.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.18.17.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.18.17.4">US</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.19.18">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.19.18.1">aosfatos</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.19.18.2">aosfatos.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.19.18.3">Portuguese</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.19.18.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.20.19">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.20.19.1">Demagog</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.20.19.2">demagog.org.pl/fake_news</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.20.19.3">Polish</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.20.19.4">Poland</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.21.20">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.21.20.1">FakeReporter</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.21.20.2">fakereporter.net</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.21.20.3">Hebrew</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.21.20.4">Israel</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.22.21">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.22.21.1">litmus factcheck</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.22.21.2">litmus-factcheck.jp</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.22.21.3">Japanese</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.22.21.4">Japan</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.23.22">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.23.22.1">Climate Feedback</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.23.22.2">climatefeedback.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.23.22.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.23.22.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.24.23">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.24.23.1">AFP</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.24.23.2">factcheck.afp.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.24.23.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.24.23.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.25.24">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.25.24.1">USA Today</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.25.24.2">usatoday.com/story/news/factcheck</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.25.24.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.25.24.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.26.25">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.26.25.1">Statesman</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.26.25.2">statesman.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.26.25.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.26.25.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.27.26">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.27.26.1">Dallas News</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.27.26.2">dallasnews.com/news/politifact</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.27.26.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.27.26.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.28.27">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.28.27.1">Google Fact Check</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.28.27.2">toolbox.google.com/factcheck</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.28.27.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.28.27.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.29.28">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.29.28.1">MediaBias/FactCheck</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.29.28.2">mediabiasfactcheck.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.29.28.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.29.28.4">Global</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.30.29">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.30.29.1">MedDMO</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.30.29.2">meddmo.eu</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.30.29.3">English, Greek</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.30.29.4">Greece, Cyprus, Malta</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.31.30">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.31.30.1">Poynter</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.31.30.2">poynter.org/fact-checking</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.31.30.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.31.30.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.32.31">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.32.31.1">Newsmeter</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.32.31.2">newsmeter.in/fact-check</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.32.31.3">English, Tamil</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.32.31.4">India</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.33.32">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.33.32.1">Africa Check</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.33.32.2">africacheck.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.33.32.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.33.32.4">Africa</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.34.33">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.34.33.1">Fact Crescendo India</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.34.33.2">english.factcrescendo.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.34.33.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.34.33.4">India</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.35.34">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.35.34.1">Factseeker</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.35.34.2">factseeker.lk</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.35.34.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.35.34.4">Sri Lanka</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.36.35">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.36.35.1">Fact Crescendo Thailand</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.36.35.2">thailand.factcrescendo.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.36.35.3">Thai</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.36.35.4">Thailand</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.37.36">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.37.36.1">Fact Crescendo Afghanistan</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.37.36.2">afghanistan.factcrescendo.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.37.36.3">Persian</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.37.36.4">Afghanistan</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.38.37">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.38.37.1">Only Fact</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.38.37.2">onlyfact.in</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.38.37.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.38.37.4">India</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.39.38">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.39.38.1">Factly</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.39.38.2">factly.in</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.39.38.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.39.38.4">India</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.40.39">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.40.39.1">Fact Crescendo Sri Lanka</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.40.39.2">srilanka.factcrescendo.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.40.39.3">Sinhala</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.40.39.4">Sri Lanka</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.41.40">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.41.40.1">Fact Crescendo Cambodia</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.41.40.2">cambodia.factcrescendo.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.41.40.3">Cambodian</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.41.40.4">Cambodia</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.42.41">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.42.41.1">Becid</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.42.41.2">becid.eu</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.42.41.3">Baltic langs</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.42.41.4">Baltic</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.43.42">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.43.42.1">Fact Hunt</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.43.42.2">facthunt.in</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.43.42.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.43.42.4">India</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.44.43">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.44.43.1">Tec Arp</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.44.43.2">techarp.com</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.44.43.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.44.43.4">Global (based in Malaysia)</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.45.44">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.45.44.1">10 news</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.45.44.2">10news.com/news/fact-or-fiction</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.45.44.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.45.44.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.46.45">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.46.45.1">RMIT Fact Check</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.46.45.2">rmit.edu.au</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.46.45.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.46.45.4">Australia</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.47.46">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.47.46.1">Gigafact</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.47.46.2">gigafact.org</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.47.46.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.47.46.4">USA</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.48.47">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.48.47.1">Ayupp</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.48.47.2">ayupp.com/fact-check</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.48.47.3">English</td>
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.48.47.4">India</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.49.48">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.1.1.49.48.1">The Journal</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.1.1.49.48.2">thejournal.ie</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.1.1.49.48.3">English</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.1.1.49.48.4">Ireland</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists fact-checking organizations that are signatories to the International Fact-Checking Network (IFCN).  For each organization, the table provides its name, website URL, the languages its content is available in, and its primary region or area of focus.  This information is relevant to the study's analysis of how community notes on social media platforms utilize and reference professional fact-checking sources.
> <details>
> <summary>read the caption</summary>
> Table 3: List of professional fact-checking organisations and their URLs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T4.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T4.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.1.1">Domain</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.2.1">Category</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.3.1">Domain</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="A1.T4.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T4.1.1.1.1.4.1">Category</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T4.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.1.2.1.1">x.com</th>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T4.1.1.2.1.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T4.1.1.2.1.3">thehill.com</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.1.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.3.2.1">twitter.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.3.2.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.3.2.3">amp.theguardian.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.2.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.4.3.1">youtube.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.4.3.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.4.3.3">whitehouse.gov</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.3.4">government</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.5.4.1">youtu.be</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.5.4.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.5.4.3">news.sky.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.4.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.6.5.1">un.org</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.6.5.2">organisation</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.6.5.3">merriam-webster.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.5.4">reference</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.7.6.1">u.today</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.7.6.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.7.6.3">techarp.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.6.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.8.7.1">t.co</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.8.7.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.8.7.3">cbc.ca</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.7.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.9.8.1">snopes.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.9.8.2">fact checking</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.9.8.3">politifact.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.8.4">fact checking</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.10.9.1">en.m.wikipedia.org</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.10.9.2">reference</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.10.9.3">pbs.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.10.9.4">commercial</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.11.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.11.10.1">en.wikipedia.org</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.11.10.2">reference</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.11.10.3">telegraph.co.uk</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.11.10.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.12.11.1">google.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.12.11.2">search engine</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.12.11.3">businessinsider.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.12.11.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.13.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.13.12.1">instagram.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.13.12.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.13.12.3">time.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.13.12.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.14.13.1">britannica.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.14.13.2">reference</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.14.13.3">justice.gov</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.14.13.4">government</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.15.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.15.14.1">reuters.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.15.14.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.15.14.3">cnbc.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.15.14.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.16.15.1">bbc.co.uk</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.16.15.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.16.15.3">wsj.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.16.15.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.17.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.17.16.1">apnews.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.17.16.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.17.16.3">sciencedirect.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.17.16.4">academic</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.18.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.18.17.1">bbc.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.18.17.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.18.17.3">msn.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.18.17.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.19.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.19.18.1">nytimes.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.19.18.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.19.18.3">statista.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.19.18.4">reference</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.20.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.20.19.1">theguardian.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.20.19.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.20.19.3">business.x.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.20.19.4">commercial</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.21.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.21.20.1">vice.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.21.20.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.21.20.3">amp.cnn.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.21.20.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.22.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.22.21.1">usatoday.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.22.21.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.22.21.3">congress.gov</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.22.21.4">government</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.23.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.23.22.1">factcheck.org</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.23.22.2">fact checking</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.23.22.3">factcheck.afp.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.23.22.4">fact checking</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.24.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.24.23.1">cnn.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.24.23.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.24.23.3">yahoo.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.24.23.4">search engine</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.25.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.25.24.1">washingtonpost.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.25.24.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.25.24.3">timesofindia.indiatimes.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.25.24.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.26.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.26.25.1">ncbi.nlm.nih.gov</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.26.25.2">academic</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.26.25.3">thelancet.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.26.25.4">academic</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.27.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.27.26.1">nbcnews.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.27.26.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.27.26.3">hrw.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.27.26.4">organisation</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.28.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.28.27.1">help.twitter.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.28.27.2">reference</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.28.27.3">healthfeedback.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.28.27.4">fact checking</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.29.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.29.28.1">cdc.gov</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.29.28.2">government</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.29.28.3">fda.gov</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.29.28.4">government</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.30.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.30.29.1">npr.org</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.30.29.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.30.29.3">m.youtube.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.30.29.4">social media</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.31.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.31.30.1">forbes.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.31.30.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.31.30.3">law.cornell.edu</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.31.30.4">academic</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.32.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.32.31.1">newsweek.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.32.31.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.32.31.3">medium.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.32.31.4">blog post</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.33.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.33.32.1">fullfact.org</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.33.32.2">fact checking</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.33.32.3">healthfeedback.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.33.32.4">fact checking</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.34.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.34.33.1">dailymail.co.uk</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.34.33.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.34.33.3">who.int</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.34.33.4">organisation</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.35.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.35.34.1">cbsnews.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.35.34.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.35.34.3">haaretz.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.35.34.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.36.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.36.35.1">web3antivirus.io</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.36.35.2">database</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.36.35.3">axios.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.36.35.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.37.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.37.36.1">timesofisrael.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.37.36.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.37.36.3">mayoclinic.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.37.36.4">commercial</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.38.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.38.37.1">help.x.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.38.37.2">reference</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.38.37.3">nejm.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.38.37.4">academic</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.39.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.39.38.1">nypost.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.39.38.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.39.38.3">scienceexchange.caltech.edu</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.39.38.4">academic</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.40.39">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.40.39.1">aljazeera.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.40.39.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.40.39.3">indiatoday.in</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.40.39.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.41.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.41.40.1">reddit.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.41.40.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.41.40.3">bloomberg.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.41.40.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.42.41">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.42.41.1">independent.co.uk</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.42.41.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.42.41.3">pewresearch.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.42.41.4">academic</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.43.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.43.42.1">usgs.gov</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.43.42.2">academic</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.43.42.3">jamanetwork.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.43.42.4">academic</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.44.43">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.44.43.1">abcnews.go.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.44.43.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.44.43.3">leadstories.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.44.43.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.45.44">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.45.44.1">nature.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.45.44.2">academic</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.45.44.3">dictionary.cambridge.org</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.45.44.4">reference</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.46.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.46.45.1">gov.uk</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.46.45.2">government</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.46.45.3">jpost.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.46.45.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.47.46">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.47.46.1">web.archive.org</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.47.46.2">database</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.47.46.3">archive.ph</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.47.46.4">database</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.48.47">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.48.47.1">foxnews.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.48.47.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.48.47.3">healthline.com</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.48.47.4">commercial</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.49.48">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.49.48.1">tiktok.com</th>
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T4.1.1.49.48.2">social media</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T4.1.1.49.48.3">abc.net.au</th>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.49.48.4">news</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.50.49">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.1.1.50.49.1">edition.cnn.com</th>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T4.1.1.50.49.2">news</td>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T4.1.1.50.49.3">france24.com</th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.50.49.4">news</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the top 100 most frequently appearing website domains in the Twitter/X Community Notes dataset.  For each domain, the table provides a corresponding category. The categories used for classification reflect the general nature of the websites, such as social media, news, government, academic institutions, blog posts, fact-checking organizations, databases, commercial entities, reference sites, non-profit organizations, and an 'other' category for miscellaneous websites.  The categorization helps understand the types of sources cited within Community Notes to support or refute claims.
> <details>
> <summary>read the caption</summary>
> Table 4: List of top 100 most common domains found in the community notes dataset, and their categorization.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="A1.T5.1.1.1.1">ID</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A1.T5.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.1.1.2.1">
<span class="ltx_p" id="A1.T5.1.1.1.2.1.1" style="width:398.3pt;">summary</span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T5.1.2.1.1">0</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T5.1.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.2.1.2.1">
<span class="ltx_p" id="A1.T5.1.2.1.2.1.1" style="width:398.3pt;">This claim ruled mostly false. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.politifact.com/factchecks/2020/may/07/facebook-posts/facebook-post-cites-doctors-widely-disputed-calcul/" title="">https://www.politifact.com/factchecks/2020/may/07/facebook-posts/facebook-post-cites-doctors-widely-disputed-calcul/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.3.2.1">1</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.3.2.2.1">
<span class="ltx_p" id="A1.T5.1.3.2.2.1.1" style="width:398.3pt;">The RedState article claims “the shots do not stop transmission of the virus. This is false. ”“Vaccines provide significant protection from ’getting it’ – infection – and ’spreading it’ – transmission – even against the delta variant.” Source: <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.usatoday.com/story/news/factcheck/2021/11/17/fact-check-covid-19-vaccines-protect-against-infection-transmission/6403678001/" title="">https://www.usatoday.com/story/news/factcheck/2021/11/17/fact-check-covid-19-vaccines-protect-against-infection-transmission/6403678001/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.4.3.1">2</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.4.3.2.1">
<span class="ltx_p" id="A1.T5.1.4.3.2.1.1" style="width:398.3pt;">There is no proof of this, the photo is real, it’s not the last photo of the child. But snoops say there is a tenuous link the parents used the same law firm to represent them as Maxwell <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.snopes.com/fact-check/ghislaine-maxwell-jonbenet-ramsey/" title="">https://www.snopes.com/fact-check/ghislaine-maxwell-jonbenet-ramsey/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.5.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.5.4.1">3</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.5.4.2.1">
<span class="ltx_p" id="A1.T5.1.5.4.2.1.1" style="width:398.3pt;">unfounded <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.snopes.com/fact-check/ashley-biden-diary-afraid/" title="">https://www.snopes.com/fact-check/ashley-biden-diary-afraid/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.6.5.1">4</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.6.5.2.1">
<span class="ltx_p" id="A1.T5.1.6.5.2.1.1" style="width:398.3pt;">The mRNA vaccine does not cause cancer: <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.factcheck.org/2024/05/still-no-evidence-covid-19-vaccination-increases-cancer-risk-despite-posts/" title="">https://www.factcheck.org/2024/05/still-no-evidence-covid-19-vaccination-increases-cancer-risk-despite-posts/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.7.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.7.6.1">5</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.7.6.2.1">
<span class="ltx_p" id="A1.T5.1.7.6.2.1.1" style="width:398.3pt;">Many of the details in this popular essay are inaccurate and too numerous to list here. The essay was fact checked by Snopes in 2005: <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.snopes.com/fact-check/the-price-they-paid/" title="">https://www.snopes.com/fact-check/the-price-they-paid/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.8.7.1">6</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.8.7.2.1">
<span class="ltx_p" id="A1.T5.1.8.7.2.1.1" style="width:398.3pt;">POLITIFACT - rates False. The report analysed a small sample of 128 temp stations out of several thousand volunteer-run stations, then extrapolated results. NOAA uses 2 programs to record daily temps. The report did not look at the 900 more sophisticated automated stations. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.politifact.com/factchecks/2022/aug/19/facebook-posts/fact-checking-talking-point-about-corrupted-climat/" title="">https://www.politifact.com/factchecks/2022/aug/19/facebook-posts/fact-checking-talking-point-about-corrupted-climat/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.9.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T5.1.9.8.1">7</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A1.T5.1.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.9.8.2.1">
<span class="ltx_p" id="A1.T5.1.9.8.2.1.1" style="width:398.3pt;">There is no verifiable evidence of campaign espionage in either the 2020 or the 2016 presidential elections. <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.snopes.com/fact-check/obama-spying-trump-campaign/" title="">https://www.snopes.com/fact-check/obama-spying-trump-campaign/</a> <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://www.washingtonpost.com/politics/2019/05/06/whats-evidence-spying-trumps-campaign-heres-your-guide/" title="">https://www.washingtonpost.com/politics/2019/05/06/whats-evidence-spying-trumps-campaign-heres-your-guide/</a></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T5.1.10.9.1">8</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A1.T5.1.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T5.1.10.9.2.1">
<span class="ltx_p" id="A1.T5.1.10.9.2.1.1" style="width:398.3pt;">Ladapo did get caught altering COVID vaccine study findings. Ladapo replaced the language from an earlier study draft that found no significant risk from COVID vaccines, to then state there was a high risk <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://healthfeedback.org/claimreview/analysis-florida-department-health-surgeon-general-joseph-ladopo-contains-multiple-methodological-problems-covid-19-mrna-vaccines/" title="">https://healthfeedback.org/claimreview/analysis-florida-department-health-surgeon-general-joseph-ladopo-contains-multiple-methodological-problems-covid-19-mrna-vaccines/</a> <a class="ltx_ref ltx_url ltx_font_typewriter" href="https://healthexec.com/topics/clinical/COVID-19/florida-surgeon-general-altered-covid-19-study-findings" title="">https://healthexec.com/topics/clinical/COVID-19/florida-surgeon-general-altered-covid-19-study-findings</a></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents eight examples of community notes that cite fact-checking sources but were rated as unhelpful due to missing or unreliable information. Each row shows an ID, a summary of the claim addressed, and links to the fact-checking sources cited.  The 'not helpful' rating suggests that while the notes attempted to debunk misinformation using external resources, the provided information or the way it was presented was ultimately insufficient or flawed.
> <details>
> <summary>read the caption</summary>
> Table 5: Examples of community notes containing fact-checking sources that are rated as having notHelpfulSourcesMissingOrUnreliable.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.14132/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.14132/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}