---
title: "GlotEval: A Test Suite for Massively Multilingual Evaluation of Large Language Models"
summary: "GlotEval: Massively multilingual LLM evaluation!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Machine Translation", "🏢 University of Helsinki",]
showSummary: true
date: 2025-04-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.04155 {{< /keyword >}}
{{< keyword icon="writer" >}} Hengyu Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.04155" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.04155" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.04155/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models excel globally, but evaluation in diverse languages is challenging. Existing frameworks focus on English, overlooking multilingual scenarios. This paper introduces **GlotEval**, a lightweight framework for massively multilingual evaluation, supporting seven tasks across dozens of languages. It enables diagnosing model strengths and weaknesses in diverse linguistic contexts.



**GlotEval** features consistent multilingual benchmarking by standardizing language codes. Users can configure prompts for each language, assessing instruction-following ability. It also enables non-English-centered translation evaluations. A multilingual translation case study demonstrates **GlotEval's** applicability for multilingual and language-specific evaluations.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} GlotEval is a lightweight framework for massively multilingual evaluation of LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It supports consistent benchmarking, language-specific prompts and non-English-centric translation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} GlotEval enables reliable LLM assessments in diverse linguistic contexts. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **GlotEval**, a crucial tool for evaluating LLMs across diverse languages. It encourages inclusive, transparent, and holistic evaluations, advancing robust multilingual NLP research and paving the way for more equitable language technologies.

------
#### Visual Insights



