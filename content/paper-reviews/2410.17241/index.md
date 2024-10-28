---
title: "Frontiers in Intelligent Colonoscopy"
summary: "This study advances intelligent colonoscopy by creating ColonINST, a large-scale multimodal dataset, and ColonGPT, a multimodal language model, to improve colonoscopic scene perception."
categories: ["AI Generated"]
tags: ["🔖 24-10-22", "🤗 24-10-23"]
showSummary: true
date: 2024-10-22
draft: false
---

### TL;DR


{{< lead >}}

This research tackles the challenge of improving colonoscopy, a vital procedure for colorectal cancer screening. The authors identified a lack of multimodal research in this area, focusing on visual data alone.  To overcome this limitation, they created ColonINST, a large dataset combining colonoscopy images, medical captions generated using GPT-4V, and human-machine conversations for four crucial tasks (classification, detection, segmentation, vision-language understanding).  They then developed ColonGPT, a multimodal language model specifically designed for colonoscopy, trained on ColonINST, exhibiting improved performance in these tasks.  Furthermore, a comprehensive benchmark was created to compare ColonGPT against other models and evaluate its capabilities.  The researchers' multimodal approach seeks to bridge the gap in current colonoscopy research, aiming to enhance diagnostic accuracy, reduce error rates, and ultimately improve patient outcomes. The findings highlight the potential of integrating AI in real-time colonoscopy procedures through interactive dialogues with AI models.

{{< /lead >}}


{{< button href="https://arxiv.org/abs/2410.17241" target="_self" >}}
{{< icon "link" >}} &nbsp; read the paper on arXiv
{{< /button >}}
<br><br>
{{< button href="https://huggingface.co/papers/2410.17241" target="_self" >}}
{{< icon "hf-logo" >}} &nbsp; on Hugging Face
{{< /button >}}

#### Why does it matter?
This paper is highly important for researchers in medical image analysis, AI, and healthcare. It introduces a novel multimodal instruction tuning dataset and a language model specifically designed for colonoscopy, addressing a critical gap in multimodal research within the field.  The proposed methods and benchmark facilitate future research in interactive, user-driven tasks within medical image analysis, particularly in the context of real-time diagnosis and treatment planning during colonoscopy.
#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A new large-scale multimodal instruction tuning dataset for colonoscopy (ColonINST) was created. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A novel multimodal language model for interactive colonoscopy (ColonGPT) was developed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A new multimodal benchmark for evaluating colonoscopy-specific multimodal models was established. {{< /typeit >}}
{{< /alert >}}

------
#### Visual Insights



![](figures/figures_1_0.png)

> 🔼 Figure 1 is an introductory diagram showing the anatomy of the large intestine, the polypectomy procedure, colonoscope components, and a summary of the study's three highlights.
> <details>
> <summary>read the caption</summary>
> Fig. 1. Introductory diagram. We depict (a) the anatomy of the large intestine (colon) within the digestive tract, the polypectomy procedure during colonoscopy examination, and the components of a colonoscope. The bottom figure (b) summarises three highlights of this study.
> </details>







