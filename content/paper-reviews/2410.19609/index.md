---
title: "OpenWebVoyager: Building Multimodal Web Agents via Iterative Real-World Exploration, Feedback and Optimization"
summary: "**OpenWebVoyager: A novel open-source framework enables building multimodal web agents that iteratively learn from real-world exploration and feedback, achieving strong performance.**"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tencent AI Lab",]
showSummary: true
date: 2024-10-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2410.19609 {{< /keyword >}}
{{< keyword icon="writer" >}} Hongliang He et el. {{< /keyword >}}
 
{{< keyword icon="hf-logo" >}} 2024-10-30 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2410.19609" target="_self" >}}
↗ arXiv
{{< /button >}}
&nbsp; 
{{< button href="https://huggingface.co/papers/2410.19609" target="_self" >}}
↗ Hugging Face
{{< /button >}}

### TL;DR


{{< lead >}}

Current research on autonomous web agents faces challenges. Existing agents often rely on closed-source models, limiting further improvements.  Those trained in synthetic environments struggle to generalize to complex real-world scenarios lacking clear reward signals, and text-only agents ignore valuable visual cues. 

OpenWebVoyager overcomes these issues. This innovative open-source framework builds multimodal web agents through an iterative process. Initially, imitation learning equips agents with basic navigation skills.  Subsequently, real-world exploration, coupled with GPT-40 feedback, refines agent policies.  This cycle continues, leading to demonstrable performance improvements across various web navigation tasks, showcasing the potential of open-source methods for building robust and adaptable AI agents.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OpenWebVoyager, an open-source framework, facilitates the development of multimodal web agents. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The iterative exploration-feedback-optimization cycle significantly improves agent performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study demonstrates the feasibility of training effective multimodal web agents using open-source models in real-world settings. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**This paper is important** because it introduces an open-source framework for building multimodal web agents, addressing limitations of existing methods. It provides a novel iterative approach combining real-world exploration, feedback, and optimization, advancing research in AI agent development and multimodal learning. The open-source nature facilitates broader community involvement and accelerates progress in the field.

------
#### Visual Insights