![](https://arxiv.org/html/2504.04155/extracted/6338362/Workflow.png)

> 🔼 This figure illustrates the workflow of the GlotEval framework.  It starts with the user selecting benchmarks and languages for evaluation.  The system then loads the relevant data and applies the chosen prompting strategy (single or multilingual).  Model inference is performed using an appropriate backend (Hugging Face Transformers or vLLM, depending on task type), and finally, evaluation metrics are computed and results visualized.
> <details>
> <summary>read the caption</summary>
> Figure 1: Workflow of GlotEval
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">Task</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.2.1">Benchmark</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.3.1">Languages</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.4.1">Domain</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.5.1">Open Source</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.6.1">Metrics</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2.1" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.2.2.1.1">Text Classification</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2.2">Taxi-1500 <cite class="ltx_cite ltx_citemacro_cite">Ma et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib31" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2.3">1507</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2.4">Bible text</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2.5">Yes (<a class="ltx_ref ltx_href" href="https://github.com/cisnlp/Taxi1500" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2.2.6">Acc., F1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.3.3">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.3.1">SIB-200 <cite class="ltx_cite ltx_citemacro_cite">Adelani et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib3" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.3.2">205</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.3.3">News topics</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.3.4">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/cisnlp/SIB-200" title="">HF</a>, <a class="ltx_ref ltx_href" href="https://github.com/afrlab-nus/SIB200" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.3.3.5">Acc., F1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.4.4.1" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.4.4.1.1">Token Classification</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.4.4.2">WikiANN <cite class="ltx_cite ltx_citemacro_cite">Pan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib37" title="">2017</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.4.4.3">282</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.4.4.4">Wikipedia NER</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.4.4.5">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/wikiann" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.4.4.6">F1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.1">UD treebank v2.15 <cite class="ltx_cite ltx_citemacro_cite">de Marneffe et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib12" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.2">148</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.3">POS tagging</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.4">Yes (<a class="ltx_ref ltx_href" href="https://universaldependencies.org" title="">UD website</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.5.5.5">F1</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.6.1" rowspan="11"><span class="ltx_text" id="S3.T1.1.1.6.6.1.1">Machine Translation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.6.2">FLORES-200 <cite class="ltx_cite ltx_citemacro_cite">NLLB Team et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib34" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.6.3">200+</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.6.4">General web</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.6.5">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/facebook/flores" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.6.6.6">BLEU, ChrF++, COMET</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.7.7">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.1">FLORES+</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.2">212</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.3">Gen. web, low-resource focus</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.4">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/facebook/flores" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.7.7.5">BLEU, ChrF++, COMET</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.8.8">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.1">NTREX-128 <cite class="ltx_cite ltx_citemacro_cite">Federmann et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib16" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.2">128</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.3">News</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.4">Yes (<a class="ltx_ref ltx_href" href="https://github.com/facebookresearch/flores/blob/main/ntrex" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.8.8.5">BLEU, ChrF++, COMET</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.9.9">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.1">AmericasNLP <cite class="ltx_cite ltx_citemacro_cite">de Gibert et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib11" title="">2025</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.2">14</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.3">Short sentences, court proceedings, books.</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.4">Yes (<a class="ltx_ref ltx_href" href="https://github.com/AmericasNLP/americasnlp2021" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.9.9.5">BLEU, ChrF++</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.10.10">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.1">TICO-19 <cite class="ltx_cite ltx_citemacro_cite">Anastasopoulos et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib7" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.2">37</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.3">COVID-19 medical</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.4">Yes (<a class="ltx_ref ltx_href" href="https://github.com/tico-19/tico-19.github.io" title="">GitHub</a>, <a class="ltx_ref ltx_href" href="https://opus.nlpl.eu/TICO-19.php" title="">OPUS</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.10.10.5">BLEU, ChrF++</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.11.11">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.1">IN22 <cite class="ltx_cite ltx_citemacro_cite">Gala et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib18" title="">2023</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.2">23</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.3">Indian langs., news+conv.</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.4">Yes (<a class="ltx_ref ltx_href" href="https://github.com/AI4Bharat/IndicTrans2" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.11.11.5">BLEU, ChrF++</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.12.12">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.1">NTEU <cite class="ltx_cite ltx_citemacro_cite">Bié et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib8" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.2">24</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.3">EU formal (gov)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.4">Partial (Upon request)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.12.12.5">BLEU, ChrF++</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.13.13">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.1">MAFAND <cite class="ltx_cite ltx_citemacro_cite">Adelani et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib2" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.2">22</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.3">News</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.4">Yes (<a class="ltx_ref ltx_href" href="https://github.com/masakhane-io/masakhane-mt" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.13.13.5">BLEU, ChrF++</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.14.14">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.1">Tatoeba <cite class="ltx_cite ltx_citemacro_cite">Tiedemann (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib44" title="">2020</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.2">500+</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.3">Mixed short sents.</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.4">Yes (<a class="ltx_ref ltx_href" href="https://github.com/Helsinki-NLP/Tatoeba-Challenge" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.14.14.5">BLEU, ChrF</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.15.15">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.1">OpenSubtitles v2024 <cite class="ltx_cite ltx_citemacro_cite">Lison and Tiedemann (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib30" title="">2016</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.2">93</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.3">Subtitles</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.4">Yes (<a class="ltx_ref ltx_href" href="https://opus.nlpl.eu/legacy/OpenSubtitles.php" title="">Website</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.15.15.5">BLEU, ChrF</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.16.16">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.1">MMHB <cite class="ltx_cite ltx_citemacro_cite">Tan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib43" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.2">9</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.3">Multilingual bias detection</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.4">Yes (<a class="ltx_ref ltx_href" href="https://github.com/facebookresearch/ResponsibleNLP/tree/main/mmhb" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.16.16.5">ChrF with gender</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.17.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.17.17.1" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.17.17.1.1">Open-Ended Generation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.17.17.2">Aya <cite class="ltx_cite ltx_citemacro_cite">Singh et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib42" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.17.17.3">119</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.17.17.4">Instruction-following</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.17.17.5">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/CohereForAI/aya_dataset" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.17.17.6">self-BLEU</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.18.18">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.1">PolyWrite <cite class="ltx_cite ltx_citemacro_cite">Ji et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib26" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.2">240</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.3">Creative writing</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.4">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/MaLA-LM/PolyWrite" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.18.18.5">self-BLEU</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.19.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.19.19.1" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.19.19.1.1">Intrinsic Evaluation</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.19.19.2">PBC <cite class="ltx_cite ltx_citemacro_cite">Mayer and Cysouw (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib33" title="">2014</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.19.19.3">372+</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.19.19.4">Bible text</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.19.19.5">Partial (Upon request)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.19.19.6">NLL</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.20.20">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.20.20.1">MaLA <cite class="ltx_cite ltx_citemacro_citep">(Ji et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib26" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.20.20.2">546</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.20.20.3">General web</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.20.20.4">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/MaLA-LM/mala-monolingual-split/viewer/default/validation" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.20.20.5">NLL</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.21.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.21.21.1" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.21.21.1.1">Comprehension</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.21.21.2">MMMLU <cite class="ltx_cite ltx_citemacro_cite">Hendrycks et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib25" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.21.21.3">14+</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.21.21.4">General knowledge QA</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.21.21.5">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/openai/MMMLU" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.21.21.6">Acc.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.22.22">
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.22.22.1">Global-MMLU <cite class="ltx_cite ltx_citemacro_cite">Singh et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib41" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.22.22.2">42</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.22.22.3">Culture-aware QA</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.22.22.4">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/CohereForAI/Global-MMLU" title="">HF</a>)</td>
<td class="ltx_td ltx_align_left" id="S3.T1.1.1.22.22.5">Acc.</td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.23.23">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.23.23.1">Summarization</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.23.23.2">XLSum <cite class="ltx_cite ltx_citemacro_cite">Hasan et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.04155v1#bib.bib23" title="">2021</a>)</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.23.23.3">44</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.23.23.4">BBC news</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.23.23.5">Yes (<a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/csebuetnlp/xlsum" title="">HF</a>, <a class="ltx_ref ltx_href" href="https://github.com/csebuetnlp/xl-sum" title="">GitHub</a>)</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.1.1.23.23.6">ROUGE</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table provides a comprehensive overview of the multilingual LLMs evaluation benchmarks used in the GlotEval framework.  For each benchmark, it lists the tasks it covers (e.g., text classification, machine translation), the number of languages supported, the domain or source of the data, whether the data is open-source and accessible, and the typical metrics used for evaluation (e.g., accuracy, F1-score, BLEU). This detailed information helps to understand the breadth and depth of linguistic coverage and the evaluation methods employed by GlotEval.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of multilingual LLM evaluation benchmarks, with typical metrics used in each.
> </details>