{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Dataset</td><td>Publication</td><td></td><td colspan="2">#IMG#VIDIClsBbxSegTxINumber 15</td><td>of categories (#C) → Category names</td><td>URL</td></tr><tr><td>CVC-ColonDB[19]</td><td>PR'12</td><td>300</td><td></td><td></td><td>#C1 → polyp #C2 non-polyp</td><td>Link Link</td></tr><tr><td>ETIS-Larib [20]</td><td>CARS'14</td><td>196 612</td><td></td><td></td><td>→ polyp,</td><td></td></tr><tr><td>CVC-ClinicDB 21</td><td>CMIG'15</td><td></td><td>31</td><td></td><td>#C1 → polyp</td><td>Link</td></tr><tr><td>ASU-Mayo 22</td><td>TMI'15</td><td>36,458</td><td>38</td><td>V</td><td>#C2 → polyp, non-polyp</td><td>Link</td></tr><tr><td>Ye et al. [23] Deeba et al. [24</td><td>MedIA'16 IJCNN'16</td><td>7,894 100</td><td>10</td><td>V</td><td>#C2 → polyp, non-instance</td><td>Link -</td></tr><tr><td>CU-ColonDB [25]</td><td>JBHI'16</td><td>1,930</td><td></td><td></td><td>#C2 → bleeding, non-bleeding #C3 → hyperplasia polyps, adenomatous polyps, non-polyp</td><td>-</td></tr><tr><td>ColonoscopicDS[26]</td><td>TMI'16</td><td></td><td>76</td><td></td><td>#C3 → serrated adenomas, hyperplastic lesions, adenoma</td><td>Link</td></tr><tr><td>CVC-ClinicVideoDB[7]MICCAlw/17</td><td></td><td>10,924</td><td>18</td><td></td><td>#C2 → polyp, non-polyp</td><td>Link</td></tr><tr><td>Kvasir [28]</td><td>MMSys'17</td><td>8,000</td><td></td><td></td><td>#C8 → cecum, polyps, ulcerative colitis, dyed and lifted polyp, dyed resection margins, Z-line, pylorus, esophagitis|Link</td><td></td></tr><tr><td>Nerthus [29]</td><td>MMSys`17</td><td>5,525</td><td>21</td><td></td><td>#C4 → BBPS (Bosfor-Bowel-Preparation-Scale) 0/1/2/3</td><td>Link</td></tr><tr><td>EndoSceneStill [30]</td><td>JHE'17</td><td>912</td><td>44</td><td></td><td>#C1 → polyp</td><td>Link</td></tr><tr><td>KID1 [31]</td><td>EIO'17</td><td>137</td><td>V</td><td></td><td>#C10 → angiectasias, ulcers, stenoses, villous edema, nodular lymphangiectasias, chylous cysts, polyps, aphthae, normal/no pathology, intraluminal hemorrhage</td><td>Link</td></tr><tr><td>KID2 [31]</td><td>EIO'17</td><td>2,371</td><td>47 V</td><td></td><td>#C4 → vascular anomalies, polypoid anomalies, inflammatory anomalies, normal images</td><td>Link</td></tr><tr><td>NBIPolyp-UCdb 「32</td><td>BSPC'19</td><td>86</td><td>11</td><td></td><td>#C2 → adenomas, hyperplastic</td><td>Link</td></tr><tr><td>WLPolyp-UCdb [33]</td><td>EIO'19</td><td>3,040</td><td>42 V</td><td></td><td>#C2 → polyp, normal mucosa</td><td>Link</td></tr><tr><td>ASEI [34]</td><td>MM'19</td><td>4,470</td><td></td><td></td><td>#C4 → dyed-lifted-polyps, dyed-resection-margins, instruments, polyp</td><td>Link</td></tr><tr><td>Cho et al. [35]</td><td>PeerJ'19</td><td>328,927</td><td>112 V</td><td></td><td>#C1 → cecum</td><td>Link</td></tr><tr><td>EAD2019 [36]</td><td>arXiv' 19</td><td>2,342</td><td></td><td></td><td>#C7 → imaging artefacts, contrast, specularity, instrument, bubbles, motion blur, saturation</td><td>Link</td></tr><tr><td>Liu et al⌀ [37]</td><td>ISBI'20</td><td>14,317</td><td>18</td><td></td><td>#C2 → polyp, non-polyp</td><td>-</td></tr><tr><td>Kvasir-SEG [38]</td><td>MMM'20</td><td>1,000</td><td></td><td></td><td>#C1 → polyp</td><td>Link</td></tr><tr><td>PICCOLO [39]</td><td>ApplSci'20</td><td>3,433</td><td>39</td><td></td><td>#C17 → Paris classification (protruded lesions: 0-Ip/0-lps/0-Is, elevated lesions: 0-IIa/O-IIa+c, flat lesions: 0-IIb), NICE classification (type 1/2/3), Diagnosis (adenocarcinoma, /adenoma /hyperplasia), Histological stratification (high grade dysplasia/hyperplasia/invasive adenocarcinoma /low grade dysplasia/no dysplasia)</td><td>Link</td></tr><tr><td>EDD2020 [40]</td><td>arXiv'20</td><td>386</td><td></td><td></td><td>#C5 → suspicious area, high-grade dysplasia, adenocarcinoma, polyp, normal dysplastic Barrett's oesophagus</td><td>Link</td></tr><tr><td>CAD-CAP [41]</td><td>EIO'20</td><td>25,124</td><td>1,686 V</td><td></td><td>#C4 → vascular lesions, fresh blood, ulcero-inflammatory lesions, normal images</td><td>-</td></tr><tr><td>ACP-ColonDB530 [42]</td><td>NPJDM'20</td><td>221,976</td><td></td><td></td><td>#C13 → adenomatous polyp, hyperplastic polyp, other polyp, bleeding, IC valve, instrument, artefact, normal colon structure, bubble, inside colon background, stool, lumen, outside colon background</td><td>-</td></tr><tr><td>HyperKvasir [43]</td><td>SData'20</td><td>110,079</td><td>374 V</td><td></td><td>#C23 → cecum, retroflex rectum, BBPS 0-1/2-3, ulcerative colitis grade 1/2/3/0-1/1-2/2-3, polyps, dyed lifted polyps, dyed resection margins, hemorrhoids, Barrett's, terminal ileum, Z-line, esophagitis grade A, esophagitis grade B-D, pylorus, retroflex stomach, Barrett's (short-segment), impacted stool</td><td>Link</td></tr><tr><td>WCE-Polyp [4]</td><td>TMI'20</td><td>541</td><td></td><td></td><td>#C1 → polyp</td><td>Link</td></tr><tr><td>EAD2020 [45]</td><td>MedIA'21</td><td>2,531</td><td></td><td></td><td>#C8 → specularity, bubbles, saturation, contrast, blood, instrument, blur, imaging artefacts</td><td>Link</td></tr><tr><td>BKAI-Small [46] BKAI-Large [46]</td><td>ISVC'21 ISVC'21</td><td>1,200</td><td></td><td></td><td>#C3 → non-neoplastic polyp, neoplastic polyp, background</td><td>Link</td></tr><tr><td>CPC-Paired [47]</td><td>MICCAI'21</td><td>7,466</td><td></td><td></td><td>#C4 → non-neoplastic polyp, neoplastic polyp, undefined polyp, background #C2 → hyperplastic polyp, adenoma</td><td>Link Link</td></tr><tr><td>LDPolyVideo [48]</td><td>MICCAI'21</td><td>681 901,666</td><td>263</td><td></td><td>#C2 → polyp, non-polyp</td><td>Link</td></tr><tr><td>Celik et al. [49]</td><td>MICCAI'21</td><td>2,224</td><td></td><td></td><td>#C2 → polyps, Barrett's esophagus</td><td>Link</td></tr><tr><td>Kvasir-Instrument [50]</td><td>MMM'21</td><td>590</td><td></td><td></td><td>#C1 → GI procedure tools (e.g., snares, balloons, and biopsy forceps)</td><td>Link</td></tr><tr><td>CP-CHILD [51]</td><td>BMCMI'21</td><td>9,500</td><td></td><td></td><td>#C2 → colonic polyp, normal or other pathological images</td><td>Link</td></tr><tr><td>CROHN-IPI [52]</td><td>EIO'21</td><td>3,498</td><td></td><td></td><td>#C7 → erythema, edema, aphthoid ulceration, ulceration (3-10mm, > 10mm), stenosis, non-pathological</td><td>Link</td></tr><tr><td>C-E Crohn's Disease [53]</td><td>FMOLB'21</td><td>467</td><td>164</td><td></td><td>#C1 → Crohn's lesions</td><td>-</td></tr><tr><td>SUN-database [54]</td><td>GIE'21</td><td>159,232</td><td>113</td><td></td><td>#C7 → hyperplastic polyp, low grade adenoma, high-grade adenoma, traditional serrated adenoma, invasive carcinoma, sessile serrated lesion, negative</td><td>Link</td></tr><tr><td>Kvasir-Sessile [55]</td><td>JBHI'21</td><td>196</td><td></td><td></td><td>#C1 → polyp (<10mm)</td><td>Link</td></tr><tr><td>Kvasir-Capsule [56]</td><td>SData'21</td><td>4,741,504</td><td>117 V</td><td></td><td>#C14 → polyp, Ileocecal valve, lymphangiectasia, erythema, angiectasia, foreign body, erosion, ulcer, blood (fresh), blood (hematin), normal clean mucosa, reduced mucosal view, pylorus, ampulla of Vater</td><td>Link</td></tr><tr><td>KUMC [57]</td><td>PONE'21</td><td>37,899</td><td>155</td><td></td><td>#C2 → hyperplastic polyps, adenomatous polyps</td><td>Link</td></tr><tr><td>ERS* [58]</td><td>arXiv/22</td><td>1,354,6671,520</td><td></td><td></td><td>#C27 colitis (active/ quiescent), stricture (postoperative/inflammatory /malignant), polyp, melanosis,</td><td></td></tr><tr><td>Tian et al. [59]</td><td></td><td></td><td></td><td></td><td>→ ulcerative diverticulosis, fistula, crohnsdisease (active/ quiescent), lipoma, proctitis, hemorrhoids, submucosal tumor, solitary ulcer, bleeding of unknown origin, ileitis, diverticulitis, colitis: ischemic, colorectal cancer, angiodysplasia, rectal ulcer, foreign body, polyposis syndrome, postoperative appearance, parasites</td><td>Link</td></tr><tr><td>WCE-CCDD [60]</td><td>MICCAI'22</td><td>807,069 6,000</td><td>253 V #C4</td><td></td><td>#C2 → polyp, non-polyp</td><td>Link</td></tr><tr><td>PolypGen2.0 [61]</td><td>BSPC/22 ISBIw'22</td><td></td><td></td><td></td><td>→ ulcer, polyps, normal, esophagitis</td><td>Link</td></tr><tr><td>SUN-SEG [62]</td><td>MIR'22</td><td>3,446 159,2321,013</td><td>46 V</td><td></td><td>#C2 → serrated, adenomas</td><td>Link</td></tr><tr><td>SinGAN-Seg [63]</td><td>PONE'22</td><td>10,000</td><td></td><td></td><td>#C7 → hyperplastic polyp, low grade adenoma, high-grade adenoma, traditional serrated adenoma, invasive carcinoma, sessile serrated lesion, negative</td><td>Link</td></tr><tr><td>ENDOTEST [64]</td><td>SJG'22</td><td>253,754</td><td>58</td><td>#C2</td><td>#C1 → polyp → polyp, non-polyp</td><td>Link Link</td></tr><tr><td>MEDVQA-GI [65]</td><td>CLEF'23</td><td>3,949</td><td></td><td></td><td>#C2 → polyp, surgical equipment</td><td>Link</td></tr><tr><td>GastroVision [66]</td><td>ICMLw'23</td><td>8,000</td><td>#C27</td><td></td><td></td><td>blood</td></tr><tr><td>W-Polyp</td><td></td><td></td><td></td><td></td><td>→ accessory tools, angiectasia, in lumen, cecum, colon diverticula, resection margins, colorectal cancer, dyed-lifted-polyps, erythema, ulcer, dyed-resection-margins, retroflex rectum, mucosal inflammation large bowel, resected polyps, colon polyps, lleocecal valve, normal mucosa and vascular pattern in the large bowel, esophagitis, Barrett's esophagus, duodenal bulb, esophageal varices, gastric polyps, gastroesophageal junction normal z-line, normal esophagus, stomach, pylorus, small bowel terminal ileum</td><td>Link</td></tr><tr><td>normal [67]</td><td>CVPR'23</td><td>1,450</td><td></td><td></td><td>#C1 → polyp</td><td>Link</td></tr><tr><td>LIMUC</td><td>IBD'23</td><td>11,276</td><td>V</td><td></td><td>V 68 → endoscopic (MES) 0/1/2/3</td><td>score Link</td></tr><tr><td>PS-NBI2K</td><td>JBHI'23</td><td></td><td></td><td></td><td>#C4 Mayo [16 → polyp</td><td></td></tr><tr><td>PolypGen [69</td><td>SData'23</td><td>2,000 8,037</td><td>#C1 23 V</td><td></td><td></td><td>Link</td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><td></td><td></td><td></td></table>{{< /table-caption >}}

> 🔼 Table 1 presents data statistics for 63 colonoscopy datasets, including the number of images and videos, classification tags, bounding boxes, segmentation masks, and text annotations, categorized by their objectives.
> <details>
> <summary>read the caption</summary>
> TABLE 1 Data statistics for colonoscopy datasets. The columns include: number of images (#IMG) and videos (#VID), classification tag (Cls), bounding box (Bbx), segmentation mask (Seg), text (Tx). The categories not related to colonoscopy, such as stomach and esophagitis, are marked in grey.
> </details>



### More visual insights

<details>
<summary>More on figures
</summary>


![](figures/figures_2_0.png)

> 🔼 The figure illustrates the four colonoscopic scene perception tasks (classification, detection, segmentation, and multimodal applications) and their clinical implications.
> <details>
> <summary>read the caption</summary>
> Fig. 2. Colonscopic scene perception from visual to multimodal perspectives. In clinical practice, purely visual tasks, including (a) classification, (b) detection, and (c) segmentation, are applied to identify targets of interest such as polyps and instruments. (d) Multimodal applications improve colonoscopy procedures by performing interactive, user-driven tasks aligned with clinical needs. The chatbot provides personalised advice, automated reporting, and streamline procedural workflows.
> </details>



![](figures/figures_5_0.png)

> 🔼 The figure illustrates five deep-based architectures used in colonoscopy scene perception, categorized by their data flow management strategies.
> <details>
> <summary>read the caption</summary>
> Fig. 3. Gallery of deep-based architectures. The single-stream framework (SF) features a single input and output with sequential data flow. Multi-stream frameworks predict a single output but involve parallel processing streams, either at the decoding stage (MF#1) or the encoding stage (MF#2). Branched frameworks extend multi-stream framework to produce multiple outputs from either a single input (BF#1) or multiple inputs (BF#2). These side outputs typically receive supervision from additional supervisory signals, such as boundary cues.
> </details>



![](figures/figures_9_0.png)

> 🔼 Figure 4 shows the creation process of ColonINST, a multimodal instruction tuning dataset for colonoscopy, including data statistics, taxonomy, caption generation pipeline, and human-machine dialogue statistics.
> <details>
> <summary>read the caption</summary>
> Fig. 4. Details of the established ColonINST. (a) Three sequential steps to create the instruction tuning dataset for multimodal research. (b) Numbers of colonoscopy images designated for training, validation, and testing purposes. (c) Data taxonomy of three-level categories. (d) A word cloud of the category distribution by name size. (e) Caption generation pipeline using the VL prompting mode of GPT-4V [4]. (f) Numbers of human-machine dialogues created for four downstream tasks.
> </details>



![](figures/figures_10_0.png)

> 🔼 The figure compares the zero-shot language responses of three AI chatbots against ColonGPT for colonoscopy image classification, highlighting ColonGPT's superior accuracy.
> <details>
> <summary>read the caption</summary>
> Fig. 5. Response comparison for colonoscopy image classification. We evaluate the zero-shot language responses from three AI chatbots against the response from our multimodal model, ColonGPT.
> </details>



![](figures/figures_11_0.png)

> 🔼 The figure illustrates the architecture of ColonGPT, a multimodal language model designed for interactive colonoscopy tasks, showing its visual encoder, multimodal adapter, language model, and multigranularity views.
> <details>
> <summary>read the caption</summary>
> Fig. 6. Details of our multimodal language model, ColonGPT.
> </details>



![](figures/figures_12_0.png)

> 🔼 Figure 7 shows examples of ColonGPT's abilities to perform classification, region classification, localization, and captioning tasks through conversational interactions.
> <details>
> <summary>read the caption</summary>
> Fig. 7. Illustration of ColonGPT’s multimodal capabilities. Our model can execute various multimodal colonoscopy tasks through conversational interactions, including comprehension (CLS, REG), localisation (REC), and captioning (CAP) based.
> </details>



![](figures/figures_12_1.png)

> 🔼 The figure illustrates ColonGPT's ability to perform four colonoscopy tasks (classification, referring expression generation, referring expression comprehension, and image captioning) through conversational interactions.
> <details>
> <summary>read the caption</summary>
> Fig. 7. Illustration of ColonGPT’s multimodal capabilities. Our model can execute various multimodal colonoscopy tasks through conversational interactions, including comprehension (CLS, REG), localisation (REC), and captioning (CAP) based.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td></td><td>Model</td><td>Publication</td><td>Core design</td><td>Training dataset</td><td>Testing dataset</td><td>Backbone Arch</td><td>Head Sup</td><td></td><td>URL</td></tr><tr><td>models Image-based</td><td>Zhang et al. [25] RIIS-DenseNet [106 FSAD-Net 107 Gammulle et al. 108] ADGAN [37] Carneiro et al. [109] CPC-Trans [111] SSL-WCE [110] PolypsAlign [47] FFCNet 112 DLGNet 113 Yue et al. 114 DAFON 115 SSL-CPCD[73]</td><td>JBHI'16 MICCAI'18 MICCAI'20 MICCAI'20 ISBI'20 MedIA'20 MICCAI'22 MedIA'20 MICCAI'21 MICCAI'22 MedIA'23 TIM'23 ESWA'24 TMI'24</td><td>domain transfer learning rotation-invariant, similarity constrained mutual information maximisation relational mapping dual adversarial learning model uncertainty & calibration cross-modal representation consistency adaptive aggregated attention teacher-student alignment frequency domain learning Gaussian mixture model class imbalance loss few-shot open-set learning composite pretext-class discrimination</td><td>CU, CDS Private Private Kvasir [28], Nerthus [29] Liu et al. [37] Private CPC-Paired [47] CAD-CAP [41] CPC-Paired [47] Private Private Private, HK Kvasir-Capsule [56] LIMUC [68]</td><td>CU, CDS Private Private Kvasir [28], Nerthus [29] Liu et al. [3 ] Private CPC-Paired [] CAD-CAP [41] CPC-Paired [] Private Private Private, HK Kvasir-Capsule [56] Private, LIMUC [68]</td><td>CaffeNet BF#1 D-121 SF D-121 BF#2 R-50 MF#1 Customised BF#2 D-121 SF ViT-S16 BF#2 D-121 BF#2 R-50 BF#2 R-18 SF R-18 BF#2 MobV2 SF R-12 BF#2 R50-Att BF#2</td><td></td><td>SVM FS FC FS FC US FC FS l2 US FC FS CCCCCC BERBER °C S °C FS</td><td>- - Link - - - Link Link Link Link Link Link - Link</td></tr><tr><td>Video</td><td>BseNet[116] Tamhane et al. 119 Byrne et al. [118] Tian et al. [59]</td><td>MICCAI'18 MICCAIw'22 Gut'19 MICCAI'22</td><td>unsupervised depth estimation, LSTM[117] vision transformer based real-time assessment system multiple instance learning</td><td>Private Private Private WVAD [59]</td><td>Private Private Private WVAD [59]</td><td>C3D ViT-B16 Inc-v3 I3D</td><td>SF SF SF SF</td><td>FC FS °C FS FS FC WS</td><td>- - - Link</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents data statistics for 63 colonoscopy datasets, including the number of images and videos, and the types of annotations available (classification, bounding boxes, segmentation masks, and text).


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td></td><td colspan="2">Model| Publication</td><td>Core design</td><td>Training dataset</td><td>Testing dataset</td><td>Backbone WF Arch</td><td>NMS</td><td>EC Sup</td><td>|URL</td></tr><tr><td>models Image-based</td><td>Yang et al. 126 ConsolidatedPolypDA [127] MDeNetplus [128] FedInI [129] Pacal et al. [130] FRCNN-AA-CIF [132] SMPT++ [131] Haugland et al. 133 SCAN++ [134] TFCNet [135] DUT [136]</td><td>TIM'20 MedIA'21 MedIA'21 MICCAI'22 CIBM'22 CIBM'23 TMI'22 MI'23 TMM'23 CIBM'24 TNNLS'24</td><td>parallel detection & segmentation Gaussian Fourier domain adaptation 2D Gaussian shapes prediction federated learning, structural causal model improved YOLOv3 [121]/v4 [120] attention module & context information fusion source-free domain adaptation modality translation enhanced semantic conditioned adaptation fine-grained feature compensation decoupled unbiased teacher</td><td>Private, C6, ETIS C6 C6 KUMC SUN, PL Private Private, C6, KID ETIS, ASEI, Private, PL, CDS C6, ASEI C6, KUMC, LDPV C6, ASEI, Private</td><td>Private, C6, ETIS ETIS, ASEI C3, ETIS KUMC SUN, PL, ETIS Private Private, C6, ETIS, ASEI, KID PL, KUMC C6, ASEI C6, KUMC, LDPV, KSe ASEI, Private</td><td>R-50 TS BF#1 R-101 TS BF#2 R-34 OS MF#1 R-101 TS BF#2 CDN-53/DN-53 OS BF#1 R-101 TS BF#1 R-101 OS BF#1 EffDet-D0 OS BF#2 R-101 OS BF#2 CDN-53 OS BF#1 R-101 OS BF#2</td><td>FS FS FS US FS FS, US FS</td><td>FS US FS US</td><td>Link Link Link 、 Link Link - Link</td></tr><tr><td></td><td>Tajbakhsh et al. [137] Tajbakhsh et al. [22] Yu et al⌀ [138] models Qadir et al. [141] Mo et al. [139] AIPDT [142] Video-based AI-doscopist [42] STFT [143] Yu et al. [144] EMSEN [145] YONA [146] Intrator et al. [147] V2I-DETR [148]</td><td>IPMI'15 TMI'15 JBHI'16 JBHI'19 ICPR'18 MICCAI'20 NPJDM'20 MICCAI'21 AIM'22 TII'22 MICCAI'23 MICCAI'23 arXiv'24</td><td>patch descriptor & edge classification extension on [137] online and offline integration temporal dependency building upon Faster R-CNN [140] parallel detection and tracking spatial-temporal fusion spatial-temporal feature transformation instance tracking head (plug-and-play) explainable multitask Shapley explanation feature alignment & contrastive learning re-identification self-supervised polypledge distillation video-to-image</td><td>Private C3 ASU ASU, C6 CDB Private, CDB C6, ETIS, C3, ASU, CU, ACP ASU, CDB Private, C6, CDB CDS SUN, CDB, LDPV Private SUN</td><td>Private C3, ASU ASU ASU, CDB C6, C3, CDB, ES CDB C6, ETIS, C3, ASU, CU, ACP ASU, CDB Private, CDB, ETIS CDS SUN, CDB, LDPV Private SUN</td><td>AlexNet AlexNet Customised V-16 V-16 DN-53, AlexNet R-50 R-50 V-16 Customised R-50 R-50v2 R-50</td><td>TS BF#1 TS BF#1 OS MF#2 TS BF#1 TS BF#1 OS BF#2 OS BF#2 OS BF#2 OS BF#2 OS BF#2 TS BF#2 OS MF#2 OS BF#2</td><td>FS FS FS FS B FS FS FS FS FS FS US FS</td><td>- - Link - Link - -</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 1 presents data statistics for 63 colonoscopy datasets, including the number of images and videos, classification tags, bounding boxes, segmentation masks, and text annotations.


{{< table-caption >}}
<table id='3' style='font-size:14px'><tr><td>Task</td><td>Instruction templates</td><td>Data source</td><td>Human-machine dialogue sample</td></tr><tr><td>CLS</td><td>1. Categorize the object. 2. Determine the object's category. 3. Identify the category of the object. 4. Classify the object's category. 5. Assign the object to its corresponding category.</td><td>19 sources → SUN-database [54], PolypGen [69], CVC-ClinicDB [21], ETIS [20], KUMC [57], Kvasir [28], PSNBI2K [16], CVC-ColonDB [19], EDD2020 [40], Kvasir-Capsule [56], CP-CHILD [51], BKAI-Small [46], PICCOLO [39], WCE-CCDD [60], CPC-Paired [47], HyperKvasir [43], Nerthus [29], GastroVision [66], Kvasi-Instrument [50]</td><td>Human: "Assign the object to its corresponding category Answer: "polyp"</td></tr><tr><td>REG</td><td>1. What category does {object coordinates } belong to? 2. Can you tell me the category of {object coordinates}? 3. Could you provide the category for {object coordinates }? 4. Please specify the category of {object coordinates}. 5. What is the category for {coordinates}?</td><td>11 sources → SUN-database [54], PolypGen [69], CVC-ClinicDB [21], ETIS [20], KUMC [57], Kvasir [28], PSNBI2K [16], CVC-ColonDB [19], EDD2020 [40], Kvasir-Capsule [56], Kvasi-Instrument [50]</td><td>Human: "Could you provide the category for {<147><317><665><770>)?" Answer: "high grade adenoma</td></tr><tr><td>REC</td><td>1. Where is the location of {object category}? 2. Could you give the position of {object category}? 3. Where is {category} located? 4. Could you specify the location of {object category}? 5. Please specify the coordinates of {object category}.</td><td>11 sources → SUN-database [54], PolypGen [69], CVC-ClinicDB [21], ETIS [20], KUMC [57], Kvasir [28], PSNBI2K [16], CVC-ColonDB [19], EDD2020 [40], Kvasir-Capsule [56], Kvasi-Instrument [50]</td><td>Human: "Where is adenomatous located?" Answer: "{<128><406><216><496>)"</td></tr><tr><td>CAP</td><td>1. Describe what you see in the image. 2. Interpret what the image shows. 3. Detail the visual elements in the image. 4. Explain the image's visuals thoroughly. 5. Offer a thorough explanation of the image.</td><td>19 sources → SUN-database [54], PolypGen [69], CVC-ClinicDB [21], ETIS [20], KUMC [57], Kvasir [28], PSNBI2K [16], CVC-ColonDB [19], EDD2020 [40], Kvasir-Capsule [56], CP-CHILD [51], BKAI-Small [46], PICCOLO [39], WCE-CCDD [60], CPC-Paired [47], HyperKvasir [43], Nerthus [29], GastroVision [66], Kvasi-Instrument [50]</td><td>Human: "Detail the visual elements in the image. Answer: "The image displays a medical endoscopic view</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 6 presents details of the ColonINST dataset, including instruction templates, data sources, and sample human-machine dialogues for four tasks.


{{< table-caption >}}
<br><table id='3' style='font-size:16px'><tr><td rowspan="2">Model</td><td rowspan="2">Visual encoder (input shape/URL)</td><td rowspan="2">Language model (model size/URL)</td><td rowspan="2">No.</td><td colspan="2"></td><td rowspan="2" colspan="2">CLS task (A ↑) seen unseen</td><td colspan="2">REG task (A ↑)</td><td colspan="2">REC task (IoU ↑)</td></tr><tr><td>LoRA EXT</td><td></td><td>seen</td><td>unseen</td><td>seen</td><td>unseen</td></tr><tr><td rowspan="2">MiniGPT-v2 []</td><td rowspan="2">EVA-G/14 (448px/link)</td><td rowspan="2">LLaMA2 (7B/link)</td><td>#A1</td><td></td><td></td><td>91.49%</td><td>77.93%</td><td>94.69%</td><td>72.05%</td><td>23.45%</td><td>15.36%</td></tr><tr><td>#A2</td><td>V</td><td></td><td>90.00%</td><td>76.82%</td><td>87.65%</td><td>70.23%</td><td>27.97%</td><td>31.13%</td></tr><tr><td rowspan="2">LLaVA-v1 [277]</td><td rowspan="2">CLIP-L/14 (224px/link)</td><td rowspan="2">Vicuna-v1.3 (7B/link)</td><td>#B1</td><td></td><td></td><td>87.86%</td><td>72.08%</td><td>84.55%</td><td>68.11%</td><td>20.05%</td><td>12.72%</td></tr><tr><td>#B2</td><td>V</td><td></td><td>89.61%</td><td>42.17%</td><td>86.87%</td><td>46.85%</td><td>21.81%</td><td>3.24%</td></tr><tr><td rowspan="2">LLaVA-v1.5 []</td><td rowspan="2">CLIP-L/14 (336px/link)</td><td rowspan="2">Vicuna-v1.5 (7B/link)</td><td>#C1</td><td></td><td></td><td>92.97%</td><td>79.10%</td><td>98.58%</td><td>70.38%</td><td>55.72%</td><td>34.32%</td></tr><tr><td>#C2</td><td>V</td><td></td><td>93.33%</td><td>80.89%</td><td>99.32%</td><td>72.88%</td><td>61.97%</td><td>42.31%</td></tr><tr><td>Bunny-v1.0-3B []</td><td>SigLIP-SO (384px/link)</td><td>Phi2 (2.7B/link)</td><td>#D1</td><td></td><td>V</td><td>91.16%</td><td>75.50%</td><td>96.61%</td><td>69.45%</td><td>46.24%</td><td>31.24%</td></tr><tr><td rowspan="2">MGM-2B [283]</td><td rowspan="2">CLIP-L/14 (336px/ link) & ConvNeXt-L (768px/link)</td><td rowspan="2">Gemma (2B/link)</td><td>#D2</td><td></td><td></td><td>92.47%</td><td>79.50%</td><td>96.02%</td><td>75.08%</td><td>54.00%</td><td>41.48%</td></tr><tr><td>#E1 #E2</td><td></td><td>V</td><td>92.97% 93.24%</td><td>78.99% 78.69%</td><td>98.17% 98.75%</td><td>69.81% 74.30%</td><td>39.78% 57.25%</td><td>16.00% 25.23%</td></tr><tr><td rowspan="2">MobileVLM-1.7B [284]</td><td rowspan="2">CLIP-L/14 (336px/link)</td><td rowspan="2">MobileLLaMA (1.4B/link)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>#F1 #F2</td><td></td><td>V V</td><td>93.02% 93.64%</td><td>78.75% 80.44%</td><td>97.78% 97.87%</td><td>73.14% 78.03%</td><td>47.30% 51.36%</td><td>31.46% 34.80%</td></tr><tr><td rowspan="2">LLaVA-Med-v1.0 [280]</td><td rowspan="2">CLIP-L/14 (224px/link)</td><td rowspan="2">LLaMA1 (7B/link)</td><td>#G1</td><td></td><td></td><td>93.52%</td><td>78.04%</td><td>97.74%</td><td></td><td></td><td></td></tr><tr><td>#G2</td><td></td><td>V</td><td>93.84%</td><td>77.38%</td><td>97.35%</td><td>75.07% 75.25%</td><td>41.60% 39.43%</td><td>24.89% 20.85%</td></tr><tr><td rowspan="2">LLaVA-Med-v1.5 [280]</td><td rowspan="2">CLIP-L/14 (224px/link)</td><td rowspan="2">Mistral-v0.2 (7B/link)</td><td>#H1</td><td></td><td>V</td><td>93.62%</td><td></td><td></td><td></td><td></td><td></td></tr><tr><td>#H2</td><td>V</td><td></td><td>87.22%</td><td>79.24% 66.51%</td><td>99.30% 90.40%</td><td>73.05%</td><td>64.69%</td><td>41.97%</td></tr><tr><td>ColonGPT (Ours)</td><td>SigLIP-SO (384px/ link)</td><td>Phi1.5 (1.3B/ link)</td><td>-</td><td></td><td></td><td>94.02%</td><td>85.81%</td><td>99.02%</td><td>70.00% 83.42%</td><td>13.39% 65.89%</td><td>12.95% 45.77%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 7 presents a multimodal benchmark comparing eight popular MLMs on three conversational tasks using ColonINST dataset, evaluating their performance on seen and unseen data samples.


{{< table-caption >}}
<br><table id='3' style='font-size:14px'><tr><td colspan="4">(a) Different presentations from visual encoder</td><td colspan="5">(b) Multigranuarity multimodal adapter</td><td colspan="5">(c) Fine-tuning strategy</td></tr><tr><td>Visual encoder input/URL REC ConvNeXtV2-L 384px/ link</td><td>CLS REG 82.95%</td><td>78.63%</td><td>33.74%</td><td>token MLP baseline</td><td>(ratio) 729 (100.00%)</td><td>CLS REG 83.53%</td><td>81.80%</td><td>REC 43.70%</td><td>Strategy full-tuning</td><td>r -</td><td>a CLS| 78.06%</td><td>REG 73.79%</td><td>REC 50.20%</td></tr><tr><td></td><td>82.16%</td><td></td><td>40.78%</td><td>{16,8,1}</td><td></td><td>84.39%</td><td>80.90%</td><td>46.37%</td><td>LoRA</td><td>4</td><td>- 8</td><td>82.75%</td><td>45.02%</td></tr><tr><td>ViT-L 384px/link</td><td></td><td>77.04%</td><td></td><td></td><td>321 (44.03%)</td><td></td><td></td><td></td><td></td><td></td><td>85.43% 16</td><td></td><td></td></tr><tr><td>MAE-L* 384px/link</td><td>80.85%</td><td>75.87%</td><td>38.53%</td><td>{14,7,1}</td><td>246 (33.74%)</td><td>85.81% 83.42%</td><td></td><td>45.77%</td><td>LoRA</td><td>8</td><td>84.45%</td><td>80.78%</td><td>44.98%</td></tr><tr><td>MAE-L 224px/link</td><td>81.95%</td><td>77.62%</td><td>43.25%</td><td>{14,7}</td><td>245 (33.61%)</td><td>85.01%</td><td>82.49%</td><td>43.62%</td><td>LoRA</td><td>16</td><td>32 84.39%</td><td>80.81%</td><td>45.90%</td></tr><tr><td>DINOv2-L* 384px/link</td><td>35.03%</td><td>22.91%</td><td>6.79%</td><td>{12, 6,1}</td><td>181 (24.83%)</td><td>83.74%</td><td>81.60%</td><td>45.94%</td><td>LoRA</td><td>32</td><td>64 84.91%</td><td>82.73%</td><td>45.56%</td></tr><tr><td>DINOv2-L 224px/link</td><td>21.22%</td><td>7.96%</td><td>2.69%</td><td>{10,5,1}</td><td>126 (17.28%)</td><td>84.28%</td><td>82.01%</td><td>46.46%</td><td>LoRA</td><td>64</td><td>128 83.84%</td><td>81.19%</td><td>43.57%</td></tr><tr><td>CLIP-L 336px/link</td><td>83.99%</td><td>78.67%</td><td>41.54%</td><td>{8, 4,1}</td><td>81 (11.11%)</td><td>84.70%</td><td>81.36%</td><td>45.30%</td><td>LoRA</td><td>128</td><td>256 85.81%</td><td>83.42%</td><td>45.77%</td></tr><tr><td>SigLIP-SO 384px/link</td><td>85.81%</td><td>83.42%</td><td>45.77%</td><td>w/o Pos. Enc.</td><td>246 (33.74%)</td><td>84.50%</td><td>82.91%</td><td>40.09%</td><td>LoRA</td><td>256 512</td><td>82.93%</td><td>79.96%</td><td>48.27%</td></tr></table>{{< /table-caption >}}
> 🔼 {{ table.description }}
> <details>
> <summary>read the caption</summary>
> {{ table.caption }}
> </details>


> Table 8 presents diagnostic studies of three core components in ColonGPT, showing the impact of different visual encoders, multigranularity multimodal adapters, and fine-tuning strategies on the model's performance across three conversational tasks.


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
{{< /gallery >}}