![](https://ai-paper-reviewer.com/2410.19609/charts_7_0.png)

> 🔼 The chart displays the performance improvement of the OpenWebVoyager model across three datasets (WebVoyager, Mind2Web cross-task, and Mind2Web cross-website) over four phases (IL and three iterative optimization cycles).
> <details>
> <summary>read the caption</summary>
> Figure 3: Performance growth of OpenWebVoyager on WebVoyager and Mind2Web test set from Imitation Learning phase to 3rd exploration-feedback-optimization cycle.
> </details>





{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td></td><td>Allrecipes</td><td>Amazon</td><td>Apple</td><td>ArXiv</td><td>GitHub</td><td>Booking</td><td>ESPN</td><td>Coursera</td></tr><tr><td>OpenWebVoyagerIL</td><td>17.8%</td><td>12.2%</td><td>20.9%</td><td>14.0%</td><td>14.6%</td><td>9.1%</td><td>9.1%</td><td>31.0%</td></tr><tr><td>OpenWebVoyageriter-1</td><td>35.2%</td><td>26.8%</td><td>11.6%</td><td>18.6%</td><td>24.4%</td><td>6.8%</td><td>2.3%</td><td>28.6%</td></tr><tr><td>Open WebVoyageriter-2</td><td>22.2%</td><td>36.6%</td><td>27.9%</td><td>20.9%</td><td>19.5%</td><td>6.8%</td><td>6.8%</td><td>33.3%</td></tr><tr><td>Open WebVoyageriter-3</td><td>24.4%</td><td>24.4%</td><td>20.9%</td><td>18.6%</td><td>31.7%</td><td>18.2%</td><td>11.4%</td><td>42.9%</td></tr><tr><td>Open WebVoyageriter-3-dgs</td><td>20.0%</td><td>31.7%</td><td>18.6%</td><td>23.3%</td><td>24.4%</td><td>13.6%</td><td>25.0%</td><td>42.9%</td></tr><tr><td>OpenWebVoyageriter-3-dgs-g</td><td>22.2%</td><td>29.3%</td><td>32.6%</td><td>20.9%</td><td>26.8%</td><td>11.4%</td><td>11.4%</td><td>42.9%</td></tr><tr><td></td><td>Cambridge Dictionary</td><td>BBC News</td><td>Google Flights</td><td>Google Map</td><td>Google Search</td><td>Huggingface</td><td>Wolfram Alpha</td><td>Overall</td></tr><tr><td>Open WebVoyagerIL</td><td>37.2%</td><td>9.5%</td><td>9.5%</td><td>22.0%</td><td>44.2%</td><td>20.9%</td><td>26.1%</td><td>19.9%</td></tr><tr><td>Open WebVoyageriter-1</td><td>25.6%</td><td>9.5%</td><td>19.0%</td><td>26.8%</td><td>44.2%</td><td>25.6%</td><td>32.6%</td><td>22.6%</td></tr><tr><td>Open WebVoyageriter-2</td><td>23.3%</td><td>14.3%</td><td>19.0%</td><td>22.0%</td><td>41.9%</td><td>11.6%</td><td>34.8%</td><td>22.7%</td></tr><tr><td>OpenWebVoyageriter-3</td><td>37.2%</td><td>11.9%</td><td>11.9%</td><td>26.8%</td><td>39.5%</td><td>30.2%</td><td>37.0%</td><td>25.8%</td></tr><tr><td>Open WebVoyageriter-3-dgs</td><td>30.2%</td><td>11.9%</td><td>21.4%</td><td>22.0%</td><td>39.5%</td><td>23.3%</td><td>34.8%</td><td>25.5%</td></tr><tr><td>Open WebVoyageriter-3-dgs-g</td><td>34.9%</td><td>14.3%</td><td>21.4%</td><td>29.3%</td><td>44.2%</td><td>32.6%</td><td>37.0%</td><td>27.4%</td></tr></table>{{< /table-caption >}}

> 🔼 Table 1 presents the task success rates of different agents (trained with various optimization strategies) on the WebVoyager test set, showing the impact of iterative optimization and difficulty-guided sampling.
> <details>
> <summary>read the caption</summary>
> Table 1: Task success rate on WebVoyager test set (643 queries). All websites are seen during training. 'IL', 'iter-1', 'iter-2', and 'iter-3' represent agents after IL, 1st, 2nd, and 3rd optimization, respectively. 'dgs' and 'dgs-g' denote difficulty-guided sampling, i.e., sample more trajectories for webs with low sampling accuracy, the former by adding trajectories sampled by the agent itself and the latter by adding trajectories sampled by GPT-40.
> </details>





### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2">Agents</td><td colspan="4">Mind2Web cross-task (unseen task)</td><td colspan="4">Mind2Web cross-web (unseen web)</td></tr><tr><td>Entertainment</td><td>Shopping</td><td>Travel</td><td>Overall</td><td>Entertainment</td><td>Shopping</td><td>Travel</td><td>Overall</td></tr><tr><td>Open WebVoyagerIL</td><td>8.2%</td><td>5.9%</td><td>4.3%</td><td>6.3%</td><td>3.0%</td><td>13.3%</td><td>4.7%</td><td>6.6%</td></tr><tr><td>Open WebVoyageriter-1</td><td>12.2%</td><td>0.0%</td><td>4.3%</td><td>7.1%</td><td>6.1%</td><td>6.7%</td><td>9.3%</td><td>7.5%</td></tr><tr><td>Open WebVoyageriter-2</td><td>24.5%</td><td>5.9%</td><td>6.5%</td><td>14.3%</td><td>15.2%</td><td>10.0%</td><td>7.0%</td><td>10.4%</td></tr><tr><td>Open WebVoyageriter-3</td><td>26.5%</td><td>23.5%</td><td>10.9%</td><td>19.6%</td><td>6.1%</td><td>20%</td><td>7.0%</td><td>10.4%</td></tr><tr><td>Open WebVoyageriter-3-dgs</td><td>18.4%</td><td>23.5%</td><td>10.9%</td><td>16.1%</td><td>9.1%</td><td>16.7%</td><td>25.6%</td><td>17.9%</td></tr><tr><td>Open WebVoyageriter-3-dgs-g</td><td>22.4%</td><td>29.4%</td><td>15.2%</td><td>20.5%</td><td>3.0%</td><td>20.0%</td><td>23.3%</td><td>16.0%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 2 presents the task success rate on Mind2Web cross-task and cross-web test sets, showing the performance of different agents on unseen tasks and websites.
> <details>
> <summary>read the caption</summary>
> Table 2: Task success rate on Mind2Web cross-task and cross-web test set. In cross-task set, the queries from the same websites are seen during training. In cross-website set, the websites are not seen during training but still belong to the Entertainment, Shopping, and Travel Domain.
> </details>

{{< table-caption >}}
<table id='0' style='font-size:16px'><tr><td>Improvement Iteration</td><td>Query</td><td>Traj. From</td><td>Success Traj.</td><td>Turns</td><td>F@1</td><td>S@1</td><td>S@2</td><td>S@3</td><td>S@4</td><td>S@5</td></tr><tr><td>iter-1</td><td>480</td><td>��b</td><td>152</td><td>943</td><td>74.6%</td><td>10.4%</td><td>19.6%</td><td>24.4%</td><td>27.5%</td><td>31.7%</td></tr><tr><td>iter-2</td><td>480</td><td>�01</td><td>205</td><td>1324</td><td>87.1%</td><td>16.0%</td><td>24.0%</td><td>30.2%</td><td>36.9%</td><td>42.7%</td></tr><tr><td>iter-3</td><td>480</td><td>��2</td><td>207</td><td>1333</td><td>91.5%</td><td>18.8%</td><td>27.9%</td><td>35.2%</td><td>41.0%</td><td>43.1%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 3 presents the details of the query sets and trajectories generated during each exploration-feedback-optimization cycle, including the number of queries, trajectories, successful trajectories, and the task success rate at various stages (F@1, S@1-S@5).
> <details>
> <summary>read the caption</summary>
> Table 3: Details of query set and trajectory set during the exploration-feedback-optimization cycle. The feedback on task success or not is provided by GPT-40. F@1 indicates the finish rate of the first exploration. S@K represents the task success rate within K explorations. Each task will sample the trajectory up to 5 times until it succeeds or fails all 5 times, successful trajectories will be retained to improve our agent.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:14px'><tr><td rowspan="2">Agent</td><td colspan="2">WebVoyager</td><td colspan="2">Mind2Web cross-task</td><td colspan="2">Mind2Web cross-website</td></tr><tr><td>Finish</td><td>Success</td><td>Finish</td><td>Success</td><td>Finish</td><td>Success</td></tr><tr><td>OpenWebVoyagerIL</td><td>6.47</td><td>5.26</td><td>8.77</td><td>7.00</td><td>9.28</td><td>9.29</td></tr><tr><td>OpenWebVoyageriter-1</td><td>6.17</td><td>5.02</td><td>7.58</td><td>5.00</td><td>7.98</td><td>9.63</td></tr><tr><td>OpenWebVoyageriter-2</td><td>5.89</td><td>5.04</td><td>7.33</td><td>6.31</td><td>7.13</td><td>7.45</td></tr><tr><td>OpenWebVoyageriter-3</td><td>5.47</td><td>5.07</td><td>7.67</td><td>7.59</td><td>6.16</td><td>6.91</td></tr></table>{{< /table-caption >}}
> 🔼 Table 4 presents the average length of trajectories across different optimization cycles on various test sets, distinguishing between finished and successful trajectories.
> <details>
> <summary>read the caption</summary>
> Table 4: The average length of trajectories across different optimization cycles on various test sets. 'Finish' and 'Success' indicates that we calculate the average length for finished or successful trajectories, respectively.
> </details>

{{< table-caption >}}
<table id='4' style='font-size:14px'><tr><td rowspan="2">Agent</td><td colspan="5">WebVoyager (643 tasks)</td></tr><tr><td>R</td><td>RS</td><td>s</td><td>RS / R</td><td>RS /S</td></tr><tr><td>Open WebVoyagerIL</td><td>61</td><td>8</td><td>128</td><td>13.1%</td><td>6.3%</td></tr><tr><td>OpenWebVoyageriter-1</td><td>75</td><td>16</td><td>145</td><td>21.3%</td><td>11.0%</td></tr><tr><td>OpenWebVoyageriter-2</td><td>88</td><td>22</td><td>146</td><td>25.0%</td><td>15.1%</td></tr><tr><td>Open WebVoyageriter-3</td><td>142</td><td>40</td><td>166</td><td>28.2%</td><td>24.1%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 5 shows the frequency of the agent using the restart action during the experiment and the success rate of using this action.
> <details>
> <summary>read the caption</summary>
> Table 5: The frequency of the agent using the restart action: Let R denote the number of trajectories with restart, RS the number of successful trajectories with restart, and S the total number of successful trajectories.
> </details>

{{< table-caption >}}
<br><table id='8' style='font-size:16px'><tr><td>Training Trajectories</td><td>Result</td></tr><tr><td>DIL U Diter-1 U Diter-2</td><td>20.8%</td></tr><tr><td>DIL U Diter-2</td><td>23.3%</td></tr></table>{{< /table-caption >}}
> 🔼 Table 6 shows the result of the experiment that compares the performance of using a mixture of data from previous phases in exploration-feedback-optimization cycles versus only using data from the current phase.
> <details>
> <summary>read the caption</summary>
> Table 6: Study on whether to use a mixture of data from previous phases in exploration-feedback-optimization cycle (OpenWebVoyageriter-1 → OpenWebVoyageriter-2).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Web Actions</td><td>Format</td><td>Notes</td></tr><tr><td>Click</td><td>Click [Label]</td><td>Perform a single Click operation on an web element.</td></tr><tr><td>Input</td><td>Type [Label]; [Content]</td><td>Type something in the text box and press enter.</td></tr><tr><td>Scroll</td><td>Scroll [WINDOW or Label]; [up or down]</td><td>In some web pages where only a partial area can be scrolled, agent need to lock an element in that area first, otherwise scrolls are performed on the whole page.</td></tr><tr><td>Go back</td><td>GoBack</td><td>Go back to previous page</td></tr><tr><td>Restart</td><td>Restart</td><td>Restart from Google Search and solve tasks.</td></tr><tr><td>Wait</td><td>Wait</td><td>Sleep 5 seconds</td></tr><tr><td>Answer</td><td>ANSWER; [content]</td><td>Provide final answer.</td></tr></table>{{< /table-caption >}}
> 🔼 Table 1 presents the task success rate of different agents on the WebVoyager test set, showcasing the performance improvement after iterative optimization and the impact of different sampling strategies.
> <details>
> <summary>read the caption</summary>
> Table 1: Task success rate on WebVoyager test set (643 queries). All websites are seen during training. ‘IL’, ‘iter-1’, ‘iter-2’, and ‘iter-3’ represent agents after IL, 1st, 2nd, and 3rd optimization, respectively. ‘dgs’ and ‘dgs-g’ denote difficulty-guided sampling, i.e., sample more trajectories for webs with low sampling accuracy, the former by adding trajectories sampled by the agent itself and the latter by adding trajectories sampled by GPT-40.
> </details>

{{< table-caption >}}
<table id='2' style='font-size:20px'><tr><td>From</td><td>Domain</td><td>Subdomain</td><td>Website Name</td></tr><tr><td>Web Voyager</td><td>-</td><td></td><td>Allrecipes; Amazon; Apple; ArXiv; BBC News; Booking; Cambridge Dictionary; Coursera; ESPN;GitHub; Google Flights; Google Map; Google Search; Huggingface; Wolfram Alpha</td></tr><tr><td rowspan="3">Mind2 Web</td><td>Entertainment</td><td>Event Game Movie Music Sports</td><td>eventbrite; nyc; ticketcenter boardgamegeek; store.steampowered imdb; rottentomatoes; tvguide discogs; last.fm; soundcloud; espn; foxsports; sports.yahoo;</td></tr><tr><td>Shopping</td><td>Digital Fashion General Speciality</td><td>apple uniqlo amazon; ebay; target cvs; ikea</td></tr><tr><td>Travel</td><td>Airlines Car rental General Ground Hotel Restaurant Others</td><td>ryanair enterprise agoda; booking amtrak; mbta; thetrainline; us.megabus airbnb; koa; marriott resy; yelp flightaware; nps.gov; spothero</td></tr></table>{{< /table-caption >}}
> 🔼 Table 8 lists the 48 websites used in the imitation learning and exploration-feedback-optimization phases of the OpenWebVoyager model, specifying their domains and subdomains.
> <details>
> <summary>read the caption</summary>
> Table 8: In the Imitation Learning and exploration-feedback-optimization cycles, a total of 48 websites are selected, including 15 from WebVoyager and 37 from Mind2Web (4 duplicates).
> </details>

{{< table-caption >}}
<table id='0' style='font-size:18px'><tr><td>Test set</td><td>Num of queries</td><td>Web seen in training?</td><td>Domain</td><td>Subdomain</td><td>Websites and num of queries</td></tr><tr><td>WebVoyager</td><td>643</td><td>Yes</td><td></td><td></td><td>Allrecipes: 45; Amazon: 41; Apple: 43; ArXiv: 43; BBC News: 42; Booking: 44; Cambridge Dictionary: 43; Coursera: 42; ESPN: 44; GitHub: 41; Google Flights: 42; Google Map: 41; Google Search: 43; Huggingface: 43; Wolfram Alpha: 46</td></tr><tr><td rowspan="3">Mind2Web cross-task</td><td rowspan="3">112</td><td rowspan="3">Yes</td><td>Entertainment</td><td>Event Game Movie Music Sports</td><td>eventbrite: 6; nyc: 3; ticketcenter: 4 boardgamegeek: 1; store.steampowered: 1 imdb: 5; rottentomatoes: 1; tvguide: 3 discogs: 6; last.fm: 5; soundcloud: 4 espn: 4; foxsports: 5; sports.yahoo: 1</td></tr><tr><td>Shopping</td><td>Digital Fashion General Speciality</td><td>apple: 4 uniqlo: 3 amazon: 2; target: 5 CVS: 1 ; ikea: 2</td></tr><tr><td>Travel</td><td>Airlines General Ground Hotel Restaurant Other</td><td>ryanair: 6 agoda: 3; booking: 2 amtrak: 6; mbta: 4; us.megabus: 1 airbnb: 3; koa: 3; marriott: 5 resy: 2; yelp: 4 flightaware: 4; spothero: 3</td></tr><tr><td rowspan="3">Mind2Web cross-website</td><td rowspan="3">106</td><td rowspan="3">No</td><td>Entertainment</td><td>Event Sports</td><td>stubhub: 16 nba: 17</td></tr><tr><td>Shopping</td><td>Auto General</td><td>cars: 13 shopping.google: 17</td></tr><tr><td>Travel</td><td>Restaurant Other</td><td>tripadvisor: 23 recreation.gov: 20</td></tr></table>{{< /table-caption >}}
> 🔼 Table 9 presents detailed statistics of the test datasets used in evaluating the performance of the proposed OpenWebVoyager model, including the number of queries, whether the websites were seen during training, and domain and subdomain breakdowns.
> <details>
> <summary>read the caption</summary>
> Table 9: Detailed statistics of the test dataset. Websites from WebVoyager and Mind2Web cross-task have been seen during training, while websites from Mind2Web cross-websites have not been encountered.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2410.19609/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2410.19609/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}