### In-depth insights


#### LLM Multilingual Eval
The evaluation of Large Language Models (LLMs) across multiple languages is critical to ensure their reliable and equitable performance in a global context. **Multilingual evaluation** helps to identify biases, assess cross-lingual transfer capabilities, and understand the models' robustness in diverse linguistic environments. Current evaluation benchmarks are often English-centric, failing to capture the nuances and challenges of low-resource languages. A comprehensive evaluation framework should include diverse tasks such as translation, text classification, and question answering, spanning a wide range of languages and linguistic families. **Language-specific prompt engineering** is crucial for eliciting optimal performance from LLMs, as prompts designed for English may not be directly transferable to other languages. Furthermore, metrics used for evaluation need to be carefully chosen and adapted to different languages to accurately reflect model performance. **Developing inclusive evaluation benchmarks** and methodologies is essential for ensuring that LLMs are beneficial and accessible to all language communities.

#### GlotEval: Overview
**GlotEval** is a novel evaluation framework designed for massively multilingual Large Language Models (LLMs). It addresses limitations in existing evaluation methods, which are often English-centric and lack comprehensive support for low-resource languages. GlotEval provides **consistent multilingual benchmarking** by standardizing language codes and integrating diverse datasets. A key feature is **language-specific prompt templates**, enabling precise assessment of model instruction-following abilities in various linguistic settings. The framework also introduces a **non-English-centered machine translation evaluation** approach, allowing any supported language to serve as the pivot, breaking away from the traditional English paradigm. GlotEval's architecture supports various tasks, languages and metrics. 

#### Low-Resource Focus
Focusing on low-resource languages is crucial in the development and evaluation of large language models (LLMs). These languages often **lack sufficient data** for training and evaluation, leading to **biased performance assessments**. Ignoring low-resource languages results in models that **perform poorly** for speakers of these languages, perpetuating linguistic inequality. By **prioritizing low-resource languages**, we can develop more inclusive and equitable LLMs that better serve diverse linguistic communities and uncover **potential biases**.

#### Non-Eng. MT Eval
**Non-English-centric MT evaluation** is a crucial aspect of assessing LLMs, moving away from the traditional English-centric paradigm. By allowing any supported language to serve as the pivot, it offers flexibility in evaluating translation directions like “any-to-pivot” / “pivot-to-any.” This **breaks the English ↔ other language paradigm**, adapting seamlessly to diverse, potentially low-resource, language pairs. This design shift allows for more accurate measurement of translation quality between non-English languages, revealing specific strengths and weaknesses of models in handling various linguistic structures and nuances. It is also useful for stress-testing a translation system in low-resource scenarios.

#### Future LLM Tests
Given the rapid evolution of LLMs, future testing should prioritize **multilingual capabilities**, especially in **low-resource languages**, to ensure equitable global access. Testing frameworks must move beyond English-centric biases, incorporating diverse linguistic structures and cultural contexts. **Language-specific prompt engineering** will be crucial for accurate evaluations. Metrics should assess not only task performance but also language understanding, nuance, and appropriateness, guarding against unintended biases. Testing should also focus on **evaluating reasoning, knowledge integration, ethical considerations**, and factual accuracy in various languages. Also important are efficiency, resource consumption, and scalability when deployed across diverse hardware to ensure fair access.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.04155/extracted/6338362/Data_loader.png)

> 🔼 The GlotEval benchmark data loader is a key component of the GlotEval framework, responsible for managing and processing data from various multilingual benchmarks.  It takes as input a user's choices for benchmarks and languages.  It then retrieves data from a prompt library (containing language-specific prompt templates), aligns benchmark language identifiers to the unified ISO 639-3 format, and prepares multilingual prompts.  The loader also integrates with different model backends depending on the task type (generative or non-generative).  The final output is processed data ready for model inference and evaluation. The figure visually depicts the workflow and highlights the language ID alignment and multilingual prompt builder processes.
> <details>
> <summary>read the caption</summary>
> Figure 2: GlotEval benchmark data loader
> </details>



![](https://arxiv.org/html/2504.04155/extracted/6338362/Component_A.png)

> 🔼 This figure shows the language ID alignment process within the GlotEval benchmark data loader.  It illustrates how GlotEval unifies inconsistent language codes from various benchmarks into a standardized ISO 639-3_Script format.  The process involves using the iso639-lang Python package to map different language codes to their ISO 639-3 equivalents and identifying the dominant script using the GlotScript library. The result is a consistent language identification system used across all benchmarks.
> <details>
> <summary>read the caption</summary>
> (a)
> </details>



![](https://arxiv.org/html/2504.04155/extracted/6338362/Component_B.png)

> 🔼 This figure shows the multilingual prompt builder component of the GlotEval benchmark data loader.  It illustrates how a single prompt template in one language (e.g., English) is translated into multiple languages (130+) using Microsoft Translator. The resulting translated prompts, aligned with language and script codes, are stored in a multilingual prompt library for easy access during evaluation. This allows for language-specific evaluations by running the same tasks with prompts tailored to the language being evaluated.
> <details>
> <summary>read the caption</summary>
> (b)
> </details>



![](https://arxiv.org/html/2504.04155/extracted/6338362/Translation.png)

> 🔼 Figure 3 illustrates the two main components of GlotEval's benchmark data loader.  (a) shows the language ID alignment process, where GlotEval standardizes language codes from different benchmarks into a unified ISO 639-3 format to ensure consistent language identification across datasets.  (b) depicts the multilingual prompt generation process, which uses Microsoft Translator to automatically create and adapt prompt templates for different languages based on a single source language prompt. This ensures consistent, language-specific evaluation across all supported languages.
> <details>
> <summary>read the caption</summary>
> Figure 3: Benchmark data loader components: (a) Language ID alignment process and (b) multilingual prompt generation.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.1.1">Prompt Strategy</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.1.2">Tested Translation Language Pair</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_t" id="S4.T2.1.1.1.1.3">Prompt Template</th>
<th class="ltx_td ltx_th ltx_th_column" id="S4.T2.1.1.1.1.4"></th>
<td class="ltx_td" id="S4.T2.1.1.1.1.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.2.1">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.2.2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.2.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.T2.1.1.2.2.1.1.1.1.1">multi</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.1.1.2.1">language-specific</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.2.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.2.2.2.1">
<tr class="ltx_tr" id="S4.T2.1.1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.2.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.T2.1.1.2.2.2.1.1.1.1">fra → fin</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.2.1.2.1">French → Finnish</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.2.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.2.2.3.1">
<tr class="ltx_tr" id="S4.T2.1.1.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.3.1.1.1">Traduisez la phrase suivante de <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.3.1.1.1.1">Langue française</span> en <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.2.2.3.1.1.1.2">Langue finnoise</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.3.1.2.1">[Langue française] : {source_text_in_finnish}</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2.3.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.3.1.3.1">[Langue finnoise] :</td>
</tr>
</table>
</td>
<td class="ltx_td" id="S4.T2.1.1.2.2.4"></td>
<td class="ltx_td" id="S4.T2.1.1.2.2.5"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S4.T2.1.1.3.3.1">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.3.3.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.3.3.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.3.3.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.T2.1.1.3.3.1.1.1.1.1">fin_Latn</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.3.3.1.1.2.1">Finnish</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S4.T2.1.1.3.3.2">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.3.3.2.1">
<tr class="ltx_tr" id="S4.T2.1.1.3.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.3.3.2.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.T2.1.1.3.3.2.1.1.1.1">vie → zho-CN</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.3.3.2.1.2.1">Vietnamese → Chinese (Simplified)</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_t" id="S4.T2.1.1.3.3.3">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.3.3.3.1">
<tr class="ltx_tr" id="S4.T2.1.1.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.3.3.3.1.1.1">Käännä seuraava lause <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.3.1.1.1.1">Vietnamin kieli</span> muotoon <span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.3.3.1.1.1.2">Kiinan kieli (yksinkertaistettu)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.3.3.3.1.2.1">[Vietnamin kieli]: {source_text_in_vietnamese}</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.3.3.1.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.3.3.3.1.3.1">[Kiinan kieli (yksinkertaistettu)]:</td>
</tr>
</table>
</td>
<td class="ltx_td" id="S4.T2.1.1.3.3.4"></td>
<td class="ltx_td" id="S4.T2.1.1.3.3.5"></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table showcases example prompt templates for machine translation tasks using GlotEval. It demonstrates how different prompting strategies (multilingual, language-specific prompts in Chinese, Finnish, and English) are applied to different language pairs (French to Finnish, Vietnamese to Chinese). The templates are designed to be used in evaluating models' performance in cross-lingual machine translation.
> <details>
> <summary>read the caption</summary>
> Table 2: A demonstration of prompt templates of translation tasks in different prompt strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.2.2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.2.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.1.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.T2.1.1.2.2.1.1.1.1.1">multi</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.1.1.2.1">language-specific</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the throughput performance results obtained using an Nvidia A100 40GB GPU.  The experiment measured the speed of generating text in various languages, categorized by script type (Latin, Cyrillic, Arabic, Devanagari), for six different tasks from GlotEval. Each cell displays the number of tokens generated, the wall time in seconds it took, and the calculated average tokens per second (tokens/s). This data allows for a comparison of the efficiency of language model processing across various languages and tasks on the specified hardware.
> <details>
> <summary>read the caption</summary>
> Table 3: Throughput with Nvidia A100 40GB GPU. Each cell contains: #⁢generated tokenswall time (seconds)=average tokens/s#generated tokenswall time (seconds)average tokens/s\frac{\#\text{generated tokens}}{\text{wall time (seconds)}}=\text{average % tokens/s}divide start_ARG # generated tokens end_ARG start_ARG wall time (seconds) end_ARG = average tokens/s.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.2.2.2.1">
<tr class="ltx_tr" id="S4.T2.1.1.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.2.1.1.1"><span class="ltx_text ltx_font_typewriter" id="S4.T2.1.1.2.2.2.1.1.1.1">fra → fin</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S4.T2.1.1.2.2.2.1.2.1">French → Finnish</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the throughput performance of the Qwen2-1.5B model on six different tasks (Flores200, Aya, XLSum, SIB-200, Global-MMLU, and WikiANN) across 19 languages using an AMD MI250X 64GB GPU.  The throughput is measured in tokens per second and is calculated by dividing the number of generated tokens by the wall time (in seconds) taken for generation. Each cell shows the throughput for a specific task and language, offering a detailed performance comparison across various tasks and languages.
> <details>
> <summary>read the caption</summary>
> Table 4: Throughput with AMD MI250X 64GB GPU. Each cell contains: #⁢generated tokenswall time (seconds)=average tokens/s#generated tokenswall time (seconds)average tokens/s\frac{\#\text{generated tokens}}{\text{wall time (seconds)}}=\text{average % tokens/s}divide start_ARG # generated tokens end_ARG start_ARG wall time (seconds) end_ARG = average tokens/s.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.04155/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.04155/